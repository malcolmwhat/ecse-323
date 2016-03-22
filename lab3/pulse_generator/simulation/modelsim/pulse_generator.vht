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
-- Generated on "03/09/2016 17:56:22"

-- Vhdl Test Bench template for design  :  pulse_generator
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pulse_generator_vhd_tst IS
END pulse_generator_vhd_tst;
ARCHITECTURE pulse_generator_arch OF pulse_generator_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL epulse : STD_LOGIC;
COMPONENT pulse_generator
	PORT (
	clock : IN STD_LOGIC;
	epulse : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pulse_generator
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	epulse => epulse
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
   for i in 0 to 40000 loop
		clock <= '1';
		wait for 10 ns;
		clock <= '0';
		wait for 10 ns;
	  -- code executes for every event on sensitivity list
end loop;
WAIT;
END PROCESS always;
END pulse_generator_arch;
