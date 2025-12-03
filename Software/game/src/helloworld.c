#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdint.h>

#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xparameters.h"
#include <sleep.h>

#include <ff.h>
#include <xgpio.h>
#include <xstatus.h>

#include <arm_neon.h>
#include "xtmrctr.h"

XGpio INPUT_DATA;   
XGpio OUTPUT_GAME_STATUS; 

#define BIT_READY   (1 << 31)
#define BIT_START   (1 << 5)
#define BIT_RESET   (1 << 4)


void init_gpio()
{
    if (XGpio_Initialize(&OUTPUT_GAME_STATUS, XPAR_AXI_GPIO_OUTPUT_GAME_STATUS_BASEADDR) != XST_SUCCESS) 
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

    print("\n\n    0  1  2 \n\r"); 

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

    while(1) 
    {
        char char1 = inbyte(); 
        
        data_packet = 0;
        int valid_command = 0;

        if (char1 == 's') 
        {
            data_packet |= BIT_START;
            print(">> STARTING...\n\r");
            valid_command = 1;

        }
        else if (char1 == 'r') 
        {
            data_packet |= BIT_RESET;
            print(">> RESETTING...\n\r");
            valid_command = 1;
        }
        else if (char1 >= '0' && char1 <= '2') 
        {
            int row = char1 - '0';
            xil_printf("Row: %d selected. Waiting for Col...\n\r", row);

            char char2;
            do 
            {
                char2 = inbyte();
            } 
            while (char2 < '0' || char2 > '2'); 
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
            game_over  = (fpga_status >> 20) & 0x03;

            if (error_code == 2) print("!!! Error: Cell Occupied !!!\n\r");
            if (error_code == 3) print("!!! Error: Index Out of Bounds !!!\n\r");

            print_board(board_data);

            if (game_over == 1) print("### GAME OVER: DRAW. ###\n\r");
            if (game_over == 2) print("### GAME OVER: X WON! ###\n\r");
            if (game_over == 3) print("### GAME OVER: 0 WON! ###\n\r");
        }
    }

    cleanup_platform();
    return 0;
}