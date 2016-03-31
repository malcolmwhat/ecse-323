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

-- DATE "03/30/2016 21:59:12"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	g14_stecker IS
    PORT (
	input_code : IN std_logic_vector(4 DOWNTO 0);
	output_code : OUT std_logic_vector(4 DOWNTO 0)
	);
END g14_stecker;

-- Design Ports Information
-- output_code[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[3]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[4]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[4]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_stecker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output_code : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input_code[0]~input_o\ : std_logic;
SIGNAL \input_code[1]~input_o\ : std_logic;
SIGNAL \input_code[4]~input_o\ : std_logic;
SIGNAL \input_code[2]~input_o\ : std_logic;
SIGNAL \input_code[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_input_code[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[1]~input_o\ : std_logic;

BEGIN

ww_input_code <= input_code;
output_code <= ww_output_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_code[0]~input_o\ <= NOT \input_code[0]~input_o\;
\ALT_INV_input_code[4]~input_o\ <= NOT \input_code[4]~input_o\;
\ALT_INV_input_code[2]~input_o\ <= NOT \input_code[2]~input_o\;
\ALT_INV_input_code[3]~input_o\ <= NOT \input_code[3]~input_o\;
\ALT_INV_input_code[1]~input_o\ <= NOT \input_code[1]~input_o\;

-- Location: IOOBUF_X89_Y20_N62
\output_code[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_output_code(0));

-- Location: IOOBUF_X89_Y21_N39
\output_code[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_output_code(1));

-- Location: IOOBUF_X89_Y20_N79
\output_code[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_output_code(2));

-- Location: IOOBUF_X89_Y23_N56
\output_code[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_output_code(3));

-- Location: IOOBUF_X89_Y20_N96
\output_code[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_output_code(4));

-- Location: IOIBUF_X89_Y21_N21
\input_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(0),
	o => \input_code[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\input_code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(1),
	o => \input_code[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\input_code[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(4),
	o => \input_code[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\input_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(2),
	o => \input_code[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\input_code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(3),
	o => \input_code[3]~input_o\);

-- Location: MLABCELL_X87_Y21_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \input_code[2]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[4]~input_o\ & ((\input_code[1]~input_o\) # (\input_code[0]~input_o\))) ) ) ) # ( !\input_code[2]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[4]~input_o\ 
-- & ((\input_code[1]~input_o\) # (\input_code[0]~input_o\))) ) ) ) # ( \input_code[2]~input_o\ & ( !\input_code[3]~input_o\ & ( (\input_code[0]~input_o\ & ((\input_code[4]~input_o\) # (\input_code[1]~input_o\))) ) ) ) # ( !\input_code[2]~input_o\ & ( 
-- !\input_code[3]~input_o\ & ( (!\input_code[0]~input_o\ & ((!\input_code[1]~input_o\) # (!\input_code[4]~input_o\))) # (\input_code[0]~input_o\ & (!\input_code[1]~input_o\ & !\input_code[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000000000110011001100111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_input_code[4]~input_o\,
	datae => \ALT_INV_input_code[2]~input_o\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y21_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \input_code[0]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[1]~input_o\ & (!\input_code[4]~input_o\ & \input_code[2]~input_o\)) ) ) ) # ( !\input_code[0]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[1]~input_o\ & 
-- (!\input_code[4]~input_o\ $ (!\input_code[2]~input_o\))) ) ) ) # ( \input_code[0]~input_o\ & ( !\input_code[3]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\input_code[2]~input_o\))) # (\input_code[1]~input_o\ & ((\input_code[2]~input_o\) # 
-- (\input_code[4]~input_o\))) ) ) ) # ( !\input_code[0]~input_o\ & ( !\input_code[3]~input_o\ & ( (!\input_code[2]~input_o\ & (!\input_code[1]~input_o\)) # (\input_code[2]~input_o\ & ((!\input_code[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110010101100101101011011010100101000001010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[4]~input_o\,
	datac => \ALT_INV_input_code[2]~input_o\,
	datae => \ALT_INV_input_code[0]~input_o\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y21_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \input_code[0]~input_o\ & ( \input_code[3]~input_o\ & ( ((\input_code[2]~input_o\ & !\input_code[1]~input_o\)) # (\input_code[4]~input_o\) ) ) ) # ( !\input_code[0]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[2]~input_o\ $ 
-- (\input_code[1]~input_o\)) # (\input_code[4]~input_o\) ) ) ) # ( \input_code[0]~input_o\ & ( !\input_code[3]~input_o\ & ( (\input_code[4]~input_o\ & ((!\input_code[1]~input_o\) # (\input_code[2]~input_o\))) ) ) ) # ( !\input_code[0]~input_o\ & ( 
-- !\input_code[3]~input_o\ & ( (!\input_code[4]~input_o\ & ((\input_code[1]~input_o\))) # (\input_code[4]~input_o\ & (!\input_code[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000011110000010110101111010111110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[2]~input_o\,
	datac => \ALT_INV_input_code[4]~input_o\,
	datad => \ALT_INV_input_code[1]~input_o\,
	datae => \ALT_INV_input_code[0]~input_o\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X87_Y21_N6
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \input_code[2]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[0]~input_o\) # ((!\input_code[1]~input_o\) # (\input_code[4]~input_o\)) ) ) ) # ( !\input_code[2]~input_o\ & ( \input_code[3]~input_o\ & ( ((\input_code[0]~input_o\ 
-- & \input_code[4]~input_o\)) # (\input_code[1]~input_o\) ) ) ) # ( \input_code[2]~input_o\ & ( !\input_code[3]~input_o\ & ( (!\input_code[0]~input_o\ & (\input_code[1]~input_o\ & \input_code[4]~input_o\)) # (\input_code[0]~input_o\ & 
-- ((!\input_code[4]~input_o\))) ) ) ) # ( !\input_code[2]~input_o\ & ( !\input_code[3]~input_o\ & ( (\input_code[0]~input_o\ & (!\input_code[1]~input_o\ & \input_code[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000001100110000110000001111001111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_input_code[4]~input_o\,
	datae => \ALT_INV_input_code[2]~input_o\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X87_Y21_N15
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\input_code[2]~input_o\ & ( \input_code[3]~input_o\ & ( (!\input_code[1]~input_o\ & (!\input_code[4]~input_o\ $ (!\input_code[0]~input_o\))) # (\input_code[1]~input_o\ & (!\input_code[4]~input_o\ & !\input_code[0]~input_o\)) ) ) ) # 
-- ( \input_code[2]~input_o\ & ( !\input_code[3]~input_o\ & ( (\input_code[4]~input_o\ & ((!\input_code[1]~input_o\) # (!\input_code[0]~input_o\))) ) ) ) # ( !\input_code[2]~input_o\ & ( !\input_code[3]~input_o\ & ( !\input_code[4]~input_o\ $ 
-- (((!\input_code[0]~input_o\) # (\input_code[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001100100011001001101000011010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[4]~input_o\,
	datac => \ALT_INV_input_code[0]~input_o\,
	datae => \ALT_INV_input_code[2]~input_o\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X15_Y64_N3
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


