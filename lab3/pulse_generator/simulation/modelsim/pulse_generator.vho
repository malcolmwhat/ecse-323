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
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/08/2016 16:13:34"

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

ENTITY 	pulse_generator IS
    PORT (
	clock : IN std_logic;
	epulse : OUT std_logic
	);
END pulse_generator;

-- Design Ports Information
-- epulse	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pulse_generator IS
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
SIGNAL ww_epulse : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita11~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit[11]~feeder_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita12~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita13~sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita14~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita15~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita16~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita17~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita18~sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita19~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita20~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita21~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita22~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita23~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_comb_bita24~sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \down_counter|auto_generated|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|ALT_INV_counter_reg_bit[19]~DUPLICATE_q\ : std_logic;
SIGNAL \down_counter|auto_generated|ALT_INV_counter_reg_bit[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \down_counter|auto_generated|ALT_INV_counter_comb_bita11~sumout\ : std_logic;
SIGNAL \down_counter|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clock <= clock;
epulse <= ww_epulse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\down_counter|auto_generated|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\ <= NOT \down_counter|auto_generated|counter_reg_bit[1]~DUPLICATE_q\;
\down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\ <= NOT \down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\;
\down_counter|auto_generated|ALT_INV_counter_reg_bit[19]~DUPLICATE_q\ <= NOT \down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE_q\;
\down_counter|auto_generated|ALT_INV_counter_reg_bit[13]~DUPLICATE_q\ <= NOT \down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE_q\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\down_counter|auto_generated|ALT_INV_counter_comb_bita11~sumout\ <= NOT \down_counter|auto_generated|counter_comb_bita11~sumout\;
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \down_counter|auto_generated|counter_reg_bit\(1);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \down_counter|auto_generated|counter_reg_bit\(2);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \down_counter|auto_generated|counter_reg_bit\(3);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(4) <= NOT \down_counter|auto_generated|counter_reg_bit\(4);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(5) <= NOT \down_counter|auto_generated|counter_reg_bit\(5);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(6) <= NOT \down_counter|auto_generated|counter_reg_bit\(6);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(7) <= NOT \down_counter|auto_generated|counter_reg_bit\(7);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(8) <= NOT \down_counter|auto_generated|counter_reg_bit\(8);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(9) <= NOT \down_counter|auto_generated|counter_reg_bit\(9);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(10) <= NOT \down_counter|auto_generated|counter_reg_bit\(10);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(11) <= NOT \down_counter|auto_generated|counter_reg_bit\(11);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(12) <= NOT \down_counter|auto_generated|counter_reg_bit\(12);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(14) <= NOT \down_counter|auto_generated|counter_reg_bit\(14);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(15) <= NOT \down_counter|auto_generated|counter_reg_bit\(15);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(16) <= NOT \down_counter|auto_generated|counter_reg_bit\(16);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(17) <= NOT \down_counter|auto_generated|counter_reg_bit\(17);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(18) <= NOT \down_counter|auto_generated|counter_reg_bit\(18);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(19) <= NOT \down_counter|auto_generated|counter_reg_bit\(19);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(20) <= NOT \down_counter|auto_generated|counter_reg_bit\(20);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(21) <= NOT \down_counter|auto_generated|counter_reg_bit\(21);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(22) <= NOT \down_counter|auto_generated|counter_reg_bit\(22);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(23) <= NOT \down_counter|auto_generated|counter_reg_bit\(23);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(24) <= NOT \down_counter|auto_generated|counter_reg_bit\(24);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \down_counter|auto_generated|counter_reg_bit\(0);
\down_counter|auto_generated|ALT_INV_counter_reg_bit\(13) <= NOT \down_counter|auto_generated|counter_reg_bit\(13);

-- Location: IOOBUF_X89_Y8_N39
\epulse~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => ww_epulse);

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

-- Location: LABCELL_X88_Y8_N30
\down_counter|auto_generated|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita0~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \down_counter|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \down_counter|auto_generated|counter_comb_bita0~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X88_Y8_N31
\down_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita0~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(0));

-- Location: LABCELL_X88_Y8_N33
\down_counter|auto_generated|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita1~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(1) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita0~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita1~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(1) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(1),
	cin => \down_counter|auto_generated|counter_comb_bita0~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita1~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X88_Y8_N35
\down_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita1~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(1));

-- Location: LABCELL_X88_Y8_N36
\down_counter|auto_generated|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita2~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita1~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(2) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \down_counter|auto_generated|counter_comb_bita1~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita2~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X88_Y8_N38
\down_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita2~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(2));

-- Location: LABCELL_X88_Y8_N39
\down_counter|auto_generated|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita3~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(3) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita2~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita3~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(3) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(3),
	cin => \down_counter|auto_generated|counter_comb_bita2~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita3~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X88_Y8_N41
\down_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita3~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(3));

-- Location: LABCELL_X88_Y8_N42
\down_counter|auto_generated|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita4~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(4) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita3~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita4~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(4) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(4),
	cin => \down_counter|auto_generated|counter_comb_bita3~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita4~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X88_Y8_N43
\down_counter|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita4~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(4));

-- Location: LABCELL_X88_Y8_N45
\down_counter|auto_generated|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita5~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita4~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita5~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(5) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	cin => \down_counter|auto_generated|counter_comb_bita4~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita5~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X88_Y8_N47
\down_counter|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita5~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(5));

-- Location: LABCELL_X88_Y8_N48
\down_counter|auto_generated|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita6~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(6) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita5~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita6~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(6) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(6),
	cin => \down_counter|auto_generated|counter_comb_bita5~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita6~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita6~COUT\);

-- Location: LABCELL_X88_Y8_N24
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

-- Location: FF_X88_Y8_N50
\down_counter|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita6~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(6));

-- Location: FF_X88_Y8_N34
\down_counter|auto_generated|counter_reg_bit[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita1~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\down_counter|auto_generated|counter_reg_bit\(5) & ( !\down_counter|auto_generated|counter_reg_bit[1]~DUPLICATE_q\ & ( (!\down_counter|auto_generated|counter_reg_bit\(6) & (!\down_counter|auto_generated|counter_reg_bit\(4) & 
-- (!\down_counter|auto_generated|counter_reg_bit\(2) & !\down_counter|auto_generated|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(6),
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(2),
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(5),
	dataf => \down_counter|auto_generated|ALT_INV_counter_reg_bit[1]~DUPLICATE_q\,
	combout => \Equal0~3_combout\);

-- Location: FF_X88_Y7_N11
\down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita13~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N51
\down_counter|auto_generated|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita7~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(7) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita6~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita7~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(7) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(7),
	cin => \down_counter|auto_generated|counter_comb_bita6~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita7~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X88_Y8_N52
\down_counter|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita7~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(7));

-- Location: LABCELL_X88_Y8_N54
\down_counter|auto_generated|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita8~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita7~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita8~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(8) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	cin => \down_counter|auto_generated|counter_comb_bita7~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita8~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X88_Y8_N56
\down_counter|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita8~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(8));

-- Location: LABCELL_X88_Y8_N57
\down_counter|auto_generated|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita9~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita8~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita9~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(9) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	cin => \down_counter|auto_generated|counter_comb_bita8~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita9~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X88_Y8_N59
\down_counter|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita9~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(9));

-- Location: LABCELL_X88_Y7_N0
\down_counter|auto_generated|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita10~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita9~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita10~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit[10]~DUPLICATE_q\,
	cin => \down_counter|auto_generated|counter_comb_bita9~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita10~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X88_Y7_N2
\down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita10~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit[10]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N3
\down_counter|auto_generated|counter_comb_bita11\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita11~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita10~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita11~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(11) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita10~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	cin => \down_counter|auto_generated|counter_comb_bita10~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita11~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita11~COUT\);

-- Location: LABCELL_X88_Y8_N3
\down_counter|auto_generated|counter_reg_bit[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_reg_bit[11]~feeder_combout\ = ( \down_counter|auto_generated|counter_comb_bita11~sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \down_counter|auto_generated|ALT_INV_counter_comb_bita11~sumout\,
	combout => \down_counter|auto_generated|counter_reg_bit[11]~feeder_combout\);

-- Location: FF_X88_Y8_N5
\down_counter|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_reg_bit[11]~feeder_combout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(11));

-- Location: LABCELL_X88_Y7_N6
\down_counter|auto_generated|counter_comb_bita12\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita12~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita11~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita12~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(12) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita11~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	cin => \down_counter|auto_generated|counter_comb_bita11~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita12~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X88_Y7_N8
\down_counter|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita12~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(12));

-- Location: LABCELL_X88_Y7_N9
\down_counter|auto_generated|counter_comb_bita13\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita13~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita12~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita13~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit[13]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita12~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit[13]~DUPLICATE_q\,
	cin => \down_counter|auto_generated|counter_comb_bita12~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita13~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X88_Y7_N10
\down_counter|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita13~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(13));

-- Location: FF_X88_Y7_N1
\down_counter|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita10~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(10));

-- Location: LABCELL_X88_Y8_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\down_counter|auto_generated|counter_reg_bit\(10) & ( !\down_counter|auto_generated|counter_reg_bit\(12) & ( (!\down_counter|auto_generated|counter_reg_bit\(11) & (!\down_counter|auto_generated|counter_reg_bit\(7) & 
-- (!\down_counter|auto_generated|counter_reg_bit\(8) & !\down_counter|auto_generated|counter_reg_bit\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(11),
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(7),
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(8),
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(9),
	datae => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(10),
	dataf => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(12),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X88_Y7_N12
\down_counter|auto_generated|counter_comb_bita14\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita14~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(14) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita13~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita14~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(14) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita13~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(14),
	cin => \down_counter|auto_generated|counter_comb_bita13~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita14~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X88_Y7_N14
\down_counter|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita14~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(14));

-- Location: LABCELL_X88_Y7_N15
\down_counter|auto_generated|counter_comb_bita15\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita15~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(15) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita14~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita15~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(15) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita14~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(15),
	cin => \down_counter|auto_generated|counter_comb_bita14~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita15~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X88_Y7_N17
\down_counter|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita15~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(15));

-- Location: LABCELL_X88_Y7_N18
\down_counter|auto_generated|counter_comb_bita16\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita16~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(16) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita15~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita16~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(16) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita15~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(16),
	cin => \down_counter|auto_generated|counter_comb_bita15~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita16~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X88_Y7_N20
\down_counter|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita16~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(16));

-- Location: LABCELL_X88_Y7_N21
\down_counter|auto_generated|counter_comb_bita17\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita17~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita16~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita17~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(17) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita16~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	cin => \down_counter|auto_generated|counter_comb_bita16~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita17~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X88_Y7_N23
\down_counter|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita17~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(17));

-- Location: LABCELL_X88_Y7_N24
\down_counter|auto_generated|counter_comb_bita18\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita18~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(18) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita17~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita18~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(18) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita17~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(18),
	cin => \down_counter|auto_generated|counter_comb_bita17~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita18~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X88_Y7_N26
\down_counter|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita18~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(18));

-- Location: LABCELL_X88_Y7_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\down_counter|auto_generated|counter_reg_bit\(17) & ( !\down_counter|auto_generated|counter_reg_bit\(14) & ( (!\down_counter|auto_generated|counter_reg_bit\(18) & (!\down_counter|auto_generated|counter_reg_bit\(16) & 
-- !\down_counter|auto_generated|counter_reg_bit\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(18),
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(16),
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(15),
	datae => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(17),
	dataf => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(14),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X88_Y7_N27
\down_counter|auto_generated|counter_comb_bita19\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita19~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita18~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita19~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE_q\ ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita18~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit[19]~DUPLICATE_q\,
	cin => \down_counter|auto_generated|counter_comb_bita18~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita19~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X88_Y7_N28
\down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita19~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit[19]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N30
\down_counter|auto_generated|counter_comb_bita20\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita20~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(20) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita19~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita20~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(20) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita19~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(20),
	cin => \down_counter|auto_generated|counter_comb_bita19~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita20~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X88_Y7_N32
\down_counter|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita20~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(20));

-- Location: LABCELL_X88_Y7_N33
\down_counter|auto_generated|counter_comb_bita21\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita21~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(21) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita20~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita21~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(21) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita20~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(21),
	cin => \down_counter|auto_generated|counter_comb_bita20~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita21~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X88_Y7_N35
\down_counter|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita21~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(21));

-- Location: LABCELL_X88_Y7_N36
\down_counter|auto_generated|counter_comb_bita22\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita22~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(22) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita21~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita22~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(22) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita21~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(22),
	cin => \down_counter|auto_generated|counter_comb_bita21~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita22~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X88_Y7_N38
\down_counter|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita22~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(22));

-- Location: LABCELL_X88_Y7_N39
\down_counter|auto_generated|counter_comb_bita23\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita23~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(23) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita22~COUT\ ))
-- \down_counter|auto_generated|counter_comb_bita23~COUT\ = CARRY(( \down_counter|auto_generated|counter_reg_bit\(23) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita22~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(23),
	cin => \down_counter|auto_generated|counter_comb_bita22~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita23~sumout\,
	cout => \down_counter|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X88_Y7_N41
\down_counter|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita23~sumout\,
	asdata => \~GND~combout\,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(23));

-- Location: FF_X88_Y7_N29
\down_counter|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita19~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(19));

-- Location: LABCELL_X88_Y7_N42
\down_counter|auto_generated|counter_comb_bita24\ : cyclonev_lcell_comb
-- Equation(s):
-- \down_counter|auto_generated|counter_comb_bita24~sumout\ = SUM(( \down_counter|auto_generated|counter_reg_bit\(24) ) + ( VCC ) + ( \down_counter|auto_generated|counter_comb_bita23~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(24),
	cin => \down_counter|auto_generated|counter_comb_bita23~COUT\,
	sumout => \down_counter|auto_generated|counter_comb_bita24~sumout\);

-- Location: FF_X88_Y7_N44
\down_counter|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \down_counter|auto_generated|counter_comb_bita24~sumout\,
	asdata => VCC,
	sload => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_counter|auto_generated|counter_reg_bit\(24));

-- Location: LABCELL_X88_Y7_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\down_counter|auto_generated|counter_reg_bit\(19) & ( !\down_counter|auto_generated|counter_reg_bit\(24) & ( (!\down_counter|auto_generated|counter_reg_bit\(22) & (!\down_counter|auto_generated|counter_reg_bit\(20) & 
-- (!\down_counter|auto_generated|counter_reg_bit\(21) & !\down_counter|auto_generated|counter_reg_bit\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(22),
	datab => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(20),
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(21),
	datad => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(23),
	datae => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(19),
	dataf => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(24),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~1_combout\ & ( \Equal0~0_combout\ & ( (!\down_counter|auto_generated|counter_reg_bit\(0) & (\Equal0~3_combout\ & (!\down_counter|auto_generated|counter_reg_bit\(13) & \Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \down_counter|auto_generated|ALT_INV_counter_reg_bit\(13),
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~4_combout\);
END structure;


