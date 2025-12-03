// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec  2 18:43:47 2025
// Host        : Tzar running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               a:/Facultate/Labs/SSC/TicTacToe/Hardware/zybo_hdmi.gen/sources_1/bd/hdmi/ip/hdmi_gameLogic_0_0/hdmi_gameLogic_0_0_stub.v
// Design      : hdmi_gameLogic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gameLogic,Vivado 2024.1" *)
module hdmi_gameLogic_0_0(clk, input_data, output_game_status)
/* synthesis syn_black_box black_box_pad_pin="input_data[31:0],output_game_status[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [31:0]input_data;
  output [31:0]output_game_status;
endmodule
