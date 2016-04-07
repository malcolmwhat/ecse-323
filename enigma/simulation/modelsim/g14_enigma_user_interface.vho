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

-- DATE "04/07/2016 15:59:42"

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

ENTITY 	g14_enigma_user_interface IS
    PORT (
	clock : IN std_logic;
	value_key : IN std_logic;
	initialize_key : IN std_logic;
	input_code : IN std_logic_vector(4 DOWNTO 0);
	setup_switch : IN std_logic;
	setup_type : IN std_logic_vector(1 DOWNTO 0);
	setup_side : IN std_logic_vector(1 DOWNTO 0);
	setup_switch_led : OUT std_logic_vector(6 DOWNTO 0);
	setup_type_leds : OUT std_logic_vector(13 DOWNTO 0);
	setup_side_led : OUT std_logic_vector(6 DOWNTO 0);
	value_led_1 : OUT std_logic_vector(6 DOWNTO 0);
	value_led_0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END g14_enigma_user_interface;

-- Design Ports Information
-- clock	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_key	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initialize_key	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[0]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[2]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_code[4]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type[0]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[2]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_switch_led[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[1]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[6]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[7]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[9]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[10]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[11]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[12]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_type_leds[13]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[1]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- setup_side_led[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[3]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[4]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_1[6]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[4]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- value_led_0[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g14_enigma_user_interface IS
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
SIGNAL ww_value_key : std_logic;
SIGNAL ww_initialize_key : std_logic;
SIGNAL ww_input_code : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_setup_switch : std_logic;
SIGNAL ww_setup_type : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_setup_side : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_setup_switch_led : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_setup_type_leds : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_setup_side_led : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_value_led_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_value_led_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \value_key~input_o\ : std_logic;
SIGNAL \initialize_key~input_o\ : std_logic;
SIGNAL \input_code[0]~input_o\ : std_logic;
SIGNAL \input_code[1]~input_o\ : std_logic;
SIGNAL \input_code[2]~input_o\ : std_logic;
SIGNAL \input_code[3]~input_o\ : std_logic;
SIGNAL \input_code[4]~input_o\ : std_logic;
SIGNAL \setup_switch~input_o\ : std_logic;
SIGNAL \setup_type[0]~input_o\ : std_logic;
SIGNAL \setup_type[1]~input_o\ : std_logic;
SIGNAL \setup_side[0]~input_o\ : std_logic;
SIGNAL \setup_side[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_value_key <= value_key;
ww_initialize_key <= initialize_key;
ww_input_code <= input_code;
ww_setup_switch <= setup_switch;
ww_setup_type <= setup_type;
ww_setup_side <= setup_side;
setup_switch_led <= ww_setup_switch_led;
setup_type_leds <= ww_setup_type_leds;
setup_side_led <= ww_setup_side_led;
value_led_1 <= ww_value_led_1;
value_led_0 <= ww_value_led_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X89_Y8_N39
\setup_switch_led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(0));

-- Location: IOOBUF_X84_Y0_N2
\setup_switch_led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(1));

-- Location: IOOBUF_X22_Y0_N36
\setup_switch_led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(2));

-- Location: IOOBUF_X30_Y81_N2
\setup_switch_led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(3));

-- Location: IOOBUF_X6_Y81_N19
\setup_switch_led[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(4));

-- Location: IOOBUF_X20_Y0_N2
\setup_switch_led[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(5));

-- Location: IOOBUF_X74_Y0_N59
\setup_switch_led[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_switch_led(6));

-- Location: IOOBUF_X8_Y0_N36
\setup_type_leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(0));

-- Location: IOOBUF_X76_Y0_N36
\setup_type_leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(1));

-- Location: IOOBUF_X40_Y81_N53
\setup_type_leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(2));

-- Location: IOOBUF_X30_Y81_N36
\setup_type_leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(3));

-- Location: IOOBUF_X28_Y81_N36
\setup_type_leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(4));

-- Location: IOOBUF_X8_Y0_N19
\setup_type_leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(5));

-- Location: IOOBUF_X60_Y0_N53
\setup_type_leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(6));

-- Location: IOOBUF_X6_Y81_N36
\setup_type_leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(7));

-- Location: IOOBUF_X34_Y81_N76
\setup_type_leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(8));

-- Location: IOOBUF_X32_Y0_N19
\setup_type_leds[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(9));

-- Location: IOOBUF_X89_Y11_N79
\setup_type_leds[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(10));

-- Location: IOOBUF_X22_Y0_N53
\setup_type_leds[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(11));

-- Location: IOOBUF_X82_Y0_N42
\setup_type_leds[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(12));

-- Location: IOOBUF_X64_Y0_N19
\setup_type_leds[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_type_leds(13));

-- Location: IOOBUF_X14_Y81_N53
\setup_side_led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(0));

-- Location: IOOBUF_X54_Y0_N19
\setup_side_led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(1));

-- Location: IOOBUF_X68_Y0_N19
\setup_side_led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(2));

-- Location: IOOBUF_X80_Y0_N19
\setup_side_led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(3));

-- Location: IOOBUF_X6_Y0_N2
\setup_side_led[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(4));

-- Location: IOOBUF_X28_Y81_N2
\setup_side_led[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(5));

-- Location: IOOBUF_X6_Y0_N19
\setup_side_led[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_setup_side_led(6));

-- Location: IOOBUF_X30_Y0_N2
\value_led_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(0));

-- Location: IOOBUF_X89_Y23_N39
\value_led_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(1));

-- Location: IOOBUF_X12_Y81_N2
\value_led_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(2));

-- Location: IOOBUF_X62_Y0_N53
\value_led_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(3));

-- Location: IOOBUF_X89_Y13_N39
\value_led_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(4));

-- Location: IOOBUF_X28_Y0_N2
\value_led_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(5));

-- Location: IOOBUF_X64_Y0_N2
\value_led_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_1(6));

-- Location: IOOBUF_X16_Y81_N2
\value_led_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(0));

-- Location: IOOBUF_X89_Y21_N22
\value_led_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(1));

-- Location: IOOBUF_X14_Y81_N36
\value_led_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(2));

-- Location: IOOBUF_X6_Y0_N53
\value_led_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(3));

-- Location: IOOBUF_X20_Y0_N53
\value_led_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(4));

-- Location: IOOBUF_X20_Y81_N53
\value_led_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(5));

-- Location: IOOBUF_X89_Y16_N39
\value_led_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_value_led_0(6));

-- Location: IOIBUF_X16_Y81_N52
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\value_key~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_value_key,
	o => \value_key~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\initialize_key~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initialize_key,
	o => \initialize_key~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\input_code[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(0),
	o => \input_code[0]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\input_code[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(1),
	o => \input_code[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\input_code[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(2),
	o => \input_code[2]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\input_code[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(3),
	o => \input_code[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\input_code[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_code(4),
	o => \input_code[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\setup_switch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setup_switch,
	o => \setup_switch~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\setup_type[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setup_type(0),
	o => \setup_type[0]~input_o\);

-- Location: IOIBUF_X26_Y81_N75
\setup_type[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setup_type(1),
	o => \setup_type[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\setup_side[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setup_side(0),
	o => \setup_side[0]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\setup_side[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setup_side(1),
	o => \setup_side[1]~input_o\);

-- Location: LABCELL_X81_Y29_N0
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


