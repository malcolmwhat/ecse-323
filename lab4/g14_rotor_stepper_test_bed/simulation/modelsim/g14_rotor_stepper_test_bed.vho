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

-- DATE "03/24/2016 12:50:45"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	g14_rotor_stepper_test_bed IS
    PORT (
	clock : IN std_logic;
	init : IN std_logic;
	seven_seg_l : OUT std_logic_vector(6 DOWNTO 0);
	seven_seg_m : OUT std_logic_vector(6 DOWNTO 0);
	seven_seg_r : OUT std_logic_vector(6 DOWNTO 0)
	);
END g14_rotor_stepper_test_bed;

-- Design Ports Information
-- seven_seg_l[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_l[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[5]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_m[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seven_seg_r[6]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- init	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_rotor_stepper_test_bed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_seven_seg_l : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_seg_m : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_seg_r : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \left_counter|temp_count~1_combout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\ : std_logic;
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
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \pulse_gen|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s2_221~combout\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s2~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|Selector16~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s3_211~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s3~q\ : std_logic;
SIGNAL \right_counter|temp_count~1_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s0~feeder_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s0~q\ : std_logic;
SIGNAL \middle_counter|temp_count~1_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|Selector11~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s4_201~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s4~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr6~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s6_181~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s6~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr7~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|en_m~combout\ : std_logic;
SIGNAL \middle_counter|temp_count~2_combout\ : std_logic;
SIGNAL \middle_counter|temp_count~3_combout\ : std_logic;
SIGNAL \middle_counter|temp_count~0_combout\ : std_logic;
SIGNAL \middle_counter|temp_count~4_combout\ : std_logic;
SIGNAL \middle_comparator|Equal0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|Selector8~1_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s7_171~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s7~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr4~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr2~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|en_r~combout\ : std_logic;
SIGNAL \right_counter|temp_count~2_combout\ : std_logic;
SIGNAL \right_counter|temp_count~4_combout\ : std_logic;
SIGNAL \right_counter|temp_count~3_combout\ : std_logic;
SIGNAL \right_counter|temp_count~0_combout\ : std_logic;
SIGNAL \right_comparator|Equal0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|Selector8~2_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s5_191~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s5~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr2~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|next_state.s1_231~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|current_state.s1~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|load~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|WideOr8~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|en_l~combout\ : std_logic;
SIGNAL \left_counter|temp_count~3_combout\ : std_logic;
SIGNAL \left_counter|temp_count~0_combout\ : std_logic;
SIGNAL \left_counter|temp_count~4_combout\ : std_logic;
SIGNAL \left_counter|temp_count~2_combout\ : std_logic;
SIGNAL \left_led_out|Mux6~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux5~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux4~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux3~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux2~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux1~0_combout\ : std_logic;
SIGNAL \left_led_out|Mux0~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux6~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux5~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux4~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux3~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux2~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux1~0_combout\ : std_logic;
SIGNAL \middle_led_out|Mux0~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux6~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux5~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux4~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux3~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux2~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux1~0_combout\ : std_logic;
SIGNAL \right_led_out|Mux0~0_combout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \left_counter|temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \middle_counter|temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \right_counter|temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pulse_gen|down_counter|auto_generated|ALT_INV_counter_comb_bita24~1_sumout\ : std_logic;
SIGNAL \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_init~input_o\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s3_211~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s2_221~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s4_201~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s5_191~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s7_171~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s6_181~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_next_state.s1_231~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_en_r~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_en_m~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_en_l~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_load~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \middle_comparator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \right_comparator|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s3~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s2~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s4~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s5~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s7~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s6~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s0~q\ : std_logic;
SIGNAL \rotor_stepper_fsm|ALT_INV_current_state.s1~q\ : std_logic;
SIGNAL \right_counter|ALT_INV_temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \middle_counter|ALT_INV_temp_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \left_counter|ALT_INV_temp_count\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_init <= init;
seven_seg_l <= ww_seven_seg_l;
seven_seg_m <= ww_seven_seg_m;
seven_seg_r <= ww_seven_seg_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\ALT_INV_init~input_o\ <= NOT \init~input_o\;
\rotor_stepper_fsm|ALT_INV_next_state.s3_211~combout\ <= NOT \rotor_stepper_fsm|next_state.s3_211~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s2_221~combout\ <= NOT \rotor_stepper_fsm|next_state.s2_221~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s4_201~combout\ <= NOT \rotor_stepper_fsm|next_state.s4_201~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s5_191~combout\ <= NOT \rotor_stepper_fsm|next_state.s5_191~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s7_171~combout\ <= NOT \rotor_stepper_fsm|next_state.s7_171~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s6_181~combout\ <= NOT \rotor_stepper_fsm|next_state.s6_181~combout\;
\rotor_stepper_fsm|ALT_INV_next_state.s1_231~combout\ <= NOT \rotor_stepper_fsm|next_state.s1_231~combout\;
\rotor_stepper_fsm|ALT_INV_en_r~combout\ <= NOT \rotor_stepper_fsm|en_r~combout\;
\rotor_stepper_fsm|ALT_INV_en_m~combout\ <= NOT \rotor_stepper_fsm|en_m~combout\;
\rotor_stepper_fsm|ALT_INV_en_l~combout\ <= NOT \rotor_stepper_fsm|en_l~combout\;
\rotor_stepper_fsm|ALT_INV_load~combout\ <= NOT \rotor_stepper_fsm|load~combout\;
\rotor_stepper_fsm|ALT_INV_Selector11~0_combout\ <= NOT \rotor_stepper_fsm|Selector11~0_combout\;
\rotor_stepper_fsm|ALT_INV_Selector8~2_combout\ <= NOT \rotor_stepper_fsm|Selector8~2_combout\;
\rotor_stepper_fsm|ALT_INV_Selector8~1_combout\ <= NOT \rotor_stepper_fsm|Selector8~1_combout\;
\rotor_stepper_fsm|ALT_INV_Selector8~0_combout\ <= NOT \rotor_stepper_fsm|Selector8~0_combout\;
\middle_comparator|ALT_INV_Equal0~0_combout\ <= NOT \middle_comparator|Equal0~0_combout\;
\right_comparator|ALT_INV_Equal0~0_combout\ <= NOT \right_comparator|Equal0~0_combout\;
\rotor_stepper_fsm|ALT_INV_Selector16~0_combout\ <= NOT \rotor_stepper_fsm|Selector16~0_combout\;
\pulse_gen|ALT_INV_Equal0~4_combout\ <= NOT \pulse_gen|Equal0~4_combout\;
\pulse_gen|ALT_INV_Equal0~3_combout\ <= NOT \pulse_gen|Equal0~3_combout\;
\pulse_gen|ALT_INV_Equal0~2_combout\ <= NOT \pulse_gen|Equal0~2_combout\;
\pulse_gen|ALT_INV_Equal0~1_combout\ <= NOT \pulse_gen|Equal0~1_combout\;
\pulse_gen|ALT_INV_Equal0~0_combout\ <= NOT \pulse_gen|Equal0~0_combout\;
\rotor_stepper_fsm|ALT_INV_WideOr2~combout\ <= NOT \rotor_stepper_fsm|WideOr2~combout\;
\rotor_stepper_fsm|ALT_INV_WideOr4~combout\ <= NOT \rotor_stepper_fsm|WideOr4~combout\;
\rotor_stepper_fsm|ALT_INV_WideOr2~0_combout\ <= NOT \rotor_stepper_fsm|WideOr2~0_combout\;
\rotor_stepper_fsm|ALT_INV_WideOr6~combout\ <= NOT \rotor_stepper_fsm|WideOr6~combout\;
\rotor_stepper_fsm|ALT_INV_current_state.s3~q\ <= NOT \rotor_stepper_fsm|current_state.s3~q\;
\rotor_stepper_fsm|ALT_INV_current_state.s2~q\ <= NOT \rotor_stepper_fsm|current_state.s2~q\;
\rotor_stepper_fsm|ALT_INV_current_state.s4~q\ <= NOT \rotor_stepper_fsm|current_state.s4~q\;
\rotor_stepper_fsm|ALT_INV_WideOr7~combout\ <= NOT \rotor_stepper_fsm|WideOr7~combout\;
\rotor_stepper_fsm|ALT_INV_current_state.s5~q\ <= NOT \rotor_stepper_fsm|current_state.s5~q\;
\rotor_stepper_fsm|ALT_INV_current_state.s7~q\ <= NOT \rotor_stepper_fsm|current_state.s7~q\;
\rotor_stepper_fsm|ALT_INV_WideOr8~0_combout\ <= NOT \rotor_stepper_fsm|WideOr8~0_combout\;
\rotor_stepper_fsm|ALT_INV_current_state.s6~q\ <= NOT \rotor_stepper_fsm|current_state.s6~q\;
\rotor_stepper_fsm|ALT_INV_WideOr0~0_combout\ <= NOT \rotor_stepper_fsm|WideOr0~0_combout\;
\rotor_stepper_fsm|ALT_INV_current_state.s0~q\ <= NOT \rotor_stepper_fsm|current_state.s0~q\;
\rotor_stepper_fsm|ALT_INV_current_state.s1~q\ <= NOT \rotor_stepper_fsm|current_state.s1~q\;
\right_counter|ALT_INV_temp_count\(3) <= NOT \right_counter|temp_count\(3);
\right_counter|ALT_INV_temp_count\(4) <= NOT \right_counter|temp_count\(4);
\right_counter|ALT_INV_temp_count\(0) <= NOT \right_counter|temp_count\(0);
\right_counter|ALT_INV_temp_count\(2) <= NOT \right_counter|temp_count\(2);
\right_counter|ALT_INV_temp_count\(1) <= NOT \right_counter|temp_count\(1);
\middle_counter|ALT_INV_temp_count\(3) <= NOT \middle_counter|temp_count\(3);
\middle_counter|ALT_INV_temp_count\(4) <= NOT \middle_counter|temp_count\(4);
\middle_counter|ALT_INV_temp_count\(0) <= NOT \middle_counter|temp_count\(0);
\middle_counter|ALT_INV_temp_count\(2) <= NOT \middle_counter|temp_count\(2);
\middle_counter|ALT_INV_temp_count\(1) <= NOT \middle_counter|temp_count\(1);
\left_counter|ALT_INV_temp_count\(3) <= NOT \left_counter|temp_count\(3);
\left_counter|ALT_INV_temp_count\(4) <= NOT \left_counter|temp_count\(4);
\left_counter|ALT_INV_temp_count\(0) <= NOT \left_counter|temp_count\(0);
\left_counter|ALT_INV_temp_count\(2) <= NOT \left_counter|temp_count\(2);
\left_counter|ALT_INV_temp_count\(1) <= NOT \left_counter|temp_count\(1);

-- Location: IOOBUF_X89_Y16_N56
\seven_seg_l[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(0));

-- Location: IOOBUF_X89_Y20_N45
\seven_seg_l[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(1));

-- Location: IOOBUF_X89_Y20_N96
\seven_seg_l[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(2));

-- Location: IOOBUF_X89_Y16_N5
\seven_seg_l[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(3));

-- Location: IOOBUF_X89_Y16_N22
\seven_seg_l[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(4));

-- Location: IOOBUF_X89_Y20_N79
\seven_seg_l[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(5));

-- Location: IOOBUF_X89_Y16_N39
\seven_seg_l[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \left_led_out|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_l(6));

-- Location: IOOBUF_X89_Y25_N39
\seven_seg_m[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(0));

-- Location: IOOBUF_X89_Y21_N5
\seven_seg_m[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(1));

-- Location: IOOBUF_X89_Y21_N56
\seven_seg_m[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(2));

-- Location: IOOBUF_X89_Y25_N5
\seven_seg_m[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(3));

-- Location: IOOBUF_X89_Y25_N22
\seven_seg_m[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(4));

-- Location: IOOBUF_X89_Y25_N56
\seven_seg_m[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(5));

-- Location: IOOBUF_X89_Y21_N22
\seven_seg_m[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \middle_led_out|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_m(6));

-- Location: IOOBUF_X89_Y15_N22
\seven_seg_r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(0));

-- Location: IOOBUF_X89_Y23_N5
\seven_seg_r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(1));

-- Location: IOOBUF_X89_Y15_N56
\seven_seg_r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(2));

-- Location: IOOBUF_X89_Y21_N39
\seven_seg_r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(3));

-- Location: IOOBUF_X89_Y15_N5
\seven_seg_r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(4));

-- Location: IOOBUF_X89_Y20_N62
\seven_seg_r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(5));

-- Location: IOOBUF_X89_Y23_N39
\seven_seg_r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \right_led_out|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seven_seg_r(6));

-- Location: IOIBUF_X89_Y23_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G11
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y20_N15
\left_counter|temp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_counter|temp_count~1_combout\ = ( \left_counter|temp_count\(2) & ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(3) & ((!\left_counter|temp_count\(1)) # (!\left_counter|temp_count\(0)))) ) ) ) # ( !\left_counter|temp_count\(2) & ( 
-- \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(3) & (\left_counter|temp_count\(1) & \left_counter|temp_count\(0))) ) ) ) # ( \left_counter|temp_count\(2) & ( !\left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(1)) # 
-- (!\left_counter|temp_count\(0)) ) ) ) # ( !\left_counter|temp_count\(2) & ( !\left_counter|temp_count\(4) & ( (\left_counter|temp_count\(1) & \left_counter|temp_count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000011001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \left_counter|ALT_INV_temp_count\(3),
	datac => \left_counter|ALT_INV_temp_count\(1),
	datad => \left_counter|ALT_INV_temp_count\(0),
	datae => \left_counter|ALT_INV_temp_count\(2),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_counter|temp_count~1_combout\);

-- Location: LABCELL_X81_Y33_N30
\pulse_gen|down_counter|auto_generated|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LABCELL_X81_Y33_N33
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

-- Location: LABCELL_X81_Y33_N36
\pulse_gen|down_counter|auto_generated|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X81_Y33_N38
\pulse_gen|down_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita2~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(2));

-- Location: LABCELL_X81_Y33_N39
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

-- Location: FF_X81_Y33_N41
\pulse_gen|down_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita3~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(3));

-- Location: LABCELL_X81_Y33_N42
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

-- Location: FF_X81_Y33_N44
\pulse_gen|down_counter|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(4));

-- Location: LABCELL_X81_Y33_N45
\pulse_gen|down_counter|auto_generated|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita4~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X81_Y33_N47
\pulse_gen|down_counter|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita5~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(5));

-- Location: LABCELL_X81_Y33_N48
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

-- Location: LABCELL_X81_Y33_N6
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

-- Location: FF_X81_Y33_N50
\pulse_gen|down_counter|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita6~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(6));

-- Location: LABCELL_X81_Y33_N51
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

-- Location: FF_X81_Y33_N53
\pulse_gen|down_counter|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(7));

-- Location: LABCELL_X81_Y33_N54
\pulse_gen|down_counter|auto_generated|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita7~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X81_Y33_N56
\pulse_gen|down_counter|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(8));

-- Location: LABCELL_X81_Y33_N57
\pulse_gen|down_counter|auto_generated|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita8~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X81_Y33_N59
\pulse_gen|down_counter|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(9));

-- Location: LABCELL_X81_Y32_N0
\pulse_gen|down_counter|auto_generated|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(10) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(10) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(10),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita9~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X81_Y32_N2
\pulse_gen|down_counter|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(10));

-- Location: LABCELL_X81_Y32_N3
\pulse_gen|down_counter|auto_generated|counter_comb_bita11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita10~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X81_Y32_N5
\pulse_gen|down_counter|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(11));

-- Location: LABCELL_X81_Y32_N6
\pulse_gen|down_counter|auto_generated|counter_comb_bita12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita11~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X81_Y32_N8
\pulse_gen|down_counter|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita12~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(12));

-- Location: LABCELL_X81_Y32_N9
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

-- Location: FF_X81_Y32_N11
\pulse_gen|down_counter|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita13~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(13));

-- Location: LABCELL_X81_Y32_N12
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

-- Location: FF_X81_Y32_N14
\pulse_gen|down_counter|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita14~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(14));

-- Location: LABCELL_X81_Y32_N15
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

-- Location: FF_X81_Y32_N17
\pulse_gen|down_counter|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita15~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(15));

-- Location: LABCELL_X81_Y32_N18
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

-- Location: FF_X81_Y32_N20
\pulse_gen|down_counter|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(16));

-- Location: LABCELL_X81_Y32_N21
\pulse_gen|down_counter|auto_generated|counter_comb_bita17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita16~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X81_Y32_N23
\pulse_gen|down_counter|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita17~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(17));

-- Location: LABCELL_X81_Y32_N24
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

-- Location: FF_X81_Y32_N26
\pulse_gen|down_counter|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(18));

-- Location: LABCELL_X81_Y32_N27
\pulse_gen|down_counter|auto_generated|counter_comb_bita19\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\ = SUM(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ ))
-- \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\ = CARRY(( \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) ) + ( VCC ) + ( \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(19),
	cin => \pulse_gen|down_counter|auto_generated|counter_comb_bita18~COUT\,
	sumout => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\,
	cout => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X81_Y32_N29
\pulse_gen|down_counter|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita19~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(19));

-- Location: LABCELL_X81_Y32_N30
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

-- Location: FF_X81_Y32_N32
\pulse_gen|down_counter|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita20~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(20));

-- Location: LABCELL_X81_Y32_N33
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

-- Location: FF_X81_Y32_N35
\pulse_gen|down_counter|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita21~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(21));

-- Location: LABCELL_X81_Y32_N36
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

-- Location: FF_X81_Y32_N38
\pulse_gen|down_counter|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita22~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(22));

-- Location: LABCELL_X81_Y32_N39
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

-- Location: FF_X81_Y32_N41
\pulse_gen|down_counter|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita23~sumout\,
	asdata => \~GND~combout\,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(23));

-- Location: LABCELL_X81_Y32_N42
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

-- Location: FF_X81_Y32_N44
\pulse_gen|down_counter|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita24~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(24));

-- Location: LABCELL_X81_Y32_N45
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

-- Location: LABCELL_X81_Y32_N54
\pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\ = ( \pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\ & ( \pulse_gen|Equal0~4_combout\ ) ) # ( !\pulse_gen|down_counter|auto_generated|counter_comb_bita24~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|ALT_INV_Equal0~4_combout\,
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_comb_bita24~1_sumout\,
	combout => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\);

-- Location: FF_X81_Y33_N32
\pulse_gen|down_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita0~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X81_Y33_N35
\pulse_gen|down_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \pulse_gen|down_counter|auto_generated|counter_comb_bita1~sumout\,
	asdata => VCC,
	sload => \pulse_gen|down_counter|auto_generated|counter_reg_bit[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|down_counter|auto_generated|counter_reg_bit\(1));

-- Location: LABCELL_X81_Y33_N0
\pulse_gen|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~0_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(5) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(6) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(1) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(4) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(2) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(1),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(6),
	combout => \pulse_gen|Equal0~0_combout\);

-- Location: LABCELL_X81_Y33_N24
\pulse_gen|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~1_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(8) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(12) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(7) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(11) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(10) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(7),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(10),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	combout => \pulse_gen|Equal0~1_combout\);

-- Location: LABCELL_X81_Y32_N57
\pulse_gen|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~3_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(16) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(18) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(15) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(14) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(18),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(15),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(14),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(16),
	combout => \pulse_gen|Equal0~3_combout\);

-- Location: LABCELL_X81_Y32_N48
\pulse_gen|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~2_combout\ = ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(19) & ( !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(20) & ( (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(22) & 
-- (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(24) & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(21) & !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(22),
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(24),
	datac => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(21),
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(23),
	datae => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(19),
	dataf => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(20),
	combout => \pulse_gen|Equal0~2_combout\);

-- Location: LABCELL_X81_Y33_N18
\pulse_gen|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~4_combout\ = ( \pulse_gen|Equal0~3_combout\ & ( \pulse_gen|Equal0~2_combout\ & ( (\pulse_gen|Equal0~0_combout\ & (!\pulse_gen|down_counter|auto_generated|counter_reg_bit\(0) & (\pulse_gen|Equal0~1_combout\ & 
-- !\pulse_gen|down_counter|auto_generated|counter_reg_bit\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|ALT_INV_Equal0~0_combout\,
	datab => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	datac => \pulse_gen|ALT_INV_Equal0~1_combout\,
	datad => \pulse_gen|down_counter|auto_generated|ALT_INV_counter_reg_bit\(13),
	datae => \pulse_gen|ALT_INV_Equal0~3_combout\,
	dataf => \pulse_gen|ALT_INV_Equal0~2_combout\,
	combout => \pulse_gen|Equal0~4_combout\);

-- Location: LABCELL_X81_Y34_N18
\rotor_stepper_fsm|next_state.s2_221\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s2_221~combout\ = ( \rotor_stepper_fsm|current_state.s1~q\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s2_221~combout\) ) ) # ( !\rotor_stepper_fsm|current_state.s1~q\ & ( 
-- (\rotor_stepper_fsm|next_state.s2_221~combout\ & \rotor_stepper_fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_next_state.s2_221~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s1~q\,
	combout => \rotor_stepper_fsm|next_state.s2_221~combout\);

-- Location: IOIBUF_X89_Y23_N55
\init~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

-- Location: FF_X81_Y34_N20
\rotor_stepper_fsm|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|next_state.s2_221~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s2~q\);

-- Location: LABCELL_X81_Y34_N21
\rotor_stepper_fsm|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|Selector16~0_combout\ = ( \rotor_stepper_fsm|current_state.s2~q\ & ( (!\pulse_gen|Equal0~4_combout\) # (\rotor_stepper_fsm|current_state.s1~q\) ) ) # ( !\rotor_stepper_fsm|current_state.s2~q\ & ( (\rotor_stepper_fsm|current_state.s1~q\ 
-- & \pulse_gen|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s1~q\,
	datad => \pulse_gen|ALT_INV_Equal0~4_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s2~q\,
	combout => \rotor_stepper_fsm|Selector16~0_combout\);

-- Location: LABCELL_X81_Y34_N45
\rotor_stepper_fsm|next_state.s3_211\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s3_211~combout\ = ( \rotor_stepper_fsm|current_state.s2~q\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s3_211~combout\) ) ) # ( !\rotor_stepper_fsm|current_state.s2~q\ & ( 
-- (\rotor_stepper_fsm|Selector16~0_combout\ & \rotor_stepper_fsm|next_state.s3_211~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	datad => \rotor_stepper_fsm|ALT_INV_next_state.s3_211~combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s2~q\,
	combout => \rotor_stepper_fsm|next_state.s3_211~combout\);

-- Location: FF_X81_Y34_N47
\rotor_stepper_fsm|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|next_state.s3_211~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s3~q\);

-- Location: LABCELL_X81_Y34_N39
\right_counter|temp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_counter|temp_count~1_combout\ = ( \right_counter|temp_count\(2) & ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(3) & ((!\right_counter|temp_count\(1)) # (!\right_counter|temp_count\(0)))) ) ) ) # ( !\right_counter|temp_count\(2) 
-- & ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(3) & (\right_counter|temp_count\(1) & \right_counter|temp_count\(0))) ) ) ) # ( \right_counter|temp_count\(2) & ( !\right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(1)) # 
-- (!\right_counter|temp_count\(0)) ) ) ) # ( !\right_counter|temp_count\(2) & ( !\right_counter|temp_count\(4) & ( (\right_counter|temp_count\(1) & \right_counter|temp_count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000011001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \right_counter|ALT_INV_temp_count\(3),
	datac => \right_counter|ALT_INV_temp_count\(1),
	datad => \right_counter|ALT_INV_temp_count\(0),
	datae => \right_counter|ALT_INV_temp_count\(2),
	dataf => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_counter|temp_count~1_combout\);

-- Location: MLABCELL_X82_Y34_N27
\rotor_stepper_fsm|current_state.s0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|current_state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \rotor_stepper_fsm|current_state.s0~feeder_combout\);

-- Location: FF_X82_Y34_N29
\rotor_stepper_fsm|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|current_state.s0~feeder_combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s0~q\);

-- Location: MLABCELL_X82_Y34_N48
\middle_counter|temp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_counter|temp_count~1_combout\ = ( \middle_counter|temp_count\(0) & ( (!\middle_counter|temp_count\(4) & (!\middle_counter|temp_count\(1) $ (((!\middle_counter|temp_count\(2)))))) # (\middle_counter|temp_count\(4) & (!\middle_counter|temp_count\(3) 
-- & (!\middle_counter|temp_count\(1) $ (!\middle_counter|temp_count\(2))))) ) ) # ( !\middle_counter|temp_count\(0) & ( (\middle_counter|temp_count\(2) & ((!\middle_counter|temp_count\(4)) # (!\middle_counter|temp_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110001010100101010000101010010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(1),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(3),
	datad => \middle_counter|ALT_INV_temp_count\(2),
	dataf => \middle_counter|ALT_INV_temp_count\(0),
	combout => \middle_counter|temp_count~1_combout\);

-- Location: LABCELL_X81_Y34_N24
\rotor_stepper_fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|Selector11~0_combout\ = ( !\middle_comparator|Equal0~0_combout\ & ( (\rotor_stepper_fsm|current_state.s3~q\ & !\right_comparator|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	datad => \right_comparator|ALT_INV_Equal0~0_combout\,
	dataf => \middle_comparator|ALT_INV_Equal0~0_combout\,
	combout => \rotor_stepper_fsm|Selector11~0_combout\);

-- Location: LABCELL_X81_Y34_N6
\rotor_stepper_fsm|next_state.s4_201\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s4_201~combout\ = ( \rotor_stepper_fsm|Selector11~0_combout\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s4_201~combout\) ) ) # ( !\rotor_stepper_fsm|Selector11~0_combout\ & ( 
-- (\rotor_stepper_fsm|Selector16~0_combout\ & \rotor_stepper_fsm|next_state.s4_201~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	datad => \rotor_stepper_fsm|ALT_INV_next_state.s4_201~combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_Selector11~0_combout\,
	combout => \rotor_stepper_fsm|next_state.s4_201~combout\);

-- Location: FF_X82_Y34_N5
\rotor_stepper_fsm|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \rotor_stepper_fsm|next_state.s4_201~combout\,
	clrn => \ALT_INV_init~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s4~q\);

-- Location: LABCELL_X81_Y34_N12
\rotor_stepper_fsm|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr6~combout\ = ( \rotor_stepper_fsm|current_state.s2~q\ ) # ( !\rotor_stepper_fsm|current_state.s2~q\ & ( ((!\rotor_stepper_fsm|current_state.s0~q\) # (\rotor_stepper_fsm|current_state.s3~q\)) # 
-- (\rotor_stepper_fsm|current_state.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_current_state.s4~q\,
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s0~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s2~q\,
	combout => \rotor_stepper_fsm|WideOr6~combout\);

-- Location: MLABCELL_X82_Y34_N39
\rotor_stepper_fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|Selector8~0_combout\ = ( \right_comparator|Equal0~0_combout\ & ( \rotor_stepper_fsm|current_state.s7~q\ ) ) # ( !\right_comparator|Equal0~0_combout\ & ( ((\rotor_stepper_fsm|current_state.s3~q\ & \middle_comparator|Equal0~0_combout\)) # 
-- (\rotor_stepper_fsm|current_state.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	datac => \middle_comparator|ALT_INV_Equal0~0_combout\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s7~q\,
	dataf => \right_comparator|ALT_INV_Equal0~0_combout\,
	combout => \rotor_stepper_fsm|Selector8~0_combout\);

-- Location: MLABCELL_X82_Y34_N33
\rotor_stepper_fsm|next_state.s6_181\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s6_181~combout\ = ( \rotor_stepper_fsm|Selector8~0_combout\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s6_181~combout\) ) ) # ( !\rotor_stepper_fsm|Selector8~0_combout\ & ( 
-- (\rotor_stepper_fsm|next_state.s6_181~combout\ & \rotor_stepper_fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_next_state.s6_181~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_Selector8~0_combout\,
	combout => \rotor_stepper_fsm|next_state.s6_181~combout\);

-- Location: FF_X82_Y34_N35
\rotor_stepper_fsm|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|next_state.s6_181~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s6~q\);

-- Location: MLABCELL_X82_Y34_N42
\rotor_stepper_fsm|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr7~combout\ = ( \rotor_stepper_fsm|current_state.s5~q\ ) # ( !\rotor_stepper_fsm|current_state.s5~q\ & ( (\rotor_stepper_fsm|current_state.s7~q\) # (\rotor_stepper_fsm|current_state.s6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s6~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s7~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s5~q\,
	combout => \rotor_stepper_fsm|WideOr7~combout\);

-- Location: MLABCELL_X82_Y34_N30
\rotor_stepper_fsm|en_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|en_m~combout\ = ( \rotor_stepper_fsm|WideOr7~combout\ & ( (!\rotor_stepper_fsm|WideOr6~combout\) # (\rotor_stepper_fsm|en_m~combout\) ) ) # ( !\rotor_stepper_fsm|WideOr7~combout\ & ( (\rotor_stepper_fsm|en_m~combout\ & 
-- \rotor_stepper_fsm|WideOr6~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_en_m~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_WideOr6~combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_WideOr7~combout\,
	combout => \rotor_stepper_fsm|en_m~combout\);

-- Location: FF_X82_Y34_N50
\middle_counter|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \middle_counter|temp_count~1_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \middle_counter|temp_count\(2));

-- Location: MLABCELL_X82_Y34_N12
\middle_counter|temp_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_counter|temp_count~2_combout\ = ( \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) & ((!\middle_counter|temp_count\(3)) # (!\middle_counter|temp_count\(4)))) ) ) # ( !\middle_counter|temp_count\(2) & ( 
-- (!\middle_counter|temp_count\(0) & ((!\middle_counter|temp_count\(3)) # ((!\middle_counter|temp_count\(4)) # (!\middle_counter|temp_count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(3),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(1),
	datad => \middle_counter|ALT_INV_temp_count\(0),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_counter|temp_count~2_combout\);

-- Location: FF_X82_Y34_N14
\middle_counter|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \middle_counter|temp_count~2_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \middle_counter|temp_count\(0));

-- Location: MLABCELL_X82_Y34_N45
\middle_counter|temp_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_counter|temp_count~3_combout\ = ( \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(3) & (((\middle_counter|temp_count\(4))))) # (\middle_counter|temp_count\(3) & (\middle_counter|temp_count\(1) & (\middle_counter|temp_count\(0) & 
-- !\middle_counter|temp_count\(4)))) ) ) # ( !\middle_counter|temp_count\(2) & ( (\middle_counter|temp_count\(4) & ((!\middle_counter|temp_count\(3)) # ((!\middle_counter|temp_count\(1) & !\middle_counter|temp_count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000001110011000000000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(1),
	datab => \middle_counter|ALT_INV_temp_count\(3),
	datac => \middle_counter|ALT_INV_temp_count\(0),
	datad => \middle_counter|ALT_INV_temp_count\(4),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_counter|temp_count~3_combout\);

-- Location: FF_X82_Y34_N47
\middle_counter|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \middle_counter|temp_count~3_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \middle_counter|temp_count\(4));

-- Location: MLABCELL_X82_Y34_N36
\middle_counter|temp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_counter|temp_count~0_combout\ = ( \middle_counter|temp_count\(0) & ( (!\middle_counter|temp_count\(1) & ((!\middle_counter|temp_count\(4)) # (!\middle_counter|temp_count\(3)))) ) ) # ( !\middle_counter|temp_count\(0) & ( 
-- (\middle_counter|temp_count\(1) & ((!\middle_counter|temp_count\(4)) # (!\middle_counter|temp_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(3),
	datad => \middle_counter|ALT_INV_temp_count\(1),
	dataf => \middle_counter|ALT_INV_temp_count\(0),
	combout => \middle_counter|temp_count~0_combout\);

-- Location: FF_X82_Y34_N38
\middle_counter|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \middle_counter|temp_count~0_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \middle_counter|temp_count\(1));

-- Location: MLABCELL_X82_Y34_N51
\middle_counter|temp_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_counter|temp_count~4_combout\ = ( \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(3) & (\middle_counter|temp_count\(1) & ((\middle_counter|temp_count\(0))))) # (\middle_counter|temp_count\(3) & (!\middle_counter|temp_count\(4) & 
-- ((!\middle_counter|temp_count\(1)) # (!\middle_counter|temp_count\(0))))) ) ) # ( !\middle_counter|temp_count\(2) & ( (\middle_counter|temp_count\(3) & ((!\middle_counter|temp_count\(4)) # ((!\middle_counter|temp_count\(1) & 
-- !\middle_counter|temp_count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000101110010000000010111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(1),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(0),
	datad => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_counter|temp_count~4_combout\);

-- Location: FF_X82_Y34_N53
\middle_counter|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \middle_counter|temp_count~4_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \middle_counter|temp_count\(3));

-- Location: MLABCELL_X82_Y34_N18
\middle_comparator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_comparator|Equal0~0_combout\ = ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(3) & (!\middle_counter|temp_count\(0) & (!\middle_counter|temp_count\(1) & !\middle_counter|temp_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(3),
	datab => \middle_counter|ALT_INV_temp_count\(0),
	datac => \middle_counter|ALT_INV_temp_count\(1),
	datad => \middle_counter|ALT_INV_temp_count\(4),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_comparator|Equal0~0_combout\);

-- Location: LABCELL_X81_Y34_N48
\rotor_stepper_fsm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|Selector8~1_combout\ = ( \middle_comparator|Equal0~0_combout\ & ( (\rotor_stepper_fsm|current_state.s3~q\ & \right_comparator|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	datad => \right_comparator|ALT_INV_Equal0~0_combout\,
	dataf => \middle_comparator|ALT_INV_Equal0~0_combout\,
	combout => \rotor_stepper_fsm|Selector8~1_combout\);

-- Location: LABCELL_X81_Y34_N27
\rotor_stepper_fsm|next_state.s7_171\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s7_171~combout\ = ( \rotor_stepper_fsm|Selector8~1_combout\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s7_171~combout\) ) ) # ( !\rotor_stepper_fsm|Selector8~1_combout\ & ( 
-- (\rotor_stepper_fsm|Selector16~0_combout\ & \rotor_stepper_fsm|next_state.s7_171~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	datad => \rotor_stepper_fsm|ALT_INV_next_state.s7_171~combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_Selector8~1_combout\,
	combout => \rotor_stepper_fsm|next_state.s7_171~combout\);

-- Location: FF_X81_Y34_N29
\rotor_stepper_fsm|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|next_state.s7_171~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s7~q\);

-- Location: LABCELL_X81_Y34_N51
\rotor_stepper_fsm|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr4~combout\ = ( \rotor_stepper_fsm|current_state.s7~q\ ) # ( !\rotor_stepper_fsm|current_state.s7~q\ & ( ((!\rotor_stepper_fsm|current_state.s0~q\) # (\rotor_stepper_fsm|current_state.s3~q\)) # 
-- (\rotor_stepper_fsm|current_state.s2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_current_state.s2~q\,
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s0~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s7~q\,
	combout => \rotor_stepper_fsm|WideOr4~combout\);

-- Location: MLABCELL_X82_Y34_N15
\rotor_stepper_fsm|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr2~0_combout\ = ( !\rotor_stepper_fsm|current_state.s5~q\ & ( (!\rotor_stepper_fsm|current_state.s6~q\ & !\rotor_stepper_fsm|current_state.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s6~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s4~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s5~q\,
	combout => \rotor_stepper_fsm|WideOr2~0_combout\);

-- Location: MLABCELL_X82_Y34_N3
\rotor_stepper_fsm|en_r\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|en_r~combout\ = ( \rotor_stepper_fsm|WideOr2~0_combout\ & ( (\rotor_stepper_fsm|WideOr4~combout\ & \rotor_stepper_fsm|en_r~combout\) ) ) # ( !\rotor_stepper_fsm|WideOr2~0_combout\ & ( (!\rotor_stepper_fsm|WideOr4~combout\) # 
-- (\rotor_stepper_fsm|en_r~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rotor_stepper_fsm|ALT_INV_WideOr4~combout\,
	datac => \rotor_stepper_fsm|ALT_INV_en_r~combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_WideOr2~0_combout\,
	combout => \rotor_stepper_fsm|en_r~combout\);

-- Location: FF_X81_Y34_N41
\right_counter|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \right_counter|temp_count~1_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_counter|temp_count\(2));

-- Location: LABCELL_X81_Y34_N54
\right_counter|temp_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_counter|temp_count~2_combout\ = ( \right_counter|temp_count\(1) & ( (!\right_counter|temp_count\(0) & ((!\right_counter|temp_count\(3)) # (!\right_counter|temp_count\(4)))) ) ) # ( !\right_counter|temp_count\(1) & ( (!\right_counter|temp_count\(0) 
-- & ((!\right_counter|temp_count\(2)) # ((!\right_counter|temp_count\(3)) # (!\right_counter|temp_count\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(2),
	datab => \right_counter|ALT_INV_temp_count\(3),
	datac => \right_counter|ALT_INV_temp_count\(4),
	datad => \right_counter|ALT_INV_temp_count\(0),
	dataf => \right_counter|ALT_INV_temp_count\(1),
	combout => \right_counter|temp_count~2_combout\);

-- Location: FF_X81_Y34_N56
\right_counter|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \right_counter|temp_count~2_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_counter|temp_count\(0));

-- Location: LABCELL_X81_Y34_N30
\right_counter|temp_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_counter|temp_count~4_combout\ = ( \right_counter|temp_count\(3) & ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(1) & (!\right_counter|temp_count\(0) & !\right_counter|temp_count\(2))) ) ) ) # ( !\right_counter|temp_count\(3) & ( 
-- \right_counter|temp_count\(4) & ( (\right_counter|temp_count\(1) & (\right_counter|temp_count\(0) & \right_counter|temp_count\(2))) ) ) ) # ( \right_counter|temp_count\(3) & ( !\right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(1)) # 
-- ((!\right_counter|temp_count\(0)) # (!\right_counter|temp_count\(2))) ) ) ) # ( !\right_counter|temp_count\(3) & ( !\right_counter|temp_count\(4) & ( (\right_counter|temp_count\(1) & (\right_counter|temp_count\(0) & \right_counter|temp_count\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111110000000000000000111100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(0),
	datad => \right_counter|ALT_INV_temp_count\(2),
	datae => \right_counter|ALT_INV_temp_count\(3),
	dataf => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_counter|temp_count~4_combout\);

-- Location: FF_X81_Y34_N32
\right_counter|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \right_counter|temp_count~4_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_counter|temp_count\(3));

-- Location: LABCELL_X81_Y34_N9
\right_counter|temp_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_counter|temp_count~3_combout\ = ( \right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(3) & (((\right_counter|temp_count\(4))))) # (\right_counter|temp_count\(3) & (\right_counter|temp_count\(1) & (\right_counter|temp_count\(2) & 
-- !\right_counter|temp_count\(4)))) ) ) # ( !\right_counter|temp_count\(0) & ( (\right_counter|temp_count\(4) & ((!\right_counter|temp_count\(3)) # ((!\right_counter|temp_count\(1) & !\right_counter|temp_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000001110011000000000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(1),
	datab => \right_counter|ALT_INV_temp_count\(3),
	datac => \right_counter|ALT_INV_temp_count\(2),
	datad => \right_counter|ALT_INV_temp_count\(4),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_counter|temp_count~3_combout\);

-- Location: FF_X81_Y34_N11
\right_counter|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \right_counter|temp_count~3_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_counter|temp_count\(4));

-- Location: LABCELL_X81_Y34_N15
\right_counter|temp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_counter|temp_count~0_combout\ = ( \right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1) & ((!\right_counter|temp_count\(4)) # (!\right_counter|temp_count\(3)))) ) ) # ( !\right_counter|temp_count\(0) & ( (\right_counter|temp_count\(1) & 
-- ((!\right_counter|temp_count\(4)) # (!\right_counter|temp_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \right_counter|ALT_INV_temp_count\(4),
	datac => \right_counter|ALT_INV_temp_count\(3),
	datad => \right_counter|ALT_INV_temp_count\(1),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_counter|temp_count~0_combout\);

-- Location: FF_X81_Y34_N17
\right_counter|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \right_counter|temp_count~0_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_counter|temp_count\(1));

-- Location: LABCELL_X81_Y34_N3
\right_comparator|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_comparator|Equal0~0_combout\ = ( !\right_counter|temp_count\(0) & ( !\right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(1) & (!\right_counter|temp_count\(2) & !\right_counter|temp_count\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(2),
	datad => \right_counter|ALT_INV_temp_count\(3),
	datae => \right_counter|ALT_INV_temp_count\(0),
	dataf => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_comparator|Equal0~0_combout\);

-- Location: LABCELL_X81_Y34_N42
\rotor_stepper_fsm|Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|Selector8~2_combout\ = ( !\middle_comparator|Equal0~0_combout\ & ( (\rotor_stepper_fsm|current_state.s3~q\ & \right_comparator|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s3~q\,
	datad => \right_comparator|ALT_INV_Equal0~0_combout\,
	dataf => \middle_comparator|ALT_INV_Equal0~0_combout\,
	combout => \rotor_stepper_fsm|Selector8~2_combout\);

-- Location: LABCELL_X81_Y34_N57
\rotor_stepper_fsm|next_state.s5_191\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s5_191~combout\ = ( \rotor_stepper_fsm|Selector8~2_combout\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s5_191~combout\) ) ) # ( !\rotor_stepper_fsm|Selector8~2_combout\ & ( 
-- (\rotor_stepper_fsm|next_state.s5_191~combout\ & \rotor_stepper_fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_next_state.s5_191~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_Selector8~2_combout\,
	combout => \rotor_stepper_fsm|next_state.s5_191~combout\);

-- Location: FF_X82_Y34_N11
\rotor_stepper_fsm|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \rotor_stepper_fsm|next_state.s5_191~combout\,
	clrn => \ALT_INV_init~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s5~q\);

-- Location: MLABCELL_X82_Y34_N24
\rotor_stepper_fsm|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr2~combout\ = ( \rotor_stepper_fsm|current_state.s0~q\ & ( ((\rotor_stepper_fsm|current_state.s4~q\) # (\rotor_stepper_fsm|current_state.s6~q\)) # (\rotor_stepper_fsm|current_state.s5~q\) ) ) # ( 
-- !\rotor_stepper_fsm|current_state.s0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s5~q\,
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s6~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s4~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s0~q\,
	combout => \rotor_stepper_fsm|WideOr2~combout\);

-- Location: MLABCELL_X82_Y34_N54
\rotor_stepper_fsm|next_state.s1_231\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|next_state.s1_231~combout\ = ( \rotor_stepper_fsm|WideOr2~combout\ & ( (!\rotor_stepper_fsm|Selector16~0_combout\) # (\rotor_stepper_fsm|next_state.s1_231~combout\) ) ) # ( !\rotor_stepper_fsm|WideOr2~combout\ & ( 
-- (\rotor_stepper_fsm|next_state.s1_231~combout\ & \rotor_stepper_fsm|Selector16~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_next_state.s1_231~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_Selector16~0_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_WideOr2~combout\,
	combout => \rotor_stepper_fsm|next_state.s1_231~combout\);

-- Location: FF_X82_Y34_N56
\rotor_stepper_fsm|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \rotor_stepper_fsm|next_state.s1_231~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rotor_stepper_fsm|current_state.s1~q\);

-- Location: MLABCELL_X82_Y34_N57
\rotor_stepper_fsm|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr0~0_combout\ = ( \rotor_stepper_fsm|current_state.s1~q\ ) # ( !\rotor_stepper_fsm|current_state.s1~q\ & ( !\rotor_stepper_fsm|current_state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s0~q\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s1~q\,
	combout => \rotor_stepper_fsm|WideOr0~0_combout\);

-- Location: MLABCELL_X82_Y34_N6
\rotor_stepper_fsm|load\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|load~combout\ = ( \rotor_stepper_fsm|WideOr0~0_combout\ & ( !\rotor_stepper_fsm|current_state.s1~q\ ) ) # ( !\rotor_stepper_fsm|WideOr0~0_combout\ & ( \rotor_stepper_fsm|load~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110011001100110000000000111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rotor_stepper_fsm|ALT_INV_current_state.s1~q\,
	datad => \rotor_stepper_fsm|ALT_INV_load~combout\,
	datae => \rotor_stepper_fsm|ALT_INV_WideOr0~0_combout\,
	combout => \rotor_stepper_fsm|load~combout\);

-- Location: MLABCELL_X82_Y34_N0
\rotor_stepper_fsm|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|WideOr8~0_combout\ = (\rotor_stepper_fsm|current_state.s1~q\) # (\rotor_stepper_fsm|current_state.s6~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_current_state.s6~q\,
	datad => \rotor_stepper_fsm|ALT_INV_current_state.s1~q\,
	combout => \rotor_stepper_fsm|WideOr8~0_combout\);

-- Location: MLABCELL_X82_Y34_N21
\rotor_stepper_fsm|en_l\ : cyclonev_lcell_comb
-- Equation(s):
-- \rotor_stepper_fsm|en_l~combout\ = ( \rotor_stepper_fsm|current_state.s6~q\ & ( (\rotor_stepper_fsm|WideOr8~0_combout\) # (\rotor_stepper_fsm|en_l~combout\) ) ) # ( !\rotor_stepper_fsm|current_state.s6~q\ & ( (\rotor_stepper_fsm|en_l~combout\ & 
-- !\rotor_stepper_fsm|WideOr8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rotor_stepper_fsm|ALT_INV_en_l~combout\,
	datad => \rotor_stepper_fsm|ALT_INV_WideOr8~0_combout\,
	dataf => \rotor_stepper_fsm|ALT_INV_current_state.s6~q\,
	combout => \rotor_stepper_fsm|en_l~combout\);

-- Location: FF_X88_Y20_N17
\left_counter|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \left_counter|temp_count~1_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_l~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_counter|temp_count\(2));

-- Location: LABCELL_X88_Y20_N33
\left_counter|temp_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_counter|temp_count~3_combout\ = ( \left_counter|temp_count\(4) & ( \left_counter|temp_count\(0) & ( !\left_counter|temp_count\(3) ) ) ) # ( !\left_counter|temp_count\(4) & ( \left_counter|temp_count\(0) & ( (\left_counter|temp_count\(3) & 
-- (\left_counter|temp_count\(1) & \left_counter|temp_count\(2))) ) ) ) # ( \left_counter|temp_count\(4) & ( !\left_counter|temp_count\(0) & ( (!\left_counter|temp_count\(3)) # ((!\left_counter|temp_count\(1) & !\left_counter|temp_count\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001100110000000000000000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \left_counter|ALT_INV_temp_count\(3),
	datac => \left_counter|ALT_INV_temp_count\(1),
	datad => \left_counter|ALT_INV_temp_count\(2),
	datae => \left_counter|ALT_INV_temp_count\(4),
	dataf => \left_counter|ALT_INV_temp_count\(0),
	combout => \left_counter|temp_count~3_combout\);

-- Location: FF_X88_Y20_N35
\left_counter|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \left_counter|temp_count~3_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_l~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_counter|temp_count\(4));

-- Location: LABCELL_X88_Y20_N45
\left_counter|temp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_counter|temp_count~0_combout\ = ( \left_counter|temp_count\(1) & ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(3) & !\left_counter|temp_count\(0)) ) ) ) # ( !\left_counter|temp_count\(1) & ( \left_counter|temp_count\(4) & ( 
-- (!\left_counter|temp_count\(3) & \left_counter|temp_count\(0)) ) ) ) # ( \left_counter|temp_count\(1) & ( !\left_counter|temp_count\(4) & ( !\left_counter|temp_count\(0) ) ) ) # ( !\left_counter|temp_count\(1) & ( !\left_counter|temp_count\(4) & ( 
-- \left_counter|temp_count\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \left_counter|ALT_INV_temp_count\(3),
	datad => \left_counter|ALT_INV_temp_count\(0),
	datae => \left_counter|ALT_INV_temp_count\(1),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_counter|temp_count~0_combout\);

-- Location: FF_X88_Y20_N47
\left_counter|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \left_counter|temp_count~0_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_l~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_counter|temp_count\(1));

-- Location: LABCELL_X88_Y20_N57
\left_counter|temp_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_counter|temp_count~4_combout\ = ( \left_counter|temp_count\(3) & ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(1) & (!\left_counter|temp_count\(2) & !\left_counter|temp_count\(0))) ) ) ) # ( !\left_counter|temp_count\(3) & ( 
-- \left_counter|temp_count\(4) & ( (\left_counter|temp_count\(1) & (\left_counter|temp_count\(2) & \left_counter|temp_count\(0))) ) ) ) # ( \left_counter|temp_count\(3) & ( !\left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(1)) # 
-- ((!\left_counter|temp_count\(2)) # (!\left_counter|temp_count\(0))) ) ) ) # ( !\left_counter|temp_count\(3) & ( !\left_counter|temp_count\(4) & ( (\left_counter|temp_count\(1) & (\left_counter|temp_count\(2) & \left_counter|temp_count\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111110000000000000000111100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \left_counter|ALT_INV_temp_count\(1),
	datac => \left_counter|ALT_INV_temp_count\(2),
	datad => \left_counter|ALT_INV_temp_count\(0),
	datae => \left_counter|ALT_INV_temp_count\(3),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_counter|temp_count~4_combout\);

-- Location: FF_X88_Y20_N59
\left_counter|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \left_counter|temp_count~4_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_l~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_counter|temp_count\(3));

-- Location: LABCELL_X88_Y20_N48
\left_counter|temp_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_counter|temp_count~2_combout\ = ( !\left_counter|temp_count\(0) & ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(3)) # ((!\left_counter|temp_count\(1) & !\left_counter|temp_count\(2))) ) ) ) # ( !\left_counter|temp_count\(0) & ( 
-- !\left_counter|temp_count\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \left_counter|ALT_INV_temp_count\(3),
	datac => \left_counter|ALT_INV_temp_count\(1),
	datad => \left_counter|ALT_INV_temp_count\(2),
	datae => \left_counter|ALT_INV_temp_count\(0),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_counter|temp_count~2_combout\);

-- Location: FF_X88_Y20_N50
\left_counter|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \left_counter|temp_count~2_combout\,
	clrn => \rotor_stepper_fsm|ALT_INV_load~combout\,
	ena => \rotor_stepper_fsm|en_l~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_counter|temp_count\(0));

-- Location: LABCELL_X88_Y20_N3
\left_led_out|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux6~0_combout\ = ( \left_counter|temp_count\(3) & ( (!\left_counter|temp_count\(2) & ((!\left_counter|temp_count\(0)) # ((!\left_counter|temp_count\(4)) # (\left_counter|temp_count\(1))))) # (\left_counter|temp_count\(2) & 
-- (((\left_counter|temp_count\(0) & !\left_counter|temp_count\(1))) # (\left_counter|temp_count\(4)))) ) ) # ( !\left_counter|temp_count\(3) & ( (!\left_counter|temp_count\(0) & (\left_counter|temp_count\(4) & ((!\left_counter|temp_count\(1)) # 
-- (\left_counter|temp_count\(2))))) # (\left_counter|temp_count\(0) & ((!\left_counter|temp_count\(2) $ (\left_counter|temp_count\(4))) # (\left_counter|temp_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101010111010010110101011111011011110011111101101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(0),
	datab => \left_counter|ALT_INV_temp_count\(2),
	datac => \left_counter|ALT_INV_temp_count\(4),
	datad => \left_counter|ALT_INV_temp_count\(1),
	dataf => \left_counter|ALT_INV_temp_count\(3),
	combout => \left_led_out|Mux6~0_combout\);

-- Location: LABCELL_X88_Y20_N36
\left_led_out|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux5~0_combout\ = ( \left_counter|temp_count\(0) & ( (!\left_counter|temp_count\(3) & ((!\left_counter|temp_count\(4) & ((!\left_counter|temp_count\(1)) # (\left_counter|temp_count\(2)))) # (\left_counter|temp_count\(4) & 
-- ((!\left_counter|temp_count\(2)))))) # (\left_counter|temp_count\(3) & ((!\left_counter|temp_count\(1) & ((\left_counter|temp_count\(2)))) # (\left_counter|temp_count\(1) & ((!\left_counter|temp_count\(2)) # (\left_counter|temp_count\(4)))))) ) ) # ( 
-- !\left_counter|temp_count\(0) & ( (!\left_counter|temp_count\(1) & (!\left_counter|temp_count\(4) $ (!\left_counter|temp_count\(3) $ (\left_counter|temp_count\(2))))) # (\left_counter|temp_count\(1) & (((!\left_counter|temp_count\(3)) # 
-- (!\left_counter|temp_count\(2))) # (\left_counter|temp_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101110110101011110111011010111010011101011011101001110101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(4),
	datab => \left_counter|ALT_INV_temp_count\(1),
	datac => \left_counter|ALT_INV_temp_count\(3),
	datad => \left_counter|ALT_INV_temp_count\(2),
	dataf => \left_counter|ALT_INV_temp_count\(0),
	combout => \left_led_out|Mux5~0_combout\);

-- Location: LABCELL_X88_Y20_N0
\left_led_out|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux4~0_combout\ = ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(2) & (((\left_counter|temp_count\(3) & \left_counter|temp_count\(1))) # (\left_counter|temp_count\(0)))) # (\left_counter|temp_count\(2) & 
-- (((\left_counter|temp_count\(3))))) ) ) # ( !\left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(0) & (!\left_counter|temp_count\(2) $ (((!\left_counter|temp_count\(3) & !\left_counter|temp_count\(1)))))) # (\left_counter|temp_count\(0) & 
-- ((!\left_counter|temp_count\(3) & (\left_counter|temp_count\(2) & !\left_counter|temp_count\(1))) # (\left_counter|temp_count\(3) & ((\left_counter|temp_count\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100010001101001110001000110101000111010011110100011101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(0),
	datab => \left_counter|ALT_INV_temp_count\(2),
	datac => \left_counter|ALT_INV_temp_count\(3),
	datad => \left_counter|ALT_INV_temp_count\(1),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_led_out|Mux4~0_combout\);

-- Location: LABCELL_X88_Y20_N6
\left_led_out|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux3~0_combout\ = ( \left_counter|temp_count\(0) & ( ((\left_counter|temp_count\(4) & (!\left_counter|temp_count\(1) $ (\left_counter|temp_count\(3))))) # (\left_counter|temp_count\(2)) ) ) # ( !\left_counter|temp_count\(0) & ( 
-- (!\left_counter|temp_count\(1) & ((!\left_counter|temp_count\(2) & (!\left_counter|temp_count\(4))) # (\left_counter|temp_count\(2) & ((\left_counter|temp_count\(3)))))) # (\left_counter|temp_count\(1) & (\left_counter|temp_count\(3) & 
-- ((!\left_counter|temp_count\(2)) # (\left_counter|temp_count\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100001101100010110000110101000001111111110100000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(4),
	datab => \left_counter|ALT_INV_temp_count\(1),
	datac => \left_counter|ALT_INV_temp_count\(3),
	datad => \left_counter|ALT_INV_temp_count\(2),
	dataf => \left_counter|ALT_INV_temp_count\(0),
	combout => \left_led_out|Mux3~0_combout\);

-- Location: LABCELL_X88_Y20_N18
\left_led_out|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux2~0_combout\ = ( \left_counter|temp_count\(0) & ( (\left_counter|temp_count\(4) & ((!\left_counter|temp_count\(1) & ((\left_counter|temp_count\(2)))) # (\left_counter|temp_count\(1) & (\left_counter|temp_count\(3))))) ) ) # ( 
-- !\left_counter|temp_count\(0) & ( (\left_counter|temp_count\(4) & (((!\left_counter|temp_count\(2) & \left_counter|temp_count\(1))) # (\left_counter|temp_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001101000001010000110100000011000001010000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(3),
	datab => \left_counter|ALT_INV_temp_count\(2),
	datac => \left_counter|ALT_INV_temp_count\(4),
	datad => \left_counter|ALT_INV_temp_count\(1),
	dataf => \left_counter|ALT_INV_temp_count\(0),
	combout => \left_led_out|Mux2~0_combout\);

-- Location: LABCELL_X88_Y20_N21
\left_led_out|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux1~0_combout\ = ( \left_counter|temp_count\(4) & ( (!\left_counter|temp_count\(3) & (!\left_counter|temp_count\(0) & (!\left_counter|temp_count\(2) $ (\left_counter|temp_count\(1))))) # (\left_counter|temp_count\(3) & 
-- (((\left_counter|temp_count\(0)) # (\left_counter|temp_count\(1))) # (\left_counter|temp_count\(2)))) ) ) # ( !\left_counter|temp_count\(4) & ( (\left_counter|temp_count\(0) & ((!\left_counter|temp_count\(3) & (!\left_counter|temp_count\(2) & 
-- \left_counter|temp_count\(1))) # (\left_counter|temp_count\(3) & ((!\left_counter|temp_count\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011000000000000101100010010111010101011001011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(3),
	datab => \left_counter|ALT_INV_temp_count\(2),
	datac => \left_counter|ALT_INV_temp_count\(1),
	datad => \left_counter|ALT_INV_temp_count\(0),
	dataf => \left_counter|ALT_INV_temp_count\(4),
	combout => \left_led_out|Mux1~0_combout\);

-- Location: LABCELL_X88_Y20_N24
\left_led_out|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \left_led_out|Mux0~0_combout\ = ( \left_counter|temp_count\(3) & ( (!\left_counter|temp_count\(4) & ((!\left_counter|temp_count\(0) & ((!\left_counter|temp_count\(1)) # (\left_counter|temp_count\(2)))) # (\left_counter|temp_count\(0) & 
-- ((!\left_counter|temp_count\(2)))))) # (\left_counter|temp_count\(4) & (((\left_counter|temp_count\(2))) # (\left_counter|temp_count\(1)))) ) ) # ( !\left_counter|temp_count\(3) & ( (!\left_counter|temp_count\(4) & (\left_counter|temp_count\(1) & 
-- (!\left_counter|temp_count\(0)))) # (\left_counter|temp_count\(4) & ((!\left_counter|temp_count\(0) & ((\left_counter|temp_count\(2)))) # (\left_counter|temp_count\(0) & (!\left_counter|temp_count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001110100001001000111010010011011111101011001101111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \left_counter|ALT_INV_temp_count\(4),
	datab => \left_counter|ALT_INV_temp_count\(1),
	datac => \left_counter|ALT_INV_temp_count\(0),
	datad => \left_counter|ALT_INV_temp_count\(2),
	dataf => \left_counter|ALT_INV_temp_count\(3),
	combout => \left_led_out|Mux0~0_combout\);

-- Location: LABCELL_X88_Y25_N15
\middle_led_out|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux6~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( ((\middle_counter|temp_count\(0) & !\middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(4)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( 
-- \middle_counter|temp_count\(2) & ( ((\middle_counter|temp_count\(0) & \middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(4)) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0)) # 
-- ((!\middle_counter|temp_count\(4)) # (\middle_counter|temp_count\(1))) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( !\middle_counter|temp_count\(0) $ (((!\middle_counter|temp_count\(4)) # 
-- (\middle_counter|temp_count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101111011111110111100110111001101110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux6~0_combout\);

-- Location: LABCELL_X88_Y25_N21
\middle_led_out|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux5~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( ((\middle_counter|temp_count\(0) & !\middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(4)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( 
-- \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(4)) # ((!\middle_counter|temp_count\(0) & \middle_counter|temp_count\(1))) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( ((!\middle_counter|temp_count\(0) 
-- & !\middle_counter|temp_count\(4))) # (\middle_counter|temp_count\(1)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) $ (!\middle_counter|temp_count\(1))) # 
-- (\middle_counter|temp_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011100011111000111111001110110011100111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux5~0_combout\);

-- Location: LABCELL_X88_Y25_N48
\middle_led_out|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux4~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( ((\middle_counter|temp_count\(0) & \middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(4)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( 
-- \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(4) & !\middle_counter|temp_count\(1)) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) $ (\middle_counter|temp_count\(4))) # 
-- (\middle_counter|temp_count\(1)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) & (!\middle_counter|temp_count\(4) & \middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(0) & 
-- (\middle_counter|temp_count\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001100110011111111111001100000000000011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datad => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux4~0_combout\);

-- Location: LABCELL_X88_Y25_N42
\middle_led_out|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux3~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( ((!\middle_counter|temp_count\(1)) # (\middle_counter|temp_count\(4))) # (\middle_counter|temp_count\(0)) ) ) ) # ( !\middle_counter|temp_count\(3) & 
-- ( \middle_counter|temp_count\(2) & ( \middle_counter|temp_count\(0) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(4) & (!\middle_counter|temp_count\(0))) # (\middle_counter|temp_count\(4) & 
-- ((\middle_counter|temp_count\(1)))) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(1) & (!\middle_counter|temp_count\(0) $ (\middle_counter|temp_count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100010001011101101010101010101011111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datad => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux3~0_combout\);

-- Location: LABCELL_X88_Y25_N36
\middle_led_out|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux2~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( \middle_counter|temp_count\(4) ) ) ) # ( !\middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( (\middle_counter|temp_count\(0) & 
-- (\middle_counter|temp_count\(4) & !\middle_counter|temp_count\(1))) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (\middle_counter|temp_count\(4) & ((!\middle_counter|temp_count\(0)) # (\middle_counter|temp_count\(1)))) 
-- ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) & (\middle_counter|temp_count\(4) & \middle_counter|temp_count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010001000100011001100010001000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datad => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux2~0_combout\);

-- Location: LABCELL_X88_Y25_N27
\middle_led_out|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux1~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( ((\middle_counter|temp_count\(0) & !\middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(4)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( 
-- \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) & (\middle_counter|temp_count\(4) & \middle_counter|temp_count\(1))) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(1) & 
-- (\middle_counter|temp_count\(0))) # (\middle_counter|temp_count\(1) & ((\middle_counter|temp_count\(4)))) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0) & (\middle_counter|temp_count\(4) 
-- & !\middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(0) & (!\middle_counter|temp_count\(4) & \middle_counter|temp_count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100010100110101001100000010000000100111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datac => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux1~0_combout\);

-- Location: LABCELL_X88_Y25_N54
\middle_led_out|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \middle_led_out|Mux0~0_combout\ = ( \middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(0)) # (\middle_counter|temp_count\(4)) ) ) ) # ( !\middle_counter|temp_count\(3) & ( \middle_counter|temp_count\(2) & ( 
-- (!\middle_counter|temp_count\(1) & ((\middle_counter|temp_count\(4)))) # (\middle_counter|temp_count\(1) & (!\middle_counter|temp_count\(0))) ) ) ) # ( \middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( (!\middle_counter|temp_count\(4) 
-- & ((!\middle_counter|temp_count\(1)) # (\middle_counter|temp_count\(0)))) # (\middle_counter|temp_count\(4) & ((\middle_counter|temp_count\(1)))) ) ) ) # ( !\middle_counter|temp_count\(3) & ( !\middle_counter|temp_count\(2) & ( 
-- (!\middle_counter|temp_count\(0) & (!\middle_counter|temp_count\(4) & \middle_counter|temp_count\(1))) # (\middle_counter|temp_count\(0) & (\middle_counter|temp_count\(4) & !\middle_counter|temp_count\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000110011000111011100110011101010101011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \middle_counter|ALT_INV_temp_count\(0),
	datab => \middle_counter|ALT_INV_temp_count\(4),
	datad => \middle_counter|ALT_INV_temp_count\(1),
	datae => \middle_counter|ALT_INV_temp_count\(3),
	dataf => \middle_counter|ALT_INV_temp_count\(2),
	combout => \middle_led_out|Mux0~0_combout\);

-- Location: LABCELL_X83_Y34_N48
\right_led_out|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux6~0_combout\ = ( \right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( (\right_counter|temp_count\(2)) # (\right_counter|temp_count\(1)) ) ) ) # ( !\right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( 
-- (!\right_counter|temp_count\(2)) # (!\right_counter|temp_count\(1) $ (!\right_counter|temp_count\(3))) ) ) ) # ( \right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1)) # ((\right_counter|temp_count\(2)) # 
-- (\right_counter|temp_count\(3))) ) ) ) # ( !\right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( (\right_counter|temp_count\(3) & !\right_counter|temp_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000101011111111111111111111010110100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(3),
	datad => \right_counter|ALT_INV_temp_count\(2),
	datae => \right_counter|ALT_INV_temp_count\(4),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_led_out|Mux6~0_combout\);

-- Location: LABCELL_X83_Y34_N21
\right_led_out|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux5~0_combout\ = ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(3) & ((!\right_counter|temp_count\(2)) # ((!\right_counter|temp_count\(0) & \right_counter|temp_count\(1))))) # (\right_counter|temp_count\(3) & 
-- (((\right_counter|temp_count\(1))) # (\right_counter|temp_count\(2)))) ) ) # ( !\right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(3) & ((!\right_counter|temp_count\(0) $ (!\right_counter|temp_count\(1))) # (\right_counter|temp_count\(2)))) # 
-- (\right_counter|temp_count\(3) & (!\right_counter|temp_count\(2) $ (((\right_counter|temp_count\(0) & !\right_counter|temp_count\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101111100110100110011111110101101011111001101001100111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(3),
	datab => \right_counter|ALT_INV_temp_count\(2),
	datac => \right_counter|ALT_INV_temp_count\(0),
	datad => \right_counter|ALT_INV_temp_count\(1),
	datae => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_led_out|Mux5~0_combout\);

-- Location: LABCELL_X83_Y34_N0
\right_led_out|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux4~0_combout\ = ( \right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(2)) # (\right_counter|temp_count\(3)) ) ) ) # ( !\right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( 
-- (!\right_counter|temp_count\(1) & (!\right_counter|temp_count\(3) & \right_counter|temp_count\(2))) # (\right_counter|temp_count\(1) & (\right_counter|temp_count\(3))) ) ) ) # ( \right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( 
-- (\right_counter|temp_count\(3) & ((\right_counter|temp_count\(2)) # (\right_counter|temp_count\(1)))) ) ) ) # ( !\right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( !\right_counter|temp_count\(2) $ (((!\right_counter|temp_count\(1) & 
-- !\right_counter|temp_count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000000001010000111100000101101001011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(3),
	datad => \right_counter|ALT_INV_temp_count\(2),
	datae => \right_counter|ALT_INV_temp_count\(4),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_led_out|Mux4~0_combout\);

-- Location: LABCELL_X83_Y34_N45
\right_led_out|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux3~0_combout\ = ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(3) & (\right_counter|temp_count\(0) & ((!\right_counter|temp_count\(1)) # (\right_counter|temp_count\(2))))) # (\right_counter|temp_count\(3) & 
-- (((\right_counter|temp_count\(1))) # (\right_counter|temp_count\(2)))) ) ) # ( !\right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(2) & (!\right_counter|temp_count\(0) & ((!\right_counter|temp_count\(1)) # (\right_counter|temp_count\(3))))) # 
-- (\right_counter|temp_count\(2) & (((\right_counter|temp_count\(3) & !\right_counter|temp_count\(1))) # (\right_counter|temp_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001101000011000110110101011111010011010000110001101101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(3),
	datab => \right_counter|ALT_INV_temp_count\(2),
	datac => \right_counter|ALT_INV_temp_count\(0),
	datad => \right_counter|ALT_INV_temp_count\(1),
	datae => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_led_out|Mux3~0_combout\);

-- Location: LABCELL_X83_Y34_N15
\right_led_out|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux2~0_combout\ = ( \right_counter|temp_count\(4) & ( (!\right_counter|temp_count\(0) & (((!\right_counter|temp_count\(2) & \right_counter|temp_count\(1))) # (\right_counter|temp_count\(3)))) # (\right_counter|temp_count\(0) & 
-- ((!\right_counter|temp_count\(1) & ((\right_counter|temp_count\(2)))) # (\right_counter|temp_count\(1) & (\right_counter|temp_count\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100111101010100000000000000000101001111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(3),
	datab => \right_counter|ALT_INV_temp_count\(2),
	datac => \right_counter|ALT_INV_temp_count\(0),
	datad => \right_counter|ALT_INV_temp_count\(1),
	datae => \right_counter|ALT_INV_temp_count\(4),
	combout => \right_led_out|Mux2~0_combout\);

-- Location: LABCELL_X83_Y34_N24
\right_led_out|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux1~0_combout\ = ( \right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( \right_counter|temp_count\(3) ) ) ) # ( !\right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1) & 
-- (\right_counter|temp_count\(3))) # (\right_counter|temp_count\(1) & (!\right_counter|temp_count\(3) & !\right_counter|temp_count\(2))) ) ) ) # ( \right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1) & 
-- (!\right_counter|temp_count\(3) $ (\right_counter|temp_count\(2)))) # (\right_counter|temp_count\(1) & ((\right_counter|temp_count\(2)) # (\right_counter|temp_count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001010101111101011010000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(3),
	datad => \right_counter|ALT_INV_temp_count\(2),
	datae => \right_counter|ALT_INV_temp_count\(4),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_led_out|Mux1~0_combout\);

-- Location: LABCELL_X83_Y34_N54
\right_led_out|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \right_led_out|Mux0~0_combout\ = ( \right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1) & ((!\right_counter|temp_count\(3)) # (\right_counter|temp_count\(2)))) # (\right_counter|temp_count\(1) & 
-- (\right_counter|temp_count\(3))) ) ) ) # ( !\right_counter|temp_count\(4) & ( \right_counter|temp_count\(0) & ( (\right_counter|temp_count\(3) & !\right_counter|temp_count\(2)) ) ) ) # ( \right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( 
-- ((\right_counter|temp_count\(1) & \right_counter|temp_count\(3))) # (\right_counter|temp_count\(2)) ) ) ) # ( !\right_counter|temp_count\(4) & ( !\right_counter|temp_count\(0) & ( (!\right_counter|temp_count\(1) & (\right_counter|temp_count\(3))) # 
-- (\right_counter|temp_count\(1) & ((!\right_counter|temp_count\(3)) # (\right_counter|temp_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011111000001011111111100001111000000001010010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \right_counter|ALT_INV_temp_count\(1),
	datac => \right_counter|ALT_INV_temp_count\(3),
	datad => \right_counter|ALT_INV_temp_count\(2),
	datae => \right_counter|ALT_INV_temp_count\(4),
	dataf => \right_counter|ALT_INV_temp_count\(0),
	combout => \right_led_out|Mux0~0_combout\);
END structure;


