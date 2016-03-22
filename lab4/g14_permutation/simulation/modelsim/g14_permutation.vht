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
-- Generated on "03/22/2016 17:22:04"
                                                            
-- Vhdl Test Bench template for design  :  g14_permutation
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;                               

ENTITY g14_permutation_vhd_tst IS
END g14_permutation_vhd_tst;
ARCHITECTURE g14_permutation_arch OF g14_permutation_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL inv_output_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL output_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rotor_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT g14_permutation
	PORT (
	input_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	inv_output_code : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	output_code : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rotor_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_permutation
	PORT MAP (
-- list connections between master ports and signals
	input_code => input_code,
	inv_output_code => inv_output_code,
	output_code => output_code,
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
	-- Rotor loop
	for i in 0 to 3 loop
		rotor_type <= std_logic_vector(to_unsigned(i, 2));
		for j in 0 to 25 loop
			input_code <= std_logic_vector(to_unsigned(j, 5));
			wait for 10 ns;
		end loop;
	end loop;

        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g14_permutation_arch;
