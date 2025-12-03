// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec  2 18:43:47 2025
// Host        : Tzar running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               a:/Facultate/Labs/SSC/TicTacToe/Hardware/zybo_hdmi.gen/sources_1/bd/hdmi/ip/hdmi_gameLogic_0_0/hdmi_gameLogic_0_0_sim_netlist.v
// Design      : hdmi_gameLogic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hdmi_gameLogic_0_0,gameLogic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gameLogic,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module hdmi_gameLogic_0_0
   (clk,
    input_data,
    output_game_status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [31:0]input_data;
  output [31:0]output_game_status;

  wire \<const0> ;
  wire clk;
  wire [31:0]input_data;
  wire [21:0]\^output_game_status ;

  assign output_game_status[31] = \<const0> ;
  assign output_game_status[30] = \<const0> ;
  assign output_game_status[29] = \<const0> ;
  assign output_game_status[28] = \<const0> ;
  assign output_game_status[27] = \<const0> ;
  assign output_game_status[26] = \<const0> ;
  assign output_game_status[25] = \<const0> ;
  assign output_game_status[24] = \<const0> ;
  assign output_game_status[23] = \<const0> ;
  assign output_game_status[22] = \<const0> ;
  assign output_game_status[21:0] = \^output_game_status [21:0];
  GND GND
       (.G(\<const0> ));
  hdmi_gameLogic_0_0_gameLogic inst
       (.\board_reg[0]_0 (\^output_game_status [0]),
        .\board_reg[10]_0 (\^output_game_status [10]),
        .\board_reg[11]_0 (\^output_game_status [11]),
        .\board_reg[12]_0 (\^output_game_status [12]),
        .\board_reg[13]_0 (\^output_game_status [13]),
        .\board_reg[14]_0 (\^output_game_status [14]),
        .\board_reg[15]_0 (\^output_game_status [15]),
        .\board_reg[16]_0 (\^output_game_status [16]),
        .\board_reg[17]_0 (\^output_game_status [17]),
        .\board_reg[1]_0 (\^output_game_status [1]),
        .\board_reg[2]_0 (\^output_game_status [2]),
        .\board_reg[3]_0 (\^output_game_status [3]),
        .\board_reg[4]_0 (\^output_game_status [4]),
        .\board_reg[5]_0 (\^output_game_status [5]),
        .\board_reg[6]_0 (\^output_game_status [6]),
        .\board_reg[7]_0 (\^output_game_status [7]),
        .\board_reg[8]_0 (\^output_game_status [8]),
        .\board_reg[9]_0 (\^output_game_status [9]),
        .clk(clk),
        .input_data({input_data[31],input_data[5:0]}),
        .output_game_status(\^output_game_status [21:18]));
endmodule

(* ORIG_REF_NAME = "gameLogic" *) 
module hdmi_gameLogic_0_0_gameLogic
   (\board_reg[17]_0 ,
    \board_reg[16]_0 ,
    \board_reg[15]_0 ,
    \board_reg[14]_0 ,
    \board_reg[13]_0 ,
    \board_reg[12]_0 ,
    \board_reg[11]_0 ,
    \board_reg[10]_0 ,
    \board_reg[9]_0 ,
    \board_reg[8]_0 ,
    \board_reg[7]_0 ,
    \board_reg[6]_0 ,
    \board_reg[5]_0 ,
    \board_reg[4]_0 ,
    \board_reg[3]_0 ,
    \board_reg[2]_0 ,
    \board_reg[1]_0 ,
    \board_reg[0]_0 ,
    output_game_status,
    input_data,
    clk);
  output \board_reg[17]_0 ;
  output \board_reg[16]_0 ;
  output \board_reg[15]_0 ;
  output \board_reg[14]_0 ;
  output \board_reg[13]_0 ;
  output \board_reg[12]_0 ;
  output \board_reg[11]_0 ;
  output \board_reg[10]_0 ;
  output \board_reg[9]_0 ;
  output \board_reg[8]_0 ;
  output \board_reg[7]_0 ;
  output \board_reg[6]_0 ;
  output \board_reg[5]_0 ;
  output \board_reg[4]_0 ;
  output \board_reg[3]_0 ;
  output \board_reg[2]_0 ;
  output \board_reg[1]_0 ;
  output \board_reg[0]_0 ;
  output [3:0]output_game_status;
  input [6:0]input_data;
  input clk;

  wire \FSM_sequential_current_game_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_game_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_game_state[1]_i_2_n_0 ;
  wire [17:0]board0_in;
  wire \board[0]_i_1_n_0 ;
  wire \board[10]_i_1_n_0 ;
  wire \board[11]_i_1_n_0 ;
  wire \board[11]_i_3_n_0 ;
  wire \board[11]_i_4_n_0 ;
  wire \board[11]_i_5_n_0 ;
  wire \board[12]_i_1_n_0 ;
  wire \board[12]_i_2_n_0 ;
  wire \board[13]_i_1_n_0 ;
  wire \board[13]_i_2_n_0 ;
  wire \board[13]_i_3_n_0 ;
  wire \board[13]_i_4_n_0 ;
  wire \board[13]_i_5_n_0 ;
  wire \board[14]_i_1_n_0 ;
  wire \board[14]_i_2_n_0 ;
  wire \board[14]_i_3_n_0 ;
  wire \board[15]_i_1_n_0 ;
  wire \board[15]_i_2_n_0 ;
  wire \board[15]_i_3_n_0 ;
  wire \board[15]_i_4_n_0 ;
  wire \board[15]_i_5_n_0 ;
  wire \board[15]_i_6_n_0 ;
  wire \board[15]_i_7_n_0 ;
  wire \board[15]_i_8_n_0 ;
  wire \board[15]_i_9_n_0 ;
  wire \board[16]_i_1_n_0 ;
  wire \board[17]_i_1_n_0 ;
  wire \board[17]_i_3_n_0 ;
  wire \board[17]_i_4_n_0 ;
  wire \board[17]_i_5_n_0 ;
  wire \board[17]_i_7_n_0 ;
  wire \board[17]_i_8_n_0 ;
  wire \board[1]_i_1_n_0 ;
  wire \board[1]_i_3_n_0 ;
  wire \board[1]_i_4_n_0 ;
  wire \board[2]_i_1_n_0 ;
  wire \board[3]_i_1_n_0 ;
  wire \board[3]_i_3_n_0 ;
  wire \board[3]_i_4_n_0 ;
  wire \board[4]_i_1_n_0 ;
  wire \board[5]_i_1_n_0 ;
  wire \board[5]_i_3_n_0 ;
  wire \board[6]_i_1_n_0 ;
  wire \board[7]_i_1_n_0 ;
  wire \board[7]_i_3_n_0 ;
  wire \board[8]_i_1_n_0 ;
  wire \board[9]_i_1_n_0 ;
  wire \board[9]_i_3_n_0 ;
  wire \board[9]_i_4_n_0 ;
  wire \board[9]_i_5_n_0 ;
  wire \board_reg[0]_0 ;
  wire \board_reg[10]_0 ;
  wire \board_reg[11]_0 ;
  wire \board_reg[12]_0 ;
  wire \board_reg[13]_0 ;
  wire \board_reg[14]_0 ;
  wire \board_reg[15]_0 ;
  wire \board_reg[16]_0 ;
  wire \board_reg[17]_0 ;
  wire \board_reg[1]_0 ;
  wire \board_reg[2]_0 ;
  wire \board_reg[3]_0 ;
  wire \board_reg[4]_0 ;
  wire \board_reg[5]_0 ;
  wire \board_reg[6]_0 ;
  wire \board_reg[7]_0 ;
  wire \board_reg[8]_0 ;
  wire \board_reg[9]_0 ;
  wire clk;
  wire [1:0]current_game_state;
  wire [1:1]current_game_state__0;
  wire \error_code[0]_i_1_n_0 ;
  wire \error_code[0]_i_2_n_0 ;
  wire \error_code[1]_i_1_n_0 ;
  wire \error_code[1]_i_2_n_0 ;
  wire \error_code[1]_i_3_n_0 ;
  wire \error_code[1]_i_4_n_0 ;
  wire \error_code[1]_i_5_n_0 ;
  wire \error_code[1]_i_6_n_0 ;
  wire \error_code[1]_i_7_n_0 ;
  wire \error_code[1]_i_8_n_0 ;
  wire \error_code[1]_i_9_n_0 ;
  wire \game_over_state[0]_i_1_n_0 ;
  wire \game_over_state[1]_i_10_n_0 ;
  wire \game_over_state[1]_i_11_n_0 ;
  wire \game_over_state[1]_i_12_n_0 ;
  wire \game_over_state[1]_i_13_n_0 ;
  wire \game_over_state[1]_i_14_n_0 ;
  wire \game_over_state[1]_i_1_n_0 ;
  wire \game_over_state[1]_i_2_n_0 ;
  wire \game_over_state[1]_i_3_n_0 ;
  wire \game_over_state[1]_i_4_n_0 ;
  wire \game_over_state[1]_i_5_n_0 ;
  wire \game_over_state[1]_i_6_n_0 ;
  wire \game_over_state[1]_i_7_n_0 ;
  wire \game_over_state[1]_i_8_n_0 ;
  wire \game_over_state[1]_i_9_n_0 ;
  wire [6:0]input_data;
  wire [3:0]output_game_status;
  wire \player_to_move[0]_i_1_n_0 ;
  wire \player_to_move[1]_i_1_n_0 ;
  wire \player_to_move_reg_n_0_[0] ;
  wire \player_to_move_reg_n_0_[1] ;
  wire ready_prev;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC3CBC0C8)) 
    \FSM_sequential_current_game_state[0]_i_1 
       (.I0(\FSM_sequential_current_game_state[1]_i_2_n_0 ),
        .I1(current_game_state[0]),
        .I2(current_game_state[1]),
        .I3(input_data[4]),
        .I4(input_data[5]),
        .O(\FSM_sequential_current_game_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hC0C4C0F4)) 
    \FSM_sequential_current_game_state[1]_i_1 
       (.I0(\FSM_sequential_current_game_state[1]_i_2_n_0 ),
        .I1(current_game_state[0]),
        .I2(current_game_state[1]),
        .I3(input_data[4]),
        .I4(input_data[5]),
        .O(\FSM_sequential_current_game_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000045)) 
    \FSM_sequential_current_game_state[1]_i_2 
       (.I0(\game_over_state[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_5_n_0 ),
        .I2(\game_over_state[1]_i_4_n_0 ),
        .I3(\game_over_state[1]_i_3_n_0 ),
        .I4(\error_code[1]_i_6_n_0 ),
        .O(\FSM_sequential_current_game_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "running:01,stop:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_game_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_game_state[0]_i_1_n_0 ),
        .Q(current_game_state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "running:01,stop:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_game_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_game_state[1]_i_1_n_0 ),
        .Q(current_game_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[0]_i_1 
       (.I0(board0_in[0]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[1]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[0]_0 ),
        .O(\board[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \board[0]_i_2 
       (.I0(\player_to_move_reg_n_0_[0] ),
        .I1(input_data[0]),
        .I2(input_data[1]),
        .I3(input_data[2]),
        .I4(current_game_state__0),
        .I5(input_data[3]),
        .O(board0_in[0]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[10]_i_1 
       (.I0(board0_in[10]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[11]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[10]_0 ),
        .O(\board[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \board[10]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(input_data[0]),
        .I3(input_data[1]),
        .I4(\board[14]_i_3_n_0 ),
        .O(board0_in[10]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[11]_i_1 
       (.I0(board0_in[11]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[11]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[11]_0 ),
        .O(\board[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \board[11]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(input_data[0]),
        .I3(input_data[1]),
        .I4(\board[15]_i_4_n_0 ),
        .O(board0_in[11]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[11]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[11]_i_4_n_0 ),
        .I5(\board[11]_i_5_n_0 ),
        .O(\board[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDFFFFFF)) 
    \board[11]_i_4 
       (.I0(input_data[6]),
        .I1(ready_prev),
        .I2(input_data[3]),
        .I3(input_data[2]),
        .I4(input_data[0]),
        .I5(input_data[1]),
        .O(\board[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hBBB88B88)) 
    \board[11]_i_5 
       (.I0(\board_reg[17]_0 ),
        .I1(input_data[3]),
        .I2(input_data[2]),
        .I3(\error_code[1]_i_8_n_0 ),
        .I4(\error_code[1]_i_7_n_0 ),
        .O(\board[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[12]_i_1 
       (.I0(\board[12]_i_2_n_0 ),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[13]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[12]_0 ),
        .O(\board[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \board[12]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(\board[14]_i_3_n_0 ),
        .I3(input_data[0]),
        .I4(input_data[1]),
        .O(\board[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[13]_i_1 
       (.I0(\board[13]_i_2_n_0 ),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[13]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[13]_0 ),
        .O(\board[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \board[13]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(\board[15]_i_4_n_0 ),
        .I3(input_data[0]),
        .I4(input_data[1]),
        .O(\board[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \board[13]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(input_data[2]),
        .I5(\board[13]_i_4_n_0 ),
        .O(\board[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFA)) 
    \board[13]_i_4 
       (.I0(\board[13]_i_5_n_0 ),
        .I1(\error_code[1]_i_7_n_0 ),
        .I2(\error_code[1]_i_8_n_0 ),
        .I3(input_data[2]),
        .I4(input_data[3]),
        .I5(\error_code[1]_i_4_n_0 ),
        .O(\board[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \board[13]_i_5 
       (.I0(input_data[0]),
        .I1(input_data[1]),
        .O(\board[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[14]_i_1 
       (.I0(\board[14]_i_2_n_0 ),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[15]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[14]_0 ),
        .O(\board[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \board[14]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(\board[14]_i_3_n_0 ),
        .I3(input_data[1]),
        .I4(input_data[0]),
        .O(\board[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \board[14]_i_3 
       (.I0(\player_to_move_reg_n_0_[0] ),
        .I1(input_data[4]),
        .I2(current_game_state[0]),
        .I3(current_game_state[1]),
        .O(\board[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[15]_i_1 
       (.I0(\board[15]_i_2_n_0 ),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[15]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[15]_0 ),
        .O(\board[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \board[15]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(\board[15]_i_4_n_0 ),
        .I3(input_data[1]),
        .I4(input_data[0]),
        .O(\board[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \board[15]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(input_data[2]),
        .I5(\board[15]_i_6_n_0 ),
        .O(\board[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \board[15]_i_4 
       (.I0(\player_to_move_reg_n_0_[1] ),
        .I1(input_data[4]),
        .I2(current_game_state[0]),
        .I3(current_game_state[1]),
        .O(\board[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0EE0000)) 
    \board[15]_i_5 
       (.I0(\game_over_state[1]_i_10_n_0 ),
        .I1(\board[15]_i_7_n_0 ),
        .I2(\game_over_state[1]_i_11_n_0 ),
        .I3(\board[15]_i_8_n_0 ),
        .I4(\board_reg[17]_0 ),
        .O(\board[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFA)) 
    \board[15]_i_6 
       (.I0(\board[15]_i_9_n_0 ),
        .I1(\error_code[1]_i_7_n_0 ),
        .I2(\error_code[1]_i_8_n_0 ),
        .I3(input_data[2]),
        .I4(input_data[3]),
        .I5(\error_code[1]_i_4_n_0 ),
        .O(\board[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \board[15]_i_7 
       (.I0(\board_reg[12]_0 ),
        .I1(\board_reg[13]_0 ),
        .I2(\board_reg[14]_0 ),
        .I3(\board_reg[17]_0 ),
        .I4(\board_reg[15]_0 ),
        .O(\board[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \board[15]_i_8 
       (.I0(\board_reg[17]_0 ),
        .I1(\board_reg[15]_0 ),
        .I2(\board_reg[14]_0 ),
        .I3(\board_reg[13]_0 ),
        .I4(\board_reg[12]_0 ),
        .O(\board[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \board[15]_i_9 
       (.I0(input_data[1]),
        .I1(input_data[0]),
        .O(\board[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[16]_i_1 
       (.I0(board0_in[16]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[17]_i_4_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[16]_0 ),
        .O(\board[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \board[16]_i_2 
       (.I0(current_game_state__0),
        .I1(input_data[3]),
        .I2(\player_to_move_reg_n_0_[0] ),
        .I3(input_data[0]),
        .I4(input_data[1]),
        .I5(input_data[2]),
        .O(board0_in[16]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[17]_i_1 
       (.I0(board0_in[17]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[17]_i_4_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[17]_0 ),
        .O(\board[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \board[17]_i_2 
       (.I0(input_data[0]),
        .I1(input_data[1]),
        .I2(input_data[2]),
        .I3(\player_to_move_reg_n_0_[1] ),
        .I4(current_game_state__0),
        .I5(input_data[3]),
        .O(board0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \board[17]_i_3 
       (.I0(input_data[5]),
        .I1(current_game_state[1]),
        .I2(current_game_state[0]),
        .O(\board[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \board[17]_i_4 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\game_over_state[1]_i_4_n_0 ),
        .I3(\game_over_state[1]_i_5_n_0 ),
        .I4(\game_over_state[1]_i_6_n_0 ),
        .I5(\board[17]_i_7_n_0 ),
        .O(\board[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \board[17]_i_5 
       (.I0(current_game_state[0]),
        .I1(current_game_state[1]),
        .O(\board[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \board[17]_i_6 
       (.I0(current_game_state[1]),
        .I1(current_game_state[0]),
        .I2(input_data[4]),
        .O(current_game_state__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \board[17]_i_7 
       (.I0(input_data[3]),
        .I1(\board_reg[17]_0 ),
        .I2(\board[17]_i_8_n_0 ),
        .I3(ready_prev),
        .I4(input_data[6]),
        .O(\board[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \board[17]_i_8 
       (.I0(input_data[0]),
        .I1(input_data[1]),
        .I2(input_data[2]),
        .O(\board[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[1]_i_1 
       (.I0(board0_in[1]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[1]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[1]_0 ),
        .O(\board[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \board[1]_i_2 
       (.I0(input_data[0]),
        .I1(input_data[1]),
        .I2(input_data[2]),
        .I3(\player_to_move_reg_n_0_[1] ),
        .I4(current_game_state__0),
        .I5(input_data[3]),
        .O(board0_in[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[1]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[1]_i_4_n_0 ),
        .I5(\error_code[1]_i_5_n_0 ),
        .O(\board[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \board[1]_i_4 
       (.I0(input_data[6]),
        .I1(ready_prev),
        .I2(input_data[2]),
        .I3(input_data[1]),
        .I4(input_data[0]),
        .O(\board[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[2]_i_1 
       (.I0(board0_in[2]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[3]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[2]_0 ),
        .O(\board[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \board[2]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(input_data[0]),
        .I3(input_data[1]),
        .I4(\board[14]_i_3_n_0 ),
        .O(board0_in[2]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[3]_i_1 
       (.I0(board0_in[3]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[3]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[3]_0 ),
        .O(\board[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \board[3]_i_2 
       (.I0(input_data[2]),
        .I1(input_data[3]),
        .I2(input_data[0]),
        .I3(input_data[1]),
        .I4(\board[15]_i_4_n_0 ),
        .O(board0_in[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[3]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[3]_i_4_n_0 ),
        .I5(\board[9]_i_5_n_0 ),
        .O(\board[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \board[3]_i_4 
       (.I0(input_data[2]),
        .I1(input_data[1]),
        .I2(input_data[0]),
        .O(\board[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[4]_i_1 
       (.I0(board0_in[4]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[5]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[4]_0 ),
        .O(\board[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \board[4]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(\board[14]_i_3_n_0 ),
        .I3(input_data[0]),
        .I4(input_data[1]),
        .O(board0_in[4]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[5]_i_1 
       (.I0(board0_in[5]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[5]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[5]_0 ),
        .O(\board[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \board[5]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(\board[15]_i_4_n_0 ),
        .I3(input_data[0]),
        .I4(input_data[1]),
        .O(board0_in[5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[5]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[13]_i_4_n_0 ),
        .I5(input_data[2]),
        .O(\board[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[6]_i_1 
       (.I0(board0_in[6]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[7]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[6]_0 ),
        .O(\board[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \board[6]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(\board[14]_i_3_n_0 ),
        .I3(input_data[1]),
        .I4(input_data[0]),
        .O(board0_in[6]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[7]_i_1 
       (.I0(board0_in[7]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[7]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[7]_0 ),
        .O(\board[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \board[7]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(\board[15]_i_4_n_0 ),
        .I3(input_data[1]),
        .I4(input_data[0]),
        .O(board0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[7]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[15]_i_6_n_0 ),
        .I5(input_data[2]),
        .O(\board[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[8]_i_1 
       (.I0(board0_in[8]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[9]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[8]_0 ),
        .O(\board[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \board[8]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(input_data[1]),
        .I3(input_data[0]),
        .I4(\board[14]_i_3_n_0 ),
        .O(board0_in[8]));
  LUT6 #(
    .INIT(64'hAAABBBBBAAA88888)) 
    \board[9]_i_1 
       (.I0(board0_in[9]),
        .I1(\board[17]_i_3_n_0 ),
        .I2(input_data[4]),
        .I3(\board[9]_i_3_n_0 ),
        .I4(\board[17]_i_5_n_0 ),
        .I5(\board_reg[9]_0 ),
        .O(\board[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \board[9]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(input_data[1]),
        .I3(input_data[0]),
        .I4(\board[15]_i_4_n_0 ),
        .O(board0_in[9]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \board[9]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\board[15]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .I4(\board[9]_i_4_n_0 ),
        .I5(\board[9]_i_5_n_0 ),
        .O(\board[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \board[9]_i_4 
       (.I0(input_data[2]),
        .I1(input_data[0]),
        .I2(input_data[1]),
        .O(\board[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFDFFFDFD)) 
    \board[9]_i_5 
       (.I0(input_data[6]),
        .I1(ready_prev),
        .I2(input_data[3]),
        .I3(input_data[2]),
        .I4(\error_code[1]_i_8_n_0 ),
        .I5(\error_code[1]_i_7_n_0 ),
        .O(\board[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[0]_i_1_n_0 ),
        .Q(\board_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[10]_i_1_n_0 ),
        .Q(\board_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[11]_i_1_n_0 ),
        .Q(\board_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[12]_i_1_n_0 ),
        .Q(\board_reg[12]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[13]_i_1_n_0 ),
        .Q(\board_reg[13]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[14]_i_1_n_0 ),
        .Q(\board_reg[14]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[15]_i_1_n_0 ),
        .Q(\board_reg[15]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[16]_i_1_n_0 ),
        .Q(\board_reg[16]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[17]_i_1_n_0 ),
        .Q(\board_reg[17]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[1]_i_1_n_0 ),
        .Q(\board_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[2]_i_1_n_0 ),
        .Q(\board_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[3]_i_1_n_0 ),
        .Q(\board_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[4]_i_1_n_0 ),
        .Q(\board_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[5]_i_1_n_0 ),
        .Q(\board_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[6]_i_1_n_0 ),
        .Q(\board_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[7]_i_1_n_0 ),
        .Q(\board_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[8]_i_1_n_0 ),
        .Q(\board_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \board_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\board[9]_i_1_n_0 ),
        .Q(\board_reg[9]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCFCF8FC00000800)) 
    \error_code[0]_i_1 
       (.I0(\error_code[0]_i_2_n_0 ),
        .I1(current_game_state[0]),
        .I2(current_game_state[1]),
        .I3(\error_code[1]_i_3_n_0 ),
        .I4(\error_code[1]_i_4_n_0 ),
        .I5(output_game_status[0]),
        .O(\error_code[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \error_code[0]_i_2 
       (.I0(input_data[3]),
        .I1(input_data[2]),
        .I2(input_data[1]),
        .I3(input_data[0]),
        .O(\error_code[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCF8FC00000800)) 
    \error_code[1]_i_1 
       (.I0(\error_code[1]_i_2_n_0 ),
        .I1(current_game_state[0]),
        .I2(current_game_state[1]),
        .I3(\error_code[1]_i_3_n_0 ),
        .I4(\error_code[1]_i_4_n_0 ),
        .I5(output_game_status[1]),
        .O(\error_code[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF00FF00)) 
    \error_code[1]_i_2 
       (.I0(input_data[0]),
        .I1(input_data[1]),
        .I2(input_data[2]),
        .I3(\error_code[1]_i_5_n_0 ),
        .I4(\board_reg[17]_0 ),
        .I5(input_data[3]),
        .O(\error_code[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001101)) 
    \error_code[1]_i_3 
       (.I0(\error_code[1]_i_6_n_0 ),
        .I1(\game_over_state[1]_i_3_n_0 ),
        .I2(\game_over_state[1]_i_4_n_0 ),
        .I3(\game_over_state[1]_i_5_n_0 ),
        .I4(\game_over_state[1]_i_6_n_0 ),
        .I5(input_data[4]),
        .O(\error_code[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \error_code[1]_i_4 
       (.I0(ready_prev),
        .I1(input_data[6]),
        .O(\error_code[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    \error_code[1]_i_5 
       (.I0(\error_code[1]_i_7_n_0 ),
        .I1(\error_code[1]_i_8_n_0 ),
        .I2(input_data[2]),
        .I3(input_data[3]),
        .O(\error_code[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \error_code[1]_i_6 
       (.I0(\board_reg[1]_0 ),
        .I1(\error_code[1]_i_9_n_0 ),
        .I2(\board_reg[9]_0 ),
        .I3(\board_reg[7]_0 ),
        .I4(\board_reg[5]_0 ),
        .I5(\board_reg[3]_0 ),
        .O(\error_code[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \error_code[1]_i_7 
       (.I0(\board_reg[15]_0 ),
        .I1(\board_reg[13]_0 ),
        .I2(input_data[1]),
        .I3(\board_reg[11]_0 ),
        .I4(input_data[0]),
        .I5(\board_reg[9]_0 ),
        .O(\error_code[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \error_code[1]_i_8 
       (.I0(\board_reg[7]_0 ),
        .I1(\board_reg[5]_0 ),
        .I2(input_data[1]),
        .I3(\board_reg[3]_0 ),
        .I4(input_data[0]),
        .I5(\board_reg[1]_0 ),
        .O(\error_code[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \error_code[1]_i_9 
       (.I0(\board_reg[17]_0 ),
        .I1(\board_reg[15]_0 ),
        .I2(\board_reg[13]_0 ),
        .I3(\board_reg[11]_0 ),
        .O(\error_code[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \error_code_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\error_code[0]_i_1_n_0 ),
        .Q(output_game_status[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \error_code_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\error_code[1]_i_1_n_0 ),
        .Q(output_game_status[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF2A002A)) 
    \game_over_state[0]_i_1 
       (.I0(current_game_state[1]),
        .I1(\player_to_move_reg_n_0_[0] ),
        .I2(\game_over_state[1]_i_2_n_0 ),
        .I3(current_game_state[0]),
        .I4(output_game_status[2]),
        .O(\game_over_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    \game_over_state[1]_i_1 
       (.I0(\game_over_state[1]_i_2_n_0 ),
        .I1(current_game_state[1]),
        .I2(current_game_state[0]),
        .I3(output_game_status[3]),
        .O(\game_over_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \game_over_state[1]_i_10 
       (.I0(\board_reg[16]_0 ),
        .I1(\board_reg[10]_0 ),
        .I2(\board_reg[4]_0 ),
        .I3(\board_reg[5]_0 ),
        .I4(\board_reg[11]_0 ),
        .O(\game_over_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD5555555)) 
    \game_over_state[1]_i_11 
       (.I0(\board_reg[16]_0 ),
        .I1(\board_reg[5]_0 ),
        .I2(\board_reg[11]_0 ),
        .I3(\board_reg[10]_0 ),
        .I4(\board_reg[4]_0 ),
        .O(\game_over_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8004000000002001)) 
    \game_over_state[1]_i_12 
       (.I0(\board_reg[12]_0 ),
        .I1(\board_reg[13]_0 ),
        .I2(\board_reg[6]_0 ),
        .I3(\board_reg[0]_0 ),
        .I4(\board_reg[1]_0 ),
        .I5(\board_reg[7]_0 ),
        .O(\game_over_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7FFBFFFFFFFFDFFE)) 
    \game_over_state[1]_i_13 
       (.I0(\board_reg[16]_0 ),
        .I1(\board_reg[17]_0 ),
        .I2(\board_reg[8]_0 ),
        .I3(\board_reg[0]_0 ),
        .I4(\board_reg[1]_0 ),
        .I5(\board_reg[9]_0 ),
        .O(\game_over_state[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8002000000004001)) 
    \game_over_state[1]_i_14 
       (.I0(\board_reg[2]_0 ),
        .I1(\board_reg[3]_0 ),
        .I2(\board_reg[1]_0 ),
        .I3(\board_reg[5]_0 ),
        .I4(\board_reg[4]_0 ),
        .I5(\board_reg[0]_0 ),
        .O(\game_over_state[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \game_over_state[1]_i_2 
       (.I0(\game_over_state[1]_i_3_n_0 ),
        .I1(\game_over_state[1]_i_4_n_0 ),
        .I2(\game_over_state[1]_i_5_n_0 ),
        .I3(\game_over_state[1]_i_6_n_0 ),
        .O(\game_over_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \game_over_state[1]_i_3 
       (.I0(\board_reg[9]_0 ),
        .I1(\game_over_state[1]_i_7_n_0 ),
        .I2(\game_over_state[1]_i_8_n_0 ),
        .I3(\game_over_state[1]_i_9_n_0 ),
        .O(\game_over_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \game_over_state[1]_i_4 
       (.I0(\board_reg[15]_0 ),
        .I1(\board_reg[17]_0 ),
        .I2(\board_reg[14]_0 ),
        .I3(\board_reg[13]_0 ),
        .I4(\board_reg[12]_0 ),
        .I5(\game_over_state[1]_i_10_n_0 ),
        .O(\game_over_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555555557FFFFFFF)) 
    \game_over_state[1]_i_5 
       (.I0(\board_reg[17]_0 ),
        .I1(\board_reg[15]_0 ),
        .I2(\board_reg[14]_0 ),
        .I3(\board_reg[13]_0 ),
        .I4(\board_reg[12]_0 ),
        .I5(\game_over_state[1]_i_11_n_0 ),
        .O(\game_over_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \game_over_state[1]_i_6 
       (.I0(\board_reg[1]_0 ),
        .I1(\game_over_state[1]_i_12_n_0 ),
        .I2(\game_over_state[1]_i_13_n_0 ),
        .I3(\game_over_state[1]_i_14_n_0 ),
        .O(\game_over_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8004000000002001)) 
    \game_over_state[1]_i_7 
       (.I0(\board_reg[12]_0 ),
        .I1(\board_reg[13]_0 ),
        .I2(\board_reg[8]_0 ),
        .I3(\board_reg[4]_0 ),
        .I4(\board_reg[5]_0 ),
        .I5(\board_reg[9]_0 ),
        .O(\game_over_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8002000000004001)) 
    \game_over_state[1]_i_8 
       (.I0(\board_reg[6]_0 ),
        .I1(\board_reg[7]_0 ),
        .I2(\board_reg[9]_0 ),
        .I3(\board_reg[11]_0 ),
        .I4(\board_reg[8]_0 ),
        .I5(\board_reg[10]_0 ),
        .O(\game_over_state[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFF7)) 
    \game_over_state[1]_i_9 
       (.I0(\board_reg[3]_0 ),
        .I1(\board_reg[15]_0 ),
        .I2(\board_reg[2]_0 ),
        .I3(\board_reg[14]_0 ),
        .I4(\board_reg[8]_0 ),
        .O(\game_over_state[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \game_over_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\game_over_state[0]_i_1_n_0 ),
        .Q(output_game_status[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \game_over_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\game_over_state[1]_i_1_n_0 ),
        .Q(output_game_status[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55554555A0A0B0A0)) 
    \player_to_move[0]_i_1 
       (.I0(\board[17]_i_3_n_0 ),
        .I1(\error_code[1]_i_2_n_0 ),
        .I2(\board[17]_i_5_n_0 ),
        .I3(\error_code[1]_i_3_n_0 ),
        .I4(\error_code[1]_i_4_n_0 ),
        .I5(\player_to_move_reg_n_0_[0] ),
        .O(\player_to_move[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \player_to_move[1]_i_1 
       (.I0(input_data[5]),
        .I1(current_game_state[1]),
        .I2(current_game_state[0]),
        .I3(\player_to_move_reg_n_0_[1] ),
        .O(\player_to_move[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \player_to_move_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\player_to_move[0]_i_1_n_0 ),
        .Q(\player_to_move_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \player_to_move_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\player_to_move[1]_i_1_n_0 ),
        .Q(\player_to_move_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ready_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(input_data[6]),
        .Q(ready_prev),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
