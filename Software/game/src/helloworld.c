#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "display_ctrl.h"
#include "platform.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include <sleep.h>

#include <ff.h>
#include <xgpio.h>
#include <xstatus.h>

#include "xtmrctr.h"
#include <arm_neon.h>

XGpio INPUT_DATA;
XGpio OUTPUT_GAME_STATUS;

#define BIT_READY (1 << 31)
#define BIT_START (1 << 5)
#define BIT_RESET (1 << 4)

#define COLOR_BLACK 0x00000000
#define COLOR_YELLOW 0x00FFFF00
#define COLOR_RED 0x00FF0000
#define COLOR_WHITE 0x00FFFFFF

#define CELL_W 150
#define CELL_H 150
#define MARGIN 20
#define GRID_THICKNESS 8

#define H_RES_DEFAULT 800
#define V_RES_DEFAULT 600
#define MAX_FRAME (H_RES_DEFAULT * V_RES_DEFAULT)
#define FRAME_STRIDE (H_RES_DEFAULT * 4)

DisplayCtrl dispCtrl;
#define DISPLAY_NUM_FRAMES 2 
u32 frameBuf[DISPLAY_NUM_FRAMES][MAX_FRAME] __attribute__((aligned(0x20)));
void *pFrames[DISPLAY_NUM_FRAMES];

static int init_display_controller() 
{
    int i;
    const VideoMode *mode = &VMODE_800x600;

    for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
        pFrames[i] = frameBuf[i];

    DisplayInitialize(&dispCtrl, 
                      (u16)XPAR_XAXIVDMA_0_BASEADDR,
                      (u16)XPAR_XVTC_0_BASEADDR,
                      XPAR_HDMI_AXI_DYNCLK_0_BASEADDR,
                      pFrames, FRAME_STRIDE);
                      
    DisplayChangeFrame(&dispCtrl, 0);
    
    DisplaySetMode(&dispCtrl, mode); 
    
    uint32_t current_width = dispCtrl.vMode.width;
    uint32_t current_height = dispCtrl.vMode.height;

    memset(frameBuf[0], 0, current_width * current_height * 4);
    memset(frameBuf[1], 0, current_width * current_height * 4);

    DisplayStart(&dispCtrl);
    xil_printf("Display started: %s (%.3f MHz)\n", dispCtrl.vMode.label, dispCtrl.pxlFreq);
    return XST_SUCCESS;
}

void draw_pixel(uint32_t x, uint32_t y, uint32_t color) 
{
  uint32_t max_x = dispCtrl.vMode.width;
  uint32_t max_y = dispCtrl.vMode.height;

  if (x >= max_x || y >= max_y) return;

  uint32_t back = !dispCtrl.curFrame;
  uint32_t *framePtr = (uint32_t *)dispCtrl.framePtr[back];
  uint32_t stride_words = dispCtrl.stride / 4;

  framePtr[y * stride_words + x] = color;
}

void draw_cell(uint32_t x0, uint32_t y0, uint32_t width, uint32_t height,uint32_t color) 
{
  uint32_t max_x = dispCtrl.vMode.width;
  uint32_t max_y = dispCtrl.vMode.height;

  for (uint32_t y = 0; y < height; y++) 
  {
    uint32_t current_y = y0 + y;
    if (current_y >= max_y) break;

    for (uint32_t x = 0; x < width; x++) 
    {
      uint32_t current_x = x0 + x;
      if (current_x >= max_x) break;

      draw_pixel(current_x, current_y, color);
    }
  }
}

void display_board(uint32_t board_data) 
{
  uint32_t cell_val;
  uint32_t cell_color;

  uint32_t total_board_width = 3 * CELL_W + 2 * GRID_THICKNESS;
  uint32_t total_board_height = 3 * CELL_H + 2 * GRID_THICKNESS;

  uint32_t start_x = (dispCtrl.vMode.width - total_board_width) / 2;
  uint32_t start_y = (dispCtrl.vMode.height - total_board_height) / 2;

  draw_cell(0, 0, dispCtrl.vMode.width, dispCtrl.vMode.height, COLOR_BLACK);

  draw_cell(start_x, start_y, total_board_width, total_board_height, COLOR_WHITE);

  for (int row = 0; row < 3; row++) 
  {
    for (int col = 0; col < 3; col++) 
    {
      int index = row * 3 + col;
      cell_val = (board_data >> (index * 2)) & 0x03;

      uint32_t x_cell_start = start_x + col * (CELL_W + GRID_THICKNESS) + GRID_THICKNESS;
      uint32_t y_cell_start = start_y + row * (CELL_H + GRID_THICKNESS) + GRID_THICKNESS;

      draw_cell(x_cell_start, y_cell_start, CELL_W, CELL_H, COLOR_BLACK);

      if (cell_val == 2)      cell_color = COLOR_YELLOW;
      else if (cell_val == 3) cell_color = COLOR_RED; 
      else                    continue;
      

      draw_cell(x_cell_start + MARGIN, y_cell_start + MARGIN, CELL_W - 2 * MARGIN, CELL_H - 2 * MARGIN, cell_color);
    }
  }

  uint32_t back = !dispCtrl.curFrame;
  size_t flush_size = (size_t)dispCtrl.vMode.height * (size_t)dispCtrl.stride;
  Xil_DCacheFlushRange((UINTPTR)dispCtrl.framePtr[back], flush_size);
  DisplayChangeFrame(&dispCtrl, back);
}

void init_gpio() 
{
  if (XGpio_Initialize(&OUTPUT_GAME_STATUS, XPAR_AXI_GPIO_OUTPUT_GAME_STATUS_BASEADDR) !=  XST_SUCCESS) 
  {
    xil_printf("Failed to init OUTPUT GPIO\n");
    return XST_FAILURE;
  }

  if (XGpio_Initialize(&INPUT_DATA, XPAR_AXI_GPIO_INPUT_DATA_BASEADDR) != XST_SUCCESS) 
  {
    xil_printf("Failed to init INPUT GPIO\n");
    return XST_FAILURE;
  }

  XGpio_SetDataDirection(&OUTPUT_GAME_STATUS, 1, 0xFFFFFFFF);
  XGpio_SetDataDirection(&INPUT_DATA, 1, 0x00000000);
  return XST_SUCCESS;
}

void print_board(uint32_t board_data) 
{
  char cell_char;
  uint32_t cell_val;

  print("\n\n    0  1  2 \n\r");

  for (int row = 0; row < 3; row++) 
  {
    xil_printf("%d ", row);
    for (int col = 0; col < 3; col++) 
    {
      int index = row * 3 + col;
      cell_val = (board_data >> (index * 2)) & 0x03;

      if (cell_val == 0)      cell_char = '_';
      else if (cell_val == 2) cell_char = 'X';
      else if (cell_val == 3) cell_char = 'O';
      else                    cell_char = '?';

      xil_printf("[%c]", cell_char);
    }
    print("\n\r");
  }
  print("\n\r");
}

int main() 
{
  init_platform();

  Xil_DCacheDisable();
  if (init_display_controller() != XST_SUCCESS) 
  {
    xil_printf("Failed to init Display Controller!\n");
    cleanup_platform();
    return XST_FAILURE;
  }
  Xil_DCacheEnable();

  init_gpio();

  print(" COMMANDS:\n\r");
  print(" 's' = Start\n\r");
  print(" 'r' = Reset\n\r");
  print(" ROW COL = Your Move (ex: 1 2)\n\r");

  uint32_t data_packet = 0;
  uint32_t fpga_status = 0;
  uint32_t board_data = 0;
  uint32_t error_code = 0;
  uint32_t game_over = 0;

  display_board(board_data);

  while (1) 
  {
    char char1 = inbyte();

    data_packet = 0;
    int valid_command = 0;

    if (char1 == 's') 
    {
      data_packet |= BIT_START;
      print(">> STARTING...\n\r");
      valid_command = 1;

    } else if (char1 == 'r') 
    {
      data_packet |= BIT_RESET;
      print(">> RESETTING...\n\r");
      valid_command = 1;
      board_data = 0;
      game_over = 0;
    } 
    else if (char1 >= '0' && char1 <= '2') 
    {
      int row = char1 - '0';
      xil_printf("Row: %d selected. Waiting for Col...\n\r", row);

      char char2;
      do 
      {
        char2 = inbyte();
      } while (char2 < '0' || char2 > '2');
      int col = char2 - '0';
      xil_printf("Col: %d selected.\n\r", col);

      int move_idx = (row * 3) + col;

      xil_printf(">> MOVE: Row %d, Col %d (Index %d)\n\r", row, col, move_idx);

      data_packet |= (move_idx & 0xF);
      valid_command = 1;
    }

    if (valid_command) 
    {
      XGpio_DiscreteWrite(&INPUT_DATA, 1, data_packet);
      if (char1 != 's') XGpio_DiscreteWrite(&INPUT_DATA, 1, data_packet | BIT_READY);
      XGpio_DiscreteWrite(&INPUT_DATA, 1, data_packet);
      usleep(1000);

      fpga_status = XGpio_DiscreteRead(&OUTPUT_GAME_STATUS, 1);
      board_data = fpga_status & 0x3FFFF;
      error_code = (fpga_status >> 18) & 0x03;
      game_over = (fpga_status >> 20) & 0x03;

      if (error_code == 2) print("!!! Error: Cell Occupied !!!\n\r");
      if (error_code == 3) print("!!! Error: Index Out of Bounds !!!\n\r");

      print_board(board_data);
      display_board(board_data);

      if (game_over == 1) print("### GAME OVER: DRAW. ###\n\r");
      if (game_over == 2) print("### GAME OVER: X WON! ###\n\r");
      if (game_over == 3) print("### GAME OVER: 0 WON! ###\n\r");
    }
  }

  cleanup_platform();
  return 0;
}