-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Dec  2 18:43:47 2025
-- Host        : Tzar running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               a:/Facultate/Labs/SSC/TicTacToe/Hardware/zybo_hdmi.gen/sources_1/bd/hdmi/ip/hdmi_gameLogic_0_0/hdmi_gameLogic_0_0_stub.vhdl
-- Design      : hdmi_gameLogic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_gameLogic_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    input_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_game_status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end hdmi_gameLogic_0_0;

architecture stub of hdmi_gameLogic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,input_data[31:0],output_game_status[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gameLogic,Vivado 2024.1";
begin
end;
