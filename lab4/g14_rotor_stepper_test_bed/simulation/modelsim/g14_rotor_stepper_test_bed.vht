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
-- Generated on "03/24/2016 15:28:04"

-- Vhdl Test Bench template for design  :  g14_rotor_stepper_test_bed
--
-- Simulation tool : ModelSim-Altera (VHDL)
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY g14_rotor_stepper_test_bed_vhd_tst IS
END g14_rotor_stepper_test_bed_vhd_tst;
ARCHITECTURE g14_rotor_stepper_test_bed_arch OF g14_rotor_stepper_test_bed_vhd_tst IS
-- constants
-- signals
SIGNAL clock : STD_LOGIC;
SIGNAL init : STD_LOGIC;
SIGNAL seven_seg_l : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_seg_m : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_seg_r : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g14_rotor_stepper_test_bed
	PORT (
	clock : IN STD_LOGIC;
	init : IN STD_LOGIC;
	seven_seg_l : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_seg_m : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_seg_r : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_rotor_stepper_test_bed
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	init => init,
	seven_seg_l => seven_seg_l,
	seven_seg_m => seven_seg_m,
	seven_seg_r => seven_seg_r
	);
poo : PROCESS
-- variable declarations
BEGIN
        -- code that executes only once
WAIT;
END PROCESS poo;
always : PROCESS
-- optional sensitivity list
-- (        )
-- variable declarations
BEGIN
    clock <= '0';
    init <= '0'; -- Press the init button
    wait for 10 ns;

    for i in 0 to 4 loop
    	clock <= '1';
    	wait for 10 ns;
    	clock <= '0';
    	wait for 10 ns;
    end loop;

    init <= '1';

    for i in 0 to 40 loop
    	clock <= '1';
    	wait for 10 ns;
    	clock <= '0';
    	wait for 10 ns;
    end loop;
        -- code executes for every event on sensitivity list
WAIT;
END PROCESS always;
END g14_rotor_stepper_test_bed_arch;
