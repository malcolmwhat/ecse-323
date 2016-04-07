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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to
-- suit user's needs .Comments are provided in each section to help the user
-- fill out necessary details.
-- ***************************************************************************
-- Generated on "04/06/2016 21:37:47"

-- Vhdl Test Bench template for design  :  enigma
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY enigma_vhd_tst IS
END enigma_vhd_tst;
ARCHITECTURE enigma_arch OF enigma_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL input_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL keypress : STD_LOGIC;
SIGNAL output_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reflector_type : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL ring_setting_l : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ring_setting_m : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ring_setting_r : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_ini_pos_l : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_ini_pos_m : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_ini_pos_r : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_type_l : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rotor_type_m : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rotor_type_r : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT enigma
	PORT (
	clock : IN STD_LOGIC;
	input_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	keypress : IN STD_LOGIC;
	output_code : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reflector_type : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	ring_setting_l : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	ring_setting_m : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	ring_setting_r : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_ini_pos_l : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_ini_pos_m : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_ini_pos_r : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_type_l : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rotor_type_m : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rotor_type_r : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : enigma
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	input_code => input_code,
	keypress => keypress,
	output_code => output_code,
	reflector_type => reflector_type,
	reset => reset,
	ring_setting_l => ring_setting_l,
	ring_setting_m => ring_setting_m,
	ring_setting_r => ring_setting_r,
	rotor_ini_pos_l => rotor_ini_pos_l,
	rotor_ini_pos_m => rotor_ini_pos_m,
	rotor_ini_pos_r => rotor_ini_pos_r,
	rotor_type_l => rotor_type_l,
	rotor_type_m => rotor_type_m,
	rotor_type_r => rotor_type_r
	);
init : PROCESS
-- variable declarations
BEGIN
	reflector_type <= '0';
	ring_setting_l <= "00000";
	ring_setting_m <= "00000";
	ring_setting_r <= "00000";
	rotor_ini_pos_l <= "00000";
	rotor_ini_pos_m <= "00000";
	rotor_ini_pos_r <= "00000";
	rotor_type_l <= "00";
	rotor_type_m <= "00";
	rotor_type_r <= "00";


	input_code <= "00001";
	keypress <= '1';
	reset <= '1';
    for i in 0 to 3 loop
    	clock <= '0'; WAIT for 5 ps;clock <= '1'; WAIT for 5 ps;
    end loop ; -- identifier
    reset <= '0';
    for i in 0 to 3 loop
    	clock <= '0'; WAIT for 5 ps;clock <= '1'; WAIT for 5 ps;
    end loop ; -- identifier
    keypress <= '0';
    for i in 0 to 3 loop
    	clock <= '0'; WAIT for 5 ps;clock <= '1'; WAIT for 5 ps;
    end loop ;
    keypress <= '1';
    for i in 0 to 3 loop
    	clock <= '0'; WAIT for 5 ps;clock <= '1'; WAIT for 5 ps;
    end loop ;
WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN




        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END enigma_arch;
