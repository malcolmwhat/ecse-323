-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "02/11/2016 04:11:32"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g14_5_26_decoder IS
    PORT (
	INPUT : IN std_logic_vector(4 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(25 DOWNTO 0);
	ERR : OUT std_logic
	);
END g14_5_26_decoder;

-- Design Ports Information
-- OUTPUT[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[13]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[14]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[16]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[17]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[18]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[19]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[21]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[22]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[23]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[25]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ERR	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_5_26_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INPUT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_ERR : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[4]~output_o\ : std_logic;
SIGNAL \OUTPUT[5]~output_o\ : std_logic;
SIGNAL \OUTPUT[6]~output_o\ : std_logic;
SIGNAL \OUTPUT[7]~output_o\ : std_logic;
SIGNAL \OUTPUT[8]~output_o\ : std_logic;
SIGNAL \OUTPUT[9]~output_o\ : std_logic;
SIGNAL \OUTPUT[10]~output_o\ : std_logic;
SIGNAL \OUTPUT[11]~output_o\ : std_logic;
SIGNAL \OUTPUT[12]~output_o\ : std_logic;
SIGNAL \OUTPUT[13]~output_o\ : std_logic;
SIGNAL \OUTPUT[14]~output_o\ : std_logic;
SIGNAL \OUTPUT[15]~output_o\ : std_logic;
SIGNAL \OUTPUT[16]~output_o\ : std_logic;
SIGNAL \OUTPUT[17]~output_o\ : std_logic;
SIGNAL \OUTPUT[18]~output_o\ : std_logic;
SIGNAL \OUTPUT[19]~output_o\ : std_logic;
SIGNAL \OUTPUT[20]~output_o\ : std_logic;
SIGNAL \OUTPUT[21]~output_o\ : std_logic;
SIGNAL \OUTPUT[22]~output_o\ : std_logic;
SIGNAL \OUTPUT[23]~output_o\ : std_logic;
SIGNAL \OUTPUT[24]~output_o\ : std_logic;
SIGNAL \OUTPUT[25]~output_o\ : std_logic;
SIGNAL \ERR~output_o\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \OUTPUT~53_combout\ : std_logic;
SIGNAL \OUTPUT~72_combout\ : std_logic;
SIGNAL \INPUT[4]~input_o\ : std_logic;
SIGNAL \OUTPUT~54_combout\ : std_logic;
SIGNAL \OUTPUT~73_combout\ : std_logic;
SIGNAL \OUTPUT~55_combout\ : std_logic;
SIGNAL \OUTPUT~74_combout\ : std_logic;
SIGNAL \OUTPUT~56_combout\ : std_logic;
SIGNAL \OUTPUT~75_combout\ : std_logic;
SIGNAL \OUTPUT~57_combout\ : std_logic;
SIGNAL \OUTPUT~58_combout\ : std_logic;
SIGNAL \OUTPUT~76_combout\ : std_logic;
SIGNAL \OUTPUT~77_combout\ : std_logic;
SIGNAL \OUTPUT~78_combout\ : std_logic;
SIGNAL \OUTPUT~59_combout\ : std_logic;
SIGNAL \OUTPUT~79_combout\ : std_logic;
SIGNAL \OUTPUT~60_combout\ : std_logic;
SIGNAL \OUTPUT~80_combout\ : std_logic;
SIGNAL \OUTPUT~81_combout\ : std_logic;
SIGNAL \OUTPUT~61_combout\ : std_logic;
SIGNAL \OUTPUT~62_combout\ : std_logic;
SIGNAL \OUTPUT~63_combout\ : std_logic;
SIGNAL \OUTPUT~64_combout\ : std_logic;
SIGNAL \OUTPUT~82_combout\ : std_logic;
SIGNAL \OUTPUT~52_combout\ : std_logic;
SIGNAL \OUTPUT~65_combout\ : std_logic;
SIGNAL \OUTPUT~66_combout\ : std_logic;
SIGNAL \OUTPUT~67_combout\ : std_logic;
SIGNAL \OUTPUT~83_combout\ : std_logic;
SIGNAL \OUTPUT~68_combout\ : std_logic;
SIGNAL \OUTPUT~69_combout\ : std_logic;
SIGNAL \OUTPUT~70_combout\ : std_logic;
SIGNAL \OUTPUT~84_combout\ : std_logic;
SIGNAL \OUTPUT~71_combout\ : std_logic;
SIGNAL \ERR~0_combout\ : std_logic;
SIGNAL \ALT_INV_OUTPUT~72_combout\ : std_logic;

BEGIN

ww_INPUT <= INPUT;
OUTPUT <= ww_OUTPUT;
ERR <= ww_ERR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OUTPUT~72_combout\ <= NOT \OUTPUT~72_combout\;

-- Location: IOOBUF_X24_Y31_N9
\OUTPUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OUTPUT~72_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\OUTPUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~73_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\OUTPUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~74_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\OUTPUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~75_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\OUTPUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~57_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[4]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\OUTPUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~76_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\OUTPUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~77_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[6]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\OUTPUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~78_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[7]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\OUTPUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~79_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[8]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\OUTPUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~60_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[9]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\OUTPUT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~80_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[10]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\OUTPUT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~81_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[11]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\OUTPUT[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~61_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[12]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\OUTPUT[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~62_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[13]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\OUTPUT[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~63_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[14]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\OUTPUT[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~64_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[15]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\OUTPUT[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~82_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[16]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\OUTPUT[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~65_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[17]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\OUTPUT[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~66_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[18]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\OUTPUT[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~67_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[19]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\OUTPUT[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~83_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[20]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\OUTPUT[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~68_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[21]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\OUTPUT[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~69_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[22]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\OUTPUT[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~70_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[23]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\OUTPUT[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~84_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[24]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\OUTPUT[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTPUT~71_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[25]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\ERR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ERR~0_combout\,
	devoe => ww_devoe,
	o => \ERR~output_o\);

-- Location: IOIBUF_X31_Y31_N1
\INPUT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\INPUT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\INPUT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\INPUT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X32_Y27_N10
\OUTPUT~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~53_combout\ = (!\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~53_combout\);

-- Location: LCCOMB_X32_Y27_N6
\OUTPUT~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~72_combout\ = (\INPUT[0]~input_o\) # ((\INPUT[1]~input_o\) # ((\INPUT[2]~input_o\) # (!\OUTPUT~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~53_combout\,
	combout => \OUTPUT~72_combout\);

-- Location: IOIBUF_X33_Y27_N8
\INPUT[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(4),
	o => \INPUT[4]~input_o\);

-- Location: LCCOMB_X32_Y29_N16
\OUTPUT~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~54_combout\ = (!\INPUT[0]~input_o\ & (!\INPUT[3]~input_o\ & \INPUT[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[3]~input_o\,
	datad => \INPUT[4]~input_o\,
	combout => \OUTPUT~54_combout\);

-- Location: LCCOMB_X32_Y27_N8
\OUTPUT~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~73_combout\ = (!\INPUT[1]~input_o\ & (\OUTPUT~54_combout\ & !\INPUT[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[1]~input_o\,
	datab => \OUTPUT~54_combout\,
	datac => \INPUT[2]~input_o\,
	combout => \OUTPUT~73_combout\);

-- Location: LCCOMB_X32_Y29_N10
\OUTPUT~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~55_combout\ = (!\INPUT[0]~input_o\ & (\INPUT[3]~input_o\ & !\INPUT[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[3]~input_o\,
	datad => \INPUT[4]~input_o\,
	combout => \OUTPUT~55_combout\);

-- Location: LCCOMB_X32_Y27_N26
\OUTPUT~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~74_combout\ = (!\INPUT[1]~input_o\ & (!\INPUT[2]~input_o\ & \OUTPUT~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~55_combout\,
	combout => \OUTPUT~74_combout\);

-- Location: LCCOMB_X32_Y27_N20
\OUTPUT~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~56_combout\ = (\INPUT[4]~input_o\ & (!\INPUT[0]~input_o\ & \INPUT[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[4]~input_o\,
	datac => \INPUT[0]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~56_combout\);

-- Location: LCCOMB_X32_Y27_N4
\OUTPUT~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~75_combout\ = (!\INPUT[1]~input_o\ & (!\INPUT[2]~input_o\ & \OUTPUT~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~56_combout\,
	combout => \OUTPUT~75_combout\);

-- Location: LCCOMB_X32_Y27_N14
\OUTPUT~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~57_combout\ = (!\INPUT[0]~input_o\ & (!\INPUT[1]~input_o\ & (\INPUT[2]~input_o\ & \OUTPUT~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~53_combout\,
	combout => \OUTPUT~57_combout\);

-- Location: LCCOMB_X32_Y27_N0
\OUTPUT~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~58_combout\ = (!\INPUT[1]~input_o\ & \INPUT[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	combout => \OUTPUT~58_combout\);

-- Location: LCCOMB_X31_Y27_N16
\OUTPUT~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~76_combout\ = (!\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~76_combout\);

-- Location: LCCOMB_X31_Y27_N26
\OUTPUT~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~77_combout\ = (!\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (!\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~77_combout\);

-- Location: LCCOMB_X31_Y27_N4
\OUTPUT~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~78_combout\ = (!\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~78_combout\);

-- Location: LCCOMB_X32_Y27_N2
\OUTPUT~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~59_combout\ = (\INPUT[1]~input_o\ & !\INPUT[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	combout => \OUTPUT~59_combout\);

-- Location: LCCOMB_X31_Y27_N6
\OUTPUT~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~79_combout\ = (\OUTPUT~59_combout\ & (!\INPUT[0]~input_o\ & (!\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~79_combout\);

-- Location: LCCOMB_X31_Y27_N8
\OUTPUT~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~60_combout\ = (\OUTPUT~59_combout\ & (!\INPUT[0]~input_o\ & (\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~60_combout\);

-- Location: LCCOMB_X31_Y27_N24
\OUTPUT~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~80_combout\ = (\OUTPUT~59_combout\ & (!\INPUT[0]~input_o\ & (!\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~80_combout\);

-- Location: LCCOMB_X31_Y27_N2
\OUTPUT~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~81_combout\ = (\OUTPUT~59_combout\ & (!\INPUT[0]~input_o\ & (\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~81_combout\);

-- Location: LCCOMB_X32_Y27_N28
\OUTPUT~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~61_combout\ = (!\INPUT[0]~input_o\ & (\INPUT[1]~input_o\ & (\INPUT[2]~input_o\ & \OUTPUT~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~53_combout\,
	combout => \OUTPUT~61_combout\);

-- Location: LCCOMB_X32_Y27_N30
\OUTPUT~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~62_combout\ = (\INPUT[1]~input_o\ & (\OUTPUT~54_combout\ & \INPUT[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[1]~input_o\,
	datab => \OUTPUT~54_combout\,
	datac => \INPUT[2]~input_o\,
	combout => \OUTPUT~62_combout\);

-- Location: LCCOMB_X32_Y27_N24
\OUTPUT~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~63_combout\ = (\INPUT[1]~input_o\ & (\INPUT[2]~input_o\ & \OUTPUT~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~55_combout\,
	combout => \OUTPUT~63_combout\);

-- Location: LCCOMB_X32_Y27_N18
\OUTPUT~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~64_combout\ = (\INPUT[1]~input_o\ & (\INPUT[2]~input_o\ & \OUTPUT~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~56_combout\,
	combout => \OUTPUT~64_combout\);

-- Location: LCCOMB_X32_Y27_N22
\OUTPUT~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~82_combout\ = (\INPUT[0]~input_o\ & (!\INPUT[1]~input_o\ & (!\INPUT[2]~input_o\ & \OUTPUT~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \OUTPUT~53_combout\,
	combout => \OUTPUT~82_combout\);

-- Location: LCCOMB_X32_Y27_N16
\OUTPUT~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~52_combout\ = (!\INPUT[1]~input_o\ & !\INPUT[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	combout => \OUTPUT~52_combout\);

-- Location: LCCOMB_X31_Y27_N10
\OUTPUT~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~65_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~52_combout\ & (\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~52_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~65_combout\);

-- Location: LCCOMB_X31_Y27_N12
\OUTPUT~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~66_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~52_combout\ & (!\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~52_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~66_combout\);

-- Location: LCCOMB_X31_Y27_N30
\OUTPUT~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~67_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~52_combout\ & (\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~52_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~67_combout\);

-- Location: LCCOMB_X31_Y27_N28
\OUTPUT~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~83_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (!\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~83_combout\);

-- Location: LCCOMB_X31_Y27_N0
\OUTPUT~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~68_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~68_combout\);

-- Location: LCCOMB_X31_Y27_N18
\OUTPUT~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~69_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (!\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~69_combout\);

-- Location: LCCOMB_X31_Y27_N20
\OUTPUT~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~70_combout\ = (\INPUT[0]~input_o\ & (\OUTPUT~58_combout\ & (\INPUT[4]~input_o\ & \INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \OUTPUT~58_combout\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~70_combout\);

-- Location: LCCOMB_X31_Y27_N14
\OUTPUT~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~84_combout\ = (\OUTPUT~59_combout\ & (\INPUT[0]~input_o\ & (!\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~84_combout\);

-- Location: LCCOMB_X31_Y27_N22
\OUTPUT~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \OUTPUT~71_combout\ = (\OUTPUT~59_combout\ & (\INPUT[0]~input_o\ & (\INPUT[4]~input_o\ & !\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUTPUT~59_combout\,
	datab => \INPUT[0]~input_o\,
	datac => \INPUT[4]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \OUTPUT~71_combout\);

-- Location: LCCOMB_X32_Y27_N12
\ERR~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ERR~0_combout\ = (\INPUT[4]~input_o\ & (\INPUT[3]~input_o\ & ((\INPUT[1]~input_o\) # (\INPUT[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[4]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \ERR~0_combout\);

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(4) <= \OUTPUT[4]~output_o\;

ww_OUTPUT(5) <= \OUTPUT[5]~output_o\;

ww_OUTPUT(6) <= \OUTPUT[6]~output_o\;

ww_OUTPUT(7) <= \OUTPUT[7]~output_o\;

ww_OUTPUT(8) <= \OUTPUT[8]~output_o\;

ww_OUTPUT(9) <= \OUTPUT[9]~output_o\;

ww_OUTPUT(10) <= \OUTPUT[10]~output_o\;

ww_OUTPUT(11) <= \OUTPUT[11]~output_o\;

ww_OUTPUT(12) <= \OUTPUT[12]~output_o\;

ww_OUTPUT(13) <= \OUTPUT[13]~output_o\;

ww_OUTPUT(14) <= \OUTPUT[14]~output_o\;

ww_OUTPUT(15) <= \OUTPUT[15]~output_o\;

ww_OUTPUT(16) <= \OUTPUT[16]~output_o\;

ww_OUTPUT(17) <= \OUTPUT[17]~output_o\;

ww_OUTPUT(18) <= \OUTPUT[18]~output_o\;

ww_OUTPUT(19) <= \OUTPUT[19]~output_o\;

ww_OUTPUT(20) <= \OUTPUT[20]~output_o\;

ww_OUTPUT(21) <= \OUTPUT[21]~output_o\;

ww_OUTPUT(22) <= \OUTPUT[22]~output_o\;

ww_OUTPUT(23) <= \OUTPUT[23]~output_o\;

ww_OUTPUT(24) <= \OUTPUT[24]~output_o\;

ww_OUTPUT(25) <= \OUTPUT[25]~output_o\;

ww_ERR <= \ERR~output_o\;
END structure;


