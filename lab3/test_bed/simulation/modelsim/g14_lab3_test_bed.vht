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
-- Generated on "03/10/2016 13:47:30"

-- Vhdl Test Bench template for design  :  g14_lab3_test_bed
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g14_lab3_test_bed_vhd_tst IS
END g14_lab3_test_bed_vhd_tst;
ARCHITECTURE g14_lab3_test_bed_arch OF g14_lab3_test_bed_vhd_tst IS
-- constants
-- signals
SIGNAL clk : STD_LOGIC;
SIGNAL dipswitches : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL seven_segment_output : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g14_lab3_test_bed
	PORT (
	clk : IN STD_LOGIC;
	dipswitches : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC;
	seven_segment_output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_lab3_test_bed
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dipswitches => dipswitches,
	reset => reset,
	seven_segment_output => seven_segment_output
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
    clk <= '0';
	reset <= '0';
	dipswitches <= "00000";
	wait for 20 ns;
	for i in 0 to 1000000 loop
		-- Set the input according to the index, and wait.
		clk <= '1';
		wait for 2 ns;
		clk <= '0';
		wait for 2 ns;

	end loop;         -- code executes for every event on sensitivity list        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END g14_lab3_test_bed_arch;
