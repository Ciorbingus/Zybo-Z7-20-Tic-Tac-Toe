-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Dec  2 18:43:47 2025
-- Host        : Tzar running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               a:/Facultate/Labs/SSC/TicTacToe/Hardware/zybo_hdmi.gen/sources_1/bd/hdmi/ip/hdmi_gameLogic_0_0/hdmi_gameLogic_0_0_sim_netlist.vhdl
-- Design      : hdmi_gameLogic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_gameLogic_0_0_gameLogic is
  port (
    \board_reg[17]_0\ : out STD_LOGIC;
    \board_reg[16]_0\ : out STD_LOGIC;
    \board_reg[15]_0\ : out STD_LOGIC;
    \board_reg[14]_0\ : out STD_LOGIC;
    \board_reg[13]_0\ : out STD_LOGIC;
    \board_reg[12]_0\ : out STD_LOGIC;
    \board_reg[11]_0\ : out STD_LOGIC;
    \board_reg[10]_0\ : out STD_LOGIC;
    \board_reg[9]_0\ : out STD_LOGIC;
    \board_reg[8]_0\ : out STD_LOGIC;
    \board_reg[7]_0\ : out STD_LOGIC;
    \board_reg[6]_0\ : out STD_LOGIC;
    \board_reg[5]_0\ : out STD_LOGIC;
    \board_reg[4]_0\ : out STD_LOGIC;
    \board_reg[3]_0\ : out STD_LOGIC;
    \board_reg[2]_0\ : out STD_LOGIC;
    \board_reg[1]_0\ : out STD_LOGIC;
    \board_reg[0]_0\ : out STD_LOGIC;
    output_game_status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    input_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_gameLogic_0_0_gameLogic : entity is "gameLogic";
end hdmi_gameLogic_0_0_gameLogic;

architecture STRUCTURE of hdmi_gameLogic_0_0_gameLogic is
  signal \FSM_sequential_current_game_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_game_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_game_state[1]_i_2_n_0\ : STD_LOGIC;
  signal board0_in : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \board[0]_i_1_n_0\ : STD_LOGIC;
  signal \board[10]_i_1_n_0\ : STD_LOGIC;
  signal \board[11]_i_1_n_0\ : STD_LOGIC;
  signal \board[11]_i_3_n_0\ : STD_LOGIC;
  signal \board[11]_i_4_n_0\ : STD_LOGIC;
  signal \board[11]_i_5_n_0\ : STD_LOGIC;
  signal \board[12]_i_1_n_0\ : STD_LOGIC;
  signal \board[12]_i_2_n_0\ : STD_LOGIC;
  signal \board[13]_i_1_n_0\ : STD_LOGIC;
  signal \board[13]_i_2_n_0\ : STD_LOGIC;
  signal \board[13]_i_3_n_0\ : STD_LOGIC;
  signal \board[13]_i_4_n_0\ : STD_LOGIC;
  signal \board[13]_i_5_n_0\ : STD_LOGIC;
  signal \board[14]_i_1_n_0\ : STD_LOGIC;
  signal \board[14]_i_2_n_0\ : STD_LOGIC;
  signal \board[14]_i_3_n_0\ : STD_LOGIC;
  signal \board[15]_i_1_n_0\ : STD_LOGIC;
  signal \board[15]_i_2_n_0\ : STD_LOGIC;
  signal \board[15]_i_3_n_0\ : STD_LOGIC;
  signal \board[15]_i_4_n_0\ : STD_LOGIC;
  signal \board[15]_i_5_n_0\ : STD_LOGIC;
  signal \board[15]_i_6_n_0\ : STD_LOGIC;
  signal \board[15]_i_7_n_0\ : STD_LOGIC;
  signal \board[15]_i_8_n_0\ : STD_LOGIC;
  signal \board[15]_i_9_n_0\ : STD_LOGIC;
  signal \board[16]_i_1_n_0\ : STD_LOGIC;
  signal \board[17]_i_1_n_0\ : STD_LOGIC;
  signal \board[17]_i_3_n_0\ : STD_LOGIC;
  signal \board[17]_i_4_n_0\ : STD_LOGIC;
  signal \board[17]_i_5_n_0\ : STD_LOGIC;
  signal \board[17]_i_7_n_0\ : STD_LOGIC;
  signal \board[17]_i_8_n_0\ : STD_LOGIC;
  signal \board[1]_i_1_n_0\ : STD_LOGIC;
  signal \board[1]_i_3_n_0\ : STD_LOGIC;
  signal \board[1]_i_4_n_0\ : STD_LOGIC;
  signal \board[2]_i_1_n_0\ : STD_LOGIC;
  signal \board[3]_i_1_n_0\ : STD_LOGIC;
  signal \board[3]_i_3_n_0\ : STD_LOGIC;
  signal \board[3]_i_4_n_0\ : STD_LOGIC;
  signal \board[4]_i_1_n_0\ : STD_LOGIC;
  signal \board[5]_i_1_n_0\ : STD_LOGIC;
  signal \board[5]_i_3_n_0\ : STD_LOGIC;
  signal \board[6]_i_1_n_0\ : STD_LOGIC;
  signal \board[7]_i_1_n_0\ : STD_LOGIC;
  signal \board[7]_i_3_n_0\ : STD_LOGIC;
  signal \board[8]_i_1_n_0\ : STD_LOGIC;
  signal \board[9]_i_1_n_0\ : STD_LOGIC;
  signal \board[9]_i_3_n_0\ : STD_LOGIC;
  signal \board[9]_i_4_n_0\ : STD_LOGIC;
  signal \board[9]_i_5_n_0\ : STD_LOGIC;
  signal \^board_reg[0]_0\ : STD_LOGIC;
  signal \^board_reg[10]_0\ : STD_LOGIC;
  signal \^board_reg[11]_0\ : STD_LOGIC;
  signal \^board_reg[12]_0\ : STD_LOGIC;
  signal \^board_reg[13]_0\ : STD_LOGIC;
  signal \^board_reg[14]_0\ : STD_LOGIC;
  signal \^board_reg[15]_0\ : STD_LOGIC;
  signal \^board_reg[16]_0\ : STD_LOGIC;
  signal \^board_reg[17]_0\ : STD_LOGIC;
  signal \^board_reg[1]_0\ : STD_LOGIC;
  signal \^board_reg[2]_0\ : STD_LOGIC;
  signal \^board_reg[3]_0\ : STD_LOGIC;
  signal \^board_reg[4]_0\ : STD_LOGIC;
  signal \^board_reg[5]_0\ : STD_LOGIC;
  signal \^board_reg[6]_0\ : STD_LOGIC;
  signal \^board_reg[7]_0\ : STD_LOGIC;
  signal \^board_reg[8]_0\ : STD_LOGIC;
  signal \^board_reg[9]_0\ : STD_LOGIC;
  signal current_game_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \current_game_state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \error_code[0]_i_1_n_0\ : STD_LOGIC;
  signal \error_code[0]_i_2_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_1_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_2_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_3_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_4_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_5_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_6_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_7_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_8_n_0\ : STD_LOGIC;
  signal \error_code[1]_i_9_n_0\ : STD_LOGIC;
  signal \game_over_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \game_over_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \^output_game_status\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \player_to_move[0]_i_1_n_0\ : STD_LOGIC;
  signal \player_to_move[1]_i_1_n_0\ : STD_LOGIC;
  signal \player_to_move_reg_n_0_[0]\ : STD_LOGIC;
  signal \player_to_move_reg_n_0_[1]\ : STD_LOGIC;
  signal ready_prev : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_game_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_current_game_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_current_game_state[1]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_game_state_reg[0]\ : label is "running:01,stop:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_game_state_reg[1]\ : label is "running:01,stop:10,idle:00";
  attribute SOFT_HLUTNM of \board[10]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \board[11]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \board[11]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \board[12]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \board[13]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \board[14]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \board[14]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \board[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \board[15]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \board[15]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \board[15]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \board[15]_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \board[17]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \board[17]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \board[17]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \board[17]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \board[17]_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \board[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \board[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \board[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \board[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \board[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \board[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \board[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \board[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \board[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \board[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \board[9]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \error_code[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \error_code[1]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \error_code[1]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \game_over_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \game_over_state[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \game_over_state[1]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \game_over_state[1]_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \game_over_state[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \player_to_move[1]_i_1\ : label is "soft_lutpair16";
begin
  \board_reg[0]_0\ <= \^board_reg[0]_0\;
  \board_reg[10]_0\ <= \^board_reg[10]_0\;
  \board_reg[11]_0\ <= \^board_reg[11]_0\;
  \board_reg[12]_0\ <= \^board_reg[12]_0\;
  \board_reg[13]_0\ <= \^board_reg[13]_0\;
  \board_reg[14]_0\ <= \^board_reg[14]_0\;
  \board_reg[15]_0\ <= \^board_reg[15]_0\;
  \board_reg[16]_0\ <= \^board_reg[16]_0\;
  \board_reg[17]_0\ <= \^board_reg[17]_0\;
  \board_reg[1]_0\ <= \^board_reg[1]_0\;
  \board_reg[2]_0\ <= \^board_reg[2]_0\;
  \board_reg[3]_0\ <= \^board_reg[3]_0\;
  \board_reg[4]_0\ <= \^board_reg[4]_0\;
  \board_reg[5]_0\ <= \^board_reg[5]_0\;
  \board_reg[6]_0\ <= \^board_reg[6]_0\;
  \board_reg[7]_0\ <= \^board_reg[7]_0\;
  \board_reg[8]_0\ <= \^board_reg[8]_0\;
  \board_reg[9]_0\ <= \^board_reg[9]_0\;
  output_game_status(3 downto 0) <= \^output_game_status\(3 downto 0);
\FSM_sequential_current_game_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3CBC0C8"
    )
        port map (
      I0 => \FSM_sequential_current_game_state[1]_i_2_n_0\,
      I1 => current_game_state(0),
      I2 => current_game_state(1),
      I3 => input_data(4),
      I4 => input_data(5),
      O => \FSM_sequential_current_game_state[0]_i_1_n_0\
    );
\FSM_sequential_current_game_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C4C0F4"
    )
        port map (
      I0 => \FSM_sequential_current_game_state[1]_i_2_n_0\,
      I1 => current_game_state(0),
      I2 => current_game_state(1),
      I3 => input_data(4),
      I4 => input_data(5),
      O => \FSM_sequential_current_game_state[1]_i_1_n_0\
    );
\FSM_sequential_current_game_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000045"
    )
        port map (
      I0 => \game_over_state[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_5_n_0\,
      I2 => \game_over_state[1]_i_4_n_0\,
      I3 => \game_over_state[1]_i_3_n_0\,
      I4 => \error_code[1]_i_6_n_0\,
      O => \FSM_sequential_current_game_state[1]_i_2_n_0\
    );
\FSM_sequential_current_game_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_game_state[0]_i_1_n_0\,
      Q => current_game_state(0),
      R => '0'
    );
\FSM_sequential_current_game_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_game_state[1]_i_1_n_0\,
      Q => current_game_state(1),
      R => '0'
    );
\board[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(0),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[1]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[0]_0\,
      O => \board[0]_i_1_n_0\
    );
\board[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \player_to_move_reg_n_0_[0]\,
      I1 => input_data(0),
      I2 => input_data(1),
      I3 => input_data(2),
      I4 => \current_game_state__0\(1),
      I5 => input_data(3),
      O => board0_in(0)
    );
\board[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(10),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[11]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[10]_0\,
      O => \board[10]_i_1_n_0\
    );
\board[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => input_data(0),
      I3 => input_data(1),
      I4 => \board[14]_i_3_n_0\,
      O => board0_in(10)
    );
\board[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(11),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[11]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[11]_0\,
      O => \board[11]_i_1_n_0\
    );
\board[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => input_data(0),
      I3 => input_data(1),
      I4 => \board[15]_i_4_n_0\,
      O => board0_in(11)
    );
\board[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[11]_i_4_n_0\,
      I5 => \board[11]_i_5_n_0\,
      O => \board[11]_i_3_n_0\
    );
\board[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => input_data(6),
      I1 => ready_prev,
      I2 => input_data(3),
      I3 => input_data(2),
      I4 => input_data(0),
      I5 => input_data(1),
      O => \board[11]_i_4_n_0\
    );
\board[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88B88"
    )
        port map (
      I0 => \^board_reg[17]_0\,
      I1 => input_data(3),
      I2 => input_data(2),
      I3 => \error_code[1]_i_8_n_0\,
      I4 => \error_code[1]_i_7_n_0\,
      O => \board[11]_i_5_n_0\
    );
\board[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => \board[12]_i_2_n_0\,
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[13]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[12]_0\,
      O => \board[12]_i_1_n_0\
    );
\board[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => \board[14]_i_3_n_0\,
      I3 => input_data(0),
      I4 => input_data(1),
      O => \board[12]_i_2_n_0\
    );
\board[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => \board[13]_i_2_n_0\,
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[13]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[13]_0\,
      O => \board[13]_i_1_n_0\
    );
\board[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => \board[15]_i_4_n_0\,
      I3 => input_data(0),
      I4 => input_data(1),
      O => \board[13]_i_2_n_0\
    );
\board[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => input_data(2),
      I5 => \board[13]_i_4_n_0\,
      O => \board[13]_i_3_n_0\
    );
\board[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFA"
    )
        port map (
      I0 => \board[13]_i_5_n_0\,
      I1 => \error_code[1]_i_7_n_0\,
      I2 => \error_code[1]_i_8_n_0\,
      I3 => input_data(2),
      I4 => input_data(3),
      I5 => \error_code[1]_i_4_n_0\,
      O => \board[13]_i_4_n_0\
    );
\board[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => input_data(0),
      I1 => input_data(1),
      O => \board[13]_i_5_n_0\
    );
\board[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => \board[14]_i_2_n_0\,
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[15]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[14]_0\,
      O => \board[14]_i_1_n_0\
    );
\board[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => \board[14]_i_3_n_0\,
      I3 => input_data(1),
      I4 => input_data(0),
      O => \board[14]_i_2_n_0\
    );
\board[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \player_to_move_reg_n_0_[0]\,
      I1 => input_data(4),
      I2 => current_game_state(0),
      I3 => current_game_state(1),
      O => \board[14]_i_3_n_0\
    );
\board[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => \board[15]_i_2_n_0\,
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[15]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[15]_0\,
      O => \board[15]_i_1_n_0\
    );
\board[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => \board[15]_i_4_n_0\,
      I3 => input_data(1),
      I4 => input_data(0),
      O => \board[15]_i_2_n_0\
    );
\board[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => input_data(2),
      I5 => \board[15]_i_6_n_0\,
      O => \board[15]_i_3_n_0\
    );
\board[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \player_to_move_reg_n_0_[1]\,
      I1 => input_data(4),
      I2 => current_game_state(0),
      I3 => current_game_state(1),
      O => \board[15]_i_4_n_0\
    );
\board[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EE0000"
    )
        port map (
      I0 => \game_over_state[1]_i_10_n_0\,
      I1 => \board[15]_i_7_n_0\,
      I2 => \game_over_state[1]_i_11_n_0\,
      I3 => \board[15]_i_8_n_0\,
      I4 => \^board_reg[17]_0\,
      O => \board[15]_i_5_n_0\
    );
\board[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFA"
    )
        port map (
      I0 => \board[15]_i_9_n_0\,
      I1 => \error_code[1]_i_7_n_0\,
      I2 => \error_code[1]_i_8_n_0\,
      I3 => input_data(2),
      I4 => input_data(3),
      I5 => \error_code[1]_i_4_n_0\,
      O => \board[15]_i_6_n_0\
    );
\board[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \^board_reg[12]_0\,
      I1 => \^board_reg[13]_0\,
      I2 => \^board_reg[14]_0\,
      I3 => \^board_reg[17]_0\,
      I4 => \^board_reg[15]_0\,
      O => \board[15]_i_7_n_0\
    );
\board[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^board_reg[17]_0\,
      I1 => \^board_reg[15]_0\,
      I2 => \^board_reg[14]_0\,
      I3 => \^board_reg[13]_0\,
      I4 => \^board_reg[12]_0\,
      O => \board[15]_i_8_n_0\
    );
\board[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => input_data(1),
      I1 => input_data(0),
      O => \board[15]_i_9_n_0\
    );
\board[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(16),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[17]_i_4_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[16]_0\,
      O => \board[16]_i_1_n_0\
    );
\board[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \current_game_state__0\(1),
      I1 => input_data(3),
      I2 => \player_to_move_reg_n_0_[0]\,
      I3 => input_data(0),
      I4 => input_data(1),
      I5 => input_data(2),
      O => board0_in(16)
    );
\board[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(17),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[17]_i_4_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[17]_0\,
      O => \board[17]_i_1_n_0\
    );
\board[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => input_data(0),
      I1 => input_data(1),
      I2 => input_data(2),
      I3 => \player_to_move_reg_n_0_[1]\,
      I4 => \current_game_state__0\(1),
      I5 => input_data(3),
      O => board0_in(17)
    );
\board[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => input_data(5),
      I1 => current_game_state(1),
      I2 => current_game_state(0),
      O => \board[17]_i_3_n_0\
    );
\board[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001101"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \game_over_state[1]_i_4_n_0\,
      I3 => \game_over_state[1]_i_5_n_0\,
      I4 => \game_over_state[1]_i_6_n_0\,
      I5 => \board[17]_i_7_n_0\,
      O => \board[17]_i_4_n_0\
    );
\board[17]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_game_state(0),
      I1 => current_game_state(1),
      O => \board[17]_i_5_n_0\
    );
\board[17]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => current_game_state(1),
      I1 => current_game_state(0),
      I2 => input_data(4),
      O => \current_game_state__0\(1)
    );
\board[17]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => input_data(3),
      I1 => \^board_reg[17]_0\,
      I2 => \board[17]_i_8_n_0\,
      I3 => ready_prev,
      I4 => input_data(6),
      O => \board[17]_i_7_n_0\
    );
\board[17]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => input_data(0),
      I1 => input_data(1),
      I2 => input_data(2),
      O => \board[17]_i_8_n_0\
    );
\board[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(1),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[1]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[1]_0\,
      O => \board[1]_i_1_n_0\
    );
\board[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => input_data(0),
      I1 => input_data(1),
      I2 => input_data(2),
      I3 => \player_to_move_reg_n_0_[1]\,
      I4 => \current_game_state__0\(1),
      I5 => input_data(3),
      O => board0_in(1)
    );
\board[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[1]_i_4_n_0\,
      I5 => \error_code[1]_i_5_n_0\,
      O => \board[1]_i_3_n_0\
    );
\board[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => input_data(6),
      I1 => ready_prev,
      I2 => input_data(2),
      I3 => input_data(1),
      I4 => input_data(0),
      O => \board[1]_i_4_n_0\
    );
\board[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(2),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[3]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[2]_0\,
      O => \board[2]_i_1_n_0\
    );
\board[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => input_data(0),
      I3 => input_data(1),
      I4 => \board[14]_i_3_n_0\,
      O => board0_in(2)
    );
\board[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(3),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[3]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[3]_0\,
      O => \board[3]_i_1_n_0\
    );
\board[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(3),
      I2 => input_data(0),
      I3 => input_data(1),
      I4 => \board[15]_i_4_n_0\,
      O => board0_in(3)
    );
\board[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[3]_i_4_n_0\,
      I5 => \board[9]_i_5_n_0\,
      O => \board[3]_i_3_n_0\
    );
\board[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(1),
      I2 => input_data(0),
      O => \board[3]_i_4_n_0\
    );
\board[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(4),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[5]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[4]_0\,
      O => \board[4]_i_1_n_0\
    );
\board[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => \board[14]_i_3_n_0\,
      I3 => input_data(0),
      I4 => input_data(1),
      O => board0_in(4)
    );
\board[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(5),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[5]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[5]_0\,
      O => \board[5]_i_1_n_0\
    );
\board[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => \board[15]_i_4_n_0\,
      I3 => input_data(0),
      I4 => input_data(1),
      O => board0_in(5)
    );
\board[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[13]_i_4_n_0\,
      I5 => input_data(2),
      O => \board[5]_i_3_n_0\
    );
\board[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(6),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[7]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[6]_0\,
      O => \board[6]_i_1_n_0\
    );
\board[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => \board[14]_i_3_n_0\,
      I3 => input_data(1),
      I4 => input_data(0),
      O => board0_in(6)
    );
\board[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(7),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[7]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[7]_0\,
      O => \board[7]_i_1_n_0\
    );
\board[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => \board[15]_i_4_n_0\,
      I3 => input_data(1),
      I4 => input_data(0),
      O => board0_in(7)
    );
\board[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[15]_i_6_n_0\,
      I5 => input_data(2),
      O => \board[7]_i_3_n_0\
    );
\board[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(8),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[9]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[8]_0\,
      O => \board[8]_i_1_n_0\
    );
\board[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => input_data(1),
      I3 => input_data(0),
      I4 => \board[14]_i_3_n_0\,
      O => board0_in(8)
    );
\board[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAA88888"
    )
        port map (
      I0 => board0_in(9),
      I1 => \board[17]_i_3_n_0\,
      I2 => input_data(4),
      I3 => \board[9]_i_3_n_0\,
      I4 => \board[17]_i_5_n_0\,
      I5 => \^board_reg[9]_0\,
      O => \board[9]_i_1_n_0\
    );
\board[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => input_data(1),
      I3 => input_data(0),
      I4 => \board[15]_i_4_n_0\,
      O => board0_in(9)
    );
\board[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \board[15]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      I4 => \board[9]_i_4_n_0\,
      I5 => \board[9]_i_5_n_0\,
      O => \board[9]_i_3_n_0\
    );
\board[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => input_data(2),
      I1 => input_data(0),
      I2 => input_data(1),
      O => \board[9]_i_4_n_0\
    );
\board[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFDFFFDFD"
    )
        port map (
      I0 => input_data(6),
      I1 => ready_prev,
      I2 => input_data(3),
      I3 => input_data(2),
      I4 => \error_code[1]_i_8_n_0\,
      I5 => \error_code[1]_i_7_n_0\,
      O => \board[9]_i_5_n_0\
    );
\board_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[0]_i_1_n_0\,
      Q => \^board_reg[0]_0\,
      R => '0'
    );
\board_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[10]_i_1_n_0\,
      Q => \^board_reg[10]_0\,
      R => '0'
    );
\board_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[11]_i_1_n_0\,
      Q => \^board_reg[11]_0\,
      R => '0'
    );
\board_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[12]_i_1_n_0\,
      Q => \^board_reg[12]_0\,
      R => '0'
    );
\board_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[13]_i_1_n_0\,
      Q => \^board_reg[13]_0\,
      R => '0'
    );
\board_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[14]_i_1_n_0\,
      Q => \^board_reg[14]_0\,
      R => '0'
    );
\board_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[15]_i_1_n_0\,
      Q => \^board_reg[15]_0\,
      R => '0'
    );
\board_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[16]_i_1_n_0\,
      Q => \^board_reg[16]_0\,
      R => '0'
    );
\board_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[17]_i_1_n_0\,
      Q => \^board_reg[17]_0\,
      R => '0'
    );
\board_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[1]_i_1_n_0\,
      Q => \^board_reg[1]_0\,
      R => '0'
    );
\board_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[2]_i_1_n_0\,
      Q => \^board_reg[2]_0\,
      R => '0'
    );
\board_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[3]_i_1_n_0\,
      Q => \^board_reg[3]_0\,
      R => '0'
    );
\board_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[4]_i_1_n_0\,
      Q => \^board_reg[4]_0\,
      R => '0'
    );
\board_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[5]_i_1_n_0\,
      Q => \^board_reg[5]_0\,
      R => '0'
    );
\board_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[6]_i_1_n_0\,
      Q => \^board_reg[6]_0\,
      R => '0'
    );
\board_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[7]_i_1_n_0\,
      Q => \^board_reg[7]_0\,
      R => '0'
    );
\board_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[8]_i_1_n_0\,
      Q => \^board_reg[8]_0\,
      R => '0'
    );
\board_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \board[9]_i_1_n_0\,
      Q => \^board_reg[9]_0\,
      R => '0'
    );
\error_code[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCF8FC00000800"
    )
        port map (
      I0 => \error_code[0]_i_2_n_0\,
      I1 => current_game_state(0),
      I2 => current_game_state(1),
      I3 => \error_code[1]_i_3_n_0\,
      I4 => \error_code[1]_i_4_n_0\,
      I5 => \^output_game_status\(0),
      O => \error_code[0]_i_1_n_0\
    );
\error_code[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => input_data(3),
      I1 => input_data(2),
      I2 => input_data(1),
      I3 => input_data(0),
      O => \error_code[0]_i_2_n_0\
    );
\error_code[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCF8FC00000800"
    )
        port map (
      I0 => \error_code[1]_i_2_n_0\,
      I1 => current_game_state(0),
      I2 => current_game_state(1),
      I3 => \error_code[1]_i_3_n_0\,
      I4 => \error_code[1]_i_4_n_0\,
      I5 => \^output_game_status\(1),
      O => \error_code[1]_i_1_n_0\
    );
\error_code[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFF00FF00"
    )
        port map (
      I0 => input_data(0),
      I1 => input_data(1),
      I2 => input_data(2),
      I3 => \error_code[1]_i_5_n_0\,
      I4 => \^board_reg[17]_0\,
      I5 => input_data(3),
      O => \error_code[1]_i_2_n_0\
    );
\error_code[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001101"
    )
        port map (
      I0 => \error_code[1]_i_6_n_0\,
      I1 => \game_over_state[1]_i_3_n_0\,
      I2 => \game_over_state[1]_i_4_n_0\,
      I3 => \game_over_state[1]_i_5_n_0\,
      I4 => \game_over_state[1]_i_6_n_0\,
      I5 => input_data(4),
      O => \error_code[1]_i_3_n_0\
    );
\error_code[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ready_prev,
      I1 => input_data(6),
      O => \error_code[1]_i_4_n_0\
    );
\error_code[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAC"
    )
        port map (
      I0 => \error_code[1]_i_7_n_0\,
      I1 => \error_code[1]_i_8_n_0\,
      I2 => input_data(2),
      I3 => input_data(3),
      O => \error_code[1]_i_5_n_0\
    );
\error_code[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^board_reg[1]_0\,
      I1 => \error_code[1]_i_9_n_0\,
      I2 => \^board_reg[9]_0\,
      I3 => \^board_reg[7]_0\,
      I4 => \^board_reg[5]_0\,
      I5 => \^board_reg[3]_0\,
      O => \error_code[1]_i_6_n_0\
    );
\error_code[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^board_reg[15]_0\,
      I1 => \^board_reg[13]_0\,
      I2 => input_data(1),
      I3 => \^board_reg[11]_0\,
      I4 => input_data(0),
      I5 => \^board_reg[9]_0\,
      O => \error_code[1]_i_7_n_0\
    );
\error_code[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^board_reg[7]_0\,
      I1 => \^board_reg[5]_0\,
      I2 => input_data(1),
      I3 => \^board_reg[3]_0\,
      I4 => input_data(0),
      I5 => \^board_reg[1]_0\,
      O => \error_code[1]_i_8_n_0\
    );
\error_code[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^board_reg[17]_0\,
      I1 => \^board_reg[15]_0\,
      I2 => \^board_reg[13]_0\,
      I3 => \^board_reg[11]_0\,
      O => \error_code[1]_i_9_n_0\
    );
\error_code_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \error_code[0]_i_1_n_0\,
      Q => \^output_game_status\(0),
      R => '0'
    );
\error_code_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \error_code[1]_i_1_n_0\,
      Q => \^output_game_status\(1),
      R => '0'
    );
\game_over_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A002A"
    )
        port map (
      I0 => current_game_state(1),
      I1 => \player_to_move_reg_n_0_[0]\,
      I2 => \game_over_state[1]_i_2_n_0\,
      I3 => current_game_state(0),
      I4 => \^output_game_status\(2),
      O => \game_over_state[0]_i_1_n_0\
    );
\game_over_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \game_over_state[1]_i_2_n_0\,
      I1 => current_game_state(1),
      I2 => current_game_state(0),
      I3 => \^output_game_status\(3),
      O => \game_over_state[1]_i_1_n_0\
    );
\game_over_state[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \^board_reg[16]_0\,
      I1 => \^board_reg[10]_0\,
      I2 => \^board_reg[4]_0\,
      I3 => \^board_reg[5]_0\,
      I4 => \^board_reg[11]_0\,
      O => \game_over_state[1]_i_10_n_0\
    );
\game_over_state[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555555"
    )
        port map (
      I0 => \^board_reg[16]_0\,
      I1 => \^board_reg[5]_0\,
      I2 => \^board_reg[11]_0\,
      I3 => \^board_reg[10]_0\,
      I4 => \^board_reg[4]_0\,
      O => \game_over_state[1]_i_11_n_0\
    );
\game_over_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8004000000002001"
    )
        port map (
      I0 => \^board_reg[12]_0\,
      I1 => \^board_reg[13]_0\,
      I2 => \^board_reg[6]_0\,
      I3 => \^board_reg[0]_0\,
      I4 => \^board_reg[1]_0\,
      I5 => \^board_reg[7]_0\,
      O => \game_over_state[1]_i_12_n_0\
    );
\game_over_state[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFBFFFFFFFFDFFE"
    )
        port map (
      I0 => \^board_reg[16]_0\,
      I1 => \^board_reg[17]_0\,
      I2 => \^board_reg[8]_0\,
      I3 => \^board_reg[0]_0\,
      I4 => \^board_reg[1]_0\,
      I5 => \^board_reg[9]_0\,
      O => \game_over_state[1]_i_13_n_0\
    );
\game_over_state[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002000000004001"
    )
        port map (
      I0 => \^board_reg[2]_0\,
      I1 => \^board_reg[3]_0\,
      I2 => \^board_reg[1]_0\,
      I3 => \^board_reg[5]_0\,
      I4 => \^board_reg[4]_0\,
      I5 => \^board_reg[0]_0\,
      O => \game_over_state[1]_i_14_n_0\
    );
\game_over_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \game_over_state[1]_i_3_n_0\,
      I1 => \game_over_state[1]_i_4_n_0\,
      I2 => \game_over_state[1]_i_5_n_0\,
      I3 => \game_over_state[1]_i_6_n_0\,
      O => \game_over_state[1]_i_2_n_0\
    );
\game_over_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \^board_reg[9]_0\,
      I1 => \game_over_state[1]_i_7_n_0\,
      I2 => \game_over_state[1]_i_8_n_0\,
      I3 => \game_over_state[1]_i_9_n_0\,
      O => \game_over_state[1]_i_3_n_0\
    );
\game_over_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000800"
    )
        port map (
      I0 => \^board_reg[15]_0\,
      I1 => \^board_reg[17]_0\,
      I2 => \^board_reg[14]_0\,
      I3 => \^board_reg[13]_0\,
      I4 => \^board_reg[12]_0\,
      I5 => \game_over_state[1]_i_10_n_0\,
      O => \game_over_state[1]_i_4_n_0\
    );
\game_over_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555557FFFFFFF"
    )
        port map (
      I0 => \^board_reg[17]_0\,
      I1 => \^board_reg[15]_0\,
      I2 => \^board_reg[14]_0\,
      I3 => \^board_reg[13]_0\,
      I4 => \^board_reg[12]_0\,
      I5 => \game_over_state[1]_i_11_n_0\,
      O => \game_over_state[1]_i_5_n_0\
    );
\game_over_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \^board_reg[1]_0\,
      I1 => \game_over_state[1]_i_12_n_0\,
      I2 => \game_over_state[1]_i_13_n_0\,
      I3 => \game_over_state[1]_i_14_n_0\,
      O => \game_over_state[1]_i_6_n_0\
    );
\game_over_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8004000000002001"
    )
        port map (
      I0 => \^board_reg[12]_0\,
      I1 => \^board_reg[13]_0\,
      I2 => \^board_reg[8]_0\,
      I3 => \^board_reg[4]_0\,
      I4 => \^board_reg[5]_0\,
      I5 => \^board_reg[9]_0\,
      O => \game_over_state[1]_i_7_n_0\
    );
\game_over_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002000000004001"
    )
        port map (
      I0 => \^board_reg[6]_0\,
      I1 => \^board_reg[7]_0\,
      I2 => \^board_reg[9]_0\,
      I3 => \^board_reg[11]_0\,
      I4 => \^board_reg[8]_0\,
      I5 => \^board_reg[10]_0\,
      O => \game_over_state[1]_i_8_n_0\
    );
\game_over_state[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFF7"
    )
        port map (
      I0 => \^board_reg[3]_0\,
      I1 => \^board_reg[15]_0\,
      I2 => \^board_reg[2]_0\,
      I3 => \^board_reg[14]_0\,
      I4 => \^board_reg[8]_0\,
      O => \game_over_state[1]_i_9_n_0\
    );
\game_over_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \game_over_state[0]_i_1_n_0\,
      Q => \^output_game_status\(2),
      R => '0'
    );
\game_over_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \game_over_state[1]_i_1_n_0\,
      Q => \^output_game_status\(3),
      R => '0'
    );
\player_to_move[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55554555A0A0B0A0"
    )
        port map (
      I0 => \board[17]_i_3_n_0\,
      I1 => \error_code[1]_i_2_n_0\,
      I2 => \board[17]_i_5_n_0\,
      I3 => \error_code[1]_i_3_n_0\,
      I4 => \error_code[1]_i_4_n_0\,
      I5 => \player_to_move_reg_n_0_[0]\,
      O => \player_to_move[0]_i_1_n_0\
    );
\player_to_move[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => input_data(5),
      I1 => current_game_state(1),
      I2 => current_game_state(0),
      I3 => \player_to_move_reg_n_0_[1]\,
      O => \player_to_move[1]_i_1_n_0\
    );
\player_to_move_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \player_to_move[0]_i_1_n_0\,
      Q => \player_to_move_reg_n_0_[0]\,
      R => '0'
    );
\player_to_move_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \player_to_move[1]_i_1_n_0\,
      Q => \player_to_move_reg_n_0_[1]\,
      R => '0'
    );
ready_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => input_data(6),
      Q => ready_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_gameLogic_0_0 is
  port (
    clk : in STD_LOGIC;
    input_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_game_status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_gameLogic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_gameLogic_0_0 : entity is "hdmi_gameLogic_0_0,gameLogic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hdmi_gameLogic_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hdmi_gameLogic_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hdmi_gameLogic_0_0 : entity is "gameLogic,Vivado 2024.1";
end hdmi_gameLogic_0_0;

architecture STRUCTURE of hdmi_gameLogic_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^output_game_status\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN hdmi_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  output_game_status(31) <= \<const0>\;
  output_game_status(30) <= \<const0>\;
  output_game_status(29) <= \<const0>\;
  output_game_status(28) <= \<const0>\;
  output_game_status(27) <= \<const0>\;
  output_game_status(26) <= \<const0>\;
  output_game_status(25) <= \<const0>\;
  output_game_status(24) <= \<const0>\;
  output_game_status(23) <= \<const0>\;
  output_game_status(22) <= \<const0>\;
  output_game_status(21 downto 0) <= \^output_game_status\(21 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.hdmi_gameLogic_0_0_gameLogic
     port map (
      \board_reg[0]_0\ => \^output_game_status\(0),
      \board_reg[10]_0\ => \^output_game_status\(10),
      \board_reg[11]_0\ => \^output_game_status\(11),
      \board_reg[12]_0\ => \^output_game_status\(12),
      \board_reg[13]_0\ => \^output_game_status\(13),
      \board_reg[14]_0\ => \^output_game_status\(14),
      \board_reg[15]_0\ => \^output_game_status\(15),
      \board_reg[16]_0\ => \^output_game_status\(16),
      \board_reg[17]_0\ => \^output_game_status\(17),
      \board_reg[1]_0\ => \^output_game_status\(1),
      \board_reg[2]_0\ => \^output_game_status\(2),
      \board_reg[3]_0\ => \^output_game_status\(3),
      \board_reg[4]_0\ => \^output_game_status\(4),
      \board_reg[5]_0\ => \^output_game_status\(5),
      \board_reg[6]_0\ => \^output_game_status\(6),
      \board_reg[7]_0\ => \^output_game_status\(7),
      \board_reg[8]_0\ => \^output_game_status\(8),
      \board_reg[9]_0\ => \^output_game_status\(9),
      clk => clk,
      input_data(6) => input_data(31),
      input_data(5 downto 0) => input_data(5 downto 0),
      output_game_status(3 downto 0) => \^output_game_status\(21 downto 18)
    );
end STRUCTURE;
