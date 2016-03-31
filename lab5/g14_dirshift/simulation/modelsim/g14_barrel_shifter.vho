-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "03/30/2016 23:39:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g14_barrel_shifter IS
    PORT (
	LETTER_IN : IN std_logic_vector(25 DOWNTO 0);
	SHIFT : IN std_logic_vector(4 DOWNTO 0);
	DIRECTION : IN std_logic;
	LETTER_OUT : OUT std_logic_vector(25 DOWNTO 0)
	);
END g14_barrel_shifter;

-- Design Ports Information
-- LETTER_OUT[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[9]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[14]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[16]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[17]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[19]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[20]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[21]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[24]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_OUT[25]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHIFT[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[13]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[15]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[14]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[17]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[16]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[19]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[21]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[20]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[22]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[25]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LETTER_IN[24]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIRECTION	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_barrel_shifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LETTER_IN : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_SHIFT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DIRECTION : std_logic;
SIGNAL ww_LETTER_OUT : std_logic_vector(25 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DIRECTION~input_o\ : std_logic;
SIGNAL \SHIFT[4]~input_o\ : std_logic;
SIGNAL \SHIFT[1]~input_o\ : std_logic;
SIGNAL \SHIFT[3]~input_o\ : std_logic;
SIGNAL \SHIFT[2]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LETTER_IN[5]~input_o\ : std_logic;
SIGNAL \SHIFT[0]~input_o\ : std_logic;
SIGNAL \LETTER_IN[4]~input_o\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \LETTER_IN[7]~input_o\ : std_logic;
SIGNAL \LETTER_IN[6]~input_o\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \LETTER_IN[0]~input_o\ : std_logic;
SIGNAL \LETTER_IN[1]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \LETTER_IN[2]~input_o\ : std_logic;
SIGNAL \LETTER_IN[3]~input_o\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \LETTER_IN[24]~input_o\ : std_logic;
SIGNAL \LETTER_IN[25]~input_o\ : std_logic;
SIGNAL \Mux25~15_combout\ : std_logic;
SIGNAL \LETTER_IN[9]~input_o\ : std_logic;
SIGNAL \LETTER_IN[8]~input_o\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \LETTER_IN[13]~input_o\ : std_logic;
SIGNAL \LETTER_IN[12]~input_o\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \LETTER_IN[10]~input_o\ : std_logic;
SIGNAL \LETTER_IN[11]~input_o\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \LETTER_IN[15]~input_o\ : std_logic;
SIGNAL \LETTER_IN[14]~input_o\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \LETTER_IN[19]~input_o\ : std_logic;
SIGNAL \LETTER_IN[18]~input_o\ : std_logic;
SIGNAL \Mux25~11_combout\ : std_logic;
SIGNAL \LETTER_IN[16]~input_o\ : std_logic;
SIGNAL \LETTER_IN[17]~input_o\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \LETTER_IN[20]~input_o\ : std_logic;
SIGNAL \LETTER_IN[21]~input_o\ : std_logic;
SIGNAL \Mux25~12_combout\ : std_logic;
SIGNAL \LETTER_IN[22]~input_o\ : std_logic;
SIGNAL \LETTER_IN[23]~input_o\ : std_logic;
SIGNAL \Mux25~13_combout\ : std_logic;
SIGNAL \Mux25~14_combout\ : std_logic;
SIGNAL \Mux25~16_combout\ : std_logic;
SIGNAL \Mux25~29_combout\ : std_logic;
SIGNAL \Mux25~27_combout\ : std_logic;
SIGNAL \Mux25~30_combout\ : std_logic;
SIGNAL \Mux25~28_combout\ : std_logic;
SIGNAL \Mux25~31_combout\ : std_logic;
SIGNAL \Mux25~22_combout\ : std_logic;
SIGNAL \Mux25~24_combout\ : std_logic;
SIGNAL \Mux25~23_combout\ : std_logic;
SIGNAL \Mux25~25_combout\ : std_logic;
SIGNAL \Mux25~26_combout\ : std_logic;
SIGNAL \Mux25~32_combout\ : std_logic;
SIGNAL \Mux25~18_combout\ : std_logic;
SIGNAL \Mux25~19_combout\ : std_logic;
SIGNAL \Mux25~20_combout\ : std_logic;
SIGNAL \Mux25~17_combout\ : std_logic;
SIGNAL \Mux25~21_combout\ : std_logic;
SIGNAL \Mux25~33_combout\ : std_logic;
SIGNAL \Mux25~34_combout\ : std_logic;
SIGNAL \Mux25~36_combout\ : std_logic;
SIGNAL \Mux25~38_combout\ : std_logic;
SIGNAL \Mux25~37_combout\ : std_logic;
SIGNAL \Mux25~35_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux25~39_combout\ : std_logic;
SIGNAL \Mux25~40_combout\ : std_logic;
SIGNAL \Mux25~42_combout\ : std_logic;
SIGNAL \Mux25~41_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux25~43_combout\ : std_logic;
SIGNAL \Mux25~45_combout\ : std_logic;
SIGNAL \Mux25~46_combout\ : std_logic;
SIGNAL \Mux25~44_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux25~47_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux25~56_combout\ : std_logic;
SIGNAL \Mux25~58_combout\ : std_logic;
SIGNAL \Mux25~59_combout\ : std_logic;
SIGNAL \Mux25~57_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux25~51_combout\ : std_logic;
SIGNAL \Mux25~49_combout\ : std_logic;
SIGNAL \Mux25~50_combout\ : std_logic;
SIGNAL \Mux25~48_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux25~60_combout\ : std_logic;
SIGNAL \Mux25~54_combout\ : std_logic;
SIGNAL \Mux25~53_combout\ : std_logic;
SIGNAL \Mux25~52_combout\ : std_logic;
SIGNAL \Mux25~55_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux25~64_combout\ : std_logic;
SIGNAL \Mux25~66_combout\ : std_logic;
SIGNAL \Mux25~65_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux25~61_combout\ : std_logic;
SIGNAL \Mux25~63_combout\ : std_logic;
SIGNAL \Mux25~62_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux25~69_combout\ : std_logic;
SIGNAL \Mux25~67_combout\ : std_logic;
SIGNAL \Mux25~68_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux25~70_combout\ : std_logic;
SIGNAL \Mux25~71_combout\ : std_logic;
SIGNAL \Mux25~72_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux25~74_combout\ : std_logic;
SIGNAL \Mux25~73_combout\ : std_logic;
SIGNAL \Mux25~75_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux25~77_combout\ : std_logic;
SIGNAL \Mux25~76_combout\ : std_logic;
SIGNAL \Mux25~78_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux0~23_combout\ : std_logic;
SIGNAL \Mux0~22_combout\ : std_logic;
SIGNAL \Mux0~24_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux25~80_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux25~79_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux0~26_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux0~25_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~27_combout\ : std_logic;
SIGNAL \Mux0~28_combout\ : std_logic;
SIGNAL \Mux0~29_combout\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHIFT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHIFT[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHIFT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHIFT[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SHIFT[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~80_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~78_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~76_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~75_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~74_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~73_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~72_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~71_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~70_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~69_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~68_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~67_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~66_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~65_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~64_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~63_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~62_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~61_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~60_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~59_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~58_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~57_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~56_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~55_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~54_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~53_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~52_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~51_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~50_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~48_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~47_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~39_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~28_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_DIRECTION~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_LETTER_IN[8]~input_o\ : std_logic;

BEGIN

ww_LETTER_IN <= LETTER_IN;
ww_SHIFT <= SHIFT;
ww_DIRECTION <= DIRECTION;
LETTER_OUT <= ww_LETTER_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LETTER_IN[9]~input_o\ <= NOT \LETTER_IN[9]~input_o\;
\ALT_INV_LETTER_IN[6]~input_o\ <= NOT \LETTER_IN[6]~input_o\;
\ALT_INV_LETTER_IN[7]~input_o\ <= NOT \LETTER_IN[7]~input_o\;
\ALT_INV_LETTER_IN[4]~input_o\ <= NOT \LETTER_IN[4]~input_o\;
\ALT_INV_LETTER_IN[5]~input_o\ <= NOT \LETTER_IN[5]~input_o\;
\ALT_INV_LETTER_IN[2]~input_o\ <= NOT \LETTER_IN[2]~input_o\;
\ALT_INV_LETTER_IN[3]~input_o\ <= NOT \LETTER_IN[3]~input_o\;
\ALT_INV_LETTER_IN[1]~input_o\ <= NOT \LETTER_IN[1]~input_o\;
\ALT_INV_SHIFT[0]~input_o\ <= NOT \SHIFT[0]~input_o\;
\ALT_INV_SHIFT[2]~input_o\ <= NOT \SHIFT[2]~input_o\;
\ALT_INV_SHIFT[1]~input_o\ <= NOT \SHIFT[1]~input_o\;
\ALT_INV_SHIFT[4]~input_o\ <= NOT \SHIFT[4]~input_o\;
\ALT_INV_SHIFT[3]~input_o\ <= NOT \SHIFT[3]~input_o\;
\ALT_INV_LETTER_IN[0]~input_o\ <= NOT \LETTER_IN[0]~input_o\;
\ALT_INV_Mux0~28_combout\ <= NOT \Mux0~28_combout\;
\ALT_INV_Mux0~27_combout\ <= NOT \Mux0~27_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux0~26_combout\ <= NOT \Mux0~26_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux0~25_combout\ <= NOT \Mux0~25_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux25~80_combout\ <= NOT \Mux25~80_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux25~79_combout\ <= NOT \Mux25~79_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux0~24_combout\ <= NOT \Mux0~24_combout\;
\ALT_INV_Mux0~23_combout\ <= NOT \Mux0~23_combout\;
\ALT_INV_Mux0~22_combout\ <= NOT \Mux0~22_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux0~21_combout\ <= NOT \Mux0~21_combout\;
\ALT_INV_Mux0~20_combout\ <= NOT \Mux0~20_combout\;
\ALT_INV_Mux0~19_combout\ <= NOT \Mux0~19_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux25~78_combout\ <= NOT \Mux25~78_combout\;
\ALT_INV_Mux25~77_combout\ <= NOT \Mux25~77_combout\;
\ALT_INV_Mux25~76_combout\ <= NOT \Mux25~76_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux25~75_combout\ <= NOT \Mux25~75_combout\;
\ALT_INV_Mux25~74_combout\ <= NOT \Mux25~74_combout\;
\ALT_INV_Mux25~73_combout\ <= NOT \Mux25~73_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux0~18_combout\ <= NOT \Mux0~18_combout\;
\ALT_INV_Mux0~17_combout\ <= NOT \Mux0~17_combout\;
\ALT_INV_Mux0~16_combout\ <= NOT \Mux0~16_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux0~15_combout\ <= NOT \Mux0~15_combout\;
\ALT_INV_Mux0~14_combout\ <= NOT \Mux0~14_combout\;
\ALT_INV_Mux0~13_combout\ <= NOT \Mux0~13_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux25~72_combout\ <= NOT \Mux25~72_combout\;
\ALT_INV_Mux25~71_combout\ <= NOT \Mux25~71_combout\;
\ALT_INV_Mux25~70_combout\ <= NOT \Mux25~70_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux25~69_combout\ <= NOT \Mux25~69_combout\;
\ALT_INV_Mux25~68_combout\ <= NOT \Mux25~68_combout\;
\ALT_INV_Mux25~67_combout\ <= NOT \Mux25~67_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux0~12_combout\ <= NOT \Mux0~12_combout\;
\ALT_INV_Mux0~11_combout\ <= NOT \Mux0~11_combout\;
\ALT_INV_Mux0~10_combout\ <= NOT \Mux0~10_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux0~9_combout\ <= NOT \Mux0~9_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux25~66_combout\ <= NOT \Mux25~66_combout\;
\ALT_INV_Mux25~65_combout\ <= NOT \Mux25~65_combout\;
\ALT_INV_Mux25~64_combout\ <= NOT \Mux25~64_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux25~63_combout\ <= NOT \Mux25~63_combout\;
\ALT_INV_Mux25~62_combout\ <= NOT \Mux25~62_combout\;
\ALT_INV_Mux25~61_combout\ <= NOT \Mux25~61_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux25~60_combout\ <= NOT \Mux25~60_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux25~59_combout\ <= NOT \Mux25~59_combout\;
\ALT_INV_Mux25~58_combout\ <= NOT \Mux25~58_combout\;
\ALT_INV_Mux25~57_combout\ <= NOT \Mux25~57_combout\;
\ALT_INV_Mux25~56_combout\ <= NOT \Mux25~56_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux25~55_combout\ <= NOT \Mux25~55_combout\;
\ALT_INV_Mux25~54_combout\ <= NOT \Mux25~54_combout\;
\ALT_INV_Mux25~53_combout\ <= NOT \Mux25~53_combout\;
\ALT_INV_Mux25~52_combout\ <= NOT \Mux25~52_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux25~51_combout\ <= NOT \Mux25~51_combout\;
\ALT_INV_Mux25~50_combout\ <= NOT \Mux25~50_combout\;
\ALT_INV_Mux25~49_combout\ <= NOT \Mux25~49_combout\;
\ALT_INV_Mux25~48_combout\ <= NOT \Mux25~48_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~47_combout\ <= NOT \Mux25~47_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux25~46_combout\ <= NOT \Mux25~46_combout\;
\ALT_INV_Mux25~45_combout\ <= NOT \Mux25~45_combout\;
\ALT_INV_Mux25~44_combout\ <= NOT \Mux25~44_combout\;
\ALT_INV_Mux25~43_combout\ <= NOT \Mux25~43_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux25~42_combout\ <= NOT \Mux25~42_combout\;
\ALT_INV_Mux25~41_combout\ <= NOT \Mux25~41_combout\;
\ALT_INV_Mux25~40_combout\ <= NOT \Mux25~40_combout\;
\ALT_INV_Mux25~39_combout\ <= NOT \Mux25~39_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux25~38_combout\ <= NOT \Mux25~38_combout\;
\ALT_INV_Mux25~37_combout\ <= NOT \Mux25~37_combout\;
\ALT_INV_Mux25~36_combout\ <= NOT \Mux25~36_combout\;
\ALT_INV_Mux25~35_combout\ <= NOT \Mux25~35_combout\;
\ALT_INV_Mux25~33_combout\ <= NOT \Mux25~33_combout\;
\ALT_INV_Mux25~32_combout\ <= NOT \Mux25~32_combout\;
\ALT_INV_Mux25~31_combout\ <= NOT \Mux25~31_combout\;
\ALT_INV_Mux25~30_combout\ <= NOT \Mux25~30_combout\;
\ALT_INV_Mux25~29_combout\ <= NOT \Mux25~29_combout\;
\ALT_INV_Mux25~28_combout\ <= NOT \Mux25~28_combout\;
\ALT_INV_Mux25~27_combout\ <= NOT \Mux25~27_combout\;
\ALT_INV_Mux25~26_combout\ <= NOT \Mux25~26_combout\;
\ALT_INV_Mux25~25_combout\ <= NOT \Mux25~25_combout\;
\ALT_INV_Mux25~24_combout\ <= NOT \Mux25~24_combout\;
\ALT_INV_Mux25~23_combout\ <= NOT \Mux25~23_combout\;
\ALT_INV_Mux25~22_combout\ <= NOT \Mux25~22_combout\;
\ALT_INV_Mux25~21_combout\ <= NOT \Mux25~21_combout\;
\ALT_INV_Mux25~20_combout\ <= NOT \Mux25~20_combout\;
\ALT_INV_Mux25~19_combout\ <= NOT \Mux25~19_combout\;
\ALT_INV_Mux25~18_combout\ <= NOT \Mux25~18_combout\;
\ALT_INV_Mux25~17_combout\ <= NOT \Mux25~17_combout\;
\ALT_INV_Mux25~16_combout\ <= NOT \Mux25~16_combout\;
\ALT_INV_Mux25~15_combout\ <= NOT \Mux25~15_combout\;
\ALT_INV_Mux25~14_combout\ <= NOT \Mux25~14_combout\;
\ALT_INV_Mux25~13_combout\ <= NOT \Mux25~13_combout\;
\ALT_INV_Mux25~12_combout\ <= NOT \Mux25~12_combout\;
\ALT_INV_Mux25~11_combout\ <= NOT \Mux25~11_combout\;
\ALT_INV_Mux25~10_combout\ <= NOT \Mux25~10_combout\;
\ALT_INV_Mux25~9_combout\ <= NOT \Mux25~9_combout\;
\ALT_INV_Mux25~8_combout\ <= NOT \Mux25~8_combout\;
\ALT_INV_Mux25~7_combout\ <= NOT \Mux25~7_combout\;
\ALT_INV_Mux25~6_combout\ <= NOT \Mux25~6_combout\;
\ALT_INV_Mux25~5_combout\ <= NOT \Mux25~5_combout\;
\ALT_INV_Mux25~4_combout\ <= NOT \Mux25~4_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_DIRECTION~input_o\ <= NOT \DIRECTION~input_o\;
\ALT_INV_LETTER_IN[24]~input_o\ <= NOT \LETTER_IN[24]~input_o\;
\ALT_INV_LETTER_IN[25]~input_o\ <= NOT \LETTER_IN[25]~input_o\;
\ALT_INV_LETTER_IN[22]~input_o\ <= NOT \LETTER_IN[22]~input_o\;
\ALT_INV_LETTER_IN[23]~input_o\ <= NOT \LETTER_IN[23]~input_o\;
\ALT_INV_LETTER_IN[20]~input_o\ <= NOT \LETTER_IN[20]~input_o\;
\ALT_INV_LETTER_IN[21]~input_o\ <= NOT \LETTER_IN[21]~input_o\;
\ALT_INV_LETTER_IN[18]~input_o\ <= NOT \LETTER_IN[18]~input_o\;
\ALT_INV_LETTER_IN[19]~input_o\ <= NOT \LETTER_IN[19]~input_o\;
\ALT_INV_LETTER_IN[16]~input_o\ <= NOT \LETTER_IN[16]~input_o\;
\ALT_INV_LETTER_IN[17]~input_o\ <= NOT \LETTER_IN[17]~input_o\;
\ALT_INV_LETTER_IN[14]~input_o\ <= NOT \LETTER_IN[14]~input_o\;
\ALT_INV_LETTER_IN[15]~input_o\ <= NOT \LETTER_IN[15]~input_o\;
\ALT_INV_LETTER_IN[12]~input_o\ <= NOT \LETTER_IN[12]~input_o\;
\ALT_INV_LETTER_IN[13]~input_o\ <= NOT \LETTER_IN[13]~input_o\;
\ALT_INV_LETTER_IN[10]~input_o\ <= NOT \LETTER_IN[10]~input_o\;
\ALT_INV_LETTER_IN[11]~input_o\ <= NOT \LETTER_IN[11]~input_o\;
\ALT_INV_LETTER_IN[8]~input_o\ <= NOT \LETTER_IN[8]~input_o\;

-- Location: IOOBUF_X40_Y0_N36
\LETTER_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~34_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(0));

-- Location: IOOBUF_X56_Y0_N2
\LETTER_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(1));

-- Location: IOOBUF_X52_Y0_N53
\LETTER_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(2));

-- Location: IOOBUF_X58_Y0_N59
\LETTER_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(3));

-- Location: IOOBUF_X40_Y0_N2
\LETTER_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(4));

-- Location: IOOBUF_X50_Y0_N59
\LETTER_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(5));

-- Location: IOOBUF_X54_Y0_N19
\LETTER_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(6));

-- Location: IOOBUF_X40_Y0_N53
\LETTER_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(7));

-- Location: IOOBUF_X52_Y0_N2
\LETTER_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(8));

-- Location: IOOBUF_X8_Y0_N36
\LETTER_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(9));

-- Location: IOOBUF_X4_Y0_N19
\LETTER_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(10));

-- Location: IOOBUF_X40_Y0_N19
\LETTER_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(11));

-- Location: IOOBUF_X2_Y0_N76
\LETTER_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(12));

-- Location: IOOBUF_X54_Y0_N53
\LETTER_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(13));

-- Location: IOOBUF_X4_Y0_N36
\LETTER_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(14));

-- Location: IOOBUF_X4_Y0_N53
\LETTER_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(15));

-- Location: IOOBUF_X26_Y0_N59
\LETTER_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(16));

-- Location: IOOBUF_X38_Y0_N19
\LETTER_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(17));

-- Location: IOOBUF_X34_Y0_N59
\LETTER_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(18));

-- Location: IOOBUF_X28_Y0_N36
\LETTER_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(19));

-- Location: IOOBUF_X28_Y0_N2
\LETTER_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(20));

-- Location: IOOBUF_X28_Y0_N53
\LETTER_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(21));

-- Location: IOOBUF_X32_Y0_N36
\LETTER_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(22));

-- Location: IOOBUF_X30_Y0_N19
\LETTER_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(23));

-- Location: IOOBUF_X34_Y0_N93
\LETTER_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(24));

-- Location: IOOBUF_X52_Y0_N19
\LETTER_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~29_combout\,
	devoe => ww_devoe,
	o => ww_LETTER_OUT(25));

-- Location: IOIBUF_X36_Y0_N35
\DIRECTION~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIRECTION,
	o => \DIRECTION~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\SHIFT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHIFT(4),
	o => \SHIFT[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\SHIFT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHIFT(1),
	o => \SHIFT[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\SHIFT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHIFT(3),
	o => \SHIFT[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\SHIFT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHIFT(2),
	o => \SHIFT[2]~input_o\);

-- Location: LABCELL_X24_Y2_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \SHIFT[2]~input_o\ & ( (\SHIFT[4]~input_o\ & \SHIFT[3]~input_o\) ) ) # ( !\SHIFT[2]~input_o\ & ( (\SHIFT[4]~input_o\ & (\SHIFT[1]~input_o\ & \SHIFT[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X50_Y0_N41
\LETTER_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(5),
	o => \LETTER_IN[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\SHIFT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SHIFT(0),
	o => \SHIFT[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\LETTER_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(4),
	o => \LETTER_IN[4]~input_o\);

-- Location: LABCELL_X33_Y2_N0
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \LETTER_IN[4]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[5]~input_o\) ) ) # ( !\LETTER_IN[4]~input_o\ & ( (\LETTER_IN[5]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[5]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[4]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: IOIBUF_X34_Y0_N75
\LETTER_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(7),
	o => \LETTER_IN[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\LETTER_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(6),
	o => \LETTER_IN[6]~input_o\);

-- Location: MLABCELL_X34_Y2_N6
\Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[6]~input_o\ & ( \LETTER_IN[7]~input_o\ ) ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[6]~input_o\ ) ) # ( \SHIFT[0]~input_o\ & ( !\LETTER_IN[6]~input_o\ & ( \LETTER_IN[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LETTER_IN[7]~input_o\,
	datae => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[6]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: IOIBUF_X36_Y0_N1
\LETTER_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(0),
	o => \LETTER_IN[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\LETTER_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(1),
	o => \LETTER_IN[1]~input_o\);

-- Location: LABCELL_X30_Y2_N30
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[1]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[1]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\LETTER_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(2),
	o => \LETTER_IN[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\LETTER_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(3),
	o => \LETTER_IN[3]~input_o\);

-- Location: MLABCELL_X34_Y2_N30
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[3]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[2]~input_o\,
	datac => \ALT_INV_LETTER_IN[3]~input_o\,
	datae => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X25_Y3_N30
\Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \Mux25~0_combout\ & ( \Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\) # ((!\SHIFT[1]~input_o\ & (\Mux25~2_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~3_combout\)))) ) ) ) # ( !\Mux25~0_combout\ & ( \Mux25~1_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~2_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~3_combout\))))) ) ) ) # ( \Mux25~0_combout\ & ( !\Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((!\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~2_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~3_combout\))))) ) ) ) # ( !\Mux25~0_combout\ & ( !\Mux25~1_combout\ & ( (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & 
-- (\Mux25~2_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_Mux25~2_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~3_combout\,
	datae => \ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~4_combout\);

-- Location: IOIBUF_X6_Y0_N35
\LETTER_IN[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(24),
	o => \LETTER_IN[24]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\LETTER_IN[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(25),
	o => \LETTER_IN[25]~input_o\);

-- Location: LABCELL_X24_Y2_N3
\Mux25~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~15_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[25]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[24]~input_o\,
	datac => \ALT_INV_LETTER_IN[25]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~15_combout\);

-- Location: IOIBUF_X6_Y0_N18
\LETTER_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(9),
	o => \LETTER_IN[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\LETTER_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(8),
	o => \LETTER_IN[8]~input_o\);

-- Location: LABCELL_X27_Y2_N30
\Mux25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = ( \LETTER_IN[8]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[9]~input_o\) ) ) # ( !\LETTER_IN[8]~input_o\ & ( (\SHIFT[0]~input_o\ & \LETTER_IN[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[9]~input_o\,
	dataf => \ALT_INV_LETTER_IN[8]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: IOIBUF_X32_Y0_N18
\LETTER_IN[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(13),
	o => \LETTER_IN[13]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\LETTER_IN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(12),
	o => \LETTER_IN[12]~input_o\);

-- Location: LABCELL_X27_Y2_N42
\Mux25~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (!\SHIFT[0]~input_o\ & ((\LETTER_IN[12]~input_o\))) # (\SHIFT[0]~input_o\ & (\LETTER_IN[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[13]~input_o\,
	datac => \ALT_INV_LETTER_IN[12]~input_o\,
	combout => \Mux25~7_combout\);

-- Location: IOIBUF_X8_Y0_N1
\LETTER_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(10),
	o => \LETTER_IN[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\LETTER_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(11),
	o => \LETTER_IN[11]~input_o\);

-- Location: LABCELL_X27_Y2_N36
\Mux25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = ( \LETTER_IN[11]~input_o\ & ( (\LETTER_IN[10]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[11]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[10]~input_o\,
	dataf => \ALT_INV_LETTER_IN[11]~input_o\,
	combout => \Mux25~6_combout\);

-- Location: IOIBUF_X6_Y0_N52
\LETTER_IN[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(15),
	o => \LETTER_IN[15]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\LETTER_IN[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(14),
	o => \LETTER_IN[14]~input_o\);

-- Location: LABCELL_X27_Y2_N48
\Mux25~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[15]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[15]~input_o\,
	datab => \ALT_INV_LETTER_IN[14]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~8_combout\);

-- Location: MLABCELL_X25_Y2_N0
\Mux25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = ( \Mux25~8_combout\ & ( \SHIFT[1]~input_o\ & ( (\SHIFT[2]~input_o\) # (\Mux25~6_combout\) ) ) ) # ( !\Mux25~8_combout\ & ( \SHIFT[1]~input_o\ & ( (\Mux25~6_combout\ & !\SHIFT[2]~input_o\) ) ) ) # ( \Mux25~8_combout\ & ( 
-- !\SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~5_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~7_combout\))) ) ) ) # ( !\Mux25~8_combout\ & ( !\SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~5_combout\)) # (\SHIFT[2]~input_o\ & 
-- ((\Mux25~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~5_combout\,
	datab => \ALT_INV_Mux25~7_combout\,
	datac => \ALT_INV_Mux25~6_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~8_combout\,
	dataf => \ALT_INV_SHIFT[1]~input_o\,
	combout => \Mux25~9_combout\);

-- Location: IOIBUF_X34_Y0_N41
\LETTER_IN[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(19),
	o => \LETTER_IN[19]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\LETTER_IN[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(18),
	o => \LETTER_IN[18]~input_o\);

-- Location: MLABCELL_X28_Y2_N6
\Mux25~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~11_combout\ = ( \LETTER_IN[18]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[19]~input_o\) ) ) # ( !\LETTER_IN[18]~input_o\ & ( (\LETTER_IN[19]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[19]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[18]~input_o\,
	combout => \Mux25~11_combout\);

-- Location: IOIBUF_X6_Y0_N1
\LETTER_IN[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(16),
	o => \LETTER_IN[16]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\LETTER_IN[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(17),
	o => \LETTER_IN[17]~input_o\);

-- Location: MLABCELL_X28_Y2_N30
\Mux25~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = ( \LETTER_IN[17]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[16]~input_o\) ) ) # ( !\LETTER_IN[17]~input_o\ & ( (\LETTER_IN[16]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[16]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[17]~input_o\,
	combout => \Mux25~10_combout\);

-- Location: IOIBUF_X26_Y0_N75
\LETTER_IN[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(20),
	o => \LETTER_IN[20]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\LETTER_IN[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(21),
	o => \LETTER_IN[21]~input_o\);

-- Location: MLABCELL_X28_Y2_N15
\Mux25~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~12_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[20]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[20]~input_o\,
	datac => \ALT_INV_LETTER_IN[21]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~12_combout\);

-- Location: IOIBUF_X30_Y0_N1
\LETTER_IN[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(22),
	o => \LETTER_IN[22]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\LETTER_IN[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LETTER_IN(23),
	o => \LETTER_IN[23]~input_o\);

-- Location: LABCELL_X30_Y2_N36
\Mux25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~13_combout\ = ( \LETTER_IN[23]~input_o\ & ( (\LETTER_IN[22]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[23]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datad => \ALT_INV_LETTER_IN[22]~input_o\,
	dataf => \ALT_INV_LETTER_IN[23]~input_o\,
	combout => \Mux25~13_combout\);

-- Location: LABCELL_X24_Y2_N36
\Mux25~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~14_combout\ = ( \Mux25~12_combout\ & ( \Mux25~13_combout\ & ( ((!\SHIFT[1]~input_o\ & ((\Mux25~10_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~11_combout\))) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~12_combout\ & ( \Mux25~13_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((\Mux25~10_combout\ & !\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~11_combout\))) ) ) ) # ( \Mux25~12_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\) # 
-- (\Mux25~10_combout\)))) # (\SHIFT[1]~input_o\ & (\Mux25~11_combout\ & ((!\SHIFT[2]~input_o\)))) ) ) ) # ( !\Mux25~12_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & ((\Mux25~10_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_Mux25~11_combout\,
	datac => \ALT_INV_Mux25~10_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~12_combout\,
	dataf => \ALT_INV_Mux25~13_combout\,
	combout => \Mux25~14_combout\);

-- Location: MLABCELL_X25_Y2_N6
\Mux25~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~16_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~9_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~15_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~14_combout\ & ( (\SHIFT[4]~input_o\) # 
-- (\Mux25~4_combout\) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~9_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~15_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~14_combout\ & ( (\Mux25~4_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~4_combout\,
	datab => \ALT_INV_Mux25~15_combout\,
	datac => \ALT_INV_Mux25~9_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~14_combout\,
	combout => \Mux25~16_combout\);

-- Location: LABCELL_X33_Y2_N6
\Mux25~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~29_combout\ = ( \LETTER_IN[6]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[5]~input_o\) ) ) # ( !\LETTER_IN[6]~input_o\ & ( (\LETTER_IN[5]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LETTER_IN[5]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[6]~input_o\,
	combout => \Mux25~29_combout\);

-- Location: LABCELL_X27_Y2_N12
\Mux25~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~27_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[9]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[9]~input_o\,
	datab => \ALT_INV_LETTER_IN[10]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~27_combout\);

-- Location: MLABCELL_X34_Y2_N51
\Mux25~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~30_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[4]~input_o\ & ( \LETTER_IN[3]~input_o\ ) ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[4]~input_o\ ) ) # ( \SHIFT[0]~input_o\ & ( !\LETTER_IN[4]~input_o\ & ( \LETTER_IN[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[3]~input_o\,
	datae => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[4]~input_o\,
	combout => \Mux25~30_combout\);

-- Location: MLABCELL_X34_Y2_N12
\Mux25~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~28_combout\ = ( \LETTER_IN[8]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[7]~input_o\) ) ) # ( !\LETTER_IN[8]~input_o\ & ( (\LETTER_IN[7]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[7]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[8]~input_o\,
	combout => \Mux25~28_combout\);

-- Location: LABCELL_X27_Y3_N0
\Mux25~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~31_combout\ = ( \Mux25~30_combout\ & ( \Mux25~28_combout\ & ( ((!\SHIFT[2]~input_o\ & ((\Mux25~27_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~29_combout\))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~30_combout\ & ( \Mux25~28_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\) # (\Mux25~27_combout\)))) # (\SHIFT[2]~input_o\ & (\Mux25~29_combout\ & ((!\SHIFT[1]~input_o\)))) ) ) ) # ( \Mux25~30_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[2]~input_o\ & (((\Mux25~27_combout\ & 
-- !\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)) # (\Mux25~29_combout\))) ) ) ) # ( !\Mux25~30_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & ((\Mux25~27_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~29_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~29_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~27_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~30_combout\,
	dataf => \ALT_INV_Mux25~28_combout\,
	combout => \Mux25~31_combout\);

-- Location: MLABCELL_X28_Y2_N0
\Mux25~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~22_combout\ = ( \LETTER_IN[18]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[17]~input_o\) ) ) # ( !\LETTER_IN[18]~input_o\ & ( (\LETTER_IN[17]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LETTER_IN[17]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[18]~input_o\,
	combout => \Mux25~22_combout\);

-- Location: LABCELL_X27_Y2_N0
\Mux25~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~24_combout\ = ( \LETTER_IN[13]~input_o\ & ( (\LETTER_IN[14]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[13]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[14]~input_o\,
	dataf => \ALT_INV_LETTER_IN[13]~input_o\,
	combout => \Mux25~24_combout\);

-- Location: LABCELL_X27_Y2_N24
\Mux25~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~23_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[15]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[16]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[15]~input_o\,
	datab => \ALT_INV_LETTER_IN[16]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~23_combout\);

-- Location: LABCELL_X27_Y2_N6
\Mux25~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~25_combout\ = ( \LETTER_IN[11]~input_o\ & ( (\LETTER_IN[12]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[11]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[12]~input_o\,
	dataf => \ALT_INV_LETTER_IN[11]~input_o\,
	combout => \Mux25~25_combout\);

-- Location: MLABCELL_X25_Y3_N36
\Mux25~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~26_combout\ = ( \Mux25~25_combout\ & ( \SHIFT[2]~input_o\ & ( (\SHIFT[1]~input_o\) # (\Mux25~24_combout\) ) ) ) # ( !\Mux25~25_combout\ & ( \SHIFT[2]~input_o\ & ( (\Mux25~24_combout\ & !\SHIFT[1]~input_o\) ) ) ) # ( \Mux25~25_combout\ & ( 
-- !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~22_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~23_combout\))) ) ) ) # ( !\Mux25~25_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~22_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~22_combout\,
	datab => \ALT_INV_Mux25~24_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~23_combout\,
	datae => \ALT_INV_Mux25~25_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux25~26_combout\);

-- Location: LABCELL_X30_Y2_N39
\Mux25~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~32_combout\ = ( \LETTER_IN[2]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[1]~input_o\) ) ) # ( !\LETTER_IN[2]~input_o\ & ( (\SHIFT[0]~input_o\ & \LETTER_IN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[1]~input_o\,
	dataf => \ALT_INV_LETTER_IN[2]~input_o\,
	combout => \Mux25~32_combout\);

-- Location: LABCELL_X30_Y2_N51
\Mux25~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~18_combout\ = ( \LETTER_IN[23]~input_o\ & ( (\LETTER_IN[24]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[23]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datad => \ALT_INV_LETTER_IN[24]~input_o\,
	dataf => \ALT_INV_LETTER_IN[23]~input_o\,
	combout => \Mux25~18_combout\);

-- Location: MLABCELL_X28_Y2_N18
\Mux25~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~19_combout\ = ( \LETTER_IN[22]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[21]~input_o\) ) ) # ( !\LETTER_IN[22]~input_o\ & ( (\LETTER_IN[21]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LETTER_IN[21]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[22]~input_o\,
	combout => \Mux25~19_combout\);

-- Location: MLABCELL_X28_Y2_N24
\Mux25~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~20_combout\ = ( \LETTER_IN[19]~input_o\ & ( (\LETTER_IN[20]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[19]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[20]~input_o\,
	dataf => \ALT_INV_LETTER_IN[19]~input_o\,
	combout => \Mux25~20_combout\);

-- Location: LABCELL_X30_Y2_N12
\Mux25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~17_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[25]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LETTER_IN[25]~input_o\,
	datac => \ALT_INV_LETTER_IN[0]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~17_combout\);

-- Location: MLABCELL_X28_Y3_N0
\Mux25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~21_combout\ = ( \Mux25~20_combout\ & ( \Mux25~17_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\) # (\Mux25~19_combout\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~18_combout\))) ) ) ) # ( !\Mux25~20_combout\ & ( 
-- \Mux25~17_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\) # (\Mux25~19_combout\)))) # (\SHIFT[1]~input_o\ & (\Mux25~18_combout\ & ((!\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~20_combout\ & ( !\Mux25~17_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\Mux25~19_combout\ & \SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~18_combout\))) ) ) ) # ( !\Mux25~20_combout\ & ( !\Mux25~17_combout\ & ( (!\SHIFT[1]~input_o\ & (((\Mux25~19_combout\ & \SHIFT[2]~input_o\)))) # 
-- (\SHIFT[1]~input_o\ & (\Mux25~18_combout\ & ((!\SHIFT[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~18_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~19_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~20_combout\,
	dataf => \ALT_INV_Mux25~17_combout\,
	combout => \Mux25~21_combout\);

-- Location: MLABCELL_X28_Y3_N6
\Mux25~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~33_combout\ = ( \Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~26_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~32_combout\))) ) ) ) # ( !\Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~26_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~32_combout\))) ) ) ) # ( \Mux25~21_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~31_combout\) ) ) ) # ( !\Mux25~21_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & 
-- \Mux25~31_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~31_combout\,
	datac => \ALT_INV_Mux25~26_combout\,
	datad => \ALT_INV_Mux25~32_combout\,
	datae => \ALT_INV_Mux25~21_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux25~33_combout\);

-- Location: MLABCELL_X34_Y2_N57
\Mux25~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~34_combout\ = ( \Mux25~33_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux25~16_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[0]~input_o\)))) ) ) # ( !\Mux25~33_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- (\Mux25~16_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux25~16_combout\,
	datad => \ALT_INV_LETTER_IN[0]~input_o\,
	dataf => \ALT_INV_Mux25~33_combout\,
	combout => \Mux25~34_combout\);

-- Location: LABCELL_X33_Y2_N42
\Mux25~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~36_combout\ = ( \LETTER_IN[4]~input_o\ & ( (\LETTER_IN[3]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[4]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[3]~input_o\,
	dataf => \ALT_INV_LETTER_IN[4]~input_o\,
	combout => \Mux25~36_combout\);

-- Location: MLABCELL_X34_Y2_N15
\Mux25~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~38_combout\ = ( \LETTER_IN[8]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[7]~input_o\) ) ) # ( !\LETTER_IN[8]~input_o\ & ( (\LETTER_IN[7]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[7]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[8]~input_o\,
	combout => \Mux25~38_combout\);

-- Location: LABCELL_X33_Y2_N45
\Mux25~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~37_combout\ = (!\SHIFT[0]~input_o\ & ((\LETTER_IN[5]~input_o\))) # (\SHIFT[0]~input_o\ & (\LETTER_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SHIFT[0]~input_o\,
	datac => \ALT_INV_LETTER_IN[6]~input_o\,
	datad => \ALT_INV_LETTER_IN[5]~input_o\,
	combout => \Mux25~37_combout\);

-- Location: MLABCELL_X34_Y2_N0
\Mux25~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~35_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[1]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LETTER_IN[1]~input_o\,
	datac => \ALT_INV_LETTER_IN[2]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~35_combout\);

-- Location: LABCELL_X30_Y3_N0
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \Mux25~37_combout\ & ( \Mux25~35_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & (\Mux25~36_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~38_combout\)))) ) ) ) # ( !\Mux25~37_combout\ & ( \Mux25~35_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~36_combout\))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\ & \Mux25~38_combout\)))) ) ) ) # ( \Mux25~37_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~36_combout\ & 
-- (\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\) # (\Mux25~38_combout\)))) ) ) ) # ( !\Mux25~37_combout\ & ( !\Mux25~35_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~36_combout\)) # (\SHIFT[2]~input_o\ & 
-- ((\Mux25~38_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~36_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~38_combout\,
	datae => \ALT_INV_Mux25~37_combout\,
	dataf => \ALT_INV_Mux25~35_combout\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X27_Y2_N15
\Mux25~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~39_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[10]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[9]~input_o\,
	datab => \ALT_INV_LETTER_IN[10]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~39_combout\);

-- Location: LABCELL_X27_Y2_N9
\Mux25~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~40_combout\ = ( \LETTER_IN[11]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[12]~input_o\) ) ) # ( !\LETTER_IN[11]~input_o\ & ( (\SHIFT[0]~input_o\ & \LETTER_IN[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datad => \ALT_INV_LETTER_IN[12]~input_o\,
	dataf => \ALT_INV_LETTER_IN[11]~input_o\,
	combout => \Mux25~40_combout\);

-- Location: LABCELL_X27_Y2_N27
\Mux25~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~42_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[16]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[15]~input_o\,
	datab => \ALT_INV_LETTER_IN[16]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~42_combout\);

-- Location: LABCELL_X27_Y2_N3
\Mux25~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~41_combout\ = ( \LETTER_IN[13]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[14]~input_o\) ) ) # ( !\LETTER_IN[13]~input_o\ & ( (\SHIFT[0]~input_o\ & \LETTER_IN[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[14]~input_o\,
	dataf => \ALT_INV_LETTER_IN[13]~input_o\,
	combout => \Mux25~41_combout\);

-- Location: LABCELL_X29_Y3_N30
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \SHIFT[2]~input_o\ & ( \Mux25~41_combout\ & ( (!\SHIFT[1]~input_o\) # (\Mux25~42_combout\) ) ) ) # ( !\SHIFT[2]~input_o\ & ( \Mux25~41_combout\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~39_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~40_combout\))) ) ) ) # ( \SHIFT[2]~input_o\ & ( !\Mux25~41_combout\ & ( (\Mux25~42_combout\ & \SHIFT[1]~input_o\) ) ) ) # ( !\SHIFT[2]~input_o\ & ( !\Mux25~41_combout\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~39_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~40_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~39_combout\,
	datab => \ALT_INV_Mux25~40_combout\,
	datac => \ALT_INV_Mux25~42_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_SHIFT[2]~input_o\,
	dataf => \ALT_INV_Mux25~41_combout\,
	combout => \Mux0~2_combout\);

-- Location: MLABCELL_X28_Y2_N3
\Mux25~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~43_combout\ = ( \LETTER_IN[18]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[17]~input_o\) ) ) # ( !\LETTER_IN[18]~input_o\ & ( (\LETTER_IN[17]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LETTER_IN[17]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[18]~input_o\,
	combout => \Mux25~43_combout\);

-- Location: MLABCELL_X28_Y2_N21
\Mux25~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~45_combout\ = ( \LETTER_IN[22]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[21]~input_o\) ) ) # ( !\LETTER_IN[22]~input_o\ & ( (\LETTER_IN[21]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LETTER_IN[21]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[22]~input_o\,
	combout => \Mux25~45_combout\);

-- Location: LABCELL_X30_Y2_N24
\Mux25~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~46_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[23]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[23]~input_o\,
	datac => \ALT_INV_LETTER_IN[24]~input_o\,
	combout => \Mux25~46_combout\);

-- Location: MLABCELL_X28_Y2_N27
\Mux25~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~44_combout\ = ( \LETTER_IN[19]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[20]~input_o\) ) ) # ( !\LETTER_IN[19]~input_o\ & ( (\LETTER_IN[20]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[20]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[19]~input_o\,
	combout => \Mux25~44_combout\);

-- Location: LABCELL_X30_Y3_N6
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \Mux25~46_combout\ & ( \Mux25~44_combout\ & ( ((!\SHIFT[2]~input_o\ & (\Mux25~43_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~45_combout\)))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~46_combout\ & ( \Mux25~44_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)) # (\Mux25~43_combout\))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~45_combout\)))) ) ) ) # ( \Mux25~46_combout\ & ( !\Mux25~44_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~43_combout\ & 
-- (!\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (((\Mux25~45_combout\) # (\SHIFT[1]~input_o\)))) ) ) ) # ( !\Mux25~46_combout\ & ( !\Mux25~44_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~43_combout\)) # (\SHIFT[2]~input_o\ & 
-- ((\Mux25~45_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~43_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~45_combout\,
	datae => \ALT_INV_Mux25~46_combout\,
	dataf => \ALT_INV_Mux25~44_combout\,
	combout => \Mux0~3_combout\);

-- Location: LABCELL_X30_Y2_N15
\Mux25~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~47_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[0]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[25]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~47_combout\);

-- Location: LABCELL_X29_Y3_N36
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \Mux0~3_combout\ & ( \Mux25~47_combout\ & ( ((!\SHIFT[3]~input_o\ & (\Mux0~1_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~2_combout\)))) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux0~3_combout\ & ( \Mux25~47_combout\ & ( (!\SHIFT[4]~input_o\ 
-- & ((!\SHIFT[3]~input_o\ & (\Mux0~1_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~2_combout\))))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)))) ) ) ) # ( \Mux0~3_combout\ & ( !\Mux25~47_combout\ & ( (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & 
-- (\Mux0~1_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~2_combout\))))) # (\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\)))) ) ) ) # ( !\Mux0~3_combout\ & ( !\Mux25~47_combout\ & ( (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & (\Mux0~1_combout\)) # 
-- (\SHIFT[3]~input_o\ & ((\Mux0~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Mux25~47_combout\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X27_Y2_N39
\Mux25~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~56_combout\ = ( \LETTER_IN[11]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[10]~input_o\) ) ) # ( !\LETTER_IN[11]~input_o\ & ( (\SHIFT[0]~input_o\ & \LETTER_IN[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[10]~input_o\,
	dataf => \ALT_INV_LETTER_IN[11]~input_o\,
	combout => \Mux25~56_combout\);

-- Location: MLABCELL_X34_Y2_N39
\Mux25~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~58_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[6]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[6]~input_o\ & ( \LETTER_IN[7]~input_o\ ) ) ) # ( !\SHIFT[0]~input_o\ & ( !\LETTER_IN[6]~input_o\ & ( \LETTER_IN[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[7]~input_o\,
	datae => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[6]~input_o\,
	combout => \Mux25~58_combout\);

-- Location: LABCELL_X33_Y2_N3
\Mux25~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~59_combout\ = ( \LETTER_IN[4]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[5]~input_o\) ) ) # ( !\LETTER_IN[4]~input_o\ & ( (\LETTER_IN[5]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[5]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[4]~input_o\,
	combout => \Mux25~59_combout\);

-- Location: LABCELL_X27_Y2_N33
\Mux25~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~57_combout\ = ( \LETTER_IN[8]~input_o\ & ( (\LETTER_IN[9]~input_o\) # (\SHIFT[0]~input_o\) ) ) # ( !\LETTER_IN[8]~input_o\ & ( (!\SHIFT[0]~input_o\ & \LETTER_IN[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datad => \ALT_INV_LETTER_IN[9]~input_o\,
	dataf => \ALT_INV_LETTER_IN[8]~input_o\,
	combout => \Mux25~57_combout\);

-- Location: LABCELL_X31_Y2_N30
\Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ( \Mux25~59_combout\ & ( \Mux25~57_combout\ & ( ((!\SHIFT[2]~input_o\ & (\Mux25~56_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~58_combout\)))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~59_combout\ & ( \Mux25~57_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\Mux25~56_combout\)) # (\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (!\SHIFT[1]~input_o\ & ((\Mux25~58_combout\)))) ) ) ) # ( \Mux25~59_combout\ & ( !\Mux25~57_combout\ & ( (!\SHIFT[2]~input_o\ & (!\SHIFT[1]~input_o\ & 
-- (\Mux25~56_combout\))) # (\SHIFT[2]~input_o\ & (((\Mux25~58_combout\)) # (\SHIFT[1]~input_o\))) ) ) ) # ( !\Mux25~59_combout\ & ( !\Mux25~57_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~56_combout\)) # (\SHIFT[2]~input_o\ & 
-- ((\Mux25~58_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~56_combout\,
	datad => \ALT_INV_Mux25~58_combout\,
	datae => \ALT_INV_Mux25~59_combout\,
	dataf => \ALT_INV_Mux25~57_combout\,
	combout => \Mux0~6_combout\);

-- Location: MLABCELL_X28_Y2_N36
\Mux25~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~51_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[21]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LETTER_IN[21]~input_o\,
	datac => \ALT_INV_LETTER_IN[20]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~51_combout\);

-- Location: LABCELL_X30_Y2_N48
\Mux25~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~49_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[25]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[25]~input_o\,
	datac => \ALT_INV_LETTER_IN[24]~input_o\,
	combout => \Mux25~49_combout\);

-- Location: LABCELL_X30_Y2_N27
\Mux25~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~50_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[23]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[23]~input_o\,
	datac => \ALT_INV_LETTER_IN[22]~input_o\,
	combout => \Mux25~50_combout\);

-- Location: LABCELL_X30_Y2_N33
\Mux25~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~48_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[0]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[1]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~48_combout\);

-- Location: LABCELL_X30_Y2_N0
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( \SHIFT[1]~input_o\ & ( \Mux25~48_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~49_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~51_combout\)) ) ) ) # ( !\SHIFT[1]~input_o\ & ( \Mux25~48_combout\ & ( (!\SHIFT[2]~input_o\) # 
-- (\Mux25~50_combout\) ) ) ) # ( \SHIFT[1]~input_o\ & ( !\Mux25~48_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~49_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~51_combout\)) ) ) ) # ( !\SHIFT[1]~input_o\ & ( !\Mux25~48_combout\ & ( (\SHIFT[2]~input_o\ & 
-- \Mux25~50_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~51_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~49_combout\,
	datad => \ALT_INV_Mux25~50_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_Mux25~48_combout\,
	combout => \Mux0~4_combout\);

-- Location: MLABCELL_X34_Y2_N42
\Mux25~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~60_combout\ = ( \LETTER_IN[2]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[3]~input_o\) ) ) # ( !\LETTER_IN[2]~input_o\ & ( (\LETTER_IN[3]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LETTER_IN[3]~input_o\,
	datad => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[2]~input_o\,
	combout => \Mux25~60_combout\);

-- Location: LABCELL_X27_Y2_N51
\Mux25~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~54_combout\ = ( \SHIFT[0]~input_o\ & ( \LETTER_IN[14]~input_o\ ) ) # ( !\SHIFT[0]~input_o\ & ( \LETTER_IN[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[15]~input_o\,
	datab => \ALT_INV_LETTER_IN[14]~input_o\,
	dataf => \ALT_INV_SHIFT[0]~input_o\,
	combout => \Mux25~54_combout\);

-- Location: MLABCELL_X28_Y2_N33
\Mux25~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~53_combout\ = ( \LETTER_IN[17]~input_o\ & ( (!\SHIFT[0]~input_o\) # (\LETTER_IN[16]~input_o\) ) ) # ( !\LETTER_IN[17]~input_o\ & ( (\LETTER_IN[16]~input_o\ & \SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[16]~input_o\,
	datac => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[17]~input_o\,
	combout => \Mux25~53_combout\);

-- Location: MLABCELL_X28_Y2_N9
\Mux25~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~52_combout\ = ( \LETTER_IN[18]~input_o\ & ( (\SHIFT[0]~input_o\) # (\LETTER_IN[19]~input_o\) ) ) # ( !\LETTER_IN[18]~input_o\ & ( (\LETTER_IN[19]~input_o\ & !\SHIFT[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[19]~input_o\,
	datab => \ALT_INV_SHIFT[0]~input_o\,
	dataf => \ALT_INV_LETTER_IN[18]~input_o\,
	combout => \Mux25~52_combout\);

-- Location: LABCELL_X27_Y2_N45
\Mux25~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~55_combout\ = (!\SHIFT[0]~input_o\ & (\LETTER_IN[13]~input_o\)) # (\SHIFT[0]~input_o\ & ((\LETTER_IN[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[0]~input_o\,
	datab => \ALT_INV_LETTER_IN[13]~input_o\,
	datad => \ALT_INV_LETTER_IN[12]~input_o\,
	combout => \Mux25~55_combout\);

-- Location: LABCELL_X29_Y2_N0
\Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = ( \SHIFT[1]~input_o\ & ( \Mux25~55_combout\ & ( (\SHIFT[2]~input_o\) # (\Mux25~53_combout\) ) ) ) # ( !\SHIFT[1]~input_o\ & ( \Mux25~55_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~52_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~54_combout\)) ) ) ) # ( \SHIFT[1]~input_o\ & ( !\Mux25~55_combout\ & ( (\Mux25~53_combout\ & !\SHIFT[2]~input_o\) ) ) ) # ( !\SHIFT[1]~input_o\ & ( !\Mux25~55_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~52_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~54_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~54_combout\,
	datab => \ALT_INV_Mux25~53_combout\,
	datac => \ALT_INV_SHIFT[2]~input_o\,
	datad => \ALT_INV_Mux25~52_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_Mux25~55_combout\,
	combout => \Mux0~5_combout\);

-- Location: LABCELL_X29_Y2_N6
\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \Mux0~5_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~60_combout\) ) ) ) # ( !\Mux0~5_combout\ & ( \SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & \Mux25~60_combout\) ) ) ) # ( \Mux0~5_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~4_combout\))) # (\SHIFT[4]~input_o\ & (\Mux0~6_combout\)) ) ) ) # ( !\Mux0~5_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~4_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux0~6_combout\,
	datac => \ALT_INV_Mux0~4_combout\,
	datad => \ALT_INV_Mux25~60_combout\,
	datae => \ALT_INV_Mux0~5_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X34_Y2_N3
\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Mux0~0_combout\ & ( \LETTER_IN[1]~input_o\ ) ) # ( !\Mux0~0_combout\ & ( (!\DIRECTION~input_o\ & ((\Mux24~1_combout\))) # (\DIRECTION~input_o\ & (\Mux24~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_LETTER_IN[1]~input_o\,
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_Mux24~1_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: MLABCELL_X28_Y3_N12
\Mux25~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~64_combout\ = ( \SHIFT[1]~input_o\ & ( \Mux25~17_combout\ & ( (!\SHIFT[2]~input_o\) # (\Mux25~19_combout\) ) ) ) # ( !\SHIFT[1]~input_o\ & ( \Mux25~17_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~18_combout\)) ) ) ) # ( \SHIFT[1]~input_o\ & ( !\Mux25~17_combout\ & ( (\SHIFT[2]~input_o\ & \Mux25~19_combout\) ) ) ) # ( !\SHIFT[1]~input_o\ & ( !\Mux25~17_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~18_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~19_combout\,
	datad => \ALT_INV_Mux25~32_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_Mux25~17_combout\,
	combout => \Mux25~64_combout\);

-- Location: LABCELL_X27_Y3_N12
\Mux25~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~66_combout\ = ( \Mux25~27_combout\ & ( \Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\) # (\Mux25~25_combout\)))) # (\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)) # (\Mux25~29_combout\))) ) ) ) # ( !\Mux25~27_combout\ & ( 
-- \Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\) # (\Mux25~25_combout\)))) # (\SHIFT[1]~input_o\ & (\Mux25~29_combout\ & ((\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~27_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\Mux25~25_combout\ & !\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)) # (\Mux25~29_combout\))) ) ) ) # ( !\Mux25~27_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & (((\Mux25~25_combout\ & !\SHIFT[2]~input_o\)))) # 
-- (\SHIFT[1]~input_o\ & (\Mux25~29_combout\ & ((\SHIFT[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~29_combout\,
	datab => \ALT_INV_Mux25~25_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~27_combout\,
	dataf => \ALT_INV_Mux25~28_combout\,
	combout => \Mux25~66_combout\);

-- Location: LABCELL_X27_Y3_N9
\Mux25~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~65_combout\ = ( \Mux25~24_combout\ & ( \Mux25~23_combout\ & ( ((!\SHIFT[1]~input_o\ & ((\Mux25~20_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~22_combout\))) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~24_combout\ & ( \Mux25~23_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((\Mux25~20_combout\) # (\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (\Mux25~22_combout\ & (!\SHIFT[2]~input_o\))) ) ) ) # ( \Mux25~24_combout\ & ( !\Mux25~23_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\ & 
-- \Mux25~20_combout\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~22_combout\))) ) ) ) # ( !\Mux25~24_combout\ & ( !\Mux25~23_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & ((\Mux25~20_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~22_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_SHIFT[2]~input_o\,
	datad => \ALT_INV_Mux25~20_combout\,
	datae => \ALT_INV_Mux25~24_combout\,
	dataf => \ALT_INV_Mux25~23_combout\,
	combout => \Mux25~65_combout\);

-- Location: LABCELL_X27_Y3_N48
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \Mux25~30_combout\ & ( \Mux25~65_combout\ & ( ((!\SHIFT[4]~input_o\ & (\Mux25~64_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~66_combout\)))) # (\SHIFT[3]~input_o\) ) ) ) # ( !\Mux25~30_combout\ & ( \Mux25~65_combout\ & ( 
-- (!\SHIFT[3]~input_o\ & ((!\SHIFT[4]~input_o\ & (\Mux25~64_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~66_combout\))))) # (\SHIFT[3]~input_o\ & (((!\SHIFT[4]~input_o\)))) ) ) ) # ( \Mux25~30_combout\ & ( !\Mux25~65_combout\ & ( (!\SHIFT[3]~input_o\ & 
-- ((!\SHIFT[4]~input_o\ & (\Mux25~64_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~66_combout\))))) # (\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\)))) ) ) ) # ( !\Mux25~30_combout\ & ( !\Mux25~65_combout\ & ( (!\SHIFT[3]~input_o\ & ((!\SHIFT[4]~input_o\ & 
-- (\Mux25~64_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~66_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[3]~input_o\,
	datab => \ALT_INV_Mux25~64_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux25~66_combout\,
	datae => \ALT_INV_Mux25~30_combout\,
	dataf => \ALT_INV_Mux25~65_combout\,
	combout => \Mux23~1_combout\);

-- Location: MLABCELL_X25_Y3_N12
\Mux25~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~61_combout\ = ( \Mux25~5_combout\ & ( \Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~2_combout\))) # (\SHIFT[2]~input_o\ & (((\Mux25~3_combout\) # (\SHIFT[1]~input_o\)))) ) ) ) # ( !\Mux25~5_combout\ & ( 
-- \Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~2_combout\))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~3_combout\)))) ) ) ) # ( \Mux25~5_combout\ & ( !\Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (\Mux25~2_combout\ & (\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (((\Mux25~3_combout\) # (\SHIFT[1]~input_o\)))) ) ) ) # ( !\Mux25~5_combout\ & ( !\Mux25~1_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~2_combout\ & (\SHIFT[1]~input_o\))) # 
-- (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_Mux25~2_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~3_combout\,
	datae => \ALT_INV_Mux25~5_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~61_combout\);

-- Location: LABCELL_X24_Y2_N42
\Mux25~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~63_combout\ = ( \Mux25~15_combout\ & ( \Mux25~13_combout\ & ( ((!\SHIFT[1]~input_o\ & (\Mux25~11_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~12_combout\)))) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~15_combout\ & ( \Mux25~13_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~11_combout\))) # (\SHIFT[1]~input_o\ & (((\Mux25~12_combout\ & !\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~15_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~11_combout\ & 
-- ((!\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\) # (\Mux25~12_combout\)))) ) ) ) # ( !\Mux25~15_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~11_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110101010100100111101010100010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_Mux25~11_combout\,
	datac => \ALT_INV_Mux25~12_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~15_combout\,
	dataf => \ALT_INV_Mux25~13_combout\,
	combout => \Mux25~63_combout\);

-- Location: MLABCELL_X25_Y2_N12
\Mux25~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~62_combout\ = ( \Mux25~8_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~7_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~10_combout\)) ) ) ) # ( !\Mux25~8_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & 
-- ((\Mux25~7_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~10_combout\)) ) ) ) # ( \Mux25~8_combout\ & ( !\SHIFT[1]~input_o\ & ( (\SHIFT[2]~input_o\) # (\Mux25~6_combout\) ) ) ) # ( !\Mux25~8_combout\ & ( !\SHIFT[1]~input_o\ & ( (\Mux25~6_combout\ & 
-- !\SHIFT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~10_combout\,
	datab => \ALT_INV_Mux25~7_combout\,
	datac => \ALT_INV_Mux25~6_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~8_combout\,
	dataf => \ALT_INV_SHIFT[1]~input_o\,
	combout => \Mux25~62_combout\);

-- Location: MLABCELL_X25_Y2_N18
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \Mux25~63_combout\ & ( \Mux25~62_combout\ & ( (!\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\) # (\Mux25~61_combout\)))) # (\SHIFT[3]~input_o\ & (((!\SHIFT[4]~input_o\)) # (\Mux25~0_combout\))) ) ) ) # ( !\Mux25~63_combout\ & ( 
-- \Mux25~62_combout\ & ( (!\SHIFT[3]~input_o\ & (((\Mux25~61_combout\ & !\SHIFT[4]~input_o\)))) # (\SHIFT[3]~input_o\ & (((!\SHIFT[4]~input_o\)) # (\Mux25~0_combout\))) ) ) ) # ( \Mux25~63_combout\ & ( !\Mux25~62_combout\ & ( (!\SHIFT[3]~input_o\ & 
-- (((\SHIFT[4]~input_o\) # (\Mux25~61_combout\)))) # (\SHIFT[3]~input_o\ & (\Mux25~0_combout\ & ((\SHIFT[4]~input_o\)))) ) ) ) # ( !\Mux25~63_combout\ & ( !\Mux25~62_combout\ & ( (!\SHIFT[3]~input_o\ & (((\Mux25~61_combout\ & !\SHIFT[4]~input_o\)))) # 
-- (\SHIFT[3]~input_o\ & (\Mux25~0_combout\ & ((\SHIFT[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_SHIFT[3]~input_o\,
	datac => \ALT_INV_Mux25~61_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux25~63_combout\,
	dataf => \ALT_INV_Mux25~62_combout\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \Mux23~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux23~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[2]~input_o\)))) ) ) # ( !\Mux23~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- ((\Mux23~1_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[2]~input_o\,
	datad => \ALT_INV_Mux23~1_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~2_combout\);

-- Location: LABCELL_X30_Y3_N18
\Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = ( \Mux25~46_combout\ & ( \Mux25~45_combout\ & ( (!\SHIFT[1]~input_o\ & (((\Mux25~44_combout\)) # (\SHIFT[2]~input_o\))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\) # ((\Mux25~47_combout\)))) ) ) ) # ( !\Mux25~46_combout\ & ( 
-- \Mux25~45_combout\ & ( (!\SHIFT[1]~input_o\ & (!\SHIFT[2]~input_o\ & (\Mux25~44_combout\))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\) # ((\Mux25~47_combout\)))) ) ) ) # ( \Mux25~46_combout\ & ( !\Mux25~45_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\Mux25~44_combout\)) # (\SHIFT[2]~input_o\))) # (\SHIFT[1]~input_o\ & (\SHIFT[2]~input_o\ & ((\Mux25~47_combout\)))) ) ) ) # ( !\Mux25~46_combout\ & ( !\Mux25~45_combout\ & ( (!\SHIFT[1]~input_o\ & (!\SHIFT[2]~input_o\ & (\Mux25~44_combout\))) # 
-- (\SHIFT[1]~input_o\ & (\SHIFT[2]~input_o\ & ((\Mux25~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~44_combout\,
	datad => \ALT_INV_Mux25~47_combout\,
	datae => \ALT_INV_Mux25~46_combout\,
	dataf => \ALT_INV_Mux25~45_combout\,
	combout => \Mux0~9_combout\);

-- Location: LABCELL_X30_Y3_N42
\Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = ( \Mux25~38_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~37_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~39_combout\))) ) ) ) # ( !\Mux25~38_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & 
-- (\Mux25~37_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~39_combout\))) ) ) ) # ( \Mux25~38_combout\ & ( !\SHIFT[1]~input_o\ & ( (\SHIFT[2]~input_o\) # (\Mux25~36_combout\) ) ) ) # ( !\Mux25~38_combout\ & ( !\SHIFT[1]~input_o\ & ( (\Mux25~36_combout\ & 
-- !\SHIFT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~36_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~37_combout\,
	datad => \ALT_INV_Mux25~39_combout\,
	datae => \ALT_INV_Mux25~38_combout\,
	dataf => \ALT_INV_SHIFT[1]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: MLABCELL_X25_Y3_N48
\Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( \Mux25~41_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~42_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~43_combout\))) ) ) ) # ( !\Mux25~41_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & 
-- (\Mux25~42_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~43_combout\))) ) ) ) # ( \Mux25~41_combout\ & ( !\SHIFT[2]~input_o\ & ( (\Mux25~40_combout\) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~41_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & 
-- \Mux25~40_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~42_combout\,
	datab => \ALT_INV_Mux25~43_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~40_combout\,
	datae => \ALT_INV_Mux25~41_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: LABCELL_X30_Y3_N54
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \SHIFT[4]~input_o\ & ( \Mux0~8_combout\ & ( (!\SHIFT[3]~input_o\ & (\Mux0~9_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux25~35_combout\))) ) ) ) # ( !\SHIFT[4]~input_o\ & ( \Mux0~8_combout\ & ( (\SHIFT[3]~input_o\) # (\Mux0~7_combout\) ) 
-- ) ) # ( \SHIFT[4]~input_o\ & ( !\Mux0~8_combout\ & ( (!\SHIFT[3]~input_o\ & (\Mux0~9_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux25~35_combout\))) ) ) ) # ( !\SHIFT[4]~input_o\ & ( !\Mux0~8_combout\ & ( (\Mux0~7_combout\ & !\SHIFT[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~9_combout\,
	datab => \ALT_INV_Mux0~7_combout\,
	datac => \ALT_INV_SHIFT[3]~input_o\,
	datad => \ALT_INV_Mux25~35_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_Mux0~8_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X29_Y2_N42
\Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = ( \SHIFT[1]~input_o\ & ( \SHIFT[2]~input_o\ & ( \Mux25~54_combout\ ) ) ) # ( !\SHIFT[1]~input_o\ & ( \SHIFT[2]~input_o\ & ( \Mux25~53_combout\ ) ) ) # ( \SHIFT[1]~input_o\ & ( !\SHIFT[2]~input_o\ & ( \Mux25~52_combout\ ) ) ) # ( 
-- !\SHIFT[1]~input_o\ & ( !\SHIFT[2]~input_o\ & ( \Mux25~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~54_combout\,
	datab => \ALT_INV_Mux25~53_combout\,
	datac => \ALT_INV_Mux25~51_combout\,
	datad => \ALT_INV_Mux25~52_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~11_combout\);

-- Location: LABCELL_X30_Y2_N6
\Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = ( \SHIFT[1]~input_o\ & ( \Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~48_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~50_combout\))) ) ) ) # ( !\SHIFT[1]~input_o\ & ( \Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\) # 
-- (\Mux25~49_combout\) ) ) ) # ( \SHIFT[1]~input_o\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~48_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~50_combout\))) ) ) ) # ( !\SHIFT[1]~input_o\ & ( !\Mux25~60_combout\ & ( (\Mux25~49_combout\ & 
-- \SHIFT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~49_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~48_combout\,
	datad => \ALT_INV_Mux25~50_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_Mux25~60_combout\,
	combout => \Mux0~10_combout\);

-- Location: LABCELL_X31_Y2_N36
\Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( \Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))) ) ) ) # ( !\Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & 
-- (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))) ) ) ) # ( \Mux25~56_combout\ & ( !\SHIFT[2]~input_o\ & ( (\Mux25~55_combout\) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~56_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & 
-- \Mux25~55_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~57_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~55_combout\,
	datad => \ALT_INV_Mux25~58_combout\,
	datae => \ALT_INV_Mux25~56_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LABCELL_X29_Y2_N48
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \Mux0~10_combout\ & ( \Mux0~12_combout\ & ( (!\SHIFT[3]~input_o\) # ((!\SHIFT[4]~input_o\ & ((\Mux0~11_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~59_combout\))) ) ) ) # ( !\Mux0~10_combout\ & ( \Mux0~12_combout\ & ( 
-- (!\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\)))) # (\SHIFT[3]~input_o\ & ((!\SHIFT[4]~input_o\ & ((\Mux0~11_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~59_combout\)))) ) ) ) # ( \Mux0~10_combout\ & ( !\Mux0~12_combout\ & ( (!\SHIFT[3]~input_o\ & 
-- (((!\SHIFT[4]~input_o\)))) # (\SHIFT[3]~input_o\ & ((!\SHIFT[4]~input_o\ & ((\Mux0~11_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~59_combout\)))) ) ) ) # ( !\Mux0~10_combout\ & ( !\Mux0~12_combout\ & ( (\SHIFT[3]~input_o\ & ((!\SHIFT[4]~input_o\ & 
-- ((\Mux0~11_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[3]~input_o\,
	datab => \ALT_INV_Mux25~59_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~11_combout\,
	datae => \ALT_INV_Mux0~10_combout\,
	dataf => \ALT_INV_Mux0~12_combout\,
	combout => \Mux22~1_combout\);

-- Location: MLABCELL_X34_Y2_N27
\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Mux22~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux22~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[3]~input_o\)))) ) ) # ( !\Mux22~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- (\Mux22~0_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_LETTER_IN[3]~input_o\,
	dataf => \ALT_INV_Mux22~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LABCELL_X24_Y2_N24
\Mux25~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~69_combout\ = ( \Mux25~12_combout\ & ( \Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\) # ((!\SHIFT[1]~input_o\ & (\Mux25~15_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~0_combout\)))) ) ) ) # ( !\Mux25~12_combout\ & ( \Mux25~13_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~15_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~0_combout\))))) ) ) ) # ( \Mux25~12_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((!\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~15_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~0_combout\))))) ) ) ) # ( !\Mux25~12_combout\ & ( !\Mux25~13_combout\ & ( (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & 
-- (\Mux25~15_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~15_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~12_combout\,
	dataf => \ALT_INV_Mux25~13_combout\,
	combout => \Mux25~69_combout\);

-- Location: MLABCELL_X25_Y2_N24
\Mux25~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~67_combout\ = ( \Mux25~3_combout\ & ( \Mux25~6_combout\ & ( ((!\SHIFT[2]~input_o\ & ((\Mux25~2_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~5_combout\))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~3_combout\ & ( \Mux25~6_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~2_combout\)))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)) # (\Mux25~5_combout\))) ) ) ) # ( \Mux25~3_combout\ & ( !\Mux25~6_combout\ & ( (!\SHIFT[2]~input_o\ & (((\Mux25~2_combout\) # 
-- (\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & (\Mux25~5_combout\ & (!\SHIFT[1]~input_o\))) ) ) ) # ( !\Mux25~3_combout\ & ( !\Mux25~6_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & ((\Mux25~2_combout\))) # (\SHIFT[2]~input_o\ & 
-- (\Mux25~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~5_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~2_combout\,
	datae => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_Mux25~6_combout\,
	combout => \Mux25~67_combout\);

-- Location: LABCELL_X24_Y2_N18
\Mux25~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~68_combout\ = ( \SHIFT[1]~input_o\ & ( \SHIFT[2]~input_o\ & ( \Mux25~11_combout\ ) ) ) # ( !\SHIFT[1]~input_o\ & ( \SHIFT[2]~input_o\ & ( \Mux25~10_combout\ ) ) ) # ( \SHIFT[1]~input_o\ & ( !\SHIFT[2]~input_o\ & ( \Mux25~8_combout\ ) ) ) # ( 
-- !\SHIFT[1]~input_o\ & ( !\SHIFT[2]~input_o\ & ( \Mux25~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~8_combout\,
	datab => \ALT_INV_Mux25~7_combout\,
	datac => \ALT_INV_Mux25~10_combout\,
	datad => \ALT_INV_Mux25~11_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux25~68_combout\);

-- Location: LABCELL_X23_Y2_N0
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Mux25~68_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~1_combout\) ) ) ) # ( !\Mux25~68_combout\ & ( \SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & \Mux25~1_combout\) ) ) ) # ( \Mux25~68_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~67_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~69_combout\)) ) ) ) # ( !\Mux25~68_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~67_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~69_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~69_combout\,
	datac => \ALT_INV_Mux25~67_combout\,
	datad => \ALT_INV_Mux25~1_combout\,
	datae => \ALT_INV_Mux25~68_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: MLABCELL_X28_Y3_N48
\Mux25~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~70_combout\ = ( \SHIFT[1]~input_o\ & ( \Mux25~30_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~18_combout\)) ) ) ) # ( !\SHIFT[1]~input_o\ & ( \Mux25~30_combout\ & ( (!\SHIFT[2]~input_o\) # 
-- (\Mux25~17_combout\) ) ) ) # ( \SHIFT[1]~input_o\ & ( !\Mux25~30_combout\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~18_combout\)) ) ) ) # ( !\SHIFT[1]~input_o\ & ( !\Mux25~30_combout\ & ( (\Mux25~17_combout\ & 
-- \SHIFT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~17_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~18_combout\,
	datad => \ALT_INV_Mux25~32_combout\,
	datae => \ALT_INV_SHIFT[1]~input_o\,
	dataf => \ALT_INV_Mux25~30_combout\,
	combout => \Mux25~70_combout\);

-- Location: MLABCELL_X28_Y3_N27
\Mux25~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~71_combout\ = ( \Mux25~22_combout\ & ( \Mux25~20_combout\ & ( (!\SHIFT[2]~input_o\ & (((\Mux25~19_combout\) # (\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~23_combout\))) ) ) ) # ( !\Mux25~22_combout\ & ( 
-- \Mux25~20_combout\ & ( (!\SHIFT[2]~input_o\ & (((\Mux25~19_combout\) # (\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & (\Mux25~23_combout\ & (\SHIFT[1]~input_o\))) ) ) ) # ( \Mux25~22_combout\ & ( !\Mux25~20_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((!\SHIFT[1]~input_o\ & \Mux25~19_combout\)))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~23_combout\))) ) ) ) # ( !\Mux25~22_combout\ & ( !\Mux25~20_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~19_combout\)))) # 
-- (\SHIFT[2]~input_o\ & (\Mux25~23_combout\ & (\SHIFT[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~23_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~19_combout\,
	datae => \ALT_INV_Mux25~22_combout\,
	dataf => \ALT_INV_Mux25~20_combout\,
	combout => \Mux25~71_combout\);

-- Location: LABCELL_X27_Y3_N24
\Mux25~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~72_combout\ = ( \SHIFT[2]~input_o\ & ( \Mux25~28_combout\ & ( (\Mux25~27_combout\) # (\SHIFT[1]~input_o\) ) ) ) # ( !\SHIFT[2]~input_o\ & ( \Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & ((\Mux25~24_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~25_combout\)) ) ) ) # ( \SHIFT[2]~input_o\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & \Mux25~27_combout\) ) ) ) # ( !\SHIFT[2]~input_o\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & ((\Mux25~24_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~25_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~27_combout\,
	datad => \ALT_INV_Mux25~24_combout\,
	datae => \ALT_INV_SHIFT[2]~input_o\,
	dataf => \ALT_INV_Mux25~28_combout\,
	combout => \Mux25~72_combout\);

-- Location: LABCELL_X23_Y2_N36
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~71_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~29_combout\))) ) ) ) # ( !\Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~71_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~29_combout\))) ) ) ) # ( \Mux25~72_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\) # (\Mux25~70_combout\) ) ) ) # ( !\Mux25~72_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux25~70_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~70_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux25~71_combout\,
	datad => \ALT_INV_Mux25~29_combout\,
	datae => \ALT_INV_Mux25~72_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X33_Y2_N48
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \LETTER_IN[4]~input_o\ & ( ((!\DIRECTION~input_o\ & ((\Mux21~1_combout\))) # (\DIRECTION~input_o\ & (\Mux21~0_combout\))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[4]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- ((\Mux21~1_combout\))) # (\DIRECTION~input_o\ & (\Mux21~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_LETTER_IN[4]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X30_Y2_N42
\Mux0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = ( \Mux25~59_combout\ & ( \Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\) # ((!\SHIFT[1]~input_o\ & (\Mux25~48_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~49_combout\)))) ) ) ) # ( !\Mux25~59_combout\ & ( \Mux25~60_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~48_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~49_combout\))))) ) ) ) # ( \Mux25~59_combout\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((!\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~48_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~49_combout\))))) ) ) ) # ( !\Mux25~59_combout\ & ( !\Mux25~60_combout\ & ( (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & 
-- (\Mux25~48_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~49_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~48_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~49_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~59_combout\,
	dataf => \ALT_INV_Mux25~60_combout\,
	combout => \Mux0~16_combout\);

-- Location: LABCELL_X29_Y2_N24
\Mux0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = ( \Mux25~50_combout\ & ( \Mux25~53_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\) # ((\Mux25~51_combout\)))) # (\SHIFT[2]~input_o\ & (((\Mux25~52_combout\)) # (\SHIFT[1]~input_o\))) ) ) ) # ( !\Mux25~50_combout\ & ( 
-- \Mux25~53_combout\ & ( (!\SHIFT[2]~input_o\ & (\SHIFT[1]~input_o\ & (\Mux25~51_combout\))) # (\SHIFT[2]~input_o\ & (((\Mux25~52_combout\)) # (\SHIFT[1]~input_o\))) ) ) ) # ( \Mux25~50_combout\ & ( !\Mux25~53_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- ((!\SHIFT[1]~input_o\) # ((\Mux25~51_combout\)))) # (\SHIFT[2]~input_o\ & (!\SHIFT[1]~input_o\ & ((\Mux25~52_combout\)))) ) ) ) # ( !\Mux25~50_combout\ & ( !\Mux25~53_combout\ & ( (!\SHIFT[2]~input_o\ & (\SHIFT[1]~input_o\ & (\Mux25~51_combout\))) # 
-- (\SHIFT[2]~input_o\ & (!\SHIFT[1]~input_o\ & ((\Mux25~52_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~51_combout\,
	datad => \ALT_INV_Mux25~52_combout\,
	datae => \ALT_INV_Mux25~50_combout\,
	dataf => \ALT_INV_Mux25~53_combout\,
	combout => \Mux0~17_combout\);

-- Location: LABCELL_X31_Y2_N42
\Mux0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = ( \Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\) # (\Mux25~57_combout\) ) ) ) # ( !\Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (\Mux25~57_combout\ & \SHIFT[1]~input_o\) ) ) ) # ( \Mux25~56_combout\ & ( 
-- !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~54_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~55_combout\))) ) ) ) # ( !\Mux25~56_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~54_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~55_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~57_combout\,
	datab => \ALT_INV_Mux25~54_combout\,
	datac => \ALT_INV_Mux25~55_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~56_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~18_combout\);

-- Location: LABCELL_X33_Y2_N30
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \Mux25~58_combout\ & ( \Mux0~18_combout\ & ( ((!\SHIFT[3]~input_o\ & (\Mux0~16_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~17_combout\)))) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux25~58_combout\ & ( \Mux0~18_combout\ & ( 
-- (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & (\Mux0~16_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~17_combout\))))) # (\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\)))) ) ) ) # ( \Mux25~58_combout\ & ( !\Mux0~18_combout\ & ( (!\SHIFT[4]~input_o\ & 
-- ((!\SHIFT[3]~input_o\ & (\Mux0~16_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~17_combout\))))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)))) ) ) ) # ( !\Mux25~58_combout\ & ( !\Mux0~18_combout\ & ( (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & 
-- (\Mux0~16_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~16_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux0~17_combout\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux25~58_combout\,
	dataf => \ALT_INV_Mux0~18_combout\,
	combout => \Mux20~1_combout\);

-- Location: MLABCELL_X25_Y3_N54
\Mux0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = ( \Mux25~44_combout\ & ( \Mux25~42_combout\ & ( ((!\SHIFT[2]~input_o\ & (\Mux25~41_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~43_combout\)))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~44_combout\ & ( \Mux25~42_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~41_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~43_combout\))))) # (\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~44_combout\ & ( !\Mux25~42_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- ((!\SHIFT[2]~input_o\ & (\Mux25~41_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~43_combout\))))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)))) ) ) ) # ( !\Mux25~44_combout\ & ( !\Mux25~42_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- (\Mux25~41_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~43_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~41_combout\,
	datab => \ALT_INV_Mux25~43_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~44_combout\,
	dataf => \ALT_INV_Mux25~42_combout\,
	combout => \Mux0~14_combout\);

-- Location: LABCELL_X29_Y3_N42
\Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = ( \Mux25~40_combout\ & ( \Mux25~37_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\) # (\Mux25~39_combout\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~38_combout\))) ) ) ) # ( !\Mux25~40_combout\ & ( 
-- \Mux25~37_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\) # (\Mux25~39_combout\)))) # (\SHIFT[1]~input_o\ & (\Mux25~38_combout\ & ((!\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~40_combout\ & ( !\Mux25~37_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\Mux25~39_combout\ & \SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~38_combout\))) ) ) ) # ( !\Mux25~40_combout\ & ( !\Mux25~37_combout\ & ( (!\SHIFT[1]~input_o\ & (((\Mux25~39_combout\ & \SHIFT[2]~input_o\)))) # 
-- (\SHIFT[1]~input_o\ & (\Mux25~38_combout\ & ((!\SHIFT[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~38_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~39_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~40_combout\,
	dataf => \ALT_INV_Mux25~37_combout\,
	combout => \Mux0~13_combout\);

-- Location: LABCELL_X30_Y3_N30
\Mux0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = ( \Mux25~45_combout\ & ( \Mux25~35_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # (\Mux25~46_combout\))) # (\SHIFT[2]~input_o\ & (((\Mux25~47_combout\) # (\SHIFT[1]~input_o\)))) ) ) ) # ( !\Mux25~45_combout\ & ( 
-- \Mux25~35_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~46_combout\ & (\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (((\Mux25~47_combout\) # (\SHIFT[1]~input_o\)))) ) ) ) # ( \Mux25~45_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((!\SHIFT[1]~input_o\)) # (\Mux25~46_combout\))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~47_combout\)))) ) ) ) # ( !\Mux25~45_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~46_combout\ & (\SHIFT[1]~input_o\))) # 
-- (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\ & \Mux25~47_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~46_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~47_combout\,
	datae => \ALT_INV_Mux25~45_combout\,
	dataf => \ALT_INV_Mux25~35_combout\,
	combout => \Mux0~15_combout\);

-- Location: LABCELL_X33_Y2_N24
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~36_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~14_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~36_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~13_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux0~15_combout\))) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~36_combout\ & ( (\Mux0~14_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~36_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~13_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux0~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~14_combout\,
	datab => \ALT_INV_Mux0~13_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~15_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~36_combout\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X33_Y2_N9
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux20~0_combout\ & ( (!\Mux0~0_combout\ & (((\DIRECTION~input_o\) # (\Mux20~1_combout\)))) # (\Mux0~0_combout\ & (\LETTER_IN[5]~input_o\)) ) ) # ( !\Mux20~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux20~1_combout\ & 
-- !\DIRECTION~input_o\)))) # (\Mux0~0_combout\ & (\LETTER_IN[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100010001000111010001000100011101110111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[5]~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux20~1_combout\,
	datad => \ALT_INV_DIRECTION~input_o\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X24_Y2_N30
\Mux25~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~74_combout\ = ( \Mux25~8_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~11_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~12_combout\))) ) ) ) # ( !\Mux25~8_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & 
-- (\Mux25~11_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~12_combout\))) ) ) ) # ( \Mux25~8_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\) # (\Mux25~10_combout\) ) ) ) # ( !\Mux25~8_combout\ & ( !\SHIFT[2]~input_o\ & ( (\Mux25~10_combout\ & 
-- \SHIFT[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~10_combout\,
	datab => \ALT_INV_Mux25~11_combout\,
	datac => \ALT_INV_Mux25~12_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~8_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux25~74_combout\);

-- Location: MLABCELL_X25_Y2_N30
\Mux25~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~73_combout\ = ( \Mux25~3_combout\ & ( \Mux25~6_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & (\Mux25~5_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~7_combout\)))) ) ) ) # ( !\Mux25~3_combout\ & ( \Mux25~6_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (\Mux25~5_combout\ & (\SHIFT[1]~input_o\))) # (\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\) # (\Mux25~7_combout\)))) ) ) ) # ( \Mux25~3_combout\ & ( !\Mux25~6_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)) # 
-- (\Mux25~5_combout\))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\ & \Mux25~7_combout\)))) ) ) ) # ( !\Mux25~3_combout\ & ( !\Mux25~6_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~5_combout\)) # (\SHIFT[2]~input_o\ & 
-- ((\Mux25~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~5_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_Mux25~7_combout\,
	datae => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_Mux25~6_combout\,
	combout => \Mux25~73_combout\);

-- Location: LABCELL_X24_Y2_N6
\Mux25~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~75_combout\ = ( \Mux25~1_combout\ & ( \Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\) # (\Mux25~15_combout\)))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)) # (\Mux25~0_combout\))) ) ) ) # ( !\Mux25~1_combout\ & ( 
-- \Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\) # (\Mux25~15_combout\)))) # (\SHIFT[2]~input_o\ & (\Mux25~0_combout\ & ((!\SHIFT[1]~input_o\)))) ) ) ) # ( \Mux25~1_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((\Mux25~15_combout\ & \SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & (((\SHIFT[1]~input_o\)) # (\Mux25~0_combout\))) ) ) ) # ( !\Mux25~1_combout\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[2]~input_o\ & (((\Mux25~15_combout\ & \SHIFT[1]~input_o\)))) # 
-- (\SHIFT[2]~input_o\ & (\Mux25~0_combout\ & ((!\SHIFT[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~15_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_Mux25~13_combout\,
	combout => \Mux25~75_combout\);

-- Location: LABCELL_X24_Y2_N12
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~2_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux25~74_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~2_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~73_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux25~75_combout\))) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~2_combout\ & ( (\Mux25~74_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~2_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~73_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux25~75_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111010001000100010000001100001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~74_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux25~73_combout\,
	datad => \ALT_INV_Mux25~75_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~2_combout\,
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X28_Y3_N30
\Mux25~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~77_combout\ = ( \Mux25~20_combout\ & ( \Mux25~18_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & ((\Mux25~19_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~22_combout\))) ) ) ) # ( !\Mux25~20_combout\ & ( \Mux25~18_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & ((\Mux25~19_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~22_combout\)))) ) ) ) # ( \Mux25~20_combout\ & ( !\Mux25~18_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & ((\Mux25~19_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~22_combout\)))) ) ) ) # ( !\Mux25~20_combout\ & ( !\Mux25~18_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- ((\Mux25~19_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~22_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~19_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~20_combout\,
	dataf => \ALT_INV_Mux25~18_combout\,
	combout => \Mux25~77_combout\);

-- Location: LABCELL_X27_Y3_N30
\Mux25~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~76_combout\ = ( \Mux25~29_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & ((\Mux25~30_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~17_combout\)) ) ) ) # ( !\Mux25~29_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & 
-- ((\Mux25~30_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~17_combout\)) ) ) ) # ( \Mux25~29_combout\ & ( !\SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\) # (\Mux25~32_combout\) ) ) ) # ( !\Mux25~29_combout\ & ( !\SHIFT[1]~input_o\ & ( (\Mux25~32_combout\ & 
-- \SHIFT[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~17_combout\,
	datab => \ALT_INV_Mux25~32_combout\,
	datac => \ALT_INV_Mux25~30_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~29_combout\,
	dataf => \ALT_INV_SHIFT[1]~input_o\,
	combout => \Mux25~76_combout\);

-- Location: LABCELL_X27_Y3_N36
\Mux25~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~78_combout\ = ( \SHIFT[2]~input_o\ & ( \Mux25~23_combout\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~25_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~27_combout\))) ) ) ) # ( !\SHIFT[2]~input_o\ & ( \Mux25~23_combout\ & ( (!\SHIFT[1]~input_o\) # 
-- (\Mux25~24_combout\) ) ) ) # ( \SHIFT[2]~input_o\ & ( !\Mux25~23_combout\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~25_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~27_combout\))) ) ) ) # ( !\SHIFT[2]~input_o\ & ( !\Mux25~23_combout\ & ( (\SHIFT[1]~input_o\ & 
-- \Mux25~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_Mux25~25_combout\,
	datac => \ALT_INV_Mux25~27_combout\,
	datad => \ALT_INV_Mux25~24_combout\,
	datae => \ALT_INV_SHIFT[2]~input_o\,
	dataf => \ALT_INV_Mux25~23_combout\,
	combout => \Mux25~78_combout\);

-- Location: LABCELL_X27_Y3_N42
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Mux25~78_combout\ & ( \Mux25~28_combout\ & ( ((!\SHIFT[3]~input_o\ & ((\Mux25~76_combout\))) # (\SHIFT[3]~input_o\ & (\Mux25~77_combout\))) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux25~78_combout\ & ( \Mux25~28_combout\ & ( 
-- (!\SHIFT[3]~input_o\ & (((\Mux25~76_combout\ & !\SHIFT[4]~input_o\)))) # (\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\)) # (\Mux25~77_combout\))) ) ) ) # ( \Mux25~78_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\) # 
-- (\Mux25~76_combout\)))) # (\SHIFT[3]~input_o\ & (\Mux25~77_combout\ & ((!\SHIFT[4]~input_o\)))) ) ) ) # ( !\Mux25~78_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & ((\Mux25~76_combout\))) # (\SHIFT[3]~input_o\ & 
-- (\Mux25~77_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101011111000000110101000011110011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~77_combout\,
	datab => \ALT_INV_Mux25~76_combout\,
	datac => \ALT_INV_SHIFT[3]~input_o\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux25~78_combout\,
	dataf => \ALT_INV_Mux25~28_combout\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X34_Y2_N24
\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \LETTER_IN[6]~input_o\ & ( ((!\DIRECTION~input_o\ & ((\Mux19~1_combout\))) # (\DIRECTION~input_o\ & (\Mux19~0_combout\))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[6]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- ((\Mux19~1_combout\))) # (\DIRECTION~input_o\ & (\Mux19~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_LETTER_IN[6]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X29_Y2_N30
\Mux0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~23_combout\ = ( \Mux25~50_combout\ & ( \Mux25~49_combout\ & ( (!\SHIFT[2]~input_o\) # ((!\SHIFT[1]~input_o\ & ((\Mux25~51_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~52_combout\))) ) ) ) # ( !\Mux25~50_combout\ & ( \Mux25~49_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & (((!\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & ((\Mux25~51_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~52_combout\)))) ) ) ) # ( \Mux25~50_combout\ & ( !\Mux25~49_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- (((\SHIFT[1]~input_o\)))) # (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & ((\Mux25~51_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~52_combout\)))) ) ) ) # ( !\Mux25~50_combout\ & ( !\Mux25~49_combout\ & ( (\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & 
-- ((\Mux25~51_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~52_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_Mux25~52_combout\,
	datac => \ALT_INV_Mux25~51_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~50_combout\,
	dataf => \ALT_INV_Mux25~49_combout\,
	combout => \Mux0~23_combout\);

-- Location: LABCELL_X31_Y2_N48
\Mux0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~22_combout\ = ( \Mux25~48_combout\ & ( \Mux25~60_combout\ & ( ((!\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~59_combout\))) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~48_combout\ & ( \Mux25~60_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((\Mux25~58_combout\) # (\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & (\Mux25~59_combout\ & (!\SHIFT[2]~input_o\))) ) ) ) # ( \Mux25~48_combout\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\ & 
-- \Mux25~58_combout\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)) # (\Mux25~59_combout\))) ) ) ) # ( !\Mux25~48_combout\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~59_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~59_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_SHIFT[2]~input_o\,
	datad => \ALT_INV_Mux25~58_combout\,
	datae => \ALT_INV_Mux25~48_combout\,
	dataf => \ALT_INV_Mux25~60_combout\,
	combout => \Mux0~22_combout\);

-- Location: LABCELL_X31_Y2_N54
\Mux0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~24_combout\ = ( \Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (\SHIFT[1]~input_o\) # (\Mux25~55_combout\) ) ) ) # ( !\Mux25~56_combout\ & ( \SHIFT[2]~input_o\ & ( (\Mux25~55_combout\ & !\SHIFT[1]~input_o\) ) ) ) # ( \Mux25~56_combout\ & ( 
-- !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~53_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~54_combout\))) ) ) ) # ( !\Mux25~56_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & (\Mux25~53_combout\)) # (\SHIFT[1]~input_o\ & 
-- ((\Mux25~54_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~53_combout\,
	datab => \ALT_INV_Mux25~54_combout\,
	datac => \ALT_INV_Mux25~55_combout\,
	datad => \ALT_INV_SHIFT[1]~input_o\,
	datae => \ALT_INV_Mux25~56_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~24_combout\);

-- Location: LABCELL_X31_Y2_N0
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \Mux0~24_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~23_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~57_combout\))) ) ) ) # ( !\Mux0~24_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux0~23_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~57_combout\))) ) ) ) # ( \Mux0~24_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\) # (\Mux0~22_combout\) ) ) ) # ( !\Mux0~24_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux0~22_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~23_combout\,
	datab => \ALT_INV_Mux0~22_combout\,
	datac => \ALT_INV_Mux25~57_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux0~24_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X29_Y3_N18
\Mux0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = ( \Mux25~40_combout\ & ( \Mux25~38_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & (\Mux25~39_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~41_combout\)))) ) ) ) # ( !\Mux25~40_combout\ & ( \Mux25~38_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~39_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~41_combout\))))) ) ) ) # ( \Mux25~40_combout\ & ( !\Mux25~38_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~39_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~41_combout\))))) ) ) ) # ( !\Mux25~40_combout\ & ( !\Mux25~38_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- (\Mux25~39_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~41_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~39_combout\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~41_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~40_combout\,
	dataf => \ALT_INV_Mux25~38_combout\,
	combout => \Mux0~19_combout\);

-- Location: MLABCELL_X25_Y3_N0
\Mux0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = ( \Mux25~44_combout\ & ( \SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\) # (\Mux25~45_combout\) ) ) ) # ( !\Mux25~44_combout\ & ( \SHIFT[2]~input_o\ & ( (\SHIFT[1]~input_o\ & \Mux25~45_combout\) ) ) ) # ( \Mux25~44_combout\ & ( 
-- !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & ((\Mux25~42_combout\))) # (\SHIFT[1]~input_o\ & (\Mux25~43_combout\)) ) ) ) # ( !\Mux25~44_combout\ & ( !\SHIFT[2]~input_o\ & ( (!\SHIFT[1]~input_o\ & ((\Mux25~42_combout\))) # (\SHIFT[1]~input_o\ & 
-- (\Mux25~43_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_Mux25~43_combout\,
	datac => \ALT_INV_Mux25~42_combout\,
	datad => \ALT_INV_Mux25~45_combout\,
	datae => \ALT_INV_Mux25~44_combout\,
	dataf => \ALT_INV_SHIFT[2]~input_o\,
	combout => \Mux0~20_combout\);

-- Location: LABCELL_X30_Y3_N36
\Mux0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = ( \Mux25~46_combout\ & ( \Mux25~35_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & (\Mux25~47_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~36_combout\)))) ) ) ) # ( !\Mux25~46_combout\ & ( \Mux25~35_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~47_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~36_combout\))))) ) ) ) # ( \Mux25~46_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((!\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~47_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~36_combout\))))) ) ) ) # ( !\Mux25~46_combout\ & ( !\Mux25~35_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- (\Mux25~47_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~36_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[1]~input_o\,
	datab => \ALT_INV_Mux25~47_combout\,
	datac => \ALT_INV_Mux25~36_combout\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~46_combout\,
	dataf => \ALT_INV_Mux25~35_combout\,
	combout => \Mux0~21_combout\);

-- Location: LABCELL_X29_Y3_N24
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Mux0~21_combout\ & ( \Mux25~37_combout\ & ( ((!\SHIFT[3]~input_o\ & (\Mux0~19_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~20_combout\)))) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux0~21_combout\ & ( \Mux25~37_combout\ & ( 
-- (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & (\Mux0~19_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~20_combout\))))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)))) ) ) ) # ( \Mux0~21_combout\ & ( !\Mux25~37_combout\ & ( (!\SHIFT[4]~input_o\ & 
-- ((!\SHIFT[3]~input_o\ & (\Mux0~19_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~20_combout\))))) # (\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\)))) ) ) ) # ( !\Mux0~21_combout\ & ( !\Mux25~37_combout\ & ( (!\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & 
-- (\Mux0~19_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux0~20_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~19_combout\,
	datab => \ALT_INV_Mux0~20_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux0~21_combout\,
	dataf => \ALT_INV_Mux25~37_combout\,
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X34_Y2_N21
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Mux18~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux18~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[7]~input_o\)))) ) ) # ( !\Mux18~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- (\Mux18~1_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux18~1_combout\,
	datad => \ALT_INV_LETTER_IN[7]~input_o\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X27_Y3_N18
\Mux25~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~80_combout\ = ( \Mux25~30_combout\ & ( \Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\) # ((!\SHIFT[2]~input_o\ & (\Mux25~29_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~32_combout\)))) ) ) ) # ( !\Mux25~30_combout\ & ( \Mux25~28_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~29_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))))) ) ) ) # ( \Mux25~30_combout\ & ( !\Mux25~28_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- (((\SHIFT[2]~input_o\)))) # (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & (\Mux25~29_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))))) ) ) ) # ( !\Mux25~30_combout\ & ( !\Mux25~28_combout\ & ( (\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- (\Mux25~29_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~32_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001111110101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~29_combout\,
	datab => \ALT_INV_Mux25~32_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~30_combout\,
	dataf => \ALT_INV_Mux25~28_combout\,
	combout => \Mux25~80_combout\);

-- Location: MLABCELL_X28_Y3_N36
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~27_combout\) ) ) ) # ( !\Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & \Mux25~27_combout\) ) ) ) # ( \Mux25~21_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~80_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~26_combout\)) ) ) ) # ( !\Mux25~21_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~80_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~27_combout\,
	datac => \ALT_INV_Mux25~26_combout\,
	datad => \ALT_INV_Mux25~80_combout\,
	datae => \ALT_INV_Mux25~21_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LABCELL_X24_Y2_N48
\Mux25~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~79_combout\ = ( \Mux25~1_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & (\Mux25~0_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~2_combout\))) ) ) ) # ( !\Mux25~1_combout\ & ( \SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & 
-- (\Mux25~0_combout\)) # (\SHIFT[2]~input_o\ & ((\Mux25~2_combout\))) ) ) ) # ( \Mux25~1_combout\ & ( !\SHIFT[1]~input_o\ & ( (\Mux25~15_combout\) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~1_combout\ & ( !\SHIFT[1]~input_o\ & ( (!\SHIFT[2]~input_o\ & 
-- \Mux25~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_SHIFT[2]~input_o\,
	datac => \ALT_INV_Mux25~15_combout\,
	datad => \ALT_INV_Mux25~2_combout\,
	datae => \ALT_INV_Mux25~1_combout\,
	dataf => \ALT_INV_SHIFT[1]~input_o\,
	combout => \Mux25~79_combout\);

-- Location: MLABCELL_X25_Y2_N36
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \Mux25~79_combout\ & ( \Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)) # (\Mux25~9_combout\))) # (\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\) # (\Mux25~3_combout\)))) ) ) ) # ( !\Mux25~79_combout\ & ( 
-- \Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)) # (\Mux25~9_combout\))) # (\SHIFT[4]~input_o\ & (((\Mux25~3_combout\ & \SHIFT[3]~input_o\)))) ) ) ) # ( \Mux25~79_combout\ & ( !\Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~9_combout\ & ((!\SHIFT[3]~input_o\)))) # (\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\) # (\Mux25~3_combout\)))) ) ) ) # ( !\Mux25~79_combout\ & ( !\Mux25~14_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~9_combout\ & ((!\SHIFT[3]~input_o\)))) # 
-- (\SHIFT[4]~input_o\ & (((\Mux25~3_combout\ & \SHIFT[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~9_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux25~3_combout\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux25~79_combout\,
	dataf => \ALT_INV_Mux25~14_combout\,
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X34_Y2_N54
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux17~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux17~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[8]~input_o\)))) ) ) # ( !\Mux17~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- (\Mux17~1_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux17~1_combout\,
	datad => \ALT_INV_LETTER_IN[8]~input_o\,
	dataf => \ALT_INV_Mux17~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: LABCELL_X31_Y2_N6
\Mux0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~26_combout\ = ( \Mux25~59_combout\ & ( \Mux25~60_combout\ & ( ((!\SHIFT[1]~input_o\ & (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\)))) # (\SHIFT[2]~input_o\) ) ) ) # ( !\Mux25~59_combout\ & ( \Mux25~60_combout\ & ( 
-- (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))))) # (\SHIFT[2]~input_o\ & (\SHIFT[1]~input_o\)) ) ) ) # ( \Mux25~59_combout\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & 
-- ((!\SHIFT[1]~input_o\ & (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))))) # (\SHIFT[2]~input_o\ & (!\SHIFT[1]~input_o\)) ) ) ) # ( !\Mux25~59_combout\ & ( !\Mux25~60_combout\ & ( (!\SHIFT[2]~input_o\ & ((!\SHIFT[1]~input_o\ & 
-- (\Mux25~57_combout\)) # (\SHIFT[1]~input_o\ & ((\Mux25~58_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[2]~input_o\,
	datab => \ALT_INV_SHIFT[1]~input_o\,
	datac => \ALT_INV_Mux25~57_combout\,
	datad => \ALT_INV_Mux25~58_combout\,
	datae => \ALT_INV_Mux25~59_combout\,
	dataf => \ALT_INV_Mux25~60_combout\,
	combout => \Mux0~26_combout\);

-- Location: LABCELL_X29_Y2_N36
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \Mux25~56_combout\ & ( \SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\) # (\Mux0~4_combout\) ) ) ) # ( !\Mux25~56_combout\ & ( \SHIFT[3]~input_o\ & ( (\Mux0~4_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( \Mux25~56_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~26_combout\))) # (\SHIFT[4]~input_o\ & (\Mux0~5_combout\)) ) ) ) # ( !\Mux25~56_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~26_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~4_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux0~5_combout\,
	datad => \ALT_INV_Mux0~26_combout\,
	datae => \ALT_INV_Mux25~56_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LABCELL_X30_Y3_N12
\Mux0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~25_combout\ = ( \Mux25~37_combout\ & ( \Mux25~35_combout\ & ( ((!\SHIFT[2]~input_o\ & ((\Mux25~47_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~36_combout\))) # (\SHIFT[1]~input_o\) ) ) ) # ( !\Mux25~37_combout\ & ( \Mux25~35_combout\ & ( 
-- (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & ((\Mux25~47_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~36_combout\)))) # (\SHIFT[1]~input_o\ & (((!\SHIFT[2]~input_o\)))) ) ) ) # ( \Mux25~37_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[1]~input_o\ & 
-- ((!\SHIFT[2]~input_o\ & ((\Mux25~47_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~36_combout\)))) # (\SHIFT[1]~input_o\ & (((\SHIFT[2]~input_o\)))) ) ) ) # ( !\Mux25~37_combout\ & ( !\Mux25~35_combout\ & ( (!\SHIFT[1]~input_o\ & ((!\SHIFT[2]~input_o\ & 
-- ((\Mux25~47_combout\))) # (\SHIFT[2]~input_o\ & (\Mux25~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~36_combout\,
	datab => \ALT_INV_Mux25~47_combout\,
	datac => \ALT_INV_SHIFT[1]~input_o\,
	datad => \ALT_INV_SHIFT[2]~input_o\,
	datae => \ALT_INV_Mux25~37_combout\,
	dataf => \ALT_INV_Mux25~35_combout\,
	combout => \Mux0~25_combout\);

-- Location: LABCELL_X29_Y3_N0
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~38_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~3_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~38_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~2_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux0~25_combout\))) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~38_combout\ & ( (\Mux0~3_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~38_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~2_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux0~25_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111010100000101000000110000001111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~3_combout\,
	datab => \ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~25_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~38_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X27_Y2_N18
\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \Mux16~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux16~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[9]~input_o\)))) ) ) # ( !\Mux16~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- ((\Mux16~1_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[9]~input_o\,
	datad => \ALT_INV_Mux16~1_combout\,
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: MLABCELL_X25_Y2_N42
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~62_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~63_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~5_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~62_combout\ & ( (!\SHIFT[4]~input_o\) # 
-- (\Mux25~4_combout\) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~62_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~63_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~5_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~62_combout\ & ( (\Mux25~4_combout\ & 
-- \SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~5_combout\,
	datab => \ALT_INV_Mux25~63_combout\,
	datac => \ALT_INV_Mux25~4_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~62_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X27_Y3_N54
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \Mux25~31_combout\ & ( \Mux25~64_combout\ & ( (!\SHIFT[4]~input_o\) # ((!\SHIFT[3]~input_o\ & ((\Mux25~65_combout\))) # (\SHIFT[3]~input_o\ & (\Mux25~25_combout\))) ) ) ) # ( !\Mux25~31_combout\ & ( \Mux25~64_combout\ & ( 
-- (!\SHIFT[3]~input_o\ & (((\SHIFT[4]~input_o\ & \Mux25~65_combout\)))) # (\SHIFT[3]~input_o\ & (((!\SHIFT[4]~input_o\)) # (\Mux25~25_combout\))) ) ) ) # ( \Mux25~31_combout\ & ( !\Mux25~64_combout\ & ( (!\SHIFT[3]~input_o\ & (((!\SHIFT[4]~input_o\) # 
-- (\Mux25~65_combout\)))) # (\SHIFT[3]~input_o\ & (\Mux25~25_combout\ & (\SHIFT[4]~input_o\))) ) ) ) # ( !\Mux25~31_combout\ & ( !\Mux25~64_combout\ & ( (\SHIFT[4]~input_o\ & ((!\SHIFT[3]~input_o\ & ((\Mux25~65_combout\))) # (\SHIFT[3]~input_o\ & 
-- (\Mux25~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[3]~input_o\,
	datab => \ALT_INV_Mux25~25_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux25~65_combout\,
	datae => \ALT_INV_Mux25~31_combout\,
	dataf => \ALT_INV_Mux25~64_combout\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X27_Y2_N21
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Mux15~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux15~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[10]~input_o\)))) ) ) # ( !\Mux15~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- ((\Mux15~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[10]~input_o\,
	datad => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LABCELL_X29_Y2_N12
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Mux0~6_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~10_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~55_combout\)) ) ) ) # ( !\Mux0~6_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- ((\Mux0~10_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~55_combout\)) ) ) ) # ( \Mux0~6_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux0~11_combout\) ) ) ) # ( !\Mux0~6_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & 
-- \Mux0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~55_combout\,
	datac => \ALT_INV_Mux0~10_combout\,
	datad => \ALT_INV_Mux0~11_combout\,
	datae => \ALT_INV_Mux0~6_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X30_Y3_N48
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Mux0~1_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~9_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~39_combout\))) ) ) ) # ( !\Mux0~1_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~9_combout\)) 
-- # (\SHIFT[4]~input_o\ & ((\Mux25~39_combout\))) ) ) ) # ( \Mux0~1_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux0~8_combout\) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux0~1_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & \Mux0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~9_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux0~8_combout\,
	datad => \ALT_INV_Mux25~39_combout\,
	datae => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X34_Y2_N45
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux0~0_combout\ & ( \LETTER_IN[11]~input_o\ ) ) # ( !\Mux0~0_combout\ & ( (!\DIRECTION~input_o\ & (\Mux14~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_LETTER_IN[11]~input_o\,
	datad => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X23_Y2_N48
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Mux25~66_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~70_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~24_combout\))) ) ) ) # ( !\Mux25~66_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~70_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~24_combout\))) ) ) ) # ( \Mux25~66_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~71_combout\) ) ) ) # ( !\Mux25~66_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux25~71_combout\ & 
-- \SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~70_combout\,
	datab => \ALT_INV_Mux25~24_combout\,
	datac => \ALT_INV_Mux25~71_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux25~66_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X23_Y2_N12
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux25~68_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~69_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~6_combout\))) ) ) ) # ( !\Mux25~68_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~69_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~6_combout\))) ) ) ) # ( \Mux25~68_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~61_combout\) ) ) ) # ( !\Mux25~68_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & 
-- \Mux25~61_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~69_combout\,
	datac => \ALT_INV_Mux25~61_combout\,
	datad => \ALT_INV_Mux25~6_combout\,
	datae => \ALT_INV_Mux25~68_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X23_Y2_N24
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \LETTER_IN[12]~input_o\ & ( ((!\DIRECTION~input_o\ & (\Mux13~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux13~0_combout\)))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[12]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- (\Mux13~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_LETTER_IN[12]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X33_Y2_N36
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux0~7_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~15_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~40_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux0~7_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~14_combout\) 
-- ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux0~7_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~15_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~40_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux0~7_combout\ & ( (\Mux0~14_combout\ & !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~14_combout\,
	datab => \ALT_INV_Mux25~40_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~15_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux0~7_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X33_Y2_N12
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \SHIFT[4]~input_o\ & ( \Mux0~12_combout\ & ( (!\SHIFT[3]~input_o\ & (\Mux0~17_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux25~54_combout\))) ) ) ) # ( !\SHIFT[4]~input_o\ & ( \Mux0~12_combout\ & ( (!\SHIFT[3]~input_o\) # 
-- (\Mux0~16_combout\) ) ) ) # ( \SHIFT[4]~input_o\ & ( !\Mux0~12_combout\ & ( (!\SHIFT[3]~input_o\ & (\Mux0~17_combout\)) # (\SHIFT[3]~input_o\ & ((\Mux25~54_combout\))) ) ) ) # ( !\SHIFT[4]~input_o\ & ( !\Mux0~12_combout\ & ( (\SHIFT[3]~input_o\ & 
-- \Mux0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~17_combout\,
	datab => \ALT_INV_SHIFT[3]~input_o\,
	datac => \ALT_INV_Mux0~16_combout\,
	datad => \ALT_INV_Mux25~54_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_Mux0~12_combout\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X33_Y2_N51
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux12~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux12~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[13]~input_o\)))) ) ) # ( !\Mux12~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- ((\Mux12~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[13]~input_o\,
	datad => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X23_Y2_N30
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mux25~75_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~7_combout\) ) ) ) # ( !\Mux25~75_combout\ & ( \SHIFT[3]~input_o\ & ( (\Mux25~7_combout\ & \SHIFT[4]~input_o\) ) ) ) # ( \Mux25~75_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~74_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~67_combout\)) ) ) ) # ( !\Mux25~75_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~74_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~67_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~67_combout\,
	datab => \ALT_INV_Mux25~7_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux25~74_combout\,
	datae => \ALT_INV_Mux25~75_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X23_Y2_N6
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~76_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~23_combout\))) ) ) ) # ( !\Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~76_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~23_combout\))) ) ) ) # ( \Mux25~72_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~77_combout\) ) ) ) # ( !\Mux25~72_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & 
-- \Mux25~77_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~76_combout\,
	datab => \ALT_INV_Mux25~23_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux25~77_combout\,
	datae => \ALT_INV_Mux25~72_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X23_Y2_N27
\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \Mux11~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux11~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[14]~input_o\)))) ) ) # ( !\Mux11~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- (\Mux11~0_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_LETTER_IN[14]~input_o\,
	dataf => \ALT_INV_Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X31_Y2_N12
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~53_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux0~22_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~23_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~23_combout\,
	datab => \ALT_INV_Mux0~22_combout\,
	datac => \ALT_INV_Mux25~53_combout\,
	datad => \ALT_INV_Mux0~18_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X29_Y3_N6
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux0~13_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~21_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~41_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux0~13_combout\ & ( (\SHIFT[4]~input_o\) # 
-- (\Mux0~20_combout\) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux0~13_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~21_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~41_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux0~13_combout\ & ( (\Mux0~20_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~41_combout\,
	datab => \ALT_INV_Mux0~20_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~21_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux0~13_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X27_Y2_N54
\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \Mux10~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux10~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[15]~input_o\)))) ) ) # ( !\Mux10~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- ((\Mux10~1_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[15]~input_o\,
	datad => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: MLABCELL_X25_Y2_N48
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~73_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~79_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~8_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~73_combout\ & ( (\SHIFT[4]~input_o\) # 
-- (\Mux25~14_combout\) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~73_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~79_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~8_combout\)) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~73_combout\ & ( (\Mux25~14_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~8_combout\,
	datab => \ALT_INV_Mux25~79_combout\,
	datac => \ALT_INV_Mux25~14_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~73_combout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X28_Y3_N42
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~80_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~22_combout\))) ) ) ) # ( !\Mux25~21_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- (\Mux25~80_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~22_combout\))) ) ) ) # ( \Mux25~21_combout\ & ( !\SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\) # (\Mux25~78_combout\) ) ) ) # ( !\Mux25~21_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux25~78_combout\ & 
-- !\SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~78_combout\,
	datab => \ALT_INV_Mux25~80_combout\,
	datac => \ALT_INV_Mux25~22_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux25~21_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X27_Y2_N57
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux9~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[16]~input_o\)))) ) ) # ( !\Mux9~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- ((\Mux9~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_LETTER_IN[16]~input_o\,
	datad => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X29_Y3_N12
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Mux0~3_combout\ & ( \Mux25~42_combout\ & ( (!\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\) # (\Mux0~25_combout\)))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)) # (\Mux0~19_combout\))) ) ) ) # ( !\Mux0~3_combout\ & ( 
-- \Mux25~42_combout\ & ( (!\SHIFT[4]~input_o\ & (((\Mux0~25_combout\ & \SHIFT[3]~input_o\)))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\)) # (\Mux0~19_combout\))) ) ) ) # ( \Mux0~3_combout\ & ( !\Mux25~42_combout\ & ( (!\SHIFT[4]~input_o\ & 
-- (((!\SHIFT[3]~input_o\) # (\Mux0~25_combout\)))) # (\SHIFT[4]~input_o\ & (\Mux0~19_combout\ & ((!\SHIFT[3]~input_o\)))) ) ) ) # ( !\Mux0~3_combout\ & ( !\Mux25~42_combout\ & ( (!\SHIFT[4]~input_o\ & (((\Mux0~25_combout\ & \SHIFT[3]~input_o\)))) # 
-- (\SHIFT[4]~input_o\ & (\Mux0~19_combout\ & ((!\SHIFT[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~19_combout\,
	datab => \ALT_INV_Mux0~25_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux0~3_combout\,
	dataf => \ALT_INV_Mux25~42_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X31_Y2_N18
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \SHIFT[4]~input_o\ & ( \Mux0~26_combout\ & ( (!\SHIFT[3]~input_o\ & ((\Mux0~4_combout\))) # (\SHIFT[3]~input_o\ & (\Mux25~52_combout\)) ) ) ) # ( !\SHIFT[4]~input_o\ & ( \Mux0~26_combout\ & ( (\Mux0~24_combout\) # (\SHIFT[3]~input_o\) 
-- ) ) ) # ( \SHIFT[4]~input_o\ & ( !\Mux0~26_combout\ & ( (!\SHIFT[3]~input_o\ & ((\Mux0~4_combout\))) # (\SHIFT[3]~input_o\ & (\Mux25~52_combout\)) ) ) ) # ( !\SHIFT[4]~input_o\ & ( !\Mux0~26_combout\ & ( (!\SHIFT[3]~input_o\ & \Mux0~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[3]~input_o\,
	datab => \ALT_INV_Mux25~52_combout\,
	datac => \ALT_INV_Mux0~24_combout\,
	datad => \ALT_INV_Mux0~4_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_Mux0~26_combout\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X30_Y2_N18
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux8~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux8~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[17]~input_o\)))) ) ) # ( !\Mux8~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- (\Mux8~0_combout\))) # (\Mux0~0_combout\ & (((\LETTER_IN[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_LETTER_IN[17]~input_o\,
	dataf => \ALT_INV_Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X25_Y2_N54
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux25~63_combout\ & ( \Mux25~10_combout\ & ( (!\SHIFT[4]~input_o\ & (((!\SHIFT[3]~input_o\)) # (\Mux25~4_combout\))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\) # (\Mux25~9_combout\)))) ) ) ) # ( !\Mux25~63_combout\ & ( 
-- \Mux25~10_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~4_combout\ & ((\SHIFT[3]~input_o\)))) # (\SHIFT[4]~input_o\ & (((\SHIFT[3]~input_o\) # (\Mux25~9_combout\)))) ) ) ) # ( \Mux25~63_combout\ & ( !\Mux25~10_combout\ & ( (!\SHIFT[4]~input_o\ & 
-- (((!\SHIFT[3]~input_o\)) # (\Mux25~4_combout\))) # (\SHIFT[4]~input_o\ & (((\Mux25~9_combout\ & !\SHIFT[3]~input_o\)))) ) ) ) # ( !\Mux25~63_combout\ & ( !\Mux25~10_combout\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~4_combout\ & ((\SHIFT[3]~input_o\)))) # 
-- (\SHIFT[4]~input_o\ & (((\Mux25~9_combout\ & !\SHIFT[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~4_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux25~9_combout\,
	datad => \ALT_INV_SHIFT[3]~input_o\,
	datae => \ALT_INV_Mux25~63_combout\,
	dataf => \ALT_INV_Mux25~10_combout\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X28_Y3_N18
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Mux25~20_combout\ & ( \SHIFT[3]~input_o\ & ( (\Mux25~31_combout\) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux25~20_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & \Mux25~31_combout\) ) ) ) # ( \Mux25~20_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~26_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~64_combout\))) ) ) ) # ( !\Mux25~20_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~26_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux25~64_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~31_combout\,
	datac => \ALT_INV_Mux25~26_combout\,
	datad => \ALT_INV_Mux25~64_combout\,
	datae => \ALT_INV_Mux25~20_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X28_Y2_N42
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \LETTER_IN[18]~input_o\ & ( ((!\DIRECTION~input_o\ & ((\Mux7~1_combout\))) # (\DIRECTION~input_o\ & (\Mux7~0_combout\))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[18]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- ((\Mux7~1_combout\))) # (\DIRECTION~input_o\ & (\Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux7~1_combout\,
	dataf => \ALT_INV_LETTER_IN[18]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X29_Y2_N18
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Mux0~5_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~6_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~51_combout\))) ) ) ) # ( !\Mux0~5_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux0~6_combout\)) # 
-- (\SHIFT[4]~input_o\ & ((\Mux25~51_combout\))) ) ) ) # ( \Mux0~5_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux0~10_combout\) ) ) ) # ( !\Mux0~5_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux0~10_combout\ & \SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~10_combout\,
	datab => \ALT_INV_Mux0~6_combout\,
	datac => \ALT_INV_Mux25~51_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_Mux0~5_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X29_Y3_N48
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~43_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~1_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~43_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~9_combout\))) # (\SHIFT[4]~input_o\ & (\Mux0~2_combout\)) 
-- ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~43_combout\ & ( (\Mux0~1_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~43_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~9_combout\))) # (\SHIFT[4]~input_o\ & (\Mux0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_Mux0~2_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~9_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~43_combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X28_Y2_N45
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \LETTER_IN[19]~input_o\ & ( ((!\DIRECTION~input_o\ & (\Mux6~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux6~0_combout\)))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[19]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- (\Mux6~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux6~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_LETTER_IN[19]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X23_Y2_N42
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Mux25~11_combout\ & ( \SHIFT[3]~input_o\ & ( (\Mux25~61_combout\) # (\SHIFT[4]~input_o\) ) ) ) # ( !\Mux25~11_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & \Mux25~61_combout\) ) ) ) # ( \Mux25~11_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~69_combout\)) # (\SHIFT[4]~input_o\ & ((\Mux25~62_combout\))) ) ) ) # ( !\Mux25~11_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & (\Mux25~69_combout\)) # (\SHIFT[4]~input_o\ & 
-- ((\Mux25~62_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SHIFT[4]~input_o\,
	datab => \ALT_INV_Mux25~69_combout\,
	datac => \ALT_INV_Mux25~61_combout\,
	datad => \ALT_INV_Mux25~62_combout\,
	datae => \ALT_INV_Mux25~11_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X28_Y2_N48
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~19_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~66_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux25~70_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux25~65_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~19_combout\,
	datab => \ALT_INV_Mux25~66_combout\,
	datac => \ALT_INV_Mux25~65_combout\,
	datad => \ALT_INV_Mux25~70_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X28_Y2_N12
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \DIRECTION~input_o\ & ( (!\Mux0~0_combout\ & ((\Mux5~0_combout\))) # (\Mux0~0_combout\ & (\LETTER_IN[20]~input_o\)) ) ) # ( !\DIRECTION~input_o\ & ( (!\Mux0~0_combout\ & ((\Mux5~1_combout\))) # (\Mux0~0_combout\ & 
-- (\LETTER_IN[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[20]~input_o\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_DIRECTION~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X29_Y2_N54
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~50_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux0~12_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~16_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~12_combout\,
	datab => \ALT_INV_Mux0~16_combout\,
	datac => \ALT_INV_Mux25~50_combout\,
	datad => \ALT_INV_Mux0~11_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X30_Y3_N24
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~44_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux0~7_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~8_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~44_combout\,
	datab => \ALT_INV_Mux0~7_combout\,
	datac => \ALT_INV_Mux0~8_combout\,
	datad => \ALT_INV_Mux0~15_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X28_Y2_N39
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~0_combout\ & ( (!\Mux0~0_combout\ & (((\Mux4~1_combout\)) # (\DIRECTION~input_o\))) # (\Mux0~0_combout\ & (((\LETTER_IN[21]~input_o\)))) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux0~0_combout\ & (!\DIRECTION~input_o\ & 
-- ((\Mux4~1_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011000010100011001101011111001100110101111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIRECTION~input_o\,
	datab => \ALT_INV_LETTER_IN[21]~input_o\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X23_Y2_N54
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~18_combout\) ) ) ) # ( !\Mux25~72_combout\ & ( \SHIFT[3]~input_o\ & ( (\SHIFT[4]~input_o\ & \Mux25~18_combout\) ) ) ) # ( \Mux25~72_combout\ & ( 
-- !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~71_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~76_combout\)) ) ) ) # ( !\Mux25~72_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~71_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~76_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~76_combout\,
	datab => \ALT_INV_SHIFT[4]~input_o\,
	datac => \ALT_INV_Mux25~71_combout\,
	datad => \ALT_INV_Mux25~18_combout\,
	datae => \ALT_INV_Mux25~72_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X23_Y2_N18
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux25~75_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~67_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~12_combout\)) ) ) ) # ( !\Mux25~75_combout\ & ( \SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\ & 
-- ((\Mux25~67_combout\))) # (\SHIFT[4]~input_o\ & (\Mux25~12_combout\)) ) ) ) # ( \Mux25~75_combout\ & ( !\SHIFT[3]~input_o\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~68_combout\) ) ) ) # ( !\Mux25~75_combout\ & ( !\SHIFT[3]~input_o\ & ( (\Mux25~68_combout\ & 
-- \SHIFT[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~12_combout\,
	datab => \ALT_INV_Mux25~68_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux25~67_combout\,
	datae => \ALT_INV_Mux25~75_combout\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X28_Y2_N54
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~0_combout\ & ( \DIRECTION~input_o\ & ( (!\Mux0~0_combout\) # (\LETTER_IN[22]~input_o\) ) ) ) # ( !\Mux3~0_combout\ & ( \DIRECTION~input_o\ & ( (\LETTER_IN[22]~input_o\ & \Mux0~0_combout\) ) ) ) # ( \Mux3~0_combout\ & ( 
-- !\DIRECTION~input_o\ & ( (!\Mux0~0_combout\ & ((\Mux3~1_combout\))) # (\Mux0~0_combout\ & (\LETTER_IN[22]~input_o\)) ) ) ) # ( !\Mux3~0_combout\ & ( !\DIRECTION~input_o\ & ( (!\Mux0~0_combout\ & ((\Mux3~1_combout\))) # (\Mux0~0_combout\ & 
-- (\LETTER_IN[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LETTER_IN[22]~input_o\,
	datab => \ALT_INV_Mux3~1_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_DIRECTION~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X33_Y2_N54
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux0~18_combout\ & ( (!\SHIFT[4]~input_o\) # (\Mux25~49_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux0~18_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~17_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~22_combout\)) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux0~18_combout\ & ( (\Mux25~49_combout\ & \SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux0~18_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~17_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~22_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~49_combout\,
	datab => \ALT_INV_Mux0~22_combout\,
	datac => \ALT_INV_Mux0~17_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux0~18_combout\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X33_Y2_N18
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~45_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~13_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~45_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~21_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~14_combout\)) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~45_combout\ & ( (\Mux0~13_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~45_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~21_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~14_combout\,
	datab => \ALT_INV_Mux0~13_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~21_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~45_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X30_Y2_N21
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \LETTER_IN[23]~input_o\ & ( ((!\DIRECTION~input_o\ & (\Mux2~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux2~0_combout\)))) # (\Mux0~0_combout\) ) ) # ( !\LETTER_IN[23]~input_o\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\ & 
-- (\Mux2~1_combout\)) # (\DIRECTION~input_o\ & ((\Mux2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_LETTER_IN[23]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X24_Y2_N54
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~13_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux25~73_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~13_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~79_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~74_combout\)) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~13_combout\ & ( (\Mux25~73_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~13_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux25~79_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux25~74_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~73_combout\,
	datab => \ALT_INV_Mux25~74_combout\,
	datac => \ALT_INV_Mux25~79_combout\,
	datad => \ALT_INV_SHIFT[4]~input_o\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~13_combout\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X28_Y3_N54
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~17_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~78_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux25~80_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux25~77_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~78_combout\,
	datab => \ALT_INV_Mux25~80_combout\,
	datac => \ALT_INV_Mux25~17_combout\,
	datad => \ALT_INV_Mux25~77_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X30_Y2_N54
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~1_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux1~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[24]~input_o\)))) ) ) # ( !\Mux1~1_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- ((\Mux1~0_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_LETTER_IN[24]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X29_Y3_N54
\Mux0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~27_combout\ = ( \SHIFT[3]~input_o\ & ( \Mux25~46_combout\ & ( (\SHIFT[4]~input_o\) # (\Mux0~19_combout\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( \Mux25~46_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~25_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~20_combout\)) ) ) ) # ( \SHIFT[3]~input_o\ & ( !\Mux25~46_combout\ & ( (\Mux0~19_combout\ & !\SHIFT[4]~input_o\) ) ) ) # ( !\SHIFT[3]~input_o\ & ( !\Mux25~46_combout\ & ( (!\SHIFT[4]~input_o\ & ((\Mux0~25_combout\))) # (\SHIFT[4]~input_o\ & 
-- (\Mux0~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~19_combout\,
	datab => \ALT_INV_Mux0~20_combout\,
	datac => \ALT_INV_SHIFT[4]~input_o\,
	datad => \ALT_INV_Mux0~25_combout\,
	datae => \ALT_INV_SHIFT[3]~input_o\,
	dataf => \ALT_INV_Mux25~46_combout\,
	combout => \Mux0~27_combout\);

-- Location: LABCELL_X31_Y2_N24
\Mux0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~28_combout\ = ( \SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux25~48_combout\ ) ) ) # ( !\SHIFT[4]~input_o\ & ( \SHIFT[3]~input_o\ & ( \Mux0~24_combout\ ) ) ) # ( \SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~26_combout\ ) ) ) # ( 
-- !\SHIFT[4]~input_o\ & ( !\SHIFT[3]~input_o\ & ( \Mux0~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~24_combout\,
	datab => \ALT_INV_Mux25~48_combout\,
	datac => \ALT_INV_Mux0~23_combout\,
	datad => \ALT_INV_Mux0~26_combout\,
	datae => \ALT_INV_SHIFT[4]~input_o\,
	dataf => \ALT_INV_SHIFT[3]~input_o\,
	combout => \Mux0~28_combout\);

-- Location: LABCELL_X30_Y2_N57
\Mux0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~29_combout\ = ( \Mux0~28_combout\ & ( (!\Mux0~0_combout\ & ((!\DIRECTION~input_o\) # ((\Mux0~27_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[25]~input_o\)))) ) ) # ( !\Mux0~28_combout\ & ( (!\Mux0~0_combout\ & (\DIRECTION~input_o\ & 
-- ((\Mux0~27_combout\)))) # (\Mux0~0_combout\ & (((\LETTER_IN[25]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_DIRECTION~input_o\,
	datac => \ALT_INV_LETTER_IN[25]~input_o\,
	datad => \ALT_INV_Mux0~27_combout\,
	dataf => \ALT_INV_Mux0~28_combout\,
	combout => \Mux0~29_combout\);

-- Location: MLABCELL_X82_Y18_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


