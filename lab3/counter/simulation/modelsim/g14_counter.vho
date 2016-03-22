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

-- DATE "03/20/2016 17:58:53"

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

ENTITY 	g14_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	count : OUT std_logic_vector(4 DOWNTO 0)
	);
END g14_counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_counter IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_count : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \temp_count~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \temp_count~3_combout\ : std_logic;
SIGNAL \temp_count~4_combout\ : std_logic;
SIGNAL \temp_count~2_combout\ : std_logic;
SIGNAL \temp_count~0_combout\ : std_logic;
SIGNAL temp_count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL ALT_INV_temp_count : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
ALT_INV_temp_count(4) <= NOT temp_count(4);
ALT_INV_temp_count(3) <= NOT temp_count(3);
ALT_INV_temp_count(2) <= NOT temp_count(2);
ALT_INV_temp_count(1) <= NOT temp_count(1);
ALT_INV_temp_count(0) <= NOT temp_count(0);

-- Location: IOOBUF_X76_Y0_N36
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_count(0),
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X76_Y0_N53
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_count(1),
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X76_Y0_N19
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_count(2),
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X78_Y0_N53
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_count(3),
	devoe => ww_devoe,
	o => ww_count(3));

-- Location: IOOBUF_X78_Y0_N36
\count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp_count(4),
	devoe => ww_devoe,
	o => ww_count(4));

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

-- Location: MLABCELL_X78_Y2_N45
\temp_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_count~1_combout\ = ( temp_count(1) & ( temp_count(3) & ( (!temp_count(4) & !temp_count(0)) ) ) ) # ( !temp_count(1) & ( temp_count(3) & ( (!temp_count(4) & temp_count(0)) ) ) ) # ( temp_count(1) & ( !temp_count(3) & ( !temp_count(0) ) ) ) # ( 
-- !temp_count(1) & ( !temp_count(3) & ( temp_count(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_count(4),
	datad => ALT_INV_temp_count(0),
	datae => ALT_INV_temp_count(1),
	dataf => ALT_INV_temp_count(3),
	combout => \temp_count~1_combout\);

-- Location: IOIBUF_X78_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X78_Y2_N47
\temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp_count~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(1));

-- Location: MLABCELL_X78_Y2_N12
\temp_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_count~3_combout\ = ( temp_count(3) & ( temp_count(2) & ( (!temp_count(4) & ((!temp_count(0)) # (!temp_count(1)))) ) ) ) # ( !temp_count(3) & ( temp_count(2) & ( (temp_count(0) & temp_count(1)) ) ) ) # ( temp_count(3) & ( !temp_count(2) & ( 
-- (!temp_count(4)) # ((!temp_count(0) & !temp_count(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111000000000000010101011111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_count(0),
	datac => ALT_INV_temp_count(4),
	datad => ALT_INV_temp_count(1),
	datae => ALT_INV_temp_count(3),
	dataf => ALT_INV_temp_count(2),
	combout => \temp_count~3_combout\);

-- Location: FF_X78_Y2_N14
\temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp_count~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(3));

-- Location: MLABCELL_X78_Y2_N51
\temp_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_count~4_combout\ = ( temp_count(4) & ( temp_count(2) & ( !temp_count(3) ) ) ) # ( !temp_count(4) & ( temp_count(2) & ( (temp_count(3) & (temp_count(1) & temp_count(0))) ) ) ) # ( temp_count(4) & ( !temp_count(2) & ( (!temp_count(3)) # 
-- ((!temp_count(1) & !temp_count(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001100110000000000000000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_count(3),
	datac => ALT_INV_temp_count(1),
	datad => ALT_INV_temp_count(0),
	datae => ALT_INV_temp_count(4),
	dataf => ALT_INV_temp_count(2),
	combout => \temp_count~4_combout\);

-- Location: FF_X78_Y2_N53
\temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp_count~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(4));

-- Location: MLABCELL_X78_Y2_N39
\temp_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_count~2_combout\ = ( temp_count(2) & ( temp_count(3) & ( (!temp_count(4) & ((!temp_count(1)) # (!temp_count(0)))) ) ) ) # ( !temp_count(2) & ( temp_count(3) & ( (!temp_count(4) & (temp_count(1) & temp_count(0))) ) ) ) # ( temp_count(2) & ( 
-- !temp_count(3) & ( (!temp_count(1)) # (!temp_count(0)) ) ) ) # ( !temp_count(2) & ( !temp_count(3) & ( (temp_count(1) & temp_count(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000010101010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_count(4),
	datac => ALT_INV_temp_count(1),
	datad => ALT_INV_temp_count(0),
	datae => ALT_INV_temp_count(2),
	dataf => ALT_INV_temp_count(3),
	combout => \temp_count~2_combout\);

-- Location: FF_X78_Y2_N41
\temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp_count~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(2));

-- Location: MLABCELL_X78_Y2_N24
\temp_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_count~0_combout\ = ( !temp_count(0) & ( temp_count(3) & ( (!temp_count(4)) # ((!temp_count(2) & !temp_count(1))) ) ) ) # ( !temp_count(0) & ( !temp_count(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111100111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_count(2),
	datac => ALT_INV_temp_count(4),
	datad => ALT_INV_temp_count(1),
	datae => ALT_INV_temp_count(0),
	dataf => ALT_INV_temp_count(3),
	combout => \temp_count~0_combout\);

-- Location: FF_X78_Y2_N26
\temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp_count~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(0));

-- Location: LABCELL_X30_Y17_N0
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


