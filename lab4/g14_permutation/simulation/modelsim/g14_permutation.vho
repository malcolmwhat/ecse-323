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

-- DATE "03/22/2016 17:36:11"

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

ENTITY 	g14_permutation IS
    PORT (
	input_code : IN std_logic_vector(4 DOWNTO 0);
	rotor_type : IN std_logic_vector(1 DOWNTO 0);
	output_code : OUT std_logic_vector(4 DOWNTO 0);
	inv_output_code : OUT std_logic_vector(4 DOWNTO 0)
	);
END g14_permutation;

-- Design Ports Information
-- output_code[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_code[4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_output_code[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_output_code[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_output_code[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_output_code[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inv_output_code[4]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rotor_type[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rotor_type[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[4]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_permutation IS
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
SIGNAL ww_rotor_type : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inv_output_code : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input_code[0]~input_o\ : std_logic;
SIGNAL \rotor_type[1]~input_o\ : std_logic;
SIGNAL \input_code[1]~input_o\ : std_logic;
SIGNAL \rotor_type[0]~input_o\ : std_logic;
SIGNAL \input_code[4]~input_o\ : std_logic;
SIGNAL \input_code[2]~input_o\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \input_code[3]~input_o\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \ALT_INV_input_code[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rotor_type[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rotor_type[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_code[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;

BEGIN

ww_input_code <= input_code;
ww_rotor_type <= rotor_type;
output_code <= ww_output_code;
inv_output_code <= ww_inv_output_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_code[4]~input_o\ <= NOT \input_code[4]~input_o\;
\ALT_INV_input_code[3]~input_o\ <= NOT \input_code[3]~input_o\;
\ALT_INV_rotor_type[0]~input_o\ <= NOT \rotor_type[0]~input_o\;
\ALT_INV_rotor_type[1]~input_o\ <= NOT \rotor_type[1]~input_o\;
\ALT_INV_input_code[0]~input_o\ <= NOT \input_code[0]~input_o\;
\ALT_INV_input_code[2]~input_o\ <= NOT \input_code[2]~input_o\;
\ALT_INV_input_code[1]~input_o\ <= NOT \input_code[1]~input_o\;
\ALT_INV_Mux44~1_combout\ <= NOT \Mux44~1_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_Mux43~1_combout\ <= NOT \Mux43~1_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux49~1_combout\ <= NOT \Mux49~1_combout\;
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\ALT_INV_Mux48~1_combout\ <= NOT \Mux48~1_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\ALT_INV_Mux47~1_combout\ <= NOT \Mux47~1_combout\;
\ALT_INV_Mux47~0_combout\ <= NOT \Mux47~0_combout\;
\ALT_INV_Mux46~1_combout\ <= NOT \Mux46~1_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\ALT_INV_Mux45~1_combout\ <= NOT \Mux45~1_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;

-- Location: IOOBUF_X89_Y20_N79
\output_code[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~2_combout\,
	devoe => ww_devoe,
	o => ww_output_code(0));

-- Location: IOOBUF_X89_Y23_N22
\output_code[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~2_combout\,
	devoe => ww_devoe,
	o => ww_output_code(1));

-- Location: IOOBUF_X89_Y20_N96
\output_code[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~2_combout\,
	devoe => ww_devoe,
	o => ww_output_code(2));

-- Location: IOOBUF_X89_Y25_N39
\output_code[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~2_combout\,
	devoe => ww_devoe,
	o => ww_output_code(3));

-- Location: IOOBUF_X89_Y16_N39
\output_code[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~2_combout\,
	devoe => ww_devoe,
	o => ww_output_code(4));

-- Location: IOOBUF_X89_Y25_N56
\inv_output_code[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~2_combout\,
	devoe => ww_devoe,
	o => ww_inv_output_code(0));

-- Location: IOOBUF_X89_Y16_N5
\inv_output_code[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~2_combout\,
	devoe => ww_devoe,
	o => ww_inv_output_code(1));

-- Location: IOOBUF_X89_Y20_N62
\inv_output_code[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~2_combout\,
	devoe => ww_devoe,
	o => ww_inv_output_code(2));

-- Location: IOOBUF_X89_Y25_N5
\inv_output_code[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~2_combout\,
	devoe => ww_devoe,
	o => ww_inv_output_code(3));

-- Location: IOOBUF_X89_Y23_N39
\inv_output_code[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~2_combout\,
	devoe => ww_devoe,
	o => ww_inv_output_code(4));

-- Location: IOIBUF_X89_Y21_N55
\input_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(0),
	o => \input_code[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\rotor_type[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotor_type(1),
	o => \rotor_type[1]~input_o\);

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

-- Location: IOIBUF_X89_Y23_N4
\rotor_type[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotor_type(0),
	o => \rotor_type[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\input_code[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(4),
	o => \input_code[4]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\input_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(2),
	o => \input_code[2]~input_o\);

-- Location: MLABCELL_X87_Y21_N54
\Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = ( \input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( !\rotor_type[1]~input_o\ $ (!\rotor_type[0]~input_o\) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\) 
-- # (!\input_code[1]~input_o\ $ (\rotor_type[0]~input_o\)))) # (\rotor_type[1]~input_o\ & (((\input_code[1]~input_o\ & !\rotor_type[0]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & 
-- ((!\input_code[1]~input_o\) # (!\rotor_type[1]~input_o\ $ (!\rotor_type[0]~input_o\)))) # (\input_code[0]~input_o\ & (!\rotor_type[1]~input_o\ $ (((!\rotor_type[0]~input_o\))))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( 
-- (\rotor_type[1]~input_o\ & \rotor_type[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011101100111110110011001011100011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[0]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: MLABCELL_X87_Y21_N48
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (\rotor_type[0]~input_o\ & (!\input_code[0]~input_o\ $ (\rotor_type[1]~input_o\)))) # (\input_code[1]~input_o\ & (((!\rotor_type[1]~input_o\)))) ) ) 
-- ) # ( !\input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\input_code[0]~input_o\ & ((!\rotor_type[0]~input_o\) # (\input_code[1]~input_o\)))) # (\rotor_type[1]~input_o\ & ((!\input_code[1]~input_o\) # 
-- (!\input_code[0]~input_o\ $ (!\rotor_type[0]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\input_code[1]~input_o\ $ (((\rotor_type[0]~input_o\) # (\input_code[0]~input_o\))))) # 
-- (\rotor_type[1]~input_o\ & (\rotor_type[0]~input_o\ & ((!\input_code[0]~input_o\) # (!\input_code[1]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\ & 
-- (\input_code[1]~input_o\ & \rotor_type[0]~input_o\)) # (\input_code[0]~input_o\ & (!\input_code[1]~input_o\ $ (!\rotor_type[0]~input_o\))))) # (\rotor_type[1]~input_o\ & ((!\rotor_type[0]~input_o\) # ((\input_code[0]~input_o\ & \input_code[1]~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101001001100001000011111010111001001110100000110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[0]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\input_code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(3),
	o => \input_code[3]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = ( \Mux44~0_combout\ & ( \input_code[3]~input_o\ & ( !\Mux44~1_combout\ ) ) ) # ( !\Mux44~0_combout\ & ( \input_code[3]~input_o\ & ( !\Mux44~1_combout\ ) ) ) # ( \Mux44~0_combout\ & ( !\input_code[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~1_combout\,
	datae => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux44~2_combout\);

-- Location: MLABCELL_X84_Y21_N18
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\input_code[1]~input_o\ & (!\input_code[0]~input_o\ $ (!\input_code[4]~input_o\))) # (\input_code[1]~input_o\ & ((!\input_code[4]~input_o\) # 
-- (\input_code[0]~input_o\))))) # (\input_code[3]~input_o\ & (((\input_code[4]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[4]~input_o\ & ((!\input_code[1]~input_o\) # (!\input_code[0]~input_o\ $ 
-- (\input_code[3]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (\input_code[0]~input_o\)) # (\input_code[1]~input_o\ & ((!\input_code[0]~input_o\ & ((\input_code[4]~input_o\) # 
-- (\input_code[3]~input_o\))) # (\input_code[0]~input_o\ & (!\input_code[3]~input_o\ $ (\input_code[4]~input_o\))))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[4]~input_o\ & (\input_code[0]~input_o\ & 
-- (!\input_code[1]~input_o\ $ (\input_code[3]~input_o\)))) # (\input_code[4]~input_o\ & ((!\input_code[1]~input_o\ & (!\input_code[0]~input_o\)) # (\input_code[1]~input_o\ & ((!\input_code[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000111011000001101100110011111101011000000000111000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_input_code[4]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X84_Y21_N54
\Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[4]~input_o\ & (!\input_code[3]~input_o\ $ (((\input_code[0]~input_o\) # (\input_code[1]~input_o\))))) # (\input_code[4]~input_o\ & (!\input_code[3]~input_o\ & 
-- ((!\input_code[1]~input_o\) # (!\input_code[0]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (!\input_code[1]~input_o\ & ((!\input_code[3]~input_o\) # (!\input_code[4]~input_o\)))) # 
-- (\input_code[0]~input_o\ & (((\input_code[3]~input_o\ & !\input_code[4]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (!\input_code[1]~input_o\ $ (((!\input_code[0]~input_o\) # 
-- (\input_code[4]~input_o\))))) # (\input_code[3]~input_o\ & (!\input_code[1]~input_o\ & (!\input_code[0]~input_o\ & \input_code[4]~input_o\))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & 
-- ((!\input_code[0]~input_o\ & (\input_code[3]~input_o\)) # (\input_code[0]~input_o\ & (!\input_code[3]~input_o\ & \input_code[4]~input_o\)))) # (\input_code[1]~input_o\ & (((!\input_code[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100101000011000000101100010001011100000001000011111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_input_code[4]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux43~1_combout\);

-- Location: LABCELL_X88_Y21_N0
\Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = ( \rotor_type[0]~input_o\ & ( \Mux43~1_combout\ ) ) # ( !\rotor_type[0]~input_o\ & ( \Mux43~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux43~0_combout\,
	datac => \ALT_INV_Mux43~1_combout\,
	dataf => \ALT_INV_rotor_type[0]~input_o\,
	combout => \Mux43~2_combout\);

-- Location: MLABCELL_X84_Y21_N12
\Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( !\rotor_type[0]~input_o\ $ (((\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\) # (\input_code[3]~input_o\))))) ) ) ) # ( !\input_code[4]~input_o\ & ( 
-- \input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (((!\input_code[3]~input_o\) # (!\rotor_type[0]~input_o\)))) # (\input_code[0]~input_o\ & (!\rotor_type[0]~input_o\ $ (((\input_code[3]~input_o\) # (\rotor_type[1]~input_o\))))) ) ) ) # ( 
-- \input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (!\input_code[0]~input_o\ $ (((\rotor_type[1]~input_o\ & !\rotor_type[0]~input_o\))))) # (\input_code[3]~input_o\ & (!\rotor_type[1]~input_o\ $ 
-- (((\rotor_type[0]~input_o\))))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\rotor_type[0]~input_o\ $ (((!\input_code[0]~input_o\) # (!\input_code[3]~input_o\))))) # (\rotor_type[1]~input_o\ & 
-- (\input_code[0]~input_o\ & (\input_code[3]~input_o\ & \rotor_type[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101001100110101100010111101100110100111011101001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rotor_type[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: MLABCELL_X84_Y21_N6
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & (\rotor_type[0]~input_o\ & ((!\input_code[0]~input_o\) # (\input_code[3]~input_o\)))) # (\rotor_type[1]~input_o\ & (!\rotor_type[0]~input_o\ & 
-- ((\input_code[3]~input_o\) # (\input_code[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\ & (\input_code[3]~input_o\)) # (\input_code[0]~input_o\ & 
-- ((!\rotor_type[0]~input_o\))))) # (\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\ & (!\input_code[3]~input_o\ & \rotor_type[0]~input_o\)) # (\input_code[0]~input_o\ & (\input_code[3]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( 
-- !\input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (!\rotor_type[0]~input_o\ $ (((\input_code[3]~input_o\) # (\rotor_type[1]~input_o\))))) # (\input_code[0]~input_o\ & ((!\input_code[3]~input_o\) # (!\rotor_type[1]~input_o\ $ 
-- (!\rotor_type[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (!\rotor_type[1]~input_o\ $ (((!\input_code[3]~input_o\ & \rotor_type[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000101100010111111000101011010010010001010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rotor_type[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X88_Y21_N27
\Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \input_code[1]~input_o\ & ( !\Mux42~1_combout\ ) ) # ( !\input_code[1]~input_o\ & ( \Mux42~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux42~1_combout\,
	datac => \ALT_INV_Mux42~0_combout\,
	dataf => \ALT_INV_input_code[1]~input_o\,
	combout => \Mux42~2_combout\);

-- Location: MLABCELL_X87_Y21_N36
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & (\input_code[1]~input_o\ & (!\rotor_type[1]~input_o\))) # (\input_code[3]~input_o\ & (((!\rotor_type[0]~input_o\)))) ) ) ) # ( 
-- !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & (!\rotor_type[1]~input_o\ & ((!\input_code[3]~input_o\) # (!\rotor_type[0]~input_o\)))) # (\input_code[1]~input_o\ & (\rotor_type[0]~input_o\ & (!\rotor_type[1]~input_o\ 
-- $ (\input_code[3]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\rotor_type[1]~input_o\ & (\input_code[3]~input_o\ & \rotor_type[0]~input_o\)) # (\rotor_type[1]~input_o\ & 
-- (!\input_code[3]~input_o\)))) # (\input_code[1]~input_o\ & ((!\input_code[3]~input_o\ & (!\rotor_type[1]~input_o\ & \rotor_type[0]~input_o\)) # (\input_code[3]~input_o\ & ((!\rotor_type[0]~input_o\))))) ) ) ) # ( !\input_code[4]~input_o\ & ( 
-- !\input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & (\rotor_type[1]~input_o\ & (\input_code[3]~input_o\ & \rotor_type[0]~input_o\))) # (\input_code[1]~input_o\ & (!\rotor_type[1]~input_o\ $ (((!\input_code[3]~input_o\ & \rotor_type[0]~input_o\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010110001001010110100010001000110000010100111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: MLABCELL_X87_Y21_N12
\Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & (!\input_code[1]~input_o\ $ (((\rotor_type[1]~input_o\ & \rotor_type[0]~input_o\))))) # (\input_code[3]~input_o\ & (((!\rotor_type[0]~input_o\)))) ) 
-- ) ) # ( !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\rotor_type[0]~input_o\ & (\rotor_type[1]~input_o\)) # (\rotor_type[0]~input_o\ & ((!\input_code[3]~input_o\))))) # (\input_code[1]~input_o\ & 
-- (\rotor_type[1]~input_o\ & (!\input_code[3]~input_o\ $ (\rotor_type[0]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & (!\input_code[1]~input_o\ & ((\rotor_type[0]~input_o\) # 
-- (\rotor_type[1]~input_o\)))) # (\input_code[3]~input_o\ & (((!\rotor_type[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\rotor_type[0]~input_o\) # ((\rotor_type[1]~input_o\ & 
-- !\input_code[3]~input_o\)))) # (\input_code[1]~input_o\ & (!\input_code[3]~input_o\ $ (((!\rotor_type[1]~input_o\) # (!\rotor_type[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100110100001011111010000000110010101000011010111110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux41~1_combout\);

-- Location: LABCELL_X88_Y21_N18
\Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \Mux41~1_combout\ & ( (\Mux41~0_combout\) # (\input_code[2]~input_o\) ) ) # ( !\Mux41~1_combout\ & ( (!\input_code[2]~input_o\ & \Mux41~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[2]~input_o\,
	datac => \ALT_INV_Mux41~0_combout\,
	datae => \ALT_INV_Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: MLABCELL_X87_Y21_N24
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & (!\input_code[3]~input_o\ & !\rotor_type[0]~input_o\)) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\rotor_type[0]~input_o\ & 
-- (((\input_code[3]~input_o\)))) # (\rotor_type[0]~input_o\ & (\rotor_type[1]~input_o\ & ((!\input_code[1]~input_o\) # (!\input_code[3]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\input_code[1]~input_o\ & 
-- (!\rotor_type[1]~input_o\ $ ((\input_code[3]~input_o\)))) # (\input_code[1]~input_o\ & (!\input_code[3]~input_o\ & ((!\rotor_type[1]~input_o\) # (\rotor_type[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( 
-- (\input_code[3]~input_o\ & ((!\input_code[1]~input_o\) # (\rotor_type[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011110000101101001000001111001100101010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X87_Y21_N0
\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\rotor_type[0]~input_o\ & (\input_code[1]~input_o\)) # (\rotor_type[0]~input_o\ & ((!\rotor_type[1]~input_o\))))) ) ) ) # ( 
-- !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\input_code[1]~input_o\ $ ((!\input_code[3]~input_o\)))) # (\rotor_type[1]~input_o\ & (!\input_code[1]~input_o\ & (!\input_code[3]~input_o\ & \rotor_type[0]~input_o\))) 
-- ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (\input_code[1]~input_o\ & (\rotor_type[1]~input_o\ & (!\input_code[3]~input_o\ & !\rotor_type[0]~input_o\))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( 
-- (!\rotor_type[1]~input_o\ & (!\rotor_type[0]~input_o\ $ (((!\input_code[1]~input_o\) # (!\input_code[3]~input_o\))))) # (\rotor_type[1]~input_o\ & (((\input_code[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111001011000100000000000001001000011010000101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X88_Y21_N45
\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \input_code[2]~input_o\ & ( \Mux40~1_combout\ ) ) # ( !\input_code[2]~input_o\ & ( \Mux40~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux40~0_combout\,
	datac => \ALT_INV_Mux40~1_combout\,
	datae => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux40~2_combout\);

-- Location: MLABCELL_X84_Y21_N24
\Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & (!\input_code[3]~input_o\ & (!\input_code[1]~input_o\ $ (!\input_code[0]~input_o\)))) # (\rotor_type[0]~input_o\ & (!\input_code[3]~input_o\ $ 
-- (((\input_code[0]~input_o\) # (\input_code[1]~input_o\))))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (!\input_code[1]~input_o\ & (!\input_code[0]~input_o\ $ (\rotor_type[0]~input_o\)))) # 
-- (\input_code[3]~input_o\ & ((!\input_code[0]~input_o\) # (!\input_code[1]~input_o\ $ (\rotor_type[0]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\input_code[0]~input_o\ & 
-- (\input_code[3]~input_o\ & !\rotor_type[0]~input_o\)) # (\input_code[0]~input_o\ & ((!\rotor_type[0]~input_o\) # (\input_code[3]~input_o\))))) # (\input_code[1]~input_o\ & (!\input_code[0]~input_o\)) ) ) ) # ( !\rotor_type[1]~input_o\ & ( 
-- !\input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\rotor_type[0]~input_o\) # (!\input_code[1]~input_o\ $ (\input_code[0]~input_o\)))) # (\input_code[3]~input_o\ & (\input_code[1]~input_o\ & (\input_code[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000110010001011011100100011010001110001011010110000010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: MLABCELL_X84_Y21_N30
\Mux49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\input_code[1]~input_o\ & (!\input_code[0]~input_o\)) # (\input_code[1]~input_o\ & ((\rotor_type[0]~input_o\) # (\input_code[0]~input_o\))))) ) ) 
-- ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\rotor_type[0]~input_o\ & ((\input_code[0]~input_o\))) # (\rotor_type[0]~input_o\ & (\input_code[1]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( 
-- !\input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\)) # (\rotor_type[0]~input_o\ & ((!\input_code[0]~input_o\ & (!\input_code[1]~input_o\ & \input_code[3]~input_o\)) # (\input_code[0]~input_o\ & 
-- ((!\input_code[3]~input_o\))))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (!\rotor_type[0]~input_o\ $ (((!\input_code[3]~input_o\) # (\input_code[0]~input_o\))))) # (\input_code[1]~input_o\ & 
-- (!\input_code[0]~input_o\ & (!\input_code[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011100010101010100011100000110000010100001001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LABCELL_X85_Y21_N42
\Mux49~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = ( \input_code[4]~input_o\ & ( !\Mux49~1_combout\ ) ) # ( !\input_code[4]~input_o\ & ( !\Mux49~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux49~0_combout\,
	datac => \ALT_INV_Mux49~1_combout\,
	dataf => \ALT_INV_input_code[4]~input_o\,
	combout => \Mux49~2_combout\);

-- Location: MLABCELL_X84_Y21_N48
\Mux48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\input_code[1]~input_o\) # (\input_code[0]~input_o\))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( 
-- (!\input_code[1]~input_o\ & (!\input_code[3]~input_o\ & \rotor_type[0]~input_o\)) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (!\input_code[0]~input_o\ & (\input_code[3]~input_o\ & 
-- !\rotor_type[0]~input_o\))) # (\input_code[1]~input_o\ & (!\input_code[3]~input_o\ & (!\input_code[0]~input_o\ $ (\rotor_type[0]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & 
-- ((!\input_code[3]~input_o\) # ((!\input_code[1]~input_o\ & !\input_code[0]~input_o\)))) # (\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ & (\input_code[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000100010010010000001000000000000101000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux48~1_combout\);

-- Location: MLABCELL_X84_Y21_N42
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & ((!\input_code[3]~input_o\) # ((\input_code[1]~input_o\ & \input_code[0]~input_o\)))) # (\rotor_type[0]~input_o\ & (!\input_code[0]~input_o\ & 
-- ((\input_code[3]~input_o\) # (\input_code[1]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (((\input_code[0]~input_o\)))) # (\input_code[3]~input_o\ & ((!\input_code[1]~input_o\) # 
-- ((\input_code[0]~input_o\ & !\rotor_type[0]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (((!\input_code[0]~input_o\)))) # (\input_code[3]~input_o\ & (\rotor_type[0]~input_o\ & 
-- ((!\input_code[1]~input_o\) # (\input_code[0]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & (((\input_code[0]~input_o\ & !\input_code[3]~input_o\)))) # (\rotor_type[0]~input_o\ & 
-- (\input_code[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101110000001100101100111011001110101111000101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X85_Y21_N9
\Mux48~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = ( \Mux48~0_combout\ & ( \input_code[4]~input_o\ & ( \Mux48~1_combout\ ) ) ) # ( !\Mux48~0_combout\ & ( \input_code[4]~input_o\ & ( \Mux48~1_combout\ ) ) ) # ( \Mux48~0_combout\ & ( !\input_code[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux48~1_combout\,
	datae => \ALT_INV_Mux48~0_combout\,
	dataf => \ALT_INV_input_code[4]~input_o\,
	combout => \Mux48~2_combout\);

-- Location: MLABCELL_X87_Y21_N18
\Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & (\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ $ (\rotor_type[1]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & 
-- ( (!\rotor_type[0]~input_o\ & ((!\rotor_type[1]~input_o\ & (\input_code[1]~input_o\ & !\input_code[3]~input_o\)) # (\rotor_type[1]~input_o\ & ((\input_code[3]~input_o\))))) # (\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ $ 
-- (((\input_code[3]~input_o\) # (\rotor_type[1]~input_o\))))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\input_code[3]~input_o\ & (!\rotor_type[1]~input_o\ $ (((!\input_code[1]~input_o\ & !\rotor_type[0]~input_o\))))) ) ) ) # ( 
-- !\input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ $ ((!\rotor_type[1]~input_o\)))) # (\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ & ((\input_code[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000001010011000001100000001000011100101010000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux47~1_combout\);

-- Location: MLABCELL_X87_Y21_N42
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\input_code[3]~input_o\ & ((!\input_code[1]~input_o\) # (\rotor_type[0]~input_o\)))) # (\rotor_type[1]~input_o\ & (!\input_code[1]~input_o\ & 
-- ((\rotor_type[0]~input_o\) # (\input_code[3]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[0]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\rotor_type[0]~input_o\ & ((!\input_code[3]~input_o\) # (\input_code[1]~input_o\)))) # 
-- (\rotor_type[1]~input_o\ & (((\input_code[1]~input_o\ & \rotor_type[0]~input_o\)) # (\input_code[3]~input_o\))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( (!\rotor_type[1]~input_o\ & (!\input_code[1]~input_o\ $ 
-- (((!\input_code[3]~input_o\ & \rotor_type[0]~input_o\))))) # (\rotor_type[1]~input_o\ & (!\rotor_type[0]~input_o\ & (!\input_code[1]~input_o\ $ (!\input_code[3]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[0]~input_o\ & ( 
-- (!\input_code[1]~input_o\ & (!\rotor_type[1]~input_o\ $ (((!\input_code[3]~input_o\ & \rotor_type[0]~input_o\))))) # (\input_code[1]~input_o\ & (((!\input_code[3]~input_o\ & \rotor_type[0]~input_o\)) # (\rotor_type[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101111001100110100100100011000111000100111000001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[0]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X88_Y21_N6
\Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = ( \Mux47~0_combout\ & ( (!\input_code[2]~input_o\) # (\Mux47~1_combout\) ) ) # ( !\Mux47~0_combout\ & ( (\Mux47~1_combout\ & \input_code[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux47~1_combout\,
	datac => \ALT_INV_input_code[2]~input_o\,
	datae => \ALT_INV_Mux47~0_combout\,
	combout => \Mux47~2_combout\);

-- Location: MLABCELL_X87_Y21_N30
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & (!\input_code[0]~input_o\ $ (((!\input_code[1]~input_o\) # (\rotor_type[1]~input_o\))))) # (\rotor_type[0]~input_o\ & (((!\input_code[0]~input_o\ & 
-- \rotor_type[1]~input_o\)) # (\input_code[1]~input_o\))) ) ) ) # ( !\input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (!\input_code[1]~input_o\ & (!\rotor_type[1]~input_o\ $ (!\rotor_type[0]~input_o\)))) # 
-- (\input_code[0]~input_o\ & (\input_code[1]~input_o\ & ((!\rotor_type[1]~input_o\) # (\rotor_type[0]~input_o\)))) ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (((\rotor_type[1]~input_o\)))) # 
-- (\input_code[1]~input_o\ & (\input_code[0]~input_o\ & ((!\rotor_type[1]~input_o\) # (!\rotor_type[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[0]~input_o\ & (!\rotor_type[1]~input_o\ & 
-- (\input_code[1]~input_o\))) # (\input_code[0]~input_o\ & (((!\input_code[1]~input_o\ & \rotor_type[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011000001101010011010000100100100001010101100100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[0]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: MLABCELL_X87_Y21_N6
\Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = ( !\input_code[4]~input_o\ & ( \input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & (!\input_code[0]~input_o\ $ (((\input_code[1]~input_o\))))) # (\rotor_type[0]~input_o\ & (((\rotor_type[1]~input_o\)) # (\input_code[0]~input_o\))) 
-- ) ) ) # ( \input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (\rotor_type[0]~input_o\ & ((!\rotor_type[1]~input_o\) # (\input_code[0]~input_o\)))) ) ) ) # ( !\input_code[4]~input_o\ & ( !\input_code[2]~input_o\ & ( 
-- (!\rotor_type[1]~input_o\ & ((!\input_code[0]~input_o\) # (!\input_code[1]~input_o\ $ (!\rotor_type[0]~input_o\)))) # (\rotor_type[1]~input_o\ & ((!\rotor_type[0]~input_o\) # (!\input_code[0]~input_o\ $ (!\input_code[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111011010000000001101000010100101011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[0]~input_o\,
	datab => \ALT_INV_rotor_type[1]~input_o\,
	datac => \ALT_INV_input_code[1]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_input_code[4]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux46~1_combout\);

-- Location: LABCELL_X88_Y21_N33
\Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = ( !\Mux46~1_combout\ & ( \input_code[3]~input_o\ ) ) # ( \Mux46~1_combout\ & ( !\input_code[3]~input_o\ & ( \Mux46~0_combout\ ) ) ) # ( !\Mux46~1_combout\ & ( !\input_code[3]~input_o\ & ( \Mux46~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux46~0_combout\,
	datae => \ALT_INV_Mux46~1_combout\,
	dataf => \ALT_INV_input_code[3]~input_o\,
	combout => \Mux46~2_combout\);

-- Location: MLABCELL_X84_Y21_N36
\Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & (((!\input_code[1]~input_o\ & \rotor_type[0]~input_o\)) # (\input_code[0]~input_o\))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ 
-- & ( (!\input_code[3]~input_o\ & ((!\input_code[1]~input_o\ & (!\input_code[0]~input_o\ $ (!\rotor_type[0]~input_o\))) # (\input_code[1]~input_o\ & ((!\input_code[0]~input_o\) # (\rotor_type[0]~input_o\))))) ) ) ) # ( \rotor_type[1]~input_o\ & ( 
-- !\input_code[2]~input_o\ & ( (!\input_code[3]~input_o\ & ((!\input_code[0]~input_o\ & ((\rotor_type[0]~input_o\))) # (\input_code[0]~input_o\ & ((!\input_code[1]~input_o\) # (!\rotor_type[0]~input_o\))))) # (\input_code[3]~input_o\ & 
-- (!\input_code[1]~input_o\)) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (!\rotor_type[0]~input_o\ $ (((\input_code[0]~input_o\ & !\input_code[3]~input_o\))))) # (\input_code[1]~input_o\ & 
-- (!\input_code[3]~input_o\ & ((\rotor_type[0]~input_o\) # (\input_code[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001110000001110101110101001100000110100000011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux45~1_combout\);

-- Location: MLABCELL_X84_Y21_N0
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & ((!\input_code[0]~input_o\ & (\input_code[3]~input_o\)) # (\input_code[0]~input_o\ & ((\rotor_type[0]~input_o\))))) # (\input_code[1]~input_o\ & 
-- (!\input_code[0]~input_o\ & ((!\input_code[3]~input_o\) # (!\rotor_type[0]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( \input_code[2]~input_o\ & ( (!\input_code[1]~input_o\ & (\rotor_type[0]~input_o\ & ((!\input_code[3]~input_o\) # 
-- (\input_code[0]~input_o\)))) # (\input_code[1]~input_o\ & ((!\input_code[0]~input_o\ & ((\rotor_type[0]~input_o\))) # (\input_code[0]~input_o\ & (\input_code[3]~input_o\)))) ) ) ) # ( \rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( 
-- (!\input_code[0]~input_o\ & ((!\input_code[1]~input_o\ & ((!\rotor_type[0]~input_o\))) # (\input_code[1]~input_o\ & ((\rotor_type[0]~input_o\) # (\input_code[3]~input_o\))))) # (\input_code[0]~input_o\ & (((!\input_code[3]~input_o\ & 
-- \rotor_type[0]~input_o\)))) ) ) ) # ( !\rotor_type[1]~input_o\ & ( !\input_code[2]~input_o\ & ( (!\rotor_type[0]~input_o\ & ((!\input_code[1]~input_o\) # ((!\input_code[0]~input_o\ & !\input_code[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000100011000111010000000001111001110100110001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_code[1]~input_o\,
	datab => \ALT_INV_input_code[0]~input_o\,
	datac => \ALT_INV_input_code[3]~input_o\,
	datad => \ALT_INV_rotor_type[0]~input_o\,
	datae => \ALT_INV_rotor_type[1]~input_o\,
	dataf => \ALT_INV_input_code[2]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LABCELL_X85_Y21_N3
\Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = ( \input_code[4]~input_o\ & ( !\Mux45~1_combout\ ) ) # ( !\input_code[4]~input_o\ & ( \Mux45~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux45~1_combout\,
	datac => \ALT_INV_Mux45~0_combout\,
	dataf => \ALT_INV_input_code[4]~input_o\,
	combout => \Mux45~2_combout\);

-- Location: LABCELL_X55_Y28_N3
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


