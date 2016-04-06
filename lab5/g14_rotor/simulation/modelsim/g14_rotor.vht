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
-- Generated on "04/06/2016 16:25:47"

-- Vhdl Test Bench template for design  :  g14_rotor
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g14_rotor_vhd_tst IS
END g14_rotor_vhd_tst;
ARCHITECTURE g14_rotor_arch OF g14_rotor_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL directions : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL input_code_forward : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL input_code_reverse : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL knock_count : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL load : STD_LOGIC;
SIGNAL output_code_forward : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL output_code_reverse : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ring_setting : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal refl : STD_LOGIC_VECTOR(4 downto 0);

COMPONENT g14_rotor
	PORT (
	clock : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	directions : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC;
	input_code_forward : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	input_code_reverse : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	knock_count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	load : IN STD_LOGIC;
	output_code_forward : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	output_code_reverse : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	ring_setting : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	refl <= output_code_forward;
	input_code_reverse <= refl;


	i1 : g14_rotor
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	data => data,
	directions => directions,
	enable => enable,
	input_code_forward => input_code_forward,
	input_code_reverse => input_code_reverse,
	knock_count => knock_count,
	load => load,
	output_code_forward => output_code_forward,
	output_code_reverse => output_code_reverse,
	ring_setting => ring_setting,
	rotor_type => rotor_type
	);
init : PROCESS
-- variable declarations
BEGIN
	    -- code that executes only once
WAIT;
END PROCESS init;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
	data <= "00010";
	directions <= "0101";
	enable <= '0';
	input_code_forward <= "01001";
	load <= '0';
	ring_setting <= "00000";
	for i in 0 to 100 loop
		clock <='0';
		wait for 1 ps;
		clock<='1';
		wait for 1 ps;
	end loop;
	input_code_forward <= "00010";
	for i in 0 to 100 loop
		clock <='0';
		wait for 1 ps;
		clock<='1';
		wait for 1 ps;
	end loop;

        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END g14_rotor_arch;
