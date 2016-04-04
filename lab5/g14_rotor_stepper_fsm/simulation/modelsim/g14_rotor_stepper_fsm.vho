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

-- DATE "04/04/2016 16:35:30"

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

ENTITY 	g14_rotor_stepper_fsm IS
    PORT (
	keypress : IN std_logic;
	knock_m : IN std_logic;
	knock_r : IN std_logic;
	clk : IN std_logic;
	init : IN std_logic;
	en_l : OUT std_logic;
	en_m : OUT std_logic;
	en_r : OUT std_logic;
	load : OUT std_logic
	);
END g14_rotor_stepper_fsm;

-- Design Ports Information
-- en_l	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_m	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_r	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- knock_r	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- knock_m	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- init	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keypress	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_rotor_stepper_fsm IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_en_l : std_logic;
SIGNAL ww_en_m : std_logic;
SIGNAL ww_en_r : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \knock_m~input_o\ : std_logic;
SIGNAL \knock_r~input_o\ : std_logic;
SIGNAL \keypress~input_o\ : std_logic;
SIGNAL \state.s0~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \en_r~0_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.s7~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.s6~q\ : std_logic;
SIGNAL \en_m~0_combout\ : std_logic;
SIGNAL \ALT_INV_keypress~input_o\ : std_logic;
SIGNAL \ALT_INV_init~input_o\ : std_logic;
SIGNAL \ALT_INV_knock_m~input_o\ : std_logic;
SIGNAL \ALT_INV_knock_r~input_o\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;
SIGNAL \ALT_INV_en_r~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s4~q\ : std_logic;
SIGNAL \ALT_INV_state.s5~q\ : std_logic;
SIGNAL \ALT_INV_state.s7~q\ : std_logic;
SIGNAL \ALT_INV_state.s6~q\ : std_logic;

BEGIN

ww_keypress <= keypress;
ww_knock_m <= knock_m;
ww_knock_r <= knock_r;
ww_clk <= clk;
ww_init <= init;
en_l <= ww_en_l;
en_m <= ww_en_m;
en_r <= ww_en_r;
load <= ww_load;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_keypress~input_o\ <= NOT \keypress~input_o\;
\ALT_INV_init~input_o\ <= NOT \init~input_o\;
\ALT_INV_knock_m~input_o\ <= NOT \knock_m~input_o\;
\ALT_INV_knock_r~input_o\ <= NOT \knock_r~input_o\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;
\ALT_INV_en_r~0_combout\ <= NOT \en_r~0_combout\;
\ALT_INV_state.s4~q\ <= NOT \state.s4~q\;
\ALT_INV_state.s5~q\ <= NOT \state.s5~q\;
\ALT_INV_state.s7~q\ <= NOT \state.s7~q\;
\ALT_INV_state.s6~q\ <= NOT \state.s6~q\;

-- Location: IOOBUF_X68_Y0_N36
\en_l~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s6~q\,
	devoe => ww_devoe,
	o => ww_en_l);

-- Location: IOOBUF_X66_Y0_N59
\en_m~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \en_m~0_combout\,
	devoe => ww_devoe,
	o => ww_en_m);

-- Location: IOOBUF_X68_Y0_N19
\en_r~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_r~0_combout\,
	devoe => ww_devoe,
	o => ww_en_r);

-- Location: IOOBUF_X68_Y0_N2
\load~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.s0~q\,
	devoe => ww_devoe,
	o => ww_load);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
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

-- Location: IOIBUF_X66_Y0_N41
\init~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\knock_m~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_knock_m,
	o => \knock_m~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\knock_r~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_knock_r,
	o => \knock_r~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\keypress~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keypress,
	o => \keypress~input_o\);

-- Location: LABCELL_X66_Y1_N18
\state.s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.s0~0_combout\ = ( !\init~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_init~input_o\,
	combout => \state.s0~0_combout\);

-- Location: FF_X66_Y1_N20
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LABCELL_X66_Y1_N54
\state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~21_combout\ = ( !\knock_r~input_o\ & ( \state.s3~q\ & ( (!\knock_m~input_o\ & !\init~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_knock_m~input_o\,
	datac => \ALT_INV_init~input_o\,
	datae => \ALT_INV_knock_r~input_o\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \state~21_combout\);

-- Location: FF_X66_Y1_N56
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LABCELL_X66_Y1_N51
\state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~20_combout\ = ( \knock_r~input_o\ & ( \state.s3~q\ & ( (!\knock_m~input_o\ & !\init~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_knock_m~input_o\,
	datad => \ALT_INV_init~input_o\,
	datae => \ALT_INV_knock_r~input_o\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \state~20_combout\);

-- Location: FF_X66_Y1_N53
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: LABCELL_X66_Y1_N24
\en_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_r~0_combout\ = ( !\state.s6~q\ & ( !\state.s5~q\ & ( !\state.s4~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s4~q\,
	datae => \ALT_INV_state.s6~q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \en_r~0_combout\);

-- Location: LABCELL_X66_Y1_N45
\state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~24_combout\ = ( \state.s1~q\ & ( \en_r~0_combout\ & ( (!\init~input_o\ & ((!\keypress~input_o\) # (!\state.s0~q\))) ) ) ) # ( !\state.s1~q\ & ( \en_r~0_combout\ & ( (!\init~input_o\ & !\state.s0~q\) ) ) ) # ( \state.s1~q\ & ( !\en_r~0_combout\ & ( 
-- !\init~input_o\ ) ) ) # ( !\state.s1~q\ & ( !\en_r~0_combout\ & ( !\init~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_init~input_o\,
	datac => \ALT_INV_keypress~input_o\,
	datad => \ALT_INV_state.s0~q\,
	datae => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_en_r~0_combout\,
	combout => \state~24_combout\);

-- Location: FF_X66_Y1_N46
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LABCELL_X66_Y1_N39
\state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~23_combout\ = ( \state.s1~q\ & ( (!\init~input_o\ & \keypress~input_o\) ) ) # ( !\state.s1~q\ & ( (!\init~input_o\ & (\keypress~input_o\ & \state.s2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_init~input_o\,
	datac => \ALT_INV_keypress~input_o\,
	datad => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \state~23_combout\);

-- Location: FF_X66_Y1_N41
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LABCELL_X66_Y1_N9
\state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~22_combout\ = ( \state.s2~q\ & ( (!\init~input_o\ & !\keypress~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_init~input_o\,
	datac => \ALT_INV_keypress~input_o\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \state~22_combout\);

-- Location: FF_X66_Y1_N11
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: LABCELL_X66_Y1_N36
\state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~19_combout\ = ( \state.s3~q\ & ( (!\init~input_o\ & (\knock_m~input_o\ & \knock_r~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_init~input_o\,
	datac => \ALT_INV_knock_m~input_o\,
	datad => \ALT_INV_knock_r~input_o\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \state~19_combout\);

-- Location: FF_X66_Y1_N38
\state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s7~q\);

-- Location: LABCELL_X66_Y1_N3
\state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~18_combout\ = ( \state.s3~q\ & ( (!\init~input_o\ & (((\knock_m~input_o\ & !\knock_r~input_o\)) # (\state.s7~q\))) ) ) # ( !\state.s3~q\ & ( (!\init~input_o\ & \state.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100000101010100010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_init~input_o\,
	datab => \ALT_INV_knock_m~input_o\,
	datac => \ALT_INV_knock_r~input_o\,
	datad => \ALT_INV_state.s7~q\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \state~18_combout\);

-- Location: FF_X66_Y1_N5
\state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s6~q\);

-- Location: LABCELL_X66_Y1_N0
\en_m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \en_m~0_combout\ = ( \state.s5~q\ ) # ( !\state.s5~q\ & ( (\state.s6~q\) # (\state.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s7~q\,
	datad => \ALT_INV_state.s6~q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \en_m~0_combout\);

-- Location: LABCELL_X66_Y10_N0
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


