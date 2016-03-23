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

-- DATE "03/22/2016 20:22:11"

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

ENTITY 	g14_rotor_stepper IS
    PORT (
	keypress : IN std_logic;
	knock_m : IN std_logic;
	knock_r : IN std_logic;
	clock : IN std_logic;
	init : IN std_logic;
	en_l : OUT std_logic;
	en_m : OUT std_logic;
	en_r : OUT std_logic;
	load : OUT std_logic
	);
END g14_rotor_stepper;

-- Design Ports Information
-- en_l	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_m	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_r	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- init	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- knock_r	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- knock_m	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keypress	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_rotor_stepper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_keypress : std_logic;
SIGNAL ww_knock_m : std_logic;
SIGNAL ww_knock_r : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_en_l : std_logic;
SIGNAL ww_en_m : std_logic;
SIGNAL ww_en_r : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \knock_m~input_o\ : std_logic;
SIGNAL \knock_r~input_o\ : std_logic;
SIGNAL \next_state.s2_221~combout\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \current_state.s2~q\ : std_logic;
SIGNAL \next_state.s3_211~combout\ : std_logic;
SIGNAL \current_state.s3~q\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \next_state.s5_191~combout\ : std_logic;
SIGNAL \current_state.s5~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \next_state.s4_201~combout\ : std_logic;
SIGNAL \current_state.s4~q\ : std_logic;
SIGNAL \current_state.s0~feeder_combout\ : std_logic;
SIGNAL \current_state.s0~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \next_state.s1_231~combout\ : std_logic;
SIGNAL \current_state.s1~q\ : std_logic;
SIGNAL \keypress~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \next_state.s7_171~combout\ : std_logic;
SIGNAL \current_state.s7~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \next_state.s6_181~combout\ : std_logic;
SIGNAL \current_state.s6~q\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \en_l$latch~combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \en_m$latch~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \en_r$latch~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \load$latch~combout\ : std_logic;
SIGNAL \ALT_INV_keypress~input_o\ : std_logic;
SIGNAL \ALT_INV_knock_m~input_o\ : std_logic;
SIGNAL \ALT_INV_knock_r~input_o\ : std_logic;
SIGNAL \ALT_INV_init~input_o\ : std_logic;
SIGNAL \ALT_INV_next_state.s3_211~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s2_221~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s4_201~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s5_191~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s7_171~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s1_231~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.s6_181~combout\ : std_logic;
SIGNAL \ALT_INV_load$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_r$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_m$latch~combout\ : std_logic;
SIGNAL \ALT_INV_en_l$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_current_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_current_state.s0~q\ : std_logic;
SIGNAL \ALT_INV_current_state.s4~q\ : std_logic;
SIGNAL \ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \ALT_INV_current_state.s5~q\ : std_logic;
SIGNAL \ALT_INV_current_state.s7~q\ : std_logic;
SIGNAL \ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_current_state.s6~q\ : std_logic;

BEGIN

ww_keypress <= keypress;
ww_knock_m <= knock_m;
ww_knock_r <= knock_r;
ww_clock <= clock;
ww_init <= init;
en_l <= ww_en_l;
en_m <= ww_en_m;
en_r <= ww_en_r;
load <= ww_load;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_keypress~input_o\ <= NOT \keypress~input_o\;
\ALT_INV_knock_m~input_o\ <= NOT \knock_m~input_o\;
\ALT_INV_knock_r~input_o\ <= NOT \knock_r~input_o\;
\ALT_INV_init~input_o\ <= NOT \init~input_o\;
\ALT_INV_next_state.s3_211~combout\ <= NOT \next_state.s3_211~combout\;
\ALT_INV_next_state.s2_221~combout\ <= NOT \next_state.s2_221~combout\;
\ALT_INV_next_state.s4_201~combout\ <= NOT \next_state.s4_201~combout\;
\ALT_INV_next_state.s5_191~combout\ <= NOT \next_state.s5_191~combout\;
\ALT_INV_next_state.s7_171~combout\ <= NOT \next_state.s7_171~combout\;
\ALT_INV_next_state.s1_231~combout\ <= NOT \next_state.s1_231~combout\;
\ALT_INV_next_state.s6_181~combout\ <= NOT \next_state.s6_181~combout\;
\ALT_INV_load$latch~combout\ <= NOT \load$latch~combout\;
\ALT_INV_en_r$latch~combout\ <= NOT \en_r$latch~combout\;
\ALT_INV_en_m$latch~combout\ <= NOT \en_m$latch~combout\;
\ALT_INV_en_l$latch~combout\ <= NOT \en_l$latch~combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector10~1_combout\ <= NOT \Selector10~1_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_WideOr6~combout\ <= NOT \WideOr6~combout\;
\ALT_INV_current_state.s3~q\ <= NOT \current_state.s3~q\;
\ALT_INV_current_state.s2~q\ <= NOT \current_state.s2~q\;
\ALT_INV_current_state.s0~q\ <= NOT \current_state.s0~q\;
\ALT_INV_current_state.s4~q\ <= NOT \current_state.s4~q\;
\ALT_INV_WideOr7~combout\ <= NOT \WideOr7~combout\;
\ALT_INV_current_state.s5~q\ <= NOT \current_state.s5~q\;
\ALT_INV_current_state.s7~q\ <= NOT \current_state.s7~q\;
\ALT_INV_WideOr8~0_combout\ <= NOT \WideOr8~0_combout\;
\ALT_INV_current_state.s1~q\ <= NOT \current_state.s1~q\;
\ALT_INV_current_state.s6~q\ <= NOT \current_state.s6~q\;

-- Location: IOOBUF_X89_Y11_N79
\en_l~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_l$latch~combout\,
	devoe => ww_devoe,
	o => ww_en_l);

-- Location: IOOBUF_X89_Y11_N96
\en_m~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_m$latch~combout\,
	devoe => ww_devoe,
	o => ww_en_m);

-- Location: IOOBUF_X89_Y11_N45
\en_r~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_r$latch~combout\,
	devoe => ww_devoe,
	o => ww_en_r);

-- Location: IOOBUF_X89_Y13_N5
\load~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \load$latch~combout\,
	devoe => ww_devoe,
	o => ww_load);

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

-- Location: IOIBUF_X89_Y13_N38
\knock_m~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_knock_m,
	o => \knock_m~input_o\);

-- Location: IOIBUF_X89_Y13_N21
\knock_r~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_knock_r,
	o => \knock_r~input_o\);

-- Location: LABCELL_X88_Y13_N33
\next_state.s2_221\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s2_221~combout\ = ( \current_state.s1~q\ & ( (!\Selector9~0_combout\) # (\next_state.s2_221~combout\) ) ) # ( !\current_state.s1~q\ & ( (\Selector9~0_combout\ & \next_state.s2_221~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_next_state.s2_221~combout\,
	dataf => \ALT_INV_current_state.s1~q\,
	combout => \next_state.s2_221~combout\);

-- Location: IOIBUF_X89_Y15_N21
\init~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

-- Location: FF_X88_Y13_N35
\current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.s2_221~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s2~q\);

-- Location: LABCELL_X88_Y13_N48
\next_state.s3_211\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s3_211~combout\ = ( \current_state.s2~q\ & ( (!\Selector9~0_combout\) # (\next_state.s3_211~combout\) ) ) # ( !\current_state.s2~q\ & ( (\Selector9~0_combout\ & \next_state.s3_211~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_next_state.s3_211~combout\,
	dataf => \ALT_INV_current_state.s2~q\,
	combout => \next_state.s3_211~combout\);

-- Location: FF_X88_Y13_N50
\current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.s3_211~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s3~q\);

-- Location: LABCELL_X88_Y13_N12
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \current_state.s3~q\ & ( (!\knock_m~input_o\ & \knock_r~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_knock_m~input_o\,
	datac => \ALT_INV_knock_r~input_o\,
	dataf => \ALT_INV_current_state.s3~q\,
	combout => \Selector10~1_combout\);

-- Location: LABCELL_X88_Y13_N42
\next_state.s5_191\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s5_191~combout\ = ( \Selector10~1_combout\ & ( (!\Selector9~0_combout\) # (\next_state.s5_191~combout\) ) ) # ( !\Selector10~1_combout\ & ( (\Selector9~0_combout\ & \next_state.s5_191~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_next_state.s5_191~combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \next_state.s5_191~combout\);

-- Location: FF_X88_Y13_N44
\current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.s5_191~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s5~q\);

-- Location: MLABCELL_X87_Y13_N6
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( !\knock_m~input_o\ & ( \current_state.s3~q\ & ( !\knock_r~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_knock_r~input_o\,
	datae => \ALT_INV_knock_m~input_o\,
	dataf => \ALT_INV_current_state.s3~q\,
	combout => \Selector11~0_combout\);

-- Location: MLABCELL_X87_Y13_N51
\next_state.s4_201\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s4_201~combout\ = ( \Selector9~0_combout\ & ( \Selector11~0_combout\ & ( \next_state.s4_201~combout\ ) ) ) # ( !\Selector9~0_combout\ & ( \Selector11~0_combout\ ) ) # ( \Selector9~0_combout\ & ( !\Selector11~0_combout\ & ( 
-- \next_state.s4_201~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_next_state.s4_201~combout\,
	datae => \ALT_INV_Selector9~0_combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \next_state.s4_201~combout\);

-- Location: FF_X88_Y13_N14
\current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \next_state.s4_201~combout\,
	clrn => \ALT_INV_init~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s4~q\);

-- Location: LABCELL_X88_Y13_N36
\current_state.s0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_state.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \current_state.s0~feeder_combout\);

-- Location: FF_X88_Y13_N38
\current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \current_state.s0~feeder_combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s0~q\);

-- Location: LABCELL_X88_Y13_N3
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( \current_state.s0~q\ & ( ((\current_state.s4~q\) # (\current_state.s5~q\)) # (\current_state.s6~q\) ) ) # ( !\current_state.s0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s6~q\,
	datab => \ALT_INV_current_state.s5~q\,
	datac => \ALT_INV_current_state.s4~q\,
	dataf => \ALT_INV_current_state.s0~q\,
	combout => \WideOr2~combout\);

-- Location: LABCELL_X88_Y13_N24
\next_state.s1_231\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s1_231~combout\ = ( \WideOr2~combout\ & ( (!\Selector9~0_combout\) # (\next_state.s1_231~combout\) ) ) # ( !\WideOr2~combout\ & ( (\next_state.s1_231~combout\ & \Selector9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_next_state.s1_231~combout\,
	datac => \ALT_INV_Selector9~0_combout\,
	dataf => \ALT_INV_WideOr2~combout\,
	combout => \next_state.s1_231~combout\);

-- Location: FF_X88_Y13_N26
\current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.s1_231~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s1~q\);

-- Location: IOIBUF_X89_Y13_N55
\keypress~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keypress,
	o => \keypress~input_o\);

-- Location: LABCELL_X88_Y13_N30
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \keypress~input_o\ & ( \current_state.s1~q\ ) ) # ( !\keypress~input_o\ & ( \current_state.s2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s1~q\,
	datad => \ALT_INV_current_state.s2~q\,
	dataf => \ALT_INV_keypress~input_o\,
	combout => \Selector9~0_combout\);

-- Location: MLABCELL_X87_Y13_N39
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \knock_m~input_o\ & ( \current_state.s3~q\ & ( \knock_r~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_knock_r~input_o\,
	datae => \ALT_INV_knock_m~input_o\,
	dataf => \ALT_INV_current_state.s3~q\,
	combout => \Selector10~0_combout\);

-- Location: MLABCELL_X87_Y13_N18
\next_state.s7_171\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s7_171~combout\ = ( \Selector9~0_combout\ & ( \Selector10~0_combout\ & ( \next_state.s7_171~combout\ ) ) ) # ( !\Selector9~0_combout\ & ( \Selector10~0_combout\ ) ) # ( \Selector9~0_combout\ & ( !\Selector10~0_combout\ & ( 
-- \next_state.s7_171~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_next_state.s7_171~combout\,
	datae => \ALT_INV_Selector9~0_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \next_state.s7_171~combout\);

-- Location: FF_X88_Y13_N56
\current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \next_state.s7_171~combout\,
	clrn => \ALT_INV_init~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s7~q\);

-- Location: LABCELL_X88_Y13_N6
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \current_state.s3~q\ & ( ((!\knock_r~input_o\ & \knock_m~input_o\)) # (\current_state.s7~q\) ) ) # ( !\current_state.s3~q\ & ( \current_state.s7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_knock_r~input_o\,
	datac => \ALT_INV_knock_m~input_o\,
	datad => \ALT_INV_current_state.s7~q\,
	dataf => \ALT_INV_current_state.s3~q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X88_Y13_N51
\next_state.s6_181\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.s6_181~combout\ = ( \Selector8~0_combout\ & ( (!\Selector9~0_combout\) # (\next_state.s6_181~combout\) ) ) # ( !\Selector8~0_combout\ & ( (\Selector9~0_combout\ & \next_state.s6_181~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_next_state.s6_181~combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \next_state.s6_181~combout\);

-- Location: FF_X88_Y13_N53
\current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.s6_181~combout\,
	clrn => \ALT_INV_init~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.s6~q\);

-- Location: LABCELL_X88_Y13_N21
\WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = ( \current_state.s1~q\ ) # ( !\current_state.s1~q\ & ( \current_state.s6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s6~q\,
	dataf => \ALT_INV_current_state.s1~q\,
	combout => \WideOr8~0_combout\);

-- Location: LABCELL_X88_Y13_N57
\en_l$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_l$latch~combout\ = ( \current_state.s6~q\ & ( (\en_l$latch~combout\) # (\WideOr8~0_combout\) ) ) # ( !\current_state.s6~q\ & ( (!\WideOr8~0_combout\ & \en_l$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr8~0_combout\,
	datad => \ALT_INV_en_l$latch~combout\,
	dataf => \ALT_INV_current_state.s6~q\,
	combout => \en_l$latch~combout\);

-- Location: LABCELL_X88_Y13_N15
WideOr6 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = ( \current_state.s2~q\ ) # ( !\current_state.s2~q\ & ( ((!\current_state.s0~q\) # (\current_state.s4~q\)) # (\current_state.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s3~q\,
	datac => \ALT_INV_current_state.s4~q\,
	datad => \ALT_INV_current_state.s0~q\,
	dataf => \ALT_INV_current_state.s2~q\,
	combout => \WideOr6~combout\);

-- Location: LABCELL_X88_Y13_N18
WideOr7 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = ( \current_state.s5~q\ ) # ( !\current_state.s5~q\ & ( (\current_state.s7~q\) # (\current_state.s6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.s6~q\,
	datad => \ALT_INV_current_state.s7~q\,
	dataf => \ALT_INV_current_state.s5~q\,
	combout => \WideOr7~combout\);

-- Location: LABCELL_X88_Y13_N45
\en_m$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_m$latch~combout\ = ( \WideOr7~combout\ & ( (!\WideOr6~combout\) # (\en_m$latch~combout\) ) ) # ( !\WideOr7~combout\ & ( (\WideOr6~combout\ & \en_m$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr6~combout\,
	datad => \ALT_INV_en_m$latch~combout\,
	dataf => \ALT_INV_WideOr7~combout\,
	combout => \en_m$latch~combout\);

-- Location: LABCELL_X88_Y13_N27
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( \current_state.s3~q\ ) # ( !\current_state.s3~q\ & ( (!\current_state.s0~q\) # ((\current_state.s7~q\) # (\current_state.s2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s0~q\,
	datac => \ALT_INV_current_state.s2~q\,
	datad => \ALT_INV_current_state.s7~q\,
	dataf => \ALT_INV_current_state.s3~q\,
	combout => \WideOr4~combout\);

-- Location: LABCELL_X88_Y13_N39
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( !\current_state.s5~q\ & ( (!\current_state.s6~q\ & !\current_state.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.s6~q\,
	datac => \ALT_INV_current_state.s4~q\,
	dataf => \ALT_INV_current_state.s5~q\,
	combout => \WideOr2~0_combout\);

-- Location: LABCELL_X88_Y13_N0
\en_r$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_r$latch~combout\ = ( \WideOr2~0_combout\ & ( (\en_r$latch~combout\ & \WideOr4~combout\) ) ) # ( !\WideOr2~0_combout\ & ( (!\WideOr4~combout\) # (\en_r$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_en_r$latch~combout\,
	datad => \ALT_INV_WideOr4~combout\,
	dataf => \ALT_INV_WideOr2~0_combout\,
	combout => \en_r$latch~combout\);

-- Location: LABCELL_X88_Y13_N9
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( \current_state.s1~q\ ) # ( !\current_state.s1~q\ & ( !\current_state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_state.s0~q\,
	dataf => \ALT_INV_current_state.s1~q\,
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X88_Y13_N54
\load$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \load$latch~combout\ = ( \WideOr0~0_combout\ & ( !\current_state.s1~q\ ) ) # ( !\WideOr0~0_combout\ & ( \load$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load$latch~combout\,
	datac => \ALT_INV_current_state.s1~q\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \load$latch~combout\);

-- Location: MLABCELL_X34_Y7_N0
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


