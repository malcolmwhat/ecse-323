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

-- DATE "03/29/2016 16:26:16"

-- 
-- Device: Altera 5CSEMA5F31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g14_lab3_test_bed IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dipswitches : IN std_logic_vector(4 DOWNTO 0);
	seven_segment_output : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END g14_lab3_test_bed;

-- Design Ports Information
-- seven_segment_output[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_segment_output[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dipswitches[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dipswitches[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dipswitches[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dipswitches[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dipswitches[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_lab3_test_bed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dipswitches : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_seven_segment_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita13~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita14~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita15~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita16~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita18~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita20~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita21~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita22~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita23~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita24~sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~4_combout\ : std_logic;
SIGNAL \counter_0_to_25|temp_count~2_combout\ : std_logic;
SIGNAL \counter_0_to_25|temp_count~4_combout\ : std_logic;
SIGNAL \counter_0_to_25|temp_count~1_combout\ : std_logic;
SIGNAL \counter_0_to_25|temp_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_0_to_25|temp_count~3_combout\ : std_logic;
SIGNAL \counter_0_to_25|temp_count~0_combout\ : std_logic;
SIGNAL \dipswitches[4]~input_o\ : std_logic;
SIGNAL \dipswitches[3]~input_o\ : std_logic;
SIGNAL \dipswitches[2]~input_o\ : std_logic;
SIGNAL \dipswitches[0]~input_o\ : std_logic;
SIGNAL \dipswitches[1]~input_o\ : std_logic;
SIGNAL \barrel_shifter|Mux9~5_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~3_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~7_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~6_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~35_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~11_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~12_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~10_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~13_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~14_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~2_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~15_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~34_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~6_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux17~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux17~1_combout\ : std_logic;
SIGNAL \counter_0_to_25|LessThan0~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux15~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~37_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~8_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~36_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~38_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux15~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~23_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~10_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~21_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~25_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~20_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~22_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~11_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~30_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux14~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~28_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~29_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~26_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~27_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~12_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux14~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~32_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~33_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~19_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~7_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux16~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~8_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~5_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~4_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~9_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux16~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux1~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~9_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~4_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux1~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux13~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~39_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~16_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~17_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux13~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux11~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~18_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~24_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux11~1_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~2_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux12~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~31_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~13_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux12~1_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~2_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~3_combout\ : std_logic;
SIGNAL \dipswitch_decoder|OUTPUT~3_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~4_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux10~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~5_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux10~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~2_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~42_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux2~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux2~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux4~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux4~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux3~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux3~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux5~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux5~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~4_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~40_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~41_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~6_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux8~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux8~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux7~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux7~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux6~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux6~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~3_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux21~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux21~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux20~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux20~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux19~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux19~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux18~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux18~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~0_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~5_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~22_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~13_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~15_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~16_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX[3]~24_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~19_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~18_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~20_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~16_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~15_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux9~43_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux23~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux23~1_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux0~14_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux24~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux22~0_combout\ : std_logic;
SIGNAL \barrel_shifter|Mux22~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~14_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~17_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~21_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~23_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~7_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~9_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~8_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~6_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~10_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~11_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~12_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX[4]~25_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX[1]~27_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX[2]~28_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX[0]~26_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux2~1_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux4~1_combout\ : std_logic;
SIGNAL \encoder_26_to_5|INDEX~29_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux4~2_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|Mux0~1_combout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \counter_0_to_25|temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \seven_seg_disp_decoder|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX[2]~28_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX[1]~27_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX[0]~26_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX[4]~25_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~23_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~22_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~15_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~21_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~20_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~19_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~18_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~17_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~16_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~15_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~14_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~14_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~13_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~12_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~11_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~10_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~9_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~8_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~7_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~6_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~43_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~5_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~4_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~42_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~3_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~41_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~40_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~2_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~39_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~38_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~37_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~36_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~35_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~34_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~33_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~32_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~31_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~30_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~29_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~28_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~27_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~26_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~25_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~3_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~24_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~2_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~23_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~22_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~21_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~20_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~19_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~18_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~17_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~16_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \counter_0_to_25|ALT_INV_temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \barrel_shifter|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~15_combout\ : std_logic;
SIGNAL \counter_0_to_25|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~14_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~13_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~12_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~11_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~10_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~9_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~8_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~7_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~6_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \barrel_shifter|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|ALT_INV_counter_comb_bita24~1_sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_dipswitches[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dipswitches[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dipswitches[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dipswitches[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dipswitches[3]~input_o\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \seven_seg_disp_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \encoder_26_to_5|ALT_INV_INDEX~29_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_dipswitches <= dipswitches;
seven_segment_output <= ww_seven_segment_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\seven_seg_disp_decoder|ALT_INV_Mux4~2_combout\ <= NOT \seven_seg_disp_decoder|Mux4~2_combout\;
\seven_seg_disp_decoder|ALT_INV_Mux4~1_combout\ <= NOT \seven_seg_disp_decoder|Mux4~1_combout\;
\seven_seg_disp_decoder|ALT_INV_Mux2~0_combout\ <= NOT \seven_seg_disp_decoder|Mux2~0_combout\;
\encoder_26_to_5|ALT_INV_INDEX[2]~28_combout\ <= NOT \encoder_26_to_5|INDEX[2]~28_combout\;
\encoder_26_to_5|ALT_INV_INDEX[1]~27_combout\ <= NOT \encoder_26_to_5|INDEX[1]~27_combout\;
\encoder_26_to_5|ALT_INV_INDEX[0]~26_combout\ <= NOT \encoder_26_to_5|INDEX[0]~26_combout\;
\encoder_26_to_5|ALT_INV_INDEX[4]~25_combout\ <= NOT \encoder_26_to_5|INDEX[4]~25_combout\;
\encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\ <= NOT \encoder_26_to_5|INDEX[3]~24_combout\;
\encoder_26_to_5|ALT_INV_INDEX~23_combout\ <= NOT \encoder_26_to_5|INDEX~23_combout\;
\encoder_26_to_5|ALT_INV_INDEX~22_combout\ <= NOT \encoder_26_to_5|INDEX~22_combout\;
\barrel_shifter|ALT_INV_Mux0~16_combout\ <= NOT \barrel_shifter|Mux0~16_combout\;
\barrel_shifter|ALT_INV_Mux0~15_combout\ <= NOT \barrel_shifter|Mux0~15_combout\;
\encoder_26_to_5|ALT_INV_INDEX~21_combout\ <= NOT \encoder_26_to_5|INDEX~21_combout\;
\encoder_26_to_5|ALT_INV_INDEX~20_combout\ <= NOT \encoder_26_to_5|INDEX~20_combout\;
\encoder_26_to_5|ALT_INV_INDEX~19_combout\ <= NOT \encoder_26_to_5|INDEX~19_combout\;
\encoder_26_to_5|ALT_INV_INDEX~18_combout\ <= NOT \encoder_26_to_5|INDEX~18_combout\;
\encoder_26_to_5|ALT_INV_INDEX~17_combout\ <= NOT \encoder_26_to_5|INDEX~17_combout\;
\encoder_26_to_5|ALT_INV_INDEX~16_combout\ <= NOT \encoder_26_to_5|INDEX~16_combout\;
\encoder_26_to_5|ALT_INV_INDEX~15_combout\ <= NOT \encoder_26_to_5|INDEX~15_combout\;
\encoder_26_to_5|ALT_INV_INDEX~14_combout\ <= NOT \encoder_26_to_5|INDEX~14_combout\;
\barrel_shifter|ALT_INV_Mux24~0_combout\ <= NOT \barrel_shifter|Mux24~0_combout\;
\barrel_shifter|ALT_INV_Mux0~14_combout\ <= NOT \barrel_shifter|Mux0~14_combout\;
\encoder_26_to_5|ALT_INV_INDEX~13_combout\ <= NOT \encoder_26_to_5|INDEX~13_combout\;
\encoder_26_to_5|ALT_INV_INDEX~12_combout\ <= NOT \encoder_26_to_5|INDEX~12_combout\;
\encoder_26_to_5|ALT_INV_INDEX~11_combout\ <= NOT \encoder_26_to_5|INDEX~11_combout\;
\encoder_26_to_5|ALT_INV_INDEX~10_combout\ <= NOT \encoder_26_to_5|INDEX~10_combout\;
\encoder_26_to_5|ALT_INV_INDEX~9_combout\ <= NOT \encoder_26_to_5|INDEX~9_combout\;
\encoder_26_to_5|ALT_INV_INDEX~8_combout\ <= NOT \encoder_26_to_5|INDEX~8_combout\;
\encoder_26_to_5|ALT_INV_INDEX~7_combout\ <= NOT \encoder_26_to_5|INDEX~7_combout\;
\encoder_26_to_5|ALT_INV_INDEX~6_combout\ <= NOT \encoder_26_to_5|INDEX~6_combout\;
\barrel_shifter|ALT_INV_Mux23~1_combout\ <= NOT \barrel_shifter|Mux23~1_combout\;
\barrel_shifter|ALT_INV_Mux23~0_combout\ <= NOT \barrel_shifter|Mux23~0_combout\;
\barrel_shifter|ALT_INV_Mux22~1_combout\ <= NOT \barrel_shifter|Mux22~1_combout\;
\barrel_shifter|ALT_INV_Mux22~0_combout\ <= NOT \barrel_shifter|Mux22~0_combout\;
\barrel_shifter|ALT_INV_Mux9~43_combout\ <= NOT \barrel_shifter|Mux9~43_combout\;
\encoder_26_to_5|ALT_INV_INDEX~5_combout\ <= NOT \encoder_26_to_5|INDEX~5_combout\;
\encoder_26_to_5|ALT_INV_INDEX~4_combout\ <= NOT \encoder_26_to_5|INDEX~4_combout\;
\barrel_shifter|ALT_INV_Mux2~1_combout\ <= NOT \barrel_shifter|Mux2~1_combout\;
\barrel_shifter|ALT_INV_Mux2~0_combout\ <= NOT \barrel_shifter|Mux2~0_combout\;
\barrel_shifter|ALT_INV_Mux4~1_combout\ <= NOT \barrel_shifter|Mux4~1_combout\;
\barrel_shifter|ALT_INV_Mux4~0_combout\ <= NOT \barrel_shifter|Mux4~0_combout\;
\barrel_shifter|ALT_INV_Mux3~1_combout\ <= NOT \barrel_shifter|Mux3~1_combout\;
\barrel_shifter|ALT_INV_Mux3~0_combout\ <= NOT \barrel_shifter|Mux3~0_combout\;
\barrel_shifter|ALT_INV_Mux5~1_combout\ <= NOT \barrel_shifter|Mux5~1_combout\;
\barrel_shifter|ALT_INV_Mux5~0_combout\ <= NOT \barrel_shifter|Mux5~0_combout\;
\barrel_shifter|ALT_INV_Mux9~42_combout\ <= NOT \barrel_shifter|Mux9~42_combout\;
\encoder_26_to_5|ALT_INV_INDEX~3_combout\ <= NOT \encoder_26_to_5|INDEX~3_combout\;
\barrel_shifter|ALT_INV_Mux6~1_combout\ <= NOT \barrel_shifter|Mux6~1_combout\;
\barrel_shifter|ALT_INV_Mux6~0_combout\ <= NOT \barrel_shifter|Mux6~0_combout\;
\barrel_shifter|ALT_INV_Mux7~1_combout\ <= NOT \barrel_shifter|Mux7~1_combout\;
\barrel_shifter|ALT_INV_Mux7~0_combout\ <= NOT \barrel_shifter|Mux7~0_combout\;
\barrel_shifter|ALT_INV_Mux8~1_combout\ <= NOT \barrel_shifter|Mux8~1_combout\;
\barrel_shifter|ALT_INV_Mux8~0_combout\ <= NOT \barrel_shifter|Mux8~0_combout\;
\barrel_shifter|ALT_INV_Mux9~41_combout\ <= NOT \barrel_shifter|Mux9~41_combout\;
\barrel_shifter|ALT_INV_Mux9~40_combout\ <= NOT \barrel_shifter|Mux9~40_combout\;
\encoder_26_to_5|ALT_INV_INDEX~2_combout\ <= NOT \encoder_26_to_5|INDEX~2_combout\;
\barrel_shifter|ALT_INV_Mux12~1_combout\ <= NOT \barrel_shifter|Mux12~1_combout\;
\barrel_shifter|ALT_INV_Mux12~0_combout\ <= NOT \barrel_shifter|Mux12~0_combout\;
\barrel_shifter|ALT_INV_Mux0~13_combout\ <= NOT \barrel_shifter|Mux0~13_combout\;
\barrel_shifter|ALT_INV_Mux13~1_combout\ <= NOT \barrel_shifter|Mux13~1_combout\;
\barrel_shifter|ALT_INV_Mux13~0_combout\ <= NOT \barrel_shifter|Mux13~0_combout\;
\barrel_shifter|ALT_INV_Mux9~39_combout\ <= NOT \barrel_shifter|Mux9~39_combout\;
\barrel_shifter|ALT_INV_Mux10~1_combout\ <= NOT \barrel_shifter|Mux10~1_combout\;
\barrel_shifter|ALT_INV_Mux10~0_combout\ <= NOT \barrel_shifter|Mux10~0_combout\;
\barrel_shifter|ALT_INV_Mux11~1_combout\ <= NOT \barrel_shifter|Mux11~1_combout\;
\barrel_shifter|ALT_INV_Mux11~0_combout\ <= NOT \barrel_shifter|Mux11~0_combout\;
\encoder_26_to_5|ALT_INV_INDEX~1_combout\ <= NOT \encoder_26_to_5|INDEX~1_combout\;
\barrel_shifter|ALT_INV_Mux15~1_combout\ <= NOT \barrel_shifter|Mux15~1_combout\;
\barrel_shifter|ALT_INV_Mux15~0_combout\ <= NOT \barrel_shifter|Mux15~0_combout\;
\barrel_shifter|ALT_INV_Mux9~38_combout\ <= NOT \barrel_shifter|Mux9~38_combout\;
\barrel_shifter|ALT_INV_Mux9~37_combout\ <= NOT \barrel_shifter|Mux9~37_combout\;
\barrel_shifter|ALT_INV_Mux9~36_combout\ <= NOT \barrel_shifter|Mux9~36_combout\;
\barrel_shifter|ALT_INV_Mux17~1_combout\ <= NOT \barrel_shifter|Mux17~1_combout\;
\barrel_shifter|ALT_INV_Mux17~0_combout\ <= NOT \barrel_shifter|Mux17~0_combout\;
\barrel_shifter|ALT_INV_Mux9~35_combout\ <= NOT \barrel_shifter|Mux9~35_combout\;
\barrel_shifter|ALT_INV_Mux9~34_combout\ <= NOT \barrel_shifter|Mux9~34_combout\;
\barrel_shifter|ALT_INV_Mux14~1_combout\ <= NOT \barrel_shifter|Mux14~1_combout\;
\barrel_shifter|ALT_INV_Mux14~0_combout\ <= NOT \barrel_shifter|Mux14~0_combout\;
\barrel_shifter|ALT_INV_Mux0~12_combout\ <= NOT \barrel_shifter|Mux0~12_combout\;
\barrel_shifter|ALT_INV_Mux0~11_combout\ <= NOT \barrel_shifter|Mux0~11_combout\;
\barrel_shifter|ALT_INV_Mux0~10_combout\ <= NOT \barrel_shifter|Mux0~10_combout\;
\barrel_shifter|ALT_INV_Mux16~1_combout\ <= NOT \barrel_shifter|Mux16~1_combout\;
\barrel_shifter|ALT_INV_Mux16~0_combout\ <= NOT \barrel_shifter|Mux16~0_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~6_combout\ <= NOT \dipswitch_decoder|OUTPUT~6_combout\;
\barrel_shifter|ALT_INV_Mux0~9_combout\ <= NOT \barrel_shifter|Mux0~9_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~5_combout\ <= NOT \dipswitch_decoder|OUTPUT~5_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~4_combout\ <= NOT \dipswitch_decoder|OUTPUT~4_combout\;
\barrel_shifter|ALT_INV_Mux0~8_combout\ <= NOT \barrel_shifter|Mux0~8_combout\;
\barrel_shifter|ALT_INV_Mux0~7_combout\ <= NOT \barrel_shifter|Mux0~7_combout\;
\barrel_shifter|ALT_INV_Mux9~33_combout\ <= NOT \barrel_shifter|Mux9~33_combout\;
\encoder_26_to_5|ALT_INV_INDEX~0_combout\ <= NOT \encoder_26_to_5|INDEX~0_combout\;
\barrel_shifter|ALT_INV_Mux18~1_combout\ <= NOT \barrel_shifter|Mux18~1_combout\;
\barrel_shifter|ALT_INV_Mux18~0_combout\ <= NOT \barrel_shifter|Mux18~0_combout\;
\barrel_shifter|ALT_INV_Mux9~32_combout\ <= NOT \barrel_shifter|Mux9~32_combout\;
\barrel_shifter|ALT_INV_Mux0~6_combout\ <= NOT \barrel_shifter|Mux0~6_combout\;
\barrel_shifter|ALT_INV_Mux9~31_combout\ <= NOT \barrel_shifter|Mux9~31_combout\;
\barrel_shifter|ALT_INV_Mux9~30_combout\ <= NOT \barrel_shifter|Mux9~30_combout\;
\barrel_shifter|ALT_INV_Mux9~29_combout\ <= NOT \barrel_shifter|Mux9~29_combout\;
\barrel_shifter|ALT_INV_Mux9~28_combout\ <= NOT \barrel_shifter|Mux9~28_combout\;
\barrel_shifter|ALT_INV_Mux0~5_combout\ <= NOT \barrel_shifter|Mux0~5_combout\;
\barrel_shifter|ALT_INV_Mux9~27_combout\ <= NOT \barrel_shifter|Mux9~27_combout\;
\barrel_shifter|ALT_INV_Mux9~26_combout\ <= NOT \barrel_shifter|Mux9~26_combout\;
\barrel_shifter|ALT_INV_Mux9~25_combout\ <= NOT \barrel_shifter|Mux9~25_combout\;
\barrel_shifter|ALT_INV_Mux0~4_combout\ <= NOT \barrel_shifter|Mux0~4_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~3_combout\ <= NOT \dipswitch_decoder|OUTPUT~3_combout\;
\barrel_shifter|ALT_INV_Mux19~1_combout\ <= NOT \barrel_shifter|Mux19~1_combout\;
\barrel_shifter|ALT_INV_Mux19~0_combout\ <= NOT \barrel_shifter|Mux19~0_combout\;
\barrel_shifter|ALT_INV_Mux9~24_combout\ <= NOT \barrel_shifter|Mux9~24_combout\;
\barrel_shifter|ALT_INV_Mux20~1_combout\ <= NOT \barrel_shifter|Mux20~1_combout\;
\barrel_shifter|ALT_INV_Mux20~0_combout\ <= NOT \barrel_shifter|Mux20~0_combout\;
\barrel_shifter|ALT_INV_Mux0~3_combout\ <= NOT \barrel_shifter|Mux0~3_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~2_combout\ <= NOT \dipswitch_decoder|OUTPUT~2_combout\;
\barrel_shifter|ALT_INV_Mux0~2_combout\ <= NOT \barrel_shifter|Mux0~2_combout\;
\barrel_shifter|ALT_INV_Mux9~23_combout\ <= NOT \barrel_shifter|Mux9~23_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~1_combout\ <= NOT \dipswitch_decoder|OUTPUT~1_combout\;
\barrel_shifter|ALT_INV_Mux0~1_combout\ <= NOT \barrel_shifter|Mux0~1_combout\;
\barrel_shifter|ALT_INV_Mux9~22_combout\ <= NOT \barrel_shifter|Mux9~22_combout\;
\barrel_shifter|ALT_INV_Mux9~21_combout\ <= NOT \barrel_shifter|Mux9~21_combout\;
\barrel_shifter|ALT_INV_Mux9~20_combout\ <= NOT \barrel_shifter|Mux9~20_combout\;
\barrel_shifter|ALT_INV_Mux9~19_combout\ <= NOT \barrel_shifter|Mux9~19_combout\;
\barrel_shifter|ALT_INV_Mux21~1_combout\ <= NOT \barrel_shifter|Mux21~1_combout\;
\barrel_shifter|ALT_INV_Mux21~0_combout\ <= NOT \barrel_shifter|Mux21~0_combout\;
\dipswitch_decoder|ALT_INV_OUTPUT~0_combout\ <= NOT \dipswitch_decoder|OUTPUT~0_combout\;
\barrel_shifter|ALT_INV_Mux9~18_combout\ <= NOT \barrel_shifter|Mux9~18_combout\;
\barrel_shifter|ALT_INV_Mux9~17_combout\ <= NOT \barrel_shifter|Mux9~17_combout\;
\barrel_shifter|ALT_INV_Mux9~16_combout\ <= NOT \barrel_shifter|Mux9~16_combout\;
\barrel_shifter|ALT_INV_Mux1~1_combout\ <= NOT \barrel_shifter|Mux1~1_combout\;
\counter_0_to_25|ALT_INV_temp_count\(4) <= NOT \counter_0_to_25|temp_count\(4);
\counter_0_to_25|ALT_INV_temp_count\(3) <= NOT \counter_0_to_25|temp_count\(3);
\barrel_shifter|ALT_INV_Mux1~0_combout\ <= NOT \barrel_shifter|Mux1~0_combout\;
\barrel_shifter|ALT_INV_Mux9~15_combout\ <= NOT \barrel_shifter|Mux9~15_combout\;
\counter_0_to_25|ALT_INV_LessThan0~0_combout\ <= NOT \counter_0_to_25|LessThan0~0_combout\;
\barrel_shifter|ALT_INV_Mux0~0_combout\ <= NOT \barrel_shifter|Mux0~0_combout\;
\barrel_shifter|ALT_INV_Mux9~14_combout\ <= NOT \barrel_shifter|Mux9~14_combout\;
\barrel_shifter|ALT_INV_Mux9~13_combout\ <= NOT \barrel_shifter|Mux9~13_combout\;
\barrel_shifter|ALT_INV_Mux9~12_combout\ <= NOT \barrel_shifter|Mux9~12_combout\;
\barrel_shifter|ALT_INV_Mux9~11_combout\ <= NOT \barrel_shifter|Mux9~11_combout\;
\barrel_shifter|ALT_INV_Mux9~10_combout\ <= NOT \barrel_shifter|Mux9~10_combout\;
\barrel_shifter|ALT_INV_Mux9~9_combout\ <= NOT \barrel_shifter|Mux9~9_combout\;
\barrel_shifter|ALT_INV_Mux9~8_combout\ <= NOT \barrel_shifter|Mux9~8_combout\;
\barrel_shifter|ALT_INV_Mux9~7_combout\ <= NOT \barrel_shifter|Mux9~7_combout\;
\barrel_shifter|ALT_INV_Mux9~6_combout\ <= NOT \barrel_shifter|Mux9~6_combout\;
\barrel_shifter|ALT_INV_Mux9~5_combout\ <= NOT \barrel_shifter|Mux9~5_combout\;
\barrel_shifter|ALT_INV_Mux9~4_combout\ <= NOT \barrel_shifter|Mux9~4_combout\;
\counter_0_to_25|ALT_INV_temp_count\(2) <= NOT \counter_0_to_25|temp_count\(2);
\counter_0_to_25|ALT_INV_temp_count\(1) <= NOT \counter_0_to_25|temp_count\(1);
\barrel_shifter|ALT_INV_Mux9~3_combout\ <= NOT \barrel_shifter|Mux9~3_combout\;
\barrel_shifter|ALT_INV_Mux9~2_combout\ <= NOT \barrel_shifter|Mux9~2_combout\;
\barrel_shifter|ALT_INV_Mux9~1_combout\ <= NOT \barrel_shifter|Mux9~1_combout\;
\barrel_shifter|ALT_INV_Mux9~0_combout\ <= NOT \barrel_shifter|Mux9~0_combout\;
\counter_0_to_25|ALT_INV_temp_count\(0) <= NOT \counter_0_to_25|temp_count\(0);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_comb_bita24~1_sumout\ <= NOT \pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\;
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(14) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(14);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(15) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(15);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(16) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(16);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(17) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(18) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(18);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(19) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(20) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(20);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(21) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(21);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(22) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(22);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(23) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(23);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(24) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(24);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(7) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(7);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(8) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(9) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(10) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(10);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(11) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(12) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(1);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(3);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(4) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(4);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(5) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(6) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(6);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0);
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(13) <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit\(13);
\counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\ <= NOT \counter_0_to_25|temp_count[1]~DUPLICATE_q\;
\pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\ <= NOT \pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\;
\ALT_INV_dipswitches[1]~input_o\ <= NOT \dipswitches[1]~input_o\;
\ALT_INV_dipswitches[0]~input_o\ <= NOT \dipswitches[0]~input_o\;
\ALT_INV_dipswitches[2]~input_o\ <= NOT \dipswitches[2]~input_o\;
\ALT_INV_dipswitches[4]~input_o\ <= NOT \dipswitches[4]~input_o\;
\ALT_INV_dipswitches[3]~input_o\ <= NOT \dipswitches[3]~input_o\;
\pulse_gen|ALT_INV_Equal0~4_combout\ <= NOT \pulse_gen|Equal0~4_combout\;
\pulse_gen|ALT_INV_Equal0~3_combout\ <= NOT \pulse_gen|Equal0~3_combout\;
\pulse_gen|ALT_INV_Equal0~2_combout\ <= NOT \pulse_gen|Equal0~2_combout\;
\pulse_gen|ALT_INV_Equal0~1_combout\ <= NOT \pulse_gen|Equal0~1_combout\;
\pulse_gen|ALT_INV_Equal0~0_combout\ <= NOT \pulse_gen|Equal0~0_combout\;
\seven_seg_disp_decoder|ALT_INV_Mux0~0_combout\ <= NOT \seven_seg_disp_decoder|Mux0~0_combout\;
\encoder_26_to_5|ALT_INV_INDEX~29_combout\ <= NOT \encoder_26_to_5|INDEX~29_combout\;

-- Location: IOOBUF_X89_Y8_N39
\seven_segment_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(0));

-- Location: IOOBUF_X89_Y11_N79
\seven_segment_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(1));

-- Location: IOOBUF_X89_Y11_N96
\seven_segment_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(2));

-- Location: IOOBUF_X89_Y4_N79
\seven_segment_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(3));

-- Location: IOOBUF_X89_Y13_N56
\seven_segment_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(4));

-- Location: IOOBUF_X89_Y13_N39
\seven_segment_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(5));

-- Location: IOOBUF_X89_Y4_N96
\seven_segment_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_seg_disp_decoder|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_seven_segment_output(6));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X13_Y3_N30
\pulse_gen|down_counter|auto_generated|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LABCELL_X13_Y3_N33
\pulse_gen|down_counter|auto_generated|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(1) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(1) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(1),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X13_Y3_N35
\pulse_gen|down_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(1));

-- Location: LABCELL_X13_Y3_N36
\pulse_gen|down_counter|auto_generated|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X13_Y3_N38
\pulse_gen|down_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2));

-- Location: LABCELL_X13_Y3_N39
\pulse_gen|down_counter|auto_generated|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita3~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(3) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(3) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(3),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita3~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X13_Y3_N41
\pulse_gen|down_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita3~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(3));

-- Location: LABCELL_X13_Y3_N42
\pulse_gen|down_counter|auto_generated|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita4~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(4) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(4) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(4),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita3~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X13_Y3_N43
\pulse_gen|down_counter|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(4));

-- Location: LABCELL_X13_Y3_N45
\pulse_gen|down_counter|auto_generated|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X13_Y3_N47
\pulse_gen|down_counter|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5));

-- Location: LABCELL_X13_Y3_N48
\pulse_gen|down_counter|auto_generated|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita6~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(6) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(6) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(6),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita6~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\);

-- Location: LABCELL_X13_Y3_N24
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X13_Y3_N50
\pulse_gen|down_counter|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita6~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(6));

-- Location: LABCELL_X13_Y3_N51
\pulse_gen|down_counter|auto_generated|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita7~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(7) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(7) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(7),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita6~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X13_Y3_N53
\pulse_gen|down_counter|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(7));

-- Location: LABCELL_X13_Y3_N54
\pulse_gen|down_counter|auto_generated|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X13_Y3_N56
\pulse_gen|down_counter|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8));

-- Location: LABCELL_X13_Y3_N57
\pulse_gen|down_counter|auto_generated|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X13_Y3_N59
\pulse_gen|down_counter|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9));

-- Location: LABCELL_X13_Y2_N0
\pulse_gen|down_counter|auto_generated|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\,
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X13_Y2_N2
\pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y2_N3
\pulse_gen|down_counter|auto_generated|counter_comb_bita11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X13_Y2_N5
\pulse_gen|down_counter|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11));

-- Location: LABCELL_X13_Y2_N6
\pulse_gen|down_counter|auto_generated|counter_comb_bita12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X13_Y2_N7
\pulse_gen|down_counter|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12));

-- Location: LABCELL_X13_Y2_N9
\pulse_gen|down_counter|auto_generated|counter_comb_bita13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita13~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(13) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(13) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(13),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita13~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X13_Y2_N11
\pulse_gen|down_counter|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita13~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(13));

-- Location: LABCELL_X13_Y2_N12
\pulse_gen|down_counter|auto_generated|counter_comb_bita14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita14~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(14) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(14) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(14),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita13~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita14~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X13_Y2_N14
\pulse_gen|down_counter|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita14~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(14));

-- Location: LABCELL_X13_Y2_N15
\pulse_gen|down_counter|auto_generated|counter_comb_bita15\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita15~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(15) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(15) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(15),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita14~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita15~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X13_Y2_N17
\pulse_gen|down_counter|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita15~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(15));

-- Location: LABCELL_X13_Y2_N18
\pulse_gen|down_counter|auto_generated|counter_comb_bita16\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita16~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(16) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(16) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(16),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita15~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X13_Y2_N20
\pulse_gen|down_counter|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(16));

-- Location: LABCELL_X13_Y2_N21
\pulse_gen|down_counter|auto_generated|counter_comb_bita17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X13_Y2_N23
\pulse_gen|down_counter|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17));

-- Location: LABCELL_X13_Y2_N24
\pulse_gen|down_counter|auto_generated|counter_comb_bita18\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita18~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(18) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(18) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(18),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X13_Y2_N26
\pulse_gen|down_counter|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(18));

-- Location: LABCELL_X13_Y2_N27
\pulse_gen|down_counter|auto_generated|counter_comb_bita19\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(19),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X13_Y2_N29
\pulse_gen|down_counter|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19));

-- Location: LABCELL_X13_Y2_N30
\pulse_gen|down_counter|auto_generated|counter_comb_bita20\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita20~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(20) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(20) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(20),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita20~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X13_Y2_N32
\pulse_gen|down_counter|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita20~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(20));

-- Location: LABCELL_X13_Y2_N33
\pulse_gen|down_counter|auto_generated|counter_comb_bita21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita21~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(21) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(21) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(21),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita20~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita21~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X13_Y2_N35
\pulse_gen|down_counter|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita21~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(21));

-- Location: LABCELL_X13_Y2_N36
\pulse_gen|down_counter|auto_generated|counter_comb_bita22\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita22~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(22) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(22) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(22),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita21~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita22~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X13_Y2_N38
\pulse_gen|down_counter|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita22~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(22));

-- Location: LABCELL_X13_Y2_N39
\pulse_gen|down_counter|auto_generated|counter_comb_bita23\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita23~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(23) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(23) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(23),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita22~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita23~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X13_Y2_N41
\pulse_gen|down_counter|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita23~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(23));

-- Location: LABCELL_X13_Y2_N42
\pulse_gen|down_counter|auto_generated|counter_comb_bita24\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita24~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(24) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita24~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(24) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(24),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita23~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~COUT\);

-- Location: FF_X13_Y2_N43
\pulse_gen|down_counter|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(24));

-- Location: LABCELL_X13_Y2_N45
\pulse_gen|down_counter|auto_generated|counter_comb_bita24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\ = SUM(( GND ) + ( GND ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita24~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\);

-- Location: LABCELL_X13_Y2_N54
\pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\ = (!\pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\) # (\pulse_gen|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|ALT_INV_Equal0~4_combout\,
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_comb_bita24~1_sumout\,
	combout => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\);

-- Location: FF_X13_Y3_N31
\pulse_gen|down_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X13_Y2_N1
\pulse_gen|down_counter|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(10));

-- Location: LABCELL_X13_Y3_N12
\pulse_gen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~1_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(7) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(9) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(10) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(10),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(7),
	combout => \pulse_gen|Equal0~1_combout\);

-- Location: LABCELL_X13_Y2_N48
\pulse_gen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~2_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(22) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(23) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(24) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(21) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(19),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(24),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(21),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(20),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(22),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(23),
	combout => \pulse_gen|Equal0~2_combout\);

-- Location: LABCELL_X13_Y2_N57
\pulse_gen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~3_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(18) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(16) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(14) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(15) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(16),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(14),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(15),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(18),
	combout => \pulse_gen|Equal0~3_combout\);

-- Location: LABCELL_X13_Y3_N6
\pulse_gen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~0_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(1) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(3) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(6) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(3),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(6),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(4),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(1),
	combout => \pulse_gen|Equal0~0_combout\);

-- Location: LABCELL_X13_Y3_N18
\pulse_gen|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~4_combout\ = ( \pulse_gen|Equal0~3_combout\ & ( \pulse_gen|Equal0~0_combout\ & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) & (\pulse_gen|Equal0~1_combout\ & (\pulse_gen|Equal0~2_combout\ & 
-- !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \pulse_gen|ALT_INV_Equal0~1_combout\,
	datac => \pulse_gen|ALT_INV_Equal0~2_combout\,
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(13),
	datae => \pulse_gen|ALT_INV_Equal0~3_combout\,
	dataf => \pulse_gen|ALT_INV_Equal0~0_combout\,
	combout => \pulse_gen|Equal0~4_combout\);

-- Location: FF_X12_Y3_N41
\counter_0_to_25|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~1_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count\(1));

-- Location: LABCELL_X13_Y3_N0
\counter_0_to_25|temp_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|temp_count~2_combout\ = ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & (!\counter_0_to_25|temp_count\(2) $ (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (!\counter_0_to_25|temp_count\(0)))))) ) ) # ( 
-- !\counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(2) $ (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (!\counter_0_to_25|temp_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000100110010000000010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(4),
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \counter_0_to_25|temp_count~2_combout\);

-- Location: FF_X13_Y3_N1
\counter_0_to_25|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~2_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count\(2));

-- Location: LABCELL_X12_Y3_N30
\counter_0_to_25|temp_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|temp_count~4_combout\ = ( \counter_0_to_25|temp_count\(0) & ( (!\counter_0_to_25|temp_count\(3) & (((\counter_0_to_25|temp_count\(4))))) # (\counter_0_to_25|temp_count\(3) & (\counter_0_to_25|temp_count\(1) & 
-- (\counter_0_to_25|temp_count\(2) & !\counter_0_to_25|temp_count\(4)))) ) ) # ( !\counter_0_to_25|temp_count\(0) & ( (\counter_0_to_25|temp_count\(4) & ((!\counter_0_to_25|temp_count\(3)) # ((!\counter_0_to_25|temp_count\(1) & 
-- !\counter_0_to_25|temp_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101010000000001110101000000001101010100000000110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(3),
	datab => \counter_0_to_25|ALT_INV_temp_count\(1),
	datac => \counter_0_to_25|ALT_INV_temp_count\(2),
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \counter_0_to_25|temp_count~4_combout\);

-- Location: FF_X12_Y3_N31
\counter_0_to_25|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~4_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count\(4));

-- Location: LABCELL_X12_Y3_N39
\counter_0_to_25|temp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|temp_count~1_combout\ = ( \counter_0_to_25|temp_count\(0) & ( (!\counter_0_to_25|temp_count\(1) & ((!\counter_0_to_25|temp_count\(3)) # (!\counter_0_to_25|temp_count\(4)))) ) ) # ( !\counter_0_to_25|temp_count\(0) & ( 
-- (\counter_0_to_25|temp_count\(1) & ((!\counter_0_to_25|temp_count\(3)) # (!\counter_0_to_25|temp_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(3),
	datac => \counter_0_to_25|ALT_INV_temp_count\(4),
	datad => \counter_0_to_25|ALT_INV_temp_count\(1),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \counter_0_to_25|temp_count~1_combout\);

-- Location: FF_X12_Y3_N40
\counter_0_to_25|temp_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~1_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y3_N3
\counter_0_to_25|temp_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|temp_count~3_combout\ = ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count\(3) & (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\counter_0_to_25|temp_count\(0))))) # (\counter_0_to_25|temp_count\(3) & 
-- (!\counter_0_to_25|temp_count\(4) & ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (!\counter_0_to_25|temp_count\(0))))) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( (\counter_0_to_25|temp_count\(3) & ((!\counter_0_to_25|temp_count\(4)) # 
-- ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & !\counter_0_to_25|temp_count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000101110010000000010111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(4),
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \counter_0_to_25|temp_count~3_combout\);

-- Location: FF_X13_Y3_N4
\counter_0_to_25|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~3_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count\(3));

-- Location: LABCELL_X12_Y3_N33
\counter_0_to_25|temp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|temp_count~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count\(0) & ((!\counter_0_to_25|temp_count\(3)) # (!\counter_0_to_25|temp_count\(4)))) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( 
-- (!\counter_0_to_25|temp_count\(0) & ((!\counter_0_to_25|temp_count\(3)) # ((!\counter_0_to_25|temp_count\(1)) # (!\counter_0_to_25|temp_count\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(3),
	datab => \counter_0_to_25|ALT_INV_temp_count\(1),
	datac => \counter_0_to_25|ALT_INV_temp_count\(4),
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \counter_0_to_25|temp_count~0_combout\);

-- Location: FF_X12_Y3_N34
\counter_0_to_25|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_0_to_25|temp_count~0_combout\,
	clrn => \reset~input_o\,
	ena => \pulse_gen|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_0_to_25|temp_count\(0));

-- Location: IOIBUF_X12_Y0_N18
\dipswitches[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dipswitches(4),
	o => \dipswitches[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\dipswitches[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dipswitches(3),
	o => \dipswitches[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\dipswitches[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dipswitches(2),
	o => \dipswitches[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\dipswitches[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dipswitches(0),
	o => \dipswitches[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\dipswitches[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dipswitches(1),
	o => \dipswitches[1]~input_o\);

-- Location: LABCELL_X9_Y2_N0
\barrel_shifter|Mux9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~5_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (\counter_0_to_25|temp_count\(0) & (\dipswitches[4]~input_o\ & (\dipswitches[3]~input_o\ & \dipswitches[2]~input_o\))) ) ) ) # ( \dipswitches[0]~input_o\ & ( 
-- !\dipswitches[1]~input_o\ & ( (!\counter_0_to_25|temp_count\(0) & (!\dipswitches[4]~input_o\ & (!\dipswitches[3]~input_o\ & !\dipswitches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(0),
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~5_combout\);

-- Location: MLABCELL_X8_Y4_N15
\barrel_shifter|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~3_combout\ = ( !\dipswitches[1]~input_o\ & ( \dipswitches[0]~input_o\ & ( (!\dipswitches[2]~input_o\ & ((!\dipswitches[4]~input_o\ & (\dipswitches[3]~input_o\ & !\counter_0_to_25|temp_count\(0))) # (\dipswitches[4]~input_o\ & 
-- (!\dipswitches[3]~input_o\ & \counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~3_combout\);

-- Location: MLABCELL_X8_Y4_N6
\barrel_shifter|Mux9~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~7_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (!\dipswitches[4]~input_o\ & (!\dipswitches[3]~input_o\ & (\dipswitches[2]~input_o\ & !\counter_0_to_25|temp_count\(0)))) # (\dipswitches[4]~input_o\ & 
-- (\dipswitches[3]~input_o\ & (!\dipswitches[2]~input_o\ & \counter_0_to_25|temp_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \ALT_INV_dipswitches[2]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~7_combout\);

-- Location: MLABCELL_X8_Y4_N0
\barrel_shifter|Mux9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~6_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (\dipswitches[2]~input_o\ & ((!\counter_0_to_25|temp_count\(0) & (!\dipswitches[4]~input_o\ & \dipswitches[3]~input_o\)) # (\counter_0_to_25|temp_count\(0) & 
-- (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~6_combout\);

-- Location: LABCELL_X9_Y4_N36
\barrel_shifter|Mux9~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~35_combout\ = ( \barrel_shifter|Mux9~6_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~7_combout\) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( 
-- \counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~7_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) ) # ( \barrel_shifter|Mux9~6_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~3_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~5_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~3_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~5_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~3_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~7_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~6_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux9~35_combout\);

-- Location: MLABCELL_X8_Y4_N48
\barrel_shifter|Mux9~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~11_combout\ = ( \counter_0_to_25|temp_count\(0) & ( \dipswitches[4]~input_o\ & ( (\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & !\dipswitches[3]~input_o\))) ) ) ) # ( 
-- !\counter_0_to_25|temp_count\(0) & ( !\dipswitches[4]~input_o\ & ( (\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & \dipswitches[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \ALT_INV_dipswitches[4]~input_o\,
	combout => \barrel_shifter|Mux9~11_combout\);

-- Location: LABCELL_X12_Y3_N12
\barrel_shifter|Mux9~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~12_combout\ = ( \dipswitches[3]~input_o\ & ( \counter_0_to_25|temp_count\(0) & ( (!\dipswitches[1]~input_o\ & (!\dipswitches[2]~input_o\ & (!\dipswitches[0]~input_o\ & \dipswitches[4]~input_o\))) ) ) ) # ( !\dipswitches[3]~input_o\ & 
-- ( !\counter_0_to_25|temp_count\(0) & ( (!\dipswitches[1]~input_o\ & (\dipswitches[2]~input_o\ & (!\dipswitches[0]~input_o\ & !\dipswitches[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \barrel_shifter|Mux9~12_combout\);

-- Location: LABCELL_X9_Y2_N39
\barrel_shifter|Mux9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~10_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (!\dipswitches[3]~input_o\ & (!\dipswitches[2]~input_o\ & (!\dipswitches[4]~input_o\ & !\counter_0_to_25|temp_count\(0)))) ) ) ) # ( !\dipswitches[0]~input_o\ 
-- & ( !\dipswitches[1]~input_o\ & ( (\dipswitches[3]~input_o\ & (\dipswitches[2]~input_o\ & (\dipswitches[4]~input_o\ & \counter_0_to_25|temp_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~10_combout\);

-- Location: MLABCELL_X8_Y4_N24
\barrel_shifter|Mux9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~13_combout\ = ( \counter_0_to_25|temp_count\(0) & ( \dipswitches[4]~input_o\ & ( (!\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & !\dipswitches[3]~input_o\))) ) ) ) # ( 
-- !\counter_0_to_25|temp_count\(0) & ( !\dipswitches[4]~input_o\ & ( (!\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & \dipswitches[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \ALT_INV_dipswitches[4]~input_o\,
	combout => \barrel_shifter|Mux9~13_combout\);

-- Location: MLABCELL_X8_Y4_N30
\barrel_shifter|Mux9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~14_combout\ = ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( \counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~13_combout\ ) ) ) # ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( \counter_0_to_25|temp_count\(2) & ( 
-- \barrel_shifter|Mux9~12_combout\ ) ) ) # ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( !\counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~11_combout\ ) ) ) # ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( !\counter_0_to_25|temp_count\(2) & 
-- ( \barrel_shifter|Mux9~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~11_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~12_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~10_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~13_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux9~14_combout\);

-- Location: MLABCELL_X8_Y4_N9
\barrel_shifter|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~2_combout\ = ( !\dipswitches[1]~input_o\ & ( \dipswitches[0]~input_o\ & ( (!\dipswitches[4]~input_o\ & (!\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) & \dipswitches[2]~input_o\))) # (\dipswitches[4]~input_o\ & 
-- (\dipswitches[3]~input_o\ & (\counter_0_to_25|temp_count\(0) & !\dipswitches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~2_combout\);

-- Location: LABCELL_X9_Y3_N0
\barrel_shifter|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~0_combout\ = ( \counter_0_to_25|temp_count\(0) & ( \dipswitches[4]~input_o\ & ( (\dipswitches[3]~input_o\ & (\dipswitches[0]~input_o\ & (!\dipswitches[1]~input_o\ & \dipswitches[2]~input_o\))) ) ) ) # ( 
-- !\counter_0_to_25|temp_count\(0) & ( !\dipswitches[4]~input_o\ & ( (!\dipswitches[3]~input_o\ & (\dipswitches[0]~input_o\ & (\dipswitches[1]~input_o\ & !\dipswitches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[0]~input_o\,
	datac => \ALT_INV_dipswitches[1]~input_o\,
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \ALT_INV_dipswitches[4]~input_o\,
	combout => \barrel_shifter|Mux9~0_combout\);

-- Location: MLABCELL_X8_Y4_N3
\barrel_shifter|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~1_combout\ = ( !\dipswitches[1]~input_o\ & ( \dipswitches[0]~input_o\ & ( (\dipswitches[2]~input_o\ & ((!\counter_0_to_25|temp_count\(0) & (\dipswitches[3]~input_o\ & !\dipswitches[4]~input_o\)) # (\counter_0_to_25|temp_count\(0) & 
-- (!\dipswitches[3]~input_o\ & \dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~1_combout\);

-- Location: LABCELL_X9_Y3_N12
\barrel_shifter|Mux9~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~15_combout\ = ( \counter_0_to_25|temp_count\(0) & ( \dipswitches[0]~input_o\ & ( (!\dipswitches[3]~input_o\ & (\dipswitches[4]~input_o\ & (\dipswitches[1]~input_o\ & !\dipswitches[2]~input_o\))) ) ) ) # ( 
-- !\counter_0_to_25|temp_count\(0) & ( !\dipswitches[0]~input_o\ & ( (!\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ & (!\dipswitches[1]~input_o\ & !\dipswitches[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \ALT_INV_dipswitches[1]~input_o\,
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~15_combout\);

-- Location: LABCELL_X9_Y4_N30
\barrel_shifter|Mux9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~34_combout\ = ( \barrel_shifter|Mux9~15_combout\ & ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~0_combout\))) # (\counter_0_to_25|temp_count\(2) & 
-- (\barrel_shifter|Mux9~2_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~15_combout\ & ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~0_combout\))) # (\counter_0_to_25|temp_count\(2) & 
-- (\barrel_shifter|Mux9~2_combout\)) ) ) ) # ( \barrel_shifter|Mux9~15_combout\ & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2)) # (\barrel_shifter|Mux9~1_combout\) ) ) ) # ( !\barrel_shifter|Mux9~15_combout\ & ( 
-- !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~2_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~0_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~1_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~15_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	combout => \barrel_shifter|Mux9~34_combout\);

-- Location: LABCELL_X9_Y2_N27
\dipswitch_decoder|OUTPUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~6_combout\ = ( !\dipswitches[0]~input_o\ & ( !\dipswitches[2]~input_o\ & ( \dipswitches[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dipswitches[1]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~6_combout\);

-- Location: LABCELL_X11_Y4_N30
\barrel_shifter|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux17~0_combout\ = ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( \dipswitches[3]~input_o\ & ( (!\counter_0_to_25|temp_count\(0) & (\dipswitch_decoder|OUTPUT~6_combout\ & (!\dipswitches[4]~input_o\ & !\counter_0_to_25|temp_count\(2)))) 
-- ) ) ) # ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( !\dipswitches[3]~input_o\ & ( (\dipswitch_decoder|OUTPUT~6_combout\ & !\dipswitches[4]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( !\dipswitches[3]~input_o\ & ( 
-- (\dipswitch_decoder|OUTPUT~6_combout\ & ((!\dipswitches[4]~input_o\ & ((\counter_0_to_25|temp_count\(2)))) # (\dipswitches[4]~input_o\ & (\counter_0_to_25|temp_count\(0) & !\counter_0_to_25|temp_count\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110000001100000011000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(0),
	datab => \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\,
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(2),
	datae => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux17~0_combout\);

-- Location: LABCELL_X10_Y4_N42
\barrel_shifter|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux17~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux17~0_combout\ & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux9~34_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux17~0_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~14_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~35_combout\)) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux17~0_combout\ & ( (\barrel_shifter|Mux9~34_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux17~0_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- ((\barrel_shifter|Mux9~14_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~35_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~35_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~14_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~34_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux17~0_combout\,
	combout => \barrel_shifter|Mux17~1_combout\);

-- Location: LABCELL_X12_Y3_N48
\counter_0_to_25|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_0_to_25|LessThan0~0_combout\ = ( !\counter_0_to_25|temp_count\(2) & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \counter_0_to_25|LessThan0~0_combout\);

-- Location: LABCELL_X11_Y4_N39
\barrel_shifter|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux15~0_combout\ = ( \counter_0_to_25|LessThan0~0_combout\ & ( \dipswitches[3]~input_o\ & ( \barrel_shifter|Mux9~7_combout\ ) ) ) # ( !\counter_0_to_25|LessThan0~0_combout\ & ( \dipswitches[3]~input_o\ & ( (!\dipswitches[4]~input_o\ & 
-- \dipswitch_decoder|OUTPUT~6_combout\) ) ) ) # ( \counter_0_to_25|LessThan0~0_combout\ & ( !\dipswitches[3]~input_o\ & ( \barrel_shifter|Mux9~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100100010001000100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~7_combout\,
	datae => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux15~0_combout\);

-- Location: LABCELL_X9_Y4_N18
\barrel_shifter|Mux9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~37_combout\ = ( \barrel_shifter|Mux9~15_combout\ & ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2)) # (\barrel_shifter|Mux9~1_combout\) ) ) ) # ( !\barrel_shifter|Mux9~15_combout\ & ( 
-- \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~1_combout\) ) ) ) # ( \barrel_shifter|Mux9~15_combout\ & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~0_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~15_combout\ & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~13_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~0_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~1_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~15_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	combout => \barrel_shifter|Mux9~37_combout\);

-- Location: MLABCELL_X8_Y4_N12
\barrel_shifter|Mux9~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~8_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (!\dipswitches[2]~input_o\ & ((!\dipswitches[4]~input_o\ & (\dipswitches[3]~input_o\ & !\counter_0_to_25|temp_count\(0))) # (\dipswitches[4]~input_o\ & 
-- (!\dipswitches[3]~input_o\ & \counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \ALT_INV_dipswitches[2]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~8_combout\);

-- Location: LABCELL_X9_Y4_N12
\barrel_shifter|Mux9~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~36_combout\ = ( \barrel_shifter|Mux9~11_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~10_combout\)))) # (\counter_0_to_25|temp_count\(2)) ) ) ) # ( !\barrel_shifter|Mux9~11_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\ & 
-- (!\counter_0_to_25|temp_count\(2)))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((\barrel_shifter|Mux9~10_combout\) # (\counter_0_to_25|temp_count\(2))))) ) ) ) # ( \barrel_shifter|Mux9~11_combout\ & ( !\barrel_shifter|Mux9~12_combout\ & ( 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((\counter_0_to_25|temp_count\(2))) # (\barrel_shifter|Mux9~8_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((!\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~10_combout\)))) ) ) ) # 
-- ( !\barrel_shifter|Mux9~11_combout\ & ( !\barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count\(2) & ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~8_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(2),
	datad => \barrel_shifter|ALT_INV_Mux9~10_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~11_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~12_combout\,
	combout => \barrel_shifter|Mux9~36_combout\);

-- Location: LABCELL_X9_Y4_N54
\barrel_shifter|Mux9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~38_combout\ = ( \barrel_shifter|Mux9~6_combout\ & ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (\barrel_shifter|Mux9~3_combout\) # (\counter_0_to_25|temp_count\(2)) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( 
-- \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~3_combout\) ) ) ) # ( \barrel_shifter|Mux9~6_combout\ & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- ((\barrel_shifter|Mux9~2_combout\))) # (\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~5_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- ((\barrel_shifter|Mux9~2_combout\))) # (\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~3_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~5_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~2_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~6_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	combout => \barrel_shifter|Mux9~38_combout\);

-- Location: LABCELL_X10_Y4_N18
\barrel_shifter|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux15~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~38_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~37_combout\))) # (\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux15~0_combout\)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~38_combout\ & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux9~36_combout\) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~38_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~37_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux15~0_combout\)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~38_combout\ & ( (\barrel_shifter|Mux9~36_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux15~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~37_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~36_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux9~38_combout\,
	combout => \barrel_shifter|Mux15~1_combout\);

-- Location: LABCELL_X11_Y3_N33
\barrel_shifter|Mux9~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~23_combout\ = ( \counter_0_to_25|temp_count\(0) & ( !\dipswitches[4]~input_o\ ) ) # ( !\counter_0_to_25|temp_count\(0) & ( \dipswitches[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \barrel_shifter|Mux9~23_combout\);

-- Location: LABCELL_X11_Y3_N30
\dipswitch_decoder|OUTPUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~0_combout\ = (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & \dipswitches[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[2]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~0_combout\);

-- Location: LABCELL_X11_Y3_N21
\barrel_shifter|Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~10_combout\ = ( \dipswitch_decoder|OUTPUT~6_combout\ & ( \dipswitch_decoder|OUTPUT~0_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\))) ) ) ) # ( 
-- !\dipswitch_decoder|OUTPUT~6_combout\ & ( \dipswitch_decoder|OUTPUT~0_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (\counter_0_to_25|temp_count\(2) & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) ) # ( 
-- \dipswitch_decoder|OUTPUT~6_combout\ & ( !\dipswitch_decoder|OUTPUT~0_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (!\counter_0_to_25|temp_count\(2) & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~23_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(2),
	datae => \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\,
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\,
	combout => \barrel_shifter|Mux0~10_combout\);

-- Location: LABCELL_X12_Y3_N54
\barrel_shifter|Mux9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~21_combout\ = ( !\dipswitches[3]~input_o\ & ( \counter_0_to_25|temp_count\(0) & ( (!\dipswitches[1]~input_o\ & (!\dipswitches[2]~input_o\ & (!\dipswitches[0]~input_o\ & !\dipswitches[4]~input_o\))) ) ) ) # ( !\dipswitches[3]~input_o\ 
-- & ( !\counter_0_to_25|temp_count\(0) & ( (!\dipswitches[1]~input_o\ & (!\dipswitches[2]~input_o\ & (!\dipswitches[0]~input_o\ & \dipswitches[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \barrel_shifter|Mux9~21_combout\);

-- Location: MLABCELL_X8_Y3_N45
\barrel_shifter|Mux9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~25_combout\ = ( !\dipswitches[1]~input_o\ & ( \dipswitches[0]~input_o\ & ( (\dipswitches[2]~input_o\ & (\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~25_combout\);

-- Location: MLABCELL_X8_Y3_N3
\barrel_shifter|Mux9~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~20_combout\ = ( !\dipswitches[2]~input_o\ & ( \dipswitches[3]~input_o\ & ( (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \ALT_INV_dipswitches[0]~input_o\,
	datae => \ALT_INV_dipswitches[2]~input_o\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux9~20_combout\);

-- Location: LABCELL_X9_Y3_N57
\barrel_shifter|Mux9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~22_combout\ = ( \dipswitches[0]~input_o\ & ( !\dipswitches[2]~input_o\ & ( (\dipswitches[1]~input_o\ & (!\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \barrel_shifter|Mux9~22_combout\);

-- Location: MLABCELL_X8_Y3_N12
\barrel_shifter|Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~11_combout\ = ( \barrel_shifter|Mux9~22_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~25_combout\) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( 
-- \counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~25_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) ) # ( \barrel_shifter|Mux9~22_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~20_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~21_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~20_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~21_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~25_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~20_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~22_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~11_combout\);

-- Location: LABCELL_X9_Y3_N54
\barrel_shifter|Mux9~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~30_combout\ = ( \dipswitches[2]~input_o\ & ( !\dipswitches[0]~input_o\ & ( (\dipswitches[1]~input_o\ & (!\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[2]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~30_combout\);

-- Location: LABCELL_X9_Y3_N45
\barrel_shifter|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux14~0_combout\ = ( \dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\dipswitches[4]~input_o\ & (\dipswitch_decoder|OUTPUT~6_combout\))) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- (((\barrel_shifter|Mux9~30_combout\)))) ) ) # ( !\dipswitches[3]~input_o\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000010010101110000001001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~30_combout\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux14~0_combout\);

-- Location: LABCELL_X9_Y3_N30
\barrel_shifter|Mux9~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~28_combout\ = ( \dipswitches[0]~input_o\ & ( !\dipswitches[1]~input_o\ & ( (!\dipswitches[3]~input_o\ & (!\dipswitches[2]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~28_combout\);

-- Location: MLABCELL_X8_Y3_N42
\barrel_shifter|Mux9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~29_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (\dipswitches[2]~input_o\ & (\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~29_combout\);

-- Location: MLABCELL_X8_Y4_N45
\barrel_shifter|Mux9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~26_combout\ = ( \dipswitches[0]~input_o\ & ( !\dipswitches[3]~input_o\ & ( (\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux9~26_combout\);

-- Location: LABCELL_X11_Y3_N9
\barrel_shifter|Mux9~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~27_combout\ = ( !\dipswitches[1]~input_o\ & ( \dipswitches[0]~input_o\ & ( (!\dipswitches[2]~input_o\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~27_combout\);

-- Location: MLABCELL_X8_Y3_N48
\barrel_shifter|Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~12_combout\ = ( \barrel_shifter|Mux9~27_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~28_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~29_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~27_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~28_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~29_combout\))) ) ) ) # ( \barrel_shifter|Mux9~27_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~26_combout\) ) ) ) # ( !\barrel_shifter|Mux9~27_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~26_combout\ & !\counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~28_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~29_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~26_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~27_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~12_combout\);

-- Location: LABCELL_X10_Y3_N12
\barrel_shifter|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux14~1_combout\ = ( \barrel_shifter|Mux0~12_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~11_combout\)) # (\counter_0_to_25|temp_count\(4) & 
-- ((\barrel_shifter|Mux14~0_combout\))) ) ) ) # ( !\barrel_shifter|Mux0~12_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~11_combout\)) # (\counter_0_to_25|temp_count\(4) & 
-- ((\barrel_shifter|Mux14~0_combout\))) ) ) ) # ( \barrel_shifter|Mux0~12_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux0~10_combout\) ) ) ) # ( !\barrel_shifter|Mux0~12_combout\ & ( 
-- !\counter_0_to_25|temp_count\(3) & ( (\barrel_shifter|Mux0~10_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~10_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~11_combout\,
	datac => \barrel_shifter|ALT_INV_Mux14~0_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \barrel_shifter|ALT_INV_Mux0~12_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux14~1_combout\);

-- Location: LABCELL_X9_Y3_N33
\barrel_shifter|Mux9~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~32_combout\ = ( \dipswitches[1]~input_o\ & ( !\dipswitches[0]~input_o\ & ( (!\dipswitches[3]~input_o\ & (!\dipswitches[2]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~32_combout\);

-- Location: MLABCELL_X8_Y4_N42
\barrel_shifter|Mux9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~33_combout\ = ( \dipswitches[3]~input_o\ & ( !\dipswitches[0]~input_o\ & ( (\dipswitches[2]~input_o\ & (!\dipswitches[1]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[2]~input_o\,
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \ALT_INV_dipswitches[0]~input_o\,
	combout => \barrel_shifter|Mux9~33_combout\);

-- Location: MLABCELL_X8_Y3_N0
\barrel_shifter|Mux9~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~19_combout\ = ( !\dipswitches[3]~input_o\ & ( \dipswitches[2]~input_o\ & ( (!\dipswitches[1]~input_o\ & (!\dipswitches[0]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[1]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \barrel_shifter|Mux9~19_combout\);

-- Location: MLABCELL_X8_Y3_N30
\barrel_shifter|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~7_combout\ = ( \barrel_shifter|Mux9~19_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~20_combout\) ) ) ) # ( !\barrel_shifter|Mux9~19_combout\ & ( 
-- \counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~20_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) ) # ( \barrel_shifter|Mux9~19_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~32_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~33_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~19_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~32_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~32_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~33_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~20_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~19_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~7_combout\);

-- Location: LABCELL_X9_Y3_N39
\barrel_shifter|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux16~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~6_combout\ & ( (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~6_combout\ & 
-- ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101001010000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~6_combout\,
	combout => \barrel_shifter|Mux16~0_combout\);

-- Location: MLABCELL_X8_Y3_N36
\barrel_shifter|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~8_combout\ = ( \barrel_shifter|Mux9~22_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~25_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~26_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~25_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~26_combout\))) ) ) ) # ( \barrel_shifter|Mux9~22_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~21_combout\) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~21_combout\ & !\counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~21_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~25_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~26_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~22_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~8_combout\);

-- Location: LABCELL_X11_Y3_N45
\dipswitch_decoder|OUTPUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~5_combout\ = ( !\dipswitches[1]~input_o\ & ( (\dipswitches[0]~input_o\ & !\dipswitches[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[0]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~5_combout\);

-- Location: LABCELL_X9_Y2_N18
\dipswitch_decoder|OUTPUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~4_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[2]~input_o\ & ( \dipswitches[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dipswitches[1]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~4_combout\);

-- Location: LABCELL_X11_Y3_N18
\barrel_shifter|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~9_combout\ = ( \dipswitch_decoder|OUTPUT~5_combout\ & ( \dipswitch_decoder|OUTPUT~4_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\))) ) ) ) # ( 
-- !\dipswitch_decoder|OUTPUT~5_combout\ & ( \dipswitch_decoder|OUTPUT~4_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (\counter_0_to_25|temp_count\(2) & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) ) # ( 
-- \dipswitch_decoder|OUTPUT~5_combout\ & ( !\dipswitch_decoder|OUTPUT~4_combout\ & ( (\barrel_shifter|Mux9~23_combout\ & (!\counter_0_to_25|temp_count\(2) & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000100000000000001000001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~23_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(2),
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\,
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\,
	combout => \barrel_shifter|Mux0~9_combout\);

-- Location: LABCELL_X10_Y3_N36
\barrel_shifter|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux16~1_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux16~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux0~8_combout\ ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~9_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~7_combout\,
	datab => \barrel_shifter|ALT_INV_Mux16~0_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~8_combout\,
	datad => \barrel_shifter|ALT_INV_Mux0~9_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux16~1_combout\);

-- Location: LABCELL_X11_Y5_N45
\encoder_26_to_5|INDEX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~1_combout\ = ( !\barrel_shifter|Mux16~1_combout\ & ( (!\barrel_shifter|Mux17~1_combout\ & (!\barrel_shifter|Mux15~1_combout\ & !\barrel_shifter|Mux14~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux17~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux15~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux14~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux16~1_combout\,
	combout => \encoder_26_to_5|INDEX~1_combout\);

-- Location: LABCELL_X9_Y3_N9
\barrel_shifter|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~0_combout\ = ( !\dipswitches[2]~input_o\ & ( (\dipswitches[1]~input_o\ & \dipswitches[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dipswitches[1]~input_o\,
	datad => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \barrel_shifter|Mux0~0_combout\);

-- Location: LABCELL_X9_Y3_N51
\barrel_shifter|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux1~0_combout\ = ( \dipswitches[3]~input_o\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~15_combout\) ) ) # ( !\dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\barrel_shifter|Mux0~0_combout\ & 
-- ((!\dipswitches[4]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & (((\barrel_shifter|Mux9~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000101001001110000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~0_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~15_combout\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux1~0_combout\);

-- Location: LABCELL_X9_Y4_N6
\barrel_shifter|Mux9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~9_combout\ = ( \barrel_shifter|Mux9~5_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~7_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~8_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~5_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~7_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~8_combout\)) ) ) ) # ( \barrel_shifter|Mux9~5_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~6_combout\) ) ) ) # ( !\barrel_shifter|Mux9~5_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & \barrel_shifter|Mux9~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~8_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \barrel_shifter|ALT_INV_Mux9~6_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~7_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~5_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux9~9_combout\);

-- Location: LABCELL_X9_Y4_N0
\barrel_shifter|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~4_combout\ = ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( \barrel_shifter|Mux9~3_combout\ & ( (\barrel_shifter|Mux9~1_combout\) # (\counter_0_to_25|temp_count\(2)) ) ) ) # ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( 
-- \barrel_shifter|Mux9~3_combout\ & ( (!\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~0_combout\)) # (\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~2_combout\))) ) ) ) # ( \counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( 
-- !\barrel_shifter|Mux9~3_combout\ & ( (!\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~1_combout\) ) ) ) # ( !\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ( !\barrel_shifter|Mux9~3_combout\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- (\barrel_shifter|Mux9~0_combout\)) # (\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~0_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~2_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	dataf => \barrel_shifter|ALT_INV_Mux9~3_combout\,
	combout => \barrel_shifter|Mux9~4_combout\);

-- Location: LABCELL_X10_Y4_N0
\barrel_shifter|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux1~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux1~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux9~14_combout\ 
-- ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux9~9_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux9~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux1~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~14_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~9_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~4_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(4),
	combout => \barrel_shifter|Mux1~1_combout\);

-- Location: LABCELL_X12_Y3_N9
\barrel_shifter|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux13~0_combout\ = ( !\dipswitches[3]~input_o\ & ( \counter_0_to_25|temp_count\(0) & ( (\dipswitch_decoder|OUTPUT~4_combout\ & (!\dipswitches[4]~input_o\ $ (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- !\counter_0_to_25|temp_count\(2)))))) ) ) ) # ( \dipswitches[3]~input_o\ & ( !\counter_0_to_25|temp_count\(0) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (!\dipswitches[4]~input_o\ & (\dipswitch_decoder|OUTPUT~4_combout\ & 
-- !\counter_0_to_25|temp_count\(2)))) ) ) ) # ( !\dipswitches[3]~input_o\ & ( !\counter_0_to_25|temp_count\(0) & ( (!\dipswitches[4]~input_o\ & (\dipswitch_decoder|OUTPUT~4_combout\ & ((\counter_0_to_25|temp_count\(2)) # 
-- (\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000010000000000000000110000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(2),
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(0),
	combout => \barrel_shifter|Mux13~0_combout\);

-- Location: LABCELL_X11_Y4_N42
\barrel_shifter|Mux9~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~39_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~10_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~11_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( 
-- \barrel_shifter|Mux9~10_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~7_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) ) ) ) # ( \counter_0_to_25|temp_count\(2) & ( 
-- !\barrel_shifter|Mux9~10_combout\ & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & \barrel_shifter|Mux9~11_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( !\barrel_shifter|Mux9~10_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~7_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \barrel_shifter|ALT_INV_Mux9~8_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~11_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~7_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \barrel_shifter|ALT_INV_Mux9~10_combout\,
	combout => \barrel_shifter|Mux9~39_combout\);

-- Location: LABCELL_X9_Y4_N42
\barrel_shifter|Mux9~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~16_combout\ = ( \barrel_shifter|Mux9~15_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # ((!\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~13_combout\)) # 
-- (\counter_0_to_25|temp_count\(2) & ((\barrel_shifter|Mux9~0_combout\)))) ) ) ) # ( !\barrel_shifter|Mux9~15_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count\(2) & (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)) # 
-- (\barrel_shifter|Mux9~13_combout\))) # (\counter_0_to_25|temp_count\(2) & (((\barrel_shifter|Mux9~0_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) ) # ( \barrel_shifter|Mux9~15_combout\ & ( !\barrel_shifter|Mux9~12_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~13_combout\ & ((\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) # (\counter_0_to_25|temp_count\(2) & (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~0_combout\)))) ) ) ) # 
-- ( !\barrel_shifter|Mux9~15_combout\ & ( !\barrel_shifter|Mux9~12_combout\ & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((!\counter_0_to_25|temp_count\(2) & (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count\(2) & 
-- ((\barrel_shifter|Mux9~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~13_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~0_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~15_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~12_combout\,
	combout => \barrel_shifter|Mux9~16_combout\);

-- Location: LABCELL_X9_Y4_N48
\barrel_shifter|Mux9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~17_combout\ = ( \barrel_shifter|Mux9~5_combout\ & ( \barrel_shifter|Mux9~3_combout\ & ( ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~1_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~2_combout\)))) # (\counter_0_to_25|temp_count\(2)) ) ) ) # ( !\barrel_shifter|Mux9~5_combout\ & ( \barrel_shifter|Mux9~3_combout\ & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((\counter_0_to_25|temp_count\(2))) # 
-- (\barrel_shifter|Mux9~1_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((!\counter_0_to_25|temp_count\(2) & \barrel_shifter|Mux9~2_combout\)))) ) ) ) # ( \barrel_shifter|Mux9~5_combout\ & ( !\barrel_shifter|Mux9~3_combout\ & ( 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~1_combout\ & (!\counter_0_to_25|temp_count\(2)))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((\barrel_shifter|Mux9~2_combout\) # (\counter_0_to_25|temp_count\(2))))) ) ) ) # ( 
-- !\barrel_shifter|Mux9~5_combout\ & ( !\barrel_shifter|Mux9~3_combout\ & ( (!\counter_0_to_25|temp_count\(2) & ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~1_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \barrel_shifter|ALT_INV_Mux9~1_combout\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(2),
	datad => \barrel_shifter|ALT_INV_Mux9~2_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~5_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~3_combout\,
	combout => \barrel_shifter|Mux9~17_combout\);

-- Location: LABCELL_X11_Y5_N48
\barrel_shifter|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux13~1_combout\ = ( \barrel_shifter|Mux9~17_combout\ & ( \counter_0_to_25|temp_count\(4) & ( (!\counter_0_to_25|temp_count\(3)) # (\barrel_shifter|Mux13~0_combout\) ) ) ) # ( !\barrel_shifter|Mux9~17_combout\ & ( 
-- \counter_0_to_25|temp_count\(4) & ( (\barrel_shifter|Mux13~0_combout\ & \counter_0_to_25|temp_count\(3)) ) ) ) # ( \barrel_shifter|Mux9~17_combout\ & ( !\counter_0_to_25|temp_count\(4) & ( (!\counter_0_to_25|temp_count\(3) & 
-- (\barrel_shifter|Mux9~39_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux9~16_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~17_combout\ & ( !\counter_0_to_25|temp_count\(4) & ( (!\counter_0_to_25|temp_count\(3) & 
-- (\barrel_shifter|Mux9~39_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux9~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux13~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~39_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~16_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(3),
	datae => \barrel_shifter|ALT_INV_Mux9~17_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(4),
	combout => \barrel_shifter|Mux13~1_combout\);

-- Location: LABCELL_X9_Y2_N30
\barrel_shifter|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux11~0_combout\ = ( \dipswitches[3]~input_o\ & ( \dipswitch_decoder|OUTPUT~4_combout\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (!\dipswitches[4]~input_o\)) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- ((\barrel_shifter|Mux9~5_combout\))) ) ) ) # ( !\dipswitches[3]~input_o\ & ( \dipswitch_decoder|OUTPUT~4_combout\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~5_combout\) ) ) ) # ( \dipswitches[3]~input_o\ & ( 
-- !\dipswitch_decoder|OUTPUT~4_combout\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~5_combout\) ) ) ) # ( !\dipswitches[3]~input_o\ & ( !\dipswitch_decoder|OUTPUT~4_combout\ & ( (\counter_0_to_25|LessThan0~0_combout\ & 
-- \barrel_shifter|Mux9~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~5_combout\,
	datae => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\,
	combout => \barrel_shifter|Mux11~0_combout\);

-- Location: MLABCELL_X8_Y4_N36
\barrel_shifter|Mux9~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~18_combout\ = ( \barrel_shifter|Mux9~6_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~10_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~8_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~10_combout\))) ) ) ) # ( \barrel_shifter|Mux9~6_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~7_combout\) ) ) ) # ( !\barrel_shifter|Mux9~6_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & \barrel_shifter|Mux9~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \barrel_shifter|ALT_INV_Mux9~8_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~10_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~7_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~6_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux9~18_combout\);

-- Location: LABCELL_X9_Y4_N24
\barrel_shifter|Mux9~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~24_combout\ = ( \barrel_shifter|Mux9~11_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count\(2)) # ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~13_combout\)) # 
-- (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~15_combout\)))) ) ) ) # ( !\barrel_shifter|Mux9~11_combout\ & ( \barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count\(2) & 
-- (((\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) # (\counter_0_to_25|temp_count\(2) & ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~15_combout\))))) ) ) ) # ( \barrel_shifter|Mux9~11_combout\ & ( !\barrel_shifter|Mux9~12_combout\ & ( (!\counter_0_to_25|temp_count\(2) & (((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) # (\counter_0_to_25|temp_count\(2) & 
-- ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~15_combout\))))) ) ) ) # ( !\barrel_shifter|Mux9~11_combout\ & ( !\barrel_shifter|Mux9~12_combout\ 
-- & ( (\counter_0_to_25|temp_count\(2) & ((!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~13_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~15_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \barrel_shifter|ALT_INV_Mux9~13_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~15_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~11_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~12_combout\,
	combout => \barrel_shifter|Mux9~24_combout\);

-- Location: LABCELL_X10_Y4_N24
\barrel_shifter|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux11~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~24_combout\ & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux11~0_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux9~24_combout\ & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~18_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~4_combout\))) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~24_combout\ & ( (\barrel_shifter|Mux11~0_combout\ & \counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux9~24_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux9~18_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux11~0_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(4),
	datac => \barrel_shifter|ALT_INV_Mux9~18_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~4_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux9~24_combout\,
	combout => \barrel_shifter|Mux11~1_combout\);

-- Location: LABCELL_X12_Y3_N36
\dipswitch_decoder|OUTPUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~1_combout\ = (\dipswitches[0]~input_o\ & !\dipswitches[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[1]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~1_combout\);

-- Location: LABCELL_X12_Y3_N0
\barrel_shifter|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~2_combout\ = ( !\counter_0_to_25|temp_count\(2) & ( \dipswitches[2]~input_o\ & ( (\barrel_shifter|Mux9~23_combout\ & (\dipswitch_decoder|OUTPUT~1_combout\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ 
-- (!\dipswitches[3]~input_o\)))) ) ) ) # ( \counter_0_to_25|temp_count\(2) & ( !\dipswitches[2]~input_o\ & ( (\barrel_shifter|Mux9~23_combout\ & (\dipswitch_decoder|OUTPUT~1_combout\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ 
-- (!\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001000000001000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \barrel_shifter|ALT_INV_Mux9~23_combout\,
	datac => \dipswitch_decoder|ALT_INV_OUTPUT~1_combout\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \barrel_shifter|Mux0~2_combout\);

-- Location: MLABCELL_X8_Y3_N6
\barrel_shifter|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~1_combout\ = ( \barrel_shifter|Mux9~19_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~21_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~22_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~19_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~21_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~22_combout\))) ) ) ) # ( \barrel_shifter|Mux9~19_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~20_combout\) ) ) ) # ( !\barrel_shifter|Mux9~19_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~20_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~21_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~22_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~20_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~19_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~1_combout\);

-- Location: LABCELL_X11_Y3_N54
\barrel_shifter|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux12~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~4_combout\ & ( (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~4_combout\ & 
-- ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[4]~input_o\ & ((!\dipswitches[3]~input_o\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010010000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\,
	combout => \barrel_shifter|Mux12~0_combout\);

-- Location: LABCELL_X11_Y3_N6
\barrel_shifter|Mux9~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~31_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ & ( (!\dipswitches[2]~input_o\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~31_combout\);

-- Location: MLABCELL_X8_Y3_N24
\barrel_shifter|Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~13_combout\ = ( \barrel_shifter|Mux9~30_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~32_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~33_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~30_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~32_combout\)) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~33_combout\))) ) ) ) # ( \barrel_shifter|Mux9~30_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~31_combout\) ) ) ) # ( !\barrel_shifter|Mux9~30_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~31_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~31_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \barrel_shifter|ALT_INV_Mux9~32_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~33_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~30_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~13_combout\);

-- Location: LABCELL_X12_Y3_N42
\barrel_shifter|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux12~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~13_combout\ & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux12~0_combout\))) 
-- ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~13_combout\ & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux0~2_combout\) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux0~13_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux12~0_combout\))) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux0~13_combout\ & ( 
-- (\barrel_shifter|Mux0~2_combout\ & \counter_0_to_25|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~2_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux12~0_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux0~13_combout\,
	combout => \barrel_shifter|Mux12~1_combout\);

-- Location: LABCELL_X9_Y2_N12
\dipswitch_decoder|OUTPUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~2_combout\ = ( !\dipswitches[0]~input_o\ & ( \dipswitches[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~2_combout\);

-- Location: LABCELL_X11_Y3_N15
\barrel_shifter|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~3_combout\ = ( \dipswitch_decoder|OUTPUT~2_combout\ & ( \barrel_shifter|Mux9~23_combout\ & ( (!\counter_0_to_25|temp_count\(2) & (\dipswitches[2]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ 
-- (!\dipswitches[3]~input_o\)))) # (\counter_0_to_25|temp_count\(2) & (!\dipswitches[2]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[2]~input_o\,
	datae => \dipswitch_decoder|ALT_INV_OUTPUT~2_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~23_combout\,
	combout => \barrel_shifter|Mux0~3_combout\);

-- Location: LABCELL_X11_Y3_N0
\dipswitch_decoder|OUTPUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dipswitch_decoder|OUTPUT~3_combout\ = ( !\dipswitches[1]~input_o\ & ( !\dipswitches[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dipswitches[0]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \dipswitch_decoder|OUTPUT~3_combout\);

-- Location: LABCELL_X11_Y3_N12
\barrel_shifter|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~4_combout\ = ( \dipswitch_decoder|OUTPUT~3_combout\ & ( \barrel_shifter|Mux9~23_combout\ & ( (!\counter_0_to_25|temp_count\(2) & (\dipswitches[2]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ 
-- (!\dipswitches[3]~input_o\)))) # (\counter_0_to_25|temp_count\(2) & (!\dipswitches[2]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(2),
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[2]~input_o\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \dipswitch_decoder|ALT_INV_OUTPUT~3_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~23_combout\,
	combout => \barrel_shifter|Mux0~4_combout\);

-- Location: LABCELL_X9_Y3_N21
\barrel_shifter|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux10~0_combout\ = ( \counter_0_to_25|LessThan0~0_combout\ & ( \barrel_shifter|Mux9~28_combout\ ) ) # ( !\counter_0_to_25|LessThan0~0_combout\ & ( (\dipswitches[3]~input_o\ & (\dipswitches[4]~input_o\ & 
-- \dipswitch_decoder|OUTPUT~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~28_combout\,
	datad => \dipswitch_decoder|ALT_INV_OUTPUT~4_combout\,
	dataf => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	combout => \barrel_shifter|Mux10~0_combout\);

-- Location: MLABCELL_X8_Y3_N18
\barrel_shifter|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~5_combout\ = ( \barrel_shifter|Mux9~22_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~26_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~27_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & ((\barrel_shifter|Mux9~26_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- (\barrel_shifter|Mux9~27_combout\)) ) ) ) # ( \barrel_shifter|Mux9~22_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~25_combout\) ) ) ) # ( !\barrel_shifter|Mux9~22_combout\ & ( 
-- !\counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~25_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~27_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~25_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~26_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~22_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~5_combout\);

-- Location: LABCELL_X10_Y3_N18
\barrel_shifter|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux10~1_combout\ = ( \barrel_shifter|Mux0~5_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~4_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux10~0_combout\))) 
-- ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~4_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux10~0_combout\))) ) ) ) # ( 
-- \barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux0~3_combout\) ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( 
-- (\barrel_shifter|Mux0~3_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~3_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~4_combout\,
	datac => \barrel_shifter|ALT_INV_Mux10~0_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \barrel_shifter|ALT_INV_Mux0~5_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux10~1_combout\);

-- Location: LABCELL_X10_Y5_N0
\encoder_26_to_5|INDEX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~2_combout\ = ( !\barrel_shifter|Mux10~1_combout\ & ( (!\barrel_shifter|Mux13~1_combout\ & (!\barrel_shifter|Mux11~1_combout\ & !\barrel_shifter|Mux12~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \barrel_shifter|ALT_INV_Mux13~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux11~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux12~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux10~1_combout\,
	combout => \encoder_26_to_5|INDEX~2_combout\);

-- Location: LABCELL_X11_Y3_N42
\barrel_shifter|Mux9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~42_combout\ = ( !\dipswitches[1]~input_o\ & ( (\dipswitches[0]~input_o\ & \dipswitches[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[0]~input_o\,
	datab => \ALT_INV_dipswitches[2]~input_o\,
	dataf => \ALT_INV_dipswitches[1]~input_o\,
	combout => \barrel_shifter|Mux9~42_combout\);

-- Location: LABCELL_X9_Y3_N42
\barrel_shifter|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux2~0_combout\ = ( \dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\dipswitches[4]~input_o\ & (\barrel_shifter|Mux9~42_combout\))) # (\counter_0_to_25|LessThan0~0_combout\ & (((\barrel_shifter|Mux9~22_combout\)))) 
-- ) ) # ( !\dipswitches[3]~input_o\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000010010101110000001001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~42_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~22_combout\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux2~0_combout\);

-- Location: LABCELL_X10_Y3_N6
\barrel_shifter|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux2~1_combout\ = ( \barrel_shifter|Mux2~0_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux0~3_combout\) ) ) ) # ( !\barrel_shifter|Mux2~0_combout\ & ( 
-- \counter_0_to_25|temp_count\(3) & ( (\barrel_shifter|Mux0~3_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) ) # ( \barrel_shifter|Mux2~0_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux0~2_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~4_combout\))) ) ) ) # ( !\barrel_shifter|Mux2~0_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux0~2_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~2_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~4_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~3_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \barrel_shifter|ALT_INV_Mux2~0_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux2~1_combout\);

-- Location: LABCELL_X11_Y3_N48
\barrel_shifter|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux4~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~42_combout\ & ( (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~42_combout\ & ( 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[4]~input_o\ & ((!\dipswitches[3]~input_o\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010010000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \barrel_shifter|ALT_INV_Mux9~42_combout\,
	combout => \barrel_shifter|Mux4~0_combout\);

-- Location: LABCELL_X12_Y3_N18
\barrel_shifter|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux4~1_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux0~13_combout\ & ( (!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux4~0_combout\))) ) 
-- ) ) # ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux0~13_combout\ & ( (\barrel_shifter|Mux0~12_combout\) # (\counter_0_to_25|temp_count\(3)) ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( !\barrel_shifter|Mux0~13_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux4~0_combout\))) ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\barrel_shifter|Mux0~13_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(3) & \barrel_shifter|Mux0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(3),
	datab => \barrel_shifter|ALT_INV_Mux0~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~12_combout\,
	datad => \barrel_shifter|ALT_INV_Mux4~0_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \barrel_shifter|ALT_INV_Mux0~13_combout\,
	combout => \barrel_shifter|Mux4~1_combout\);

-- Location: LABCELL_X9_Y3_N27
\barrel_shifter|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux3~0_combout\ = ( \barrel_shifter|Mux9~0_combout\ & ( \dipswitches[3]~input_o\ & ( ((!\dipswitches[4]~input_o\ & \barrel_shifter|Mux9~42_combout\)) # (\counter_0_to_25|LessThan0~0_combout\) ) ) ) # ( !\barrel_shifter|Mux9~0_combout\ & ( 
-- \dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (!\dipswitches[4]~input_o\ & \barrel_shifter|Mux9~42_combout\)) ) ) ) # ( \barrel_shifter|Mux9~0_combout\ & ( !\dipswitches[3]~input_o\ & ( \counter_0_to_25|LessThan0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000101000000101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_dipswitches[4]~input_o\,
	datad => \barrel_shifter|ALT_INV_Mux9~42_combout\,
	datae => \barrel_shifter|ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux3~0_combout\);

-- Location: LABCELL_X10_Y4_N48
\barrel_shifter|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux3~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~18_combout\ & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux3~0_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux9~18_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~17_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~24_combout\)) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~18_combout\ & ( (\barrel_shifter|Mux3~0_combout\ & \counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux9~18_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- ((\barrel_shifter|Mux9~17_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux3~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~17_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux9~18_combout\,
	combout => \barrel_shifter|Mux3~1_combout\);

-- Location: LABCELL_X11_Y3_N39
\barrel_shifter|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux5~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~42_combout\ & ( (!\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~42_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(0) & (!\dipswitches[4]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) # (\counter_0_to_25|temp_count\(0) & (!\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000011000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \barrel_shifter|ALT_INV_Mux9~42_combout\,
	combout => \barrel_shifter|Mux5~0_combout\);

-- Location: LABCELL_X10_Y4_N12
\barrel_shifter|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux5~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~39_combout\ & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux5~0_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux9~39_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~38_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~16_combout\)) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~39_combout\ & ( (\barrel_shifter|Mux5~0_combout\ & \counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux9~39_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- ((\barrel_shifter|Mux9~38_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux5~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~16_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~38_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux9~39_combout\,
	combout => \barrel_shifter|Mux5~1_combout\);

-- Location: LABCELL_X10_Y5_N12
\encoder_26_to_5|INDEX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~4_combout\ = ( !\barrel_shifter|Mux5~1_combout\ & ( (!\barrel_shifter|Mux2~1_combout\ & (!\barrel_shifter|Mux4~1_combout\ & !\barrel_shifter|Mux3~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux2~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux4~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux5~1_combout\,
	combout => \encoder_26_to_5|INDEX~4_combout\);

-- Location: MLABCELL_X8_Y4_N21
\barrel_shifter|Mux9~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~40_combout\ = ( \counter_0_to_25|temp_count\(0) & ( \counter_0_to_25|temp_count\(2) & ( (!\dipswitches[4]~input_o\ & (\dipswitch_decoder|OUTPUT~5_combout\ & !\dipswitches[3]~input_o\)) ) ) ) # ( !\counter_0_to_25|temp_count\(0) & ( 
-- \counter_0_to_25|temp_count\(2) & ( (!\dipswitches[4]~input_o\ & (\dipswitch_decoder|OUTPUT~5_combout\ & !\dipswitches[3]~input_o\)) ) ) ) # ( \counter_0_to_25|temp_count\(0) & ( !\counter_0_to_25|temp_count\(2) & ( (\dipswitch_decoder|OUTPUT~5_combout\ & 
-- (!\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) ) # ( !\counter_0_to_25|temp_count\(0) & ( !\counter_0_to_25|temp_count\(2) & ( (!\dipswitches[4]~input_o\ & 
-- (\dipswitch_decoder|OUTPUT~5_combout\ & (!\dipswitches[3]~input_o\ $ (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000100000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(0),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux9~40_combout\);

-- Location: LABCELL_X10_Y4_N30
\barrel_shifter|Mux9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~41_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux9~40_combout\ & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux9~14_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux9~40_combout\ & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~9_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~34_combout\))) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux9~40_combout\ & ( (\barrel_shifter|Mux9~14_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux9~40_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux9~9_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~9_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~14_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~34_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux9~40_combout\,
	combout => \barrel_shifter|Mux9~41_combout\);

-- Location: MLABCELL_X8_Y3_N54
\barrel_shifter|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~6_combout\ = ( \barrel_shifter|Mux9~30_combout\ & ( \counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\) # (\barrel_shifter|Mux9~31_combout\) ) ) ) # ( !\barrel_shifter|Mux9~30_combout\ & ( 
-- \counter_0_to_25|temp_count\(2) & ( (\barrel_shifter|Mux9~31_combout\ & \counter_0_to_25|temp_count[1]~DUPLICATE_q\) ) ) ) # ( \barrel_shifter|Mux9~30_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~28_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~29_combout\)) ) ) ) # ( !\barrel_shifter|Mux9~30_combout\ & ( !\counter_0_to_25|temp_count\(2) & ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & 
-- ((\barrel_shifter|Mux9~28_combout\))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\barrel_shifter|Mux9~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~31_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~29_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~28_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datae => \barrel_shifter|ALT_INV_Mux9~30_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(2),
	combout => \barrel_shifter|Mux0~6_combout\);

-- Location: LABCELL_X11_Y3_N57
\barrel_shifter|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux8~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~5_combout\ & ( (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~5_combout\ & ( 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[4]~input_o\ & (!\dipswitches[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000110000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\,
	combout => \barrel_shifter|Mux8~0_combout\);

-- Location: LABCELL_X10_Y3_N24
\barrel_shifter|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux8~1_combout\ = ( \barrel_shifter|Mux8~0_combout\ & ( \barrel_shifter|Mux0~8_combout\ & ( ((!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~6_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~7_combout\)))) 
-- # (\counter_0_to_25|temp_count\(4)) ) ) ) # ( !\barrel_shifter|Mux8~0_combout\ & ( \barrel_shifter|Mux0~8_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~6_combout\)) # 
-- (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~7_combout\))))) # (\counter_0_to_25|temp_count\(4) & (((!\counter_0_to_25|temp_count\(3))))) ) ) ) # ( \barrel_shifter|Mux8~0_combout\ & ( !\barrel_shifter|Mux0~8_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(4) & ((!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~6_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~7_combout\))))) # (\counter_0_to_25|temp_count\(4) & 
-- (((\counter_0_to_25|temp_count\(3))))) ) ) ) # ( !\barrel_shifter|Mux8~0_combout\ & ( !\barrel_shifter|Mux0~8_combout\ & ( (!\counter_0_to_25|temp_count\(4) & ((!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~6_combout\)) # 
-- (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~6_combout\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(4),
	datac => \barrel_shifter|ALT_INV_Mux0~7_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(3),
	datae => \barrel_shifter|ALT_INV_Mux8~0_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux0~8_combout\,
	combout => \barrel_shifter|Mux8~1_combout\);

-- Location: MLABCELL_X8_Y4_N57
\barrel_shifter|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux7~0_combout\ = ( \dipswitch_decoder|OUTPUT~5_combout\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\dipswitches[3]~input_o\ & ((!\dipswitches[4]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- (((\barrel_shifter|Mux9~2_combout\)))) ) ) # ( !\dipswitch_decoder|OUTPUT~5_combout\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100100111000001010010011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~2_combout\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\,
	combout => \barrel_shifter|Mux7~0_combout\);

-- Location: LABCELL_X10_Y4_N6
\barrel_shifter|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux7~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux7~0_combout\ & ( (\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux9~36_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux7~0_combout\ & ( (!\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux9~35_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~37_combout\))) ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( 
-- !\barrel_shifter|Mux7~0_combout\ & ( (\barrel_shifter|Mux9~36_combout\ & !\counter_0_to_25|temp_count\(4)) ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\barrel_shifter|Mux7~0_combout\ & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux9~35_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux9~37_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~35_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~37_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~36_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \barrel_shifter|ALT_INV_Mux7~0_combout\,
	combout => \barrel_shifter|Mux7~1_combout\);

-- Location: MLABCELL_X8_Y4_N54
\barrel_shifter|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux6~0_combout\ = ( \dipswitches[4]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\dipswitches[3]~input_o\ & (\dipswitch_decoder|OUTPUT~5_combout\))) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- (((\barrel_shifter|Mux9~26_combout\)))) ) ) # ( !\dipswitches[4]~input_o\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000010010101110000001001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[3]~input_o\,
	datac => \dipswitch_decoder|ALT_INV_OUTPUT~5_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~26_combout\,
	dataf => \ALT_INV_dipswitches[4]~input_o\,
	combout => \barrel_shifter|Mux6~0_combout\);

-- Location: LABCELL_X10_Y3_N30
\barrel_shifter|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux6~1_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux6~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~10_combout\ 
-- ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~11_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux6~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~11_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~10_combout\,
	datad => \barrel_shifter|ALT_INV_Mux0~9_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux6~1_combout\);

-- Location: LABCELL_X10_Y5_N36
\encoder_26_to_5|INDEX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~3_combout\ = (!\barrel_shifter|Mux9~41_combout\ & (!\barrel_shifter|Mux8~1_combout\ & (!\barrel_shifter|Mux7~1_combout\ & !\barrel_shifter|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~41_combout\,
	datab => \barrel_shifter|ALT_INV_Mux8~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux7~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux6~1_combout\,
	combout => \encoder_26_to_5|INDEX~3_combout\);

-- Location: LABCELL_X11_Y3_N36
\barrel_shifter|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux21~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~0_combout\ & ( (!\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~0_combout\ & 
-- ( (!\counter_0_to_25|temp_count\(0) & (!\dipswitches[4]~input_o\ & (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ $ (!\dipswitches[3]~input_o\)))) # (\counter_0_to_25|temp_count\(0) & (!\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100110100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \counter_0_to_25|ALT_INV_temp_count\(0),
	datad => \ALT_INV_dipswitches[3]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\,
	combout => \barrel_shifter|Mux21~0_combout\);

-- Location: LABCELL_X11_Y5_N0
\barrel_shifter|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux21~1_combout\ = ( \barrel_shifter|Mux9~17_combout\ & ( \counter_0_to_25|temp_count\(4) & ( (!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux9~18_combout\)) # (\counter_0_to_25|temp_count\(3) & 
-- ((\barrel_shifter|Mux21~0_combout\))) ) ) ) # ( !\barrel_shifter|Mux9~17_combout\ & ( \counter_0_to_25|temp_count\(4) & ( (!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux9~18_combout\)) # (\counter_0_to_25|temp_count\(3) & 
-- ((\barrel_shifter|Mux21~0_combout\))) ) ) ) # ( \barrel_shifter|Mux9~17_combout\ & ( !\counter_0_to_25|temp_count\(4) & ( (\counter_0_to_25|temp_count\(3)) # (\barrel_shifter|Mux9~16_combout\) ) ) ) # ( !\barrel_shifter|Mux9~17_combout\ & ( 
-- !\counter_0_to_25|temp_count\(4) & ( (\barrel_shifter|Mux9~16_combout\ & !\counter_0_to_25|temp_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~18_combout\,
	datab => \barrel_shifter|ALT_INV_Mux21~0_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~16_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(3),
	datae => \barrel_shifter|ALT_INV_Mux9~17_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(4),
	combout => \barrel_shifter|Mux21~1_combout\);

-- Location: LABCELL_X11_Y3_N51
\barrel_shifter|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux20~0_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~0_combout\ & ( (\dipswitches[4]~input_o\ & !\dipswitches[3]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \dipswitch_decoder|OUTPUT~0_combout\ & 
-- ( (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\dipswitches[4]~input_o\ $ (!\counter_0_to_25|temp_count\(0))))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[4]~input_o\ & (!\dipswitches[3]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100000110000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[4]~input_o\,
	datab => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(0),
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\,
	combout => \barrel_shifter|Mux20~0_combout\);

-- Location: LABCELL_X11_Y3_N24
\barrel_shifter|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux20~1_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux20~0_combout\ & ( (\barrel_shifter|Mux0~3_combout\) # (\counter_0_to_25|temp_count\(3)) ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( 
-- \barrel_shifter|Mux20~0_combout\ & ( (!\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~2_combout\))) ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( 
-- !\barrel_shifter|Mux20~0_combout\ & ( (!\counter_0_to_25|temp_count\(3) & \barrel_shifter|Mux0~3_combout\) ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\barrel_shifter|Mux20~0_combout\ & ( (!\counter_0_to_25|temp_count\(3) & 
-- (\barrel_shifter|Mux0~1_combout\)) # (\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count\(3),
	datab => \barrel_shifter|ALT_INV_Mux0~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~2_combout\,
	datad => \barrel_shifter|ALT_INV_Mux0~3_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \barrel_shifter|ALT_INV_Mux20~0_combout\,
	combout => \barrel_shifter|Mux20~1_combout\);

-- Location: LABCELL_X11_Y3_N3
\barrel_shifter|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux19~0_combout\ = ( \dipswitches[4]~input_o\ & ( (\barrel_shifter|Mux9~10_combout\ & \counter_0_to_25|LessThan0~0_combout\) ) ) # ( !\dipswitches[4]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & 
-- (((\dipswitch_decoder|OUTPUT~0_combout\ & \dipswitches[3]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & (\barrel_shifter|Mux9~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~10_combout\,
	datab => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datac => \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \ALT_INV_dipswitches[4]~input_o\,
	combout => \barrel_shifter|Mux19~0_combout\);

-- Location: LABCELL_X10_Y4_N36
\barrel_shifter|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux19~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux19~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( 
-- \barrel_shifter|Mux9~9_combout\ ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux9~4_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( 
-- \barrel_shifter|Mux9~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~9_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux19~0_combout\,
	datad => \barrel_shifter|ALT_INV_Mux9~4_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(4),
	combout => \barrel_shifter|Mux19~1_combout\);

-- Location: LABCELL_X9_Y3_N6
\barrel_shifter|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux18~0_combout\ = ( \dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (((\dipswitch_decoder|OUTPUT~0_combout\ & \dipswitches[4]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- (\barrel_shifter|Mux9~32_combout\)) ) ) # ( !\dipswitches[3]~input_o\ & ( (\barrel_shifter|Mux9~32_combout\ & \counter_0_to_25|LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101001101010000010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~32_combout\,
	datab => \dipswitch_decoder|ALT_INV_OUTPUT~0_combout\,
	datac => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux18~0_combout\);

-- Location: LABCELL_X10_Y3_N0
\barrel_shifter|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux18~1_combout\ = ( \barrel_shifter|Mux0~5_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux18~0_combout\) ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( 
-- \counter_0_to_25|temp_count\(3) & ( (\barrel_shifter|Mux18~0_combout\ & \counter_0_to_25|temp_count\(4)) ) ) ) # ( \barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux0~4_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~6_combout\))) ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & 
-- (\barrel_shifter|Mux0~4_combout\)) # (\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux18~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~4_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~6_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \barrel_shifter|ALT_INV_Mux0~5_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux18~1_combout\);

-- Location: LABCELL_X11_Y5_N39
\encoder_26_to_5|INDEX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~0_combout\ = ( !\barrel_shifter|Mux18~1_combout\ & ( (!\barrel_shifter|Mux21~1_combout\ & (!\barrel_shifter|Mux20~1_combout\ & !\barrel_shifter|Mux19~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux21~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux20~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux19~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux18~1_combout\,
	combout => \encoder_26_to_5|INDEX~0_combout\);

-- Location: LABCELL_X10_Y5_N18
\encoder_26_to_5|INDEX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~5_combout\ = ( \encoder_26_to_5|INDEX~3_combout\ & ( \encoder_26_to_5|INDEX~0_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & ((!\encoder_26_to_5|INDEX~2_combout\) # (!\encoder_26_to_5|INDEX~4_combout\))) ) ) ) # ( 
-- !\encoder_26_to_5|INDEX~3_combout\ & ( \encoder_26_to_5|INDEX~0_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & !\encoder_26_to_5|INDEX~4_combout\) ) ) ) # ( \encoder_26_to_5|INDEX~3_combout\ & ( !\encoder_26_to_5|INDEX~0_combout\ & ( 
-- (!\barrel_shifter|Mux1~1_combout\ & (((!\encoder_26_to_5|INDEX~2_combout\) # (!\encoder_26_to_5|INDEX~4_combout\)) # (\encoder_26_to_5|INDEX~1_combout\))) ) ) ) # ( !\encoder_26_to_5|INDEX~3_combout\ & ( !\encoder_26_to_5|INDEX~0_combout\ & ( 
-- (!\barrel_shifter|Mux1~1_combout\ & !\encoder_26_to_5|INDEX~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011001100010011001100000000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~2_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~4_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~3_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~0_combout\,
	combout => \encoder_26_to_5|INDEX~5_combout\);

-- Location: LABCELL_X10_Y5_N3
\encoder_26_to_5|INDEX~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~22_combout\ = ( !\barrel_shifter|Mux4~1_combout\ & ( (!\barrel_shifter|Mux8~1_combout\ & (!\barrel_shifter|Mux6~1_combout\ & !\barrel_shifter|Mux2~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux8~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux6~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux2~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux4~1_combout\,
	combout => \encoder_26_to_5|INDEX~22_combout\);

-- Location: LABCELL_X10_Y5_N42
\encoder_26_to_5|INDEX~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~13_combout\ = ( !\barrel_shifter|Mux5~1_combout\ & ( (!\barrel_shifter|Mux7~1_combout\ & (!\barrel_shifter|Mux3~1_combout\ & !\barrel_shifter|Mux9~41_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux7~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~41_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux5~1_combout\,
	combout => \encoder_26_to_5|INDEX~13_combout\);

-- Location: LABCELL_X9_Y3_N48
\barrel_shifter|Mux0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~15_combout\ = ( \dipswitches[3]~input_o\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~21_combout\) ) ) # ( !\dipswitches[3]~input_o\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\barrel_shifter|Mux0~0_combout\ & 
-- ((\dipswitches[4]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & (((\barrel_shifter|Mux9~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~0_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~21_combout\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	dataf => \ALT_INV_dipswitches[3]~input_o\,
	combout => \barrel_shifter|Mux0~15_combout\);

-- Location: LABCELL_X10_Y3_N54
\barrel_shifter|Mux0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~16_combout\ = ( \barrel_shifter|Mux0~5_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~6_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~15_combout\)) 
-- ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( \counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4) & ((\barrel_shifter|Mux0~6_combout\))) # (\counter_0_to_25|temp_count\(4) & (\barrel_shifter|Mux0~15_combout\)) ) ) ) # ( 
-- \barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( (!\counter_0_to_25|temp_count\(4)) # (\barrel_shifter|Mux0~7_combout\) ) ) ) # ( !\barrel_shifter|Mux0~5_combout\ & ( !\counter_0_to_25|temp_count\(3) & ( 
-- (\barrel_shifter|Mux0~7_combout\ & \counter_0_to_25|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~7_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~15_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~6_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(4),
	datae => \barrel_shifter|ALT_INV_Mux0~5_combout\,
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux0~16_combout\);

-- Location: LABCELL_X10_Y5_N54
\encoder_26_to_5|INDEX[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX[3]~24_combout\ = ( \barrel_shifter|Mux0~16_combout\ & ( \encoder_26_to_5|INDEX~1_combout\ ) ) # ( !\barrel_shifter|Mux0~16_combout\ & ( \encoder_26_to_5|INDEX~1_combout\ & ( ((\encoder_26_to_5|INDEX~22_combout\ & 
-- (!\encoder_26_to_5|INDEX~2_combout\ & \encoder_26_to_5|INDEX~13_combout\))) # (\barrel_shifter|Mux1~1_combout\) ) ) ) # ( \barrel_shifter|Mux0~16_combout\ & ( !\encoder_26_to_5|INDEX~1_combout\ ) ) # ( !\barrel_shifter|Mux0~16_combout\ & ( 
-- !\encoder_26_to_5|INDEX~1_combout\ & ( ((\encoder_26_to_5|INDEX~22_combout\ & \encoder_26_to_5|INDEX~13_combout\)) # (\barrel_shifter|Mux1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111111111111111111100110011011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~22_combout\,
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~2_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~13_combout\,
	datae => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~1_combout\,
	combout => \encoder_26_to_5|INDEX[3]~24_combout\);

-- Location: LABCELL_X10_Y5_N15
\encoder_26_to_5|INDEX~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~19_combout\ = ( \barrel_shifter|Mux4~1_combout\ & ( (!\barrel_shifter|Mux2~1_combout\ & \barrel_shifter|Mux3~1_combout\) ) ) # ( !\barrel_shifter|Mux4~1_combout\ & ( !\barrel_shifter|Mux2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux2~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux4~1_combout\,
	combout => \encoder_26_to_5|INDEX~19_combout\);

-- Location: LABCELL_X10_Y5_N45
\encoder_26_to_5|INDEX~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~18_combout\ = ( !\barrel_shifter|Mux5~1_combout\ & ( (!\barrel_shifter|Mux3~1_combout\ & (((!\barrel_shifter|Mux7~1_combout\ & \barrel_shifter|Mux8~1_combout\)) # (\barrel_shifter|Mux6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100000011001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux7~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux6~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux8~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux5~1_combout\,
	combout => \encoder_26_to_5|INDEX~18_combout\);

-- Location: LABCELL_X10_Y5_N48
\encoder_26_to_5|INDEX~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~20_combout\ = ( !\encoder_26_to_5|INDEX~13_combout\ & ( \barrel_shifter|Mux10~1_combout\ & ( (\encoder_26_to_5|INDEX~19_combout\ & !\encoder_26_to_5|INDEX~18_combout\) ) ) ) # ( \encoder_26_to_5|INDEX~13_combout\ & ( 
-- !\barrel_shifter|Mux10~1_combout\ & ( (\encoder_26_to_5|INDEX~19_combout\ & (!\encoder_26_to_5|INDEX~18_combout\ & ((!\barrel_shifter|Mux12~1_combout\) # (\barrel_shifter|Mux11~1_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~13_combout\ & ( 
-- !\barrel_shifter|Mux10~1_combout\ & ( (\encoder_26_to_5|INDEX~19_combout\ & !\encoder_26_to_5|INDEX~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100010000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux11~1_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX~19_combout\,
	datac => \barrel_shifter|ALT_INV_Mux12~1_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~18_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~13_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux10~1_combout\,
	combout => \encoder_26_to_5|INDEX~20_combout\);

-- Location: LABCELL_X11_Y5_N15
\encoder_26_to_5|INDEX~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~16_combout\ = ( \barrel_shifter|Mux16~1_combout\ & ( (\barrel_shifter|Mux15~1_combout\ & !\barrel_shifter|Mux14~1_combout\) ) ) # ( !\barrel_shifter|Mux16~1_combout\ & ( (!\barrel_shifter|Mux14~1_combout\ & 
-- (((!\barrel_shifter|Mux18~1_combout\) # (\barrel_shifter|Mux15~1_combout\)) # (\barrel_shifter|Mux17~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000110111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux17~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux18~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux15~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux14~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux16~1_combout\,
	combout => \encoder_26_to_5|INDEX~16_combout\);

-- Location: LABCELL_X11_Y5_N42
\encoder_26_to_5|INDEX~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~15_combout\ = (!\barrel_shifter|Mux17~1_combout\ & (!\barrel_shifter|Mux15~1_combout\ & !\barrel_shifter|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux17~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux15~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux19~1_combout\,
	combout => \encoder_26_to_5|INDEX~15_combout\);

-- Location: LABCELL_X12_Y3_N24
\barrel_shifter|Mux9~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux9~43_combout\ = ( !\dipswitches[2]~input_o\ & ( (!\dipswitches[0]~input_o\ & !\dipswitches[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dipswitches[0]~input_o\,
	datad => \ALT_INV_dipswitches[1]~input_o\,
	dataf => \ALT_INV_dipswitches[2]~input_o\,
	combout => \barrel_shifter|Mux9~43_combout\);

-- Location: LABCELL_X12_Y3_N27
\barrel_shifter|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux23~0_combout\ = ( \barrel_shifter|Mux9~43_combout\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (!\dipswitches[4]~input_o\ & ((\dipswitches[3]~input_o\)))) # (\counter_0_to_25|LessThan0~0_combout\ & 
-- (((\barrel_shifter|Mux9~12_combout\)))) ) ) # ( !\barrel_shifter|Mux9~43_combout\ & ( (\counter_0_to_25|LessThan0~0_combout\ & \barrel_shifter|Mux9~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101100011010000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~12_combout\,
	datad => \ALT_INV_dipswitches[3]~input_o\,
	dataf => \barrel_shifter|ALT_INV_Mux9~43_combout\,
	combout => \barrel_shifter|Mux23~0_combout\);

-- Location: LABCELL_X10_Y4_N54
\barrel_shifter|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux23~1_combout\ = ( \counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux23~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( \counter_0_to_25|temp_count\(4) & ( 
-- \barrel_shifter|Mux9~39_combout\ ) ) ) # ( \counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux9~38_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(3) & ( !\counter_0_to_25|temp_count\(4) & ( 
-- \barrel_shifter|Mux9~37_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~39_combout\,
	datab => \barrel_shifter|ALT_INV_Mux9~37_combout\,
	datac => \barrel_shifter|ALT_INV_Mux9~38_combout\,
	datad => \barrel_shifter|ALT_INV_Mux23~0_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(3),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(4),
	combout => \barrel_shifter|Mux23~1_combout\);

-- Location: LABCELL_X9_Y3_N36
\barrel_shifter|Mux0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux0~14_combout\ = ( \counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~43_combout\ & ( (!\dipswitches[3]~input_o\ & \dipswitches[4]~input_o\) ) ) ) # ( !\counter_0_to_25|temp_count\(2) & ( \barrel_shifter|Mux9~43_combout\ & ( 
-- (!\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (\dipswitches[3]~input_o\ & (!\counter_0_to_25|temp_count\(0) $ (!\dipswitches[4]~input_o\)))) # (\counter_0_to_25|temp_count[1]~DUPLICATE_q\ & (((!\dipswitches[3]~input_o\ & \dipswitches[4]~input_o\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010110000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_0_to_25|ALT_INV_temp_count[1]~DUPLICATE_q\,
	datab => \counter_0_to_25|ALT_INV_temp_count\(0),
	datac => \ALT_INV_dipswitches[3]~input_o\,
	datad => \ALT_INV_dipswitches[4]~input_o\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(2),
	dataf => \barrel_shifter|ALT_INV_Mux9~43_combout\,
	combout => \barrel_shifter|Mux0~14_combout\);

-- Location: LABCELL_X10_Y3_N48
\barrel_shifter|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux24~0_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux0~8_combout\ & ( (!\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~10_combout\))) # (\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~14_combout\)) 
-- ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( \barrel_shifter|Mux0~8_combout\ & ( (!\counter_0_to_25|temp_count\(3)) # (\barrel_shifter|Mux0~9_combout\) ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( !\barrel_shifter|Mux0~8_combout\ & ( 
-- (!\counter_0_to_25|temp_count\(3) & ((\barrel_shifter|Mux0~10_combout\))) # (\counter_0_to_25|temp_count\(3) & (\barrel_shifter|Mux0~14_combout\)) ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\barrel_shifter|Mux0~8_combout\ & ( 
-- (\barrel_shifter|Mux0~9_combout\ & \counter_0_to_25|temp_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~14_combout\,
	datab => \barrel_shifter|ALT_INV_Mux0~9_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~10_combout\,
	datad => \counter_0_to_25|ALT_INV_temp_count\(3),
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \barrel_shifter|ALT_INV_Mux0~8_combout\,
	combout => \barrel_shifter|Mux24~0_combout\);

-- Location: LABCELL_X9_Y3_N18
\barrel_shifter|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux22~0_combout\ = ( \barrel_shifter|Mux9~43_combout\ & ( (!\counter_0_to_25|LessThan0~0_combout\ & (\dipswitches[3]~input_o\ & (\dipswitches[4]~input_o\))) # (\counter_0_to_25|LessThan0~0_combout\ & (((\barrel_shifter|Mux9~19_combout\)))) 
-- ) ) # ( !\barrel_shifter|Mux9~43_combout\ & ( (\barrel_shifter|Mux9~19_combout\ & \counter_0_to_25|LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dipswitches[3]~input_o\,
	datab => \ALT_INV_dipswitches[4]~input_o\,
	datac => \barrel_shifter|ALT_INV_Mux9~19_combout\,
	datad => \counter_0_to_25|ALT_INV_LessThan0~0_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux9~43_combout\,
	combout => \barrel_shifter|Mux22~0_combout\);

-- Location: LABCELL_X10_Y3_N42
\barrel_shifter|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \barrel_shifter|Mux22~1_combout\ = ( \counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux22~0_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( \counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux0~12_combout\ ) ) ) # ( \counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( \barrel_shifter|Mux0~13_combout\ ) ) ) # ( !\counter_0_to_25|temp_count\(4) & ( !\counter_0_to_25|temp_count\(3) & ( 
-- \barrel_shifter|Mux0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~12_combout\,
	datab => \barrel_shifter|ALT_INV_Mux22~0_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~13_combout\,
	datad => \barrel_shifter|ALT_INV_Mux0~11_combout\,
	datae => \counter_0_to_25|ALT_INV_temp_count\(4),
	dataf => \counter_0_to_25|ALT_INV_temp_count\(3),
	combout => \barrel_shifter|Mux22~1_combout\);

-- Location: LABCELL_X11_Y5_N36
\encoder_26_to_5|INDEX~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~14_combout\ = ( \barrel_shifter|Mux22~1_combout\ & ( (\barrel_shifter|Mux21~1_combout\ & !\barrel_shifter|Mux20~1_combout\) ) ) # ( !\barrel_shifter|Mux22~1_combout\ & ( (!\barrel_shifter|Mux20~1_combout\ & 
-- (((!\barrel_shifter|Mux24~0_combout\) # (\barrel_shifter|Mux23~1_combout\)) # (\barrel_shifter|Mux21~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux21~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux20~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux23~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux24~0_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux22~1_combout\,
	combout => \encoder_26_to_5|INDEX~14_combout\);

-- Location: LABCELL_X11_Y5_N18
\encoder_26_to_5|INDEX~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~17_combout\ = ( \encoder_26_to_5|INDEX~13_combout\ & ( \encoder_26_to_5|INDEX~14_combout\ & ( (!\barrel_shifter|Mux13~1_combout\ & (!\encoder_26_to_5|INDEX~16_combout\ & !\barrel_shifter|Mux11~1_combout\)) ) ) ) # ( 
-- \encoder_26_to_5|INDEX~13_combout\ & ( !\encoder_26_to_5|INDEX~14_combout\ & ( (!\barrel_shifter|Mux13~1_combout\ & (!\barrel_shifter|Mux11~1_combout\ & ((!\encoder_26_to_5|INDEX~16_combout\) # (\encoder_26_to_5|INDEX~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001010000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux13~1_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX~16_combout\,
	datac => \barrel_shifter|ALT_INV_Mux11~1_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~15_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~13_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~14_combout\,
	combout => \encoder_26_to_5|INDEX~17_combout\);

-- Location: LABCELL_X12_Y5_N9
\encoder_26_to_5|INDEX~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~21_combout\ = ( \encoder_26_to_5|INDEX~17_combout\ & ( !\barrel_shifter|Mux1~1_combout\ ) ) # ( !\encoder_26_to_5|INDEX~17_combout\ & ( (!\encoder_26_to_5|INDEX~20_combout\ & !\barrel_shifter|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~20_combout\,
	datac => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~17_combout\,
	combout => \encoder_26_to_5|INDEX~21_combout\);

-- Location: LABCELL_X11_Y5_N12
\encoder_26_to_5|INDEX~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~23_combout\ = ( \encoder_26_to_5|INDEX~22_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & \encoder_26_to_5|INDEX~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~13_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~22_combout\,
	combout => \encoder_26_to_5|INDEX~23_combout\);

-- Location: LABCELL_X11_Y5_N30
\encoder_26_to_5|INDEX~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~7_combout\ = ( \barrel_shifter|Mux19~1_combout\ & ( \barrel_shifter|Mux16~1_combout\ & ( (!\barrel_shifter|Mux14~1_combout\ & !\barrel_shifter|Mux15~1_combout\) ) ) ) # ( !\barrel_shifter|Mux19~1_combout\ & ( 
-- \barrel_shifter|Mux16~1_combout\ & ( (!\barrel_shifter|Mux14~1_combout\ & !\barrel_shifter|Mux15~1_combout\) ) ) ) # ( \barrel_shifter|Mux19~1_combout\ & ( !\barrel_shifter|Mux16~1_combout\ & ( (\barrel_shifter|Mux17~1_combout\ & 
-- (!\barrel_shifter|Mux14~1_combout\ & !\barrel_shifter|Mux15~1_combout\)) ) ) ) # ( !\barrel_shifter|Mux19~1_combout\ & ( !\barrel_shifter|Mux16~1_combout\ & ( (!\barrel_shifter|Mux14~1_combout\ & (!\barrel_shifter|Mux15~1_combout\ & 
-- ((!\barrel_shifter|Mux18~1_combout\) # (\barrel_shifter|Mux17~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000010100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux17~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux18~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux14~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux15~1_combout\,
	datae => \barrel_shifter|ALT_INV_Mux19~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux16~1_combout\,
	combout => \encoder_26_to_5|INDEX~7_combout\);

-- Location: LABCELL_X10_Y5_N24
\encoder_26_to_5|INDEX~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~9_combout\ = ( !\barrel_shifter|Mux7~1_combout\ & ( \barrel_shifter|Mux11~1_combout\ & ( (!\barrel_shifter|Mux6~1_combout\ & ((\barrel_shifter|Mux8~1_combout\) # (\barrel_shifter|Mux9~41_combout\))) ) ) ) # ( 
-- !\barrel_shifter|Mux7~1_combout\ & ( !\barrel_shifter|Mux11~1_combout\ & ( (!\barrel_shifter|Mux6~1_combout\ & (((!\barrel_shifter|Mux10~1_combout\) # (\barrel_shifter|Mux8~1_combout\)) # (\barrel_shifter|Mux9~41_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100000000000000000001001100010011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~41_combout\,
	datab => \barrel_shifter|ALT_INV_Mux6~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux8~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux10~1_combout\,
	datae => \barrel_shifter|ALT_INV_Mux7~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux11~1_combout\,
	combout => \encoder_26_to_5|INDEX~9_combout\);

-- Location: LABCELL_X10_Y5_N39
\encoder_26_to_5|INDEX~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~8_combout\ = (!\barrel_shifter|Mux9~41_combout\ & (!\barrel_shifter|Mux8~1_combout\ & (!\barrel_shifter|Mux13~1_combout\ & !\barrel_shifter|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux9~41_combout\,
	datab => \barrel_shifter|ALT_INV_Mux8~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux13~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux12~1_combout\,
	combout => \encoder_26_to_5|INDEX~8_combout\);

-- Location: LABCELL_X11_Y5_N54
\encoder_26_to_5|INDEX~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~6_combout\ = ( \barrel_shifter|Mux23~1_combout\ & ( \barrel_shifter|Mux22~1_combout\ & ( (!\barrel_shifter|Mux17~1_combout\ & (!\barrel_shifter|Mux20~1_combout\ & (!\barrel_shifter|Mux21~1_combout\ & 
-- !\barrel_shifter|Mux16~1_combout\))) ) ) ) # ( !\barrel_shifter|Mux23~1_combout\ & ( \barrel_shifter|Mux22~1_combout\ & ( (!\barrel_shifter|Mux17~1_combout\ & (!\barrel_shifter|Mux20~1_combout\ & (!\barrel_shifter|Mux21~1_combout\ & 
-- !\barrel_shifter|Mux16~1_combout\))) ) ) ) # ( \barrel_shifter|Mux23~1_combout\ & ( !\barrel_shifter|Mux22~1_combout\ & ( (!\barrel_shifter|Mux17~1_combout\ & (!\barrel_shifter|Mux20~1_combout\ & (!\barrel_shifter|Mux21~1_combout\ & 
-- !\barrel_shifter|Mux16~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux17~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux20~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux21~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux16~1_combout\,
	datae => \barrel_shifter|ALT_INV_Mux23~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux22~1_combout\,
	combout => \encoder_26_to_5|INDEX~6_combout\);

-- Location: LABCELL_X10_Y5_N30
\encoder_26_to_5|INDEX~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~10_combout\ = ( \encoder_26_to_5|INDEX~6_combout\ & ( !\barrel_shifter|Mux4~1_combout\ & ( (!\barrel_shifter|Mux5~1_combout\ & ((!\encoder_26_to_5|INDEX~9_combout\) # (\encoder_26_to_5|INDEX~8_combout\))) ) ) ) # ( 
-- !\encoder_26_to_5|INDEX~6_combout\ & ( !\barrel_shifter|Mux4~1_combout\ & ( (!\barrel_shifter|Mux5~1_combout\ & ((!\encoder_26_to_5|INDEX~9_combout\) # ((!\encoder_26_to_5|INDEX~7_combout\ & \encoder_26_to_5|INDEX~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001000110000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~7_combout\,
	datab => \barrel_shifter|ALT_INV_Mux5~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~9_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~8_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~6_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux4~1_combout\,
	combout => \encoder_26_to_5|INDEX~10_combout\);

-- Location: LABCELL_X10_Y5_N9
\encoder_26_to_5|INDEX~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~11_combout\ = ( !\barrel_shifter|Mux1~1_combout\ & ( (\barrel_shifter|Mux2~1_combout\) # (\barrel_shifter|Mux3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	datad => \barrel_shifter|ALT_INV_Mux2~1_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	combout => \encoder_26_to_5|INDEX~11_combout\);

-- Location: LABCELL_X11_Y5_N6
\encoder_26_to_5|INDEX~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~12_combout\ = (!\encoder_26_to_5|INDEX~11_combout\ & ((!\encoder_26_to_5|INDEX~10_combout\) # (\barrel_shifter|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~10_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~11_combout\,
	combout => \encoder_26_to_5|INDEX~12_combout\);

-- Location: LABCELL_X12_Y5_N12
\seven_seg_disp_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux6~0_combout\ = ( \encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & ((!\encoder_26_to_5|INDEX~5_combout\ & ((\encoder_26_to_5|INDEX~21_combout\) # 
-- (\encoder_26_to_5|INDEX[3]~24_combout\))) # (\encoder_26_to_5|INDEX~5_combout\ & (\encoder_26_to_5|INDEX[3]~24_combout\ & \encoder_26_to_5|INDEX~21_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( 
-- (!\barrel_shifter|Mux0~16_combout\ & ((!\encoder_26_to_5|INDEX~21_combout\) # (\encoder_26_to_5|INDEX~5_combout\))) ) ) ) # ( \encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & 
-- ((!\encoder_26_to_5|INDEX[3]~24_combout\ & ((\encoder_26_to_5|INDEX~21_combout\))) # (\encoder_26_to_5|INDEX[3]~24_combout\ & (!\encoder_26_to_5|INDEX~5_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( 
-- (!\barrel_shifter|Mux0~16_combout\ & (((\encoder_26_to_5|INDEX~21_combout\) # (\encoder_26_to_5|INDEX[3]~24_combout\)) # (\encoder_26_to_5|INDEX~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000001000001110000011110000010100000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~23_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	combout => \seven_seg_disp_decoder|Mux6~0_combout\);

-- Location: LABCELL_X12_Y5_N48
\seven_seg_disp_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux5~0_combout\ = ( \encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( (!\encoder_26_to_5|INDEX~5_combout\ & (!\encoder_26_to_5|INDEX[3]~24_combout\ $ (((!\barrel_shifter|Mux0~16_combout\ & 
-- !\encoder_26_to_5|INDEX~21_combout\))))) # (\encoder_26_to_5|INDEX~5_combout\ & ((!\encoder_26_to_5|INDEX[3]~24_combout\) # ((!\barrel_shifter|Mux0~16_combout\ & \encoder_26_to_5|INDEX~21_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( 
-- \encoder_26_to_5|INDEX~12_combout\ & ( !\encoder_26_to_5|INDEX[3]~24_combout\ $ (((\encoder_26_to_5|INDEX~5_combout\ & !\barrel_shifter|Mux0~16_combout\))) ) ) ) # ( \encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( 
-- (!\encoder_26_to_5|INDEX~5_combout\ & ((!\encoder_26_to_5|INDEX[3]~24_combout\ & ((!\encoder_26_to_5|INDEX~21_combout\) # (\barrel_shifter|Mux0~16_combout\))) # (\encoder_26_to_5|INDEX[3]~24_combout\ & (!\barrel_shifter|Mux0~16_combout\)))) # 
-- (\encoder_26_to_5|INDEX~5_combout\ & (!\encoder_26_to_5|INDEX[3]~24_combout\)) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( (!\encoder_26_to_5|INDEX[3]~24_combout\ & ((!\encoder_26_to_5|INDEX~5_combout\) # 
-- ((!\encoder_26_to_5|INDEX~21_combout\) # (\barrel_shifter|Mux0~16_combout\)))) # (\encoder_26_to_5|INDEX[3]~24_combout\ & (((!\barrel_shifter|Mux0~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010111100111011000110110010011100100111000110110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~23_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	combout => \seven_seg_disp_decoder|Mux5~0_combout\);

-- Location: LABCELL_X12_Y5_N24
\seven_seg_disp_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux4~0_combout\ = ( \encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( ((!\encoder_26_to_5|INDEX~5_combout\ & (\encoder_26_to_5|INDEX[3]~24_combout\ & !\encoder_26_to_5|INDEX~21_combout\)) # 
-- (\encoder_26_to_5|INDEX~5_combout\ & (!\encoder_26_to_5|INDEX[3]~24_combout\))) # (\barrel_shifter|Mux0~16_combout\) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( ((!\encoder_26_to_5|INDEX~5_combout\ & 
-- ((\encoder_26_to_5|INDEX~21_combout\))) # (\encoder_26_to_5|INDEX~5_combout\ & (\encoder_26_to_5|INDEX[3]~24_combout\))) # (\barrel_shifter|Mux0~16_combout\) ) ) ) # ( \encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( 
-- ((!\encoder_26_to_5|INDEX~21_combout\ & (!\encoder_26_to_5|INDEX~5_combout\)) # (\encoder_26_to_5|INDEX~21_combout\ & ((\encoder_26_to_5|INDEX[3]~24_combout\)))) # (\barrel_shifter|Mux0~16_combout\) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( 
-- !\encoder_26_to_5|INDEX~12_combout\ & ( (((!\encoder_26_to_5|INDEX~5_combout\ & \encoder_26_to_5|INDEX~21_combout\)) # (\barrel_shifter|Mux0~16_combout\)) # (\encoder_26_to_5|INDEX[3]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111101011110011111100011111101111110110111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~23_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	combout => \seven_seg_disp_decoder|Mux4~0_combout\);

-- Location: LABCELL_X12_Y5_N30
\seven_seg_disp_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux3~0_combout\ = ( \encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & ((!\encoder_26_to_5|INDEX~5_combout\ & ((!\encoder_26_to_5|INDEX~21_combout\))) # 
-- (\encoder_26_to_5|INDEX~5_combout\ & ((\encoder_26_to_5|INDEX~21_combout\) # (\encoder_26_to_5|INDEX[3]~24_combout\))))) # (\barrel_shifter|Mux0~16_combout\ & (((!\encoder_26_to_5|INDEX[3]~24_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( 
-- \encoder_26_to_5|INDEX~12_combout\ & ( (!\encoder_26_to_5|INDEX[3]~24_combout\ & (((\encoder_26_to_5|INDEX~21_combout\) # (\barrel_shifter|Mux0~16_combout\)))) # (\encoder_26_to_5|INDEX[3]~24_combout\ & (\encoder_26_to_5|INDEX~5_combout\ & 
-- (!\barrel_shifter|Mux0~16_combout\))) ) ) ) # ( \encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & ((!\encoder_26_to_5|INDEX~5_combout\ & (\encoder_26_to_5|INDEX[3]~24_combout\ & 
-- !\encoder_26_to_5|INDEX~21_combout\)) # (\encoder_26_to_5|INDEX~5_combout\ & ((\encoder_26_to_5|INDEX~21_combout\))))) # (\barrel_shifter|Mux0~16_combout\ & (((!\encoder_26_to_5|INDEX[3]~24_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( 
-- !\encoder_26_to_5|INDEX~12_combout\ & ( (!\encoder_26_to_5|INDEX[3]~24_combout\ & (((\encoder_26_to_5|INDEX~5_combout\ & \encoder_26_to_5|INDEX~21_combout\)) # (\barrel_shifter|Mux0~16_combout\))) # (\encoder_26_to_5|INDEX[3]~24_combout\ & 
-- (((!\barrel_shifter|Mux0~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001111100001011000101110000011100110111001011110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~23_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	combout => \seven_seg_disp_decoder|Mux3~0_combout\);

-- Location: LABCELL_X11_Y5_N9
\encoder_26_to_5|INDEX[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX[4]~25_combout\ = ( \barrel_shifter|Mux0~16_combout\ ) # ( !\barrel_shifter|Mux0~16_combout\ & ( ((!\encoder_26_to_5|INDEX~22_combout\) # (!\encoder_26_to_5|INDEX~13_combout\)) # (\barrel_shifter|Mux1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~22_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~13_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	combout => \encoder_26_to_5|INDEX[4]~25_combout\);

-- Location: LABCELL_X11_Y5_N24
\encoder_26_to_5|INDEX[1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX[1]~27_combout\ = ( !\barrel_shifter|Mux0~16_combout\ & ( ((!\barrel_shifter|Mux1~1_combout\ & \encoder_26_to_5|INDEX~10_combout\)) # (\encoder_26_to_5|INDEX~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~11_combout\,
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~10_combout\,
	dataf => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	combout => \encoder_26_to_5|INDEX[1]~27_combout\);

-- Location: LABCELL_X12_Y5_N45
\encoder_26_to_5|INDEX[2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX[2]~28_combout\ = ( \encoder_26_to_5|INDEX~5_combout\ & ( !\barrel_shifter|Mux0~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	combout => \encoder_26_to_5|INDEX[2]~28_combout\);

-- Location: LABCELL_X12_Y5_N39
\encoder_26_to_5|INDEX[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX[0]~26_combout\ = ( \encoder_26_to_5|INDEX~17_combout\ & ( (!\barrel_shifter|Mux1~1_combout\) # (\barrel_shifter|Mux0~16_combout\) ) ) # ( !\encoder_26_to_5|INDEX~17_combout\ & ( ((!\barrel_shifter|Mux1~1_combout\ & 
-- !\encoder_26_to_5|INDEX~20_combout\)) # (\barrel_shifter|Mux0~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010101111101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datac => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~20_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~17_combout\,
	combout => \encoder_26_to_5|INDEX[0]~26_combout\);

-- Location: LABCELL_X12_Y5_N36
\seven_seg_disp_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux2~0_combout\ = ( \encoder_26_to_5|INDEX[0]~26_combout\ & ( (!\encoder_26_to_5|INDEX[1]~27_combout\ & ((!\encoder_26_to_5|INDEX[2]~28_combout\))) # (\encoder_26_to_5|INDEX[1]~27_combout\ & 
-- (!\encoder_26_to_5|INDEX[3]~24_combout\)) ) ) # ( !\encoder_26_to_5|INDEX[0]~26_combout\ & ( (!\encoder_26_to_5|INDEX[3]~24_combout\ & ((!\encoder_26_to_5|INDEX[1]~27_combout\) # (\encoder_26_to_5|INDEX[2]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000011111100001100001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \encoder_26_to_5|ALT_INV_INDEX[1]~27_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX[2]~28_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX[0]~26_combout\,
	combout => \seven_seg_disp_decoder|Mux2~0_combout\);

-- Location: LABCELL_X12_Y5_N6
\seven_seg_disp_decoder|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux2~1_combout\ = (\encoder_26_to_5|INDEX[4]~25_combout\ & !\seven_seg_disp_decoder|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \encoder_26_to_5|ALT_INV_INDEX[4]~25_combout\,
	datac => \seven_seg_disp_decoder|ALT_INV_Mux2~0_combout\,
	combout => \seven_seg_disp_decoder|Mux2~1_combout\);

-- Location: LABCELL_X12_Y5_N18
\seven_seg_disp_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux1~0_combout\ = ( \encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( (\encoder_26_to_5|INDEX[3]~24_combout\ & ((\encoder_26_to_5|INDEX~21_combout\) # (\barrel_shifter|Mux0~16_combout\))) ) ) ) # ( 
-- !\encoder_26_to_5|INDEX~23_combout\ & ( \encoder_26_to_5|INDEX~12_combout\ & ( !\encoder_26_to_5|INDEX[3]~24_combout\ $ ((((\encoder_26_to_5|INDEX~21_combout\) # (\barrel_shifter|Mux0~16_combout\)) # (\encoder_26_to_5|INDEX~5_combout\))) ) ) ) # ( 
-- \encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( (!\encoder_26_to_5|INDEX[3]~24_combout\ & (!\encoder_26_to_5|INDEX~5_combout\ & (!\barrel_shifter|Mux0~16_combout\ & \encoder_26_to_5|INDEX~21_combout\))) # 
-- (\encoder_26_to_5|INDEX[3]~24_combout\ & (((\barrel_shifter|Mux0~16_combout\)))) ) ) ) # ( !\encoder_26_to_5|INDEX~23_combout\ & ( !\encoder_26_to_5|INDEX~12_combout\ & ( ((\encoder_26_to_5|INDEX~5_combout\ & (!\barrel_shifter|Mux0~16_combout\ & 
-- !\encoder_26_to_5|INDEX~21_combout\))) # (\encoder_26_to_5|INDEX[3]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011000000111000001110010011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~5_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~23_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	combout => \seven_seg_disp_decoder|Mux1~0_combout\);

-- Location: LABCELL_X12_Y5_N54
\seven_seg_disp_decoder|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux4~1_combout\ = ( \encoder_26_to_5|INDEX~20_combout\ & ( \encoder_26_to_5|INDEX~17_combout\ & ( (!\barrel_shifter|Mux1~1_combout\) # ((!\encoder_26_to_5|INDEX~11_combout\) # (\barrel_shifter|Mux0~16_combout\)) ) ) ) # ( 
-- !\encoder_26_to_5|INDEX~20_combout\ & ( \encoder_26_to_5|INDEX~17_combout\ & ( (!\barrel_shifter|Mux1~1_combout\) # ((!\encoder_26_to_5|INDEX~11_combout\) # (\barrel_shifter|Mux0~16_combout\)) ) ) ) # ( \encoder_26_to_5|INDEX~20_combout\ & ( 
-- !\encoder_26_to_5|INDEX~17_combout\ & ( ((!\encoder_26_to_5|INDEX~11_combout\ & ((!\encoder_26_to_5|INDEX~10_combout\) # (\barrel_shifter|Mux1~1_combout\)))) # (\barrel_shifter|Mux0~16_combout\) ) ) ) # ( !\encoder_26_to_5|INDEX~20_combout\ & ( 
-- !\encoder_26_to_5|INDEX~17_combout\ & ( (!\barrel_shifter|Mux1~1_combout\) # ((!\encoder_26_to_5|INDEX~11_combout\) # (\barrel_shifter|Mux0~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111101111110000111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~10_combout\,
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~11_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~20_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~17_combout\,
	combout => \seven_seg_disp_decoder|Mux4~1_combout\);

-- Location: LABCELL_X10_Y5_N6
\encoder_26_to_5|INDEX~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder_26_to_5|INDEX~29_combout\ = ( \encoder_26_to_5|INDEX~0_combout\ & ( (\encoder_26_to_5|INDEX~4_combout\ & ((!\encoder_26_to_5|INDEX~3_combout\) # (\encoder_26_to_5|INDEX~2_combout\))) ) ) # ( !\encoder_26_to_5|INDEX~0_combout\ & ( 
-- (\encoder_26_to_5|INDEX~4_combout\ & ((!\encoder_26_to_5|INDEX~3_combout\) # ((!\encoder_26_to_5|INDEX~1_combout\ & \encoder_26_to_5|INDEX~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110010001000100011001000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_26_to_5|ALT_INV_INDEX~3_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX~4_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX~1_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX~2_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~0_combout\,
	combout => \encoder_26_to_5|INDEX~29_combout\);

-- Location: LABCELL_X13_Y5_N30
\seven_seg_disp_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux0~0_combout\ = ( \encoder_26_to_5|INDEX~29_combout\ & ( \encoder_26_to_5|INDEX~10_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & !\barrel_shifter|Mux0~16_combout\) ) ) ) # ( !\encoder_26_to_5|INDEX~29_combout\ & ( 
-- \encoder_26_to_5|INDEX~10_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & !\barrel_shifter|Mux0~16_combout\) ) ) ) # ( \encoder_26_to_5|INDEX~29_combout\ & ( !\encoder_26_to_5|INDEX~10_combout\ & ( (\barrel_shifter|Mux3~1_combout\ & 
-- (!\barrel_shifter|Mux1~1_combout\ & !\barrel_shifter|Mux0~16_combout\)) ) ) ) # ( !\encoder_26_to_5|INDEX~29_combout\ & ( !\encoder_26_to_5|INDEX~10_combout\ & ( (!\barrel_shifter|Mux1~1_combout\ & !\barrel_shifter|Mux0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000010000000100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux3~1_combout\,
	datab => \barrel_shifter|ALT_INV_Mux1~1_combout\,
	datac => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX~29_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~10_combout\,
	combout => \seven_seg_disp_decoder|Mux0~0_combout\);

-- Location: LABCELL_X12_Y5_N42
\seven_seg_disp_decoder|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux4~2_combout\ = ( \encoder_26_to_5|INDEX~21_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & !\encoder_26_to_5|INDEX~12_combout\) ) ) # ( !\encoder_26_to_5|INDEX~21_combout\ & ( (!\barrel_shifter|Mux0~16_combout\ & 
-- !\encoder_26_to_5|INDEX[2]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \barrel_shifter|ALT_INV_Mux0~16_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX~12_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX[2]~28_combout\,
	dataf => \encoder_26_to_5|ALT_INV_INDEX~21_combout\,
	combout => \seven_seg_disp_decoder|Mux4~2_combout\);

-- Location: LABCELL_X12_Y5_N0
\seven_seg_disp_decoder|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \seven_seg_disp_decoder|Mux0~1_combout\ = ( !\encoder_26_to_5|INDEX[3]~24_combout\ & ( (!\encoder_26_to_5|INDEX[4]~25_combout\ & (!\seven_seg_disp_decoder|Mux4~1_combout\)) # (\encoder_26_to_5|INDEX[4]~25_combout\ & 
-- (((!\seven_seg_disp_decoder|Mux4~2_combout\)))) ) ) # ( \encoder_26_to_5|INDEX[3]~24_combout\ & ( (!\encoder_26_to_5|INDEX[4]~25_combout\ & ((!\encoder_26_to_5|INDEX[2]~28_combout\ & (\seven_seg_disp_decoder|Mux4~1_combout\)) # 
-- (\encoder_26_to_5|INDEX[2]~28_combout\ & (((!\encoder_26_to_5|INDEX[0]~26_combout\)))))) # (\encoder_26_to_5|INDEX[4]~25_combout\ & ((((\seven_seg_disp_decoder|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011100010111000010011000100000010111000101110000111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \seven_seg_disp_decoder|ALT_INV_Mux4~1_combout\,
	datab => \encoder_26_to_5|ALT_INV_INDEX[4]~25_combout\,
	datac => \encoder_26_to_5|ALT_INV_INDEX[2]~28_combout\,
	datad => \encoder_26_to_5|ALT_INV_INDEX[0]~26_combout\,
	datae => \encoder_26_to_5|ALT_INV_INDEX[3]~24_combout\,
	dataf => \seven_seg_disp_decoder|ALT_INV_Mux0~0_combout\,
	datag => \seven_seg_disp_decoder|ALT_INV_Mux4~2_combout\,
	combout => \seven_seg_disp_decoder|Mux0~1_combout\);
END structure;


