# FPGA-Based Tic-Tac-Toe (Hardware-Software Co-Design)

This project features a complete **Tic-Tac-Toe game** implemented on a Xilinx Zynq-7000 SoC. It utilizes a hybrid architecture: a hardware-accelerated game engine written in **VHDL** and a software control layer written in **C**.

## System Architecture

The project demonstrates **Hardware-Software Co-Design**:

1.  **Programmable Logic (PL - VHDL)**:
    * **FSM Game Engine**: Manages game states (IDLE, RUNNING, STOP).
    * **Win Detection**: Combinational logic checks all 8 possible winning lines and board fullness instantly.
    * **Move Validation**: Prevents overwriting occupied cells or out-of-bounds moves directly in hardware.
2.  **Processing System (PS - C/ARM)**:
    * **Video Controller**: Renders a graphical 800x600 UI using VDMA and double buffering.
    * **User Interface**: Handles UART input/output for player moves and game status.
    * **Cache Management**: Ensures coherency between the CPU and the Video DMA via L1/L2 cache flushing.

---

## Features

* **VGA/HDMI Output**: 800x600 resolution with color-coded markers (Yellow for 'X', Red for 'O').
* **Low Latency**: Game logic is processed at the FPGA clock speed.
* **Double Buffering**: Smooth rendering without flickering.
* **UART Control**: Play the game using any serial terminal (115200 baud).

---

## Hardware Requirements & Pin Mapping

### AXI GPIO Interface

| GPIO Signal | Bit Range | Description |
| :--- | :--- | :--- |
| **Input (to FPGA)** | `31` | `READY` - Signal a new move |
| **Input (to FPGA)** | `5` | `START` - Start/Initialize game |
| **Input (to FPGA)** | `4` | `RESET` - Reset FSM and board |
| **Input (to FPGA)** | `3:0` | `MOVE_INDEX` - Board position (0-8) |
| **Output (from FPGA)** | `17:0` | `BOARD_STATE` - 9 cells, 2 bits each |
| **Output (from FPGA)** | `19:18` | `ERROR_CODE` - (01: Occupied, 10: OOB) |
| **Output (from FPGA)** | `21:20` | `GAME_OVER` - (01: Draw, 10: X Win, 11: O Win) |

---

## How to Play

Connect via UART (115200 baud) and use the following keys:

1.  **`s`**: Start the game.
2.  **`r`**: Reset the board at any time.
3.  **`Row Col`**: Enter move coordinates.
    * Example: Type `1` then `1` to place your mark in the center cell.

---

## Implementation Details

### VHDL Logic
The board is represented as a `std_logic_vector(17 downto 0)`. The `check_board_logic` process evaluates the winning conditions every clock cycle:
* Horizontal, vertical, and diagonal lines.
* The `board_is_full` flag triggers a draw if no winner is detected.

### C Graphics Engine
The `display_board` function:
1.  Clears the back buffer.
2.  Draws the static grid lines.
3.  Iterates through the 18-bit board vector received from the FPGA.
4.  Renders the corresponding colored cells.
5.  **Flushes Cache**: `Xil_DCacheFlushRange` is called before switching frames to ensure the VDMA reads the updated pixel data from RAM.

---

## Setup Instructions

1.  **Vivado**: Integrate the `gameLogic` IP into your block design and connect it via AXI GPIO.
2.  **Vitis/SDK**: Create a new standalone application using the provided C source files.
3.  **FPGAs**: Tested on Zynq-7000 series (ZedBoard, Zybo, Pynq).

---
