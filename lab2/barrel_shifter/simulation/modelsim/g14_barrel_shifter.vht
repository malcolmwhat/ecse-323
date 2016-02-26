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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/18/2016 08:45:14"
                                                            
-- Vhdl Test Bench template for design  :  g14_barrel_shifter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;  

                               

ENTITY g14_barrel_shifter_vhd_tst IS
END g14_barrel_shifter_vhd_tst;
ARCHITECTURE g14_barrel_shifter_arch OF g14_barrel_shifter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LETTER_IN : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL LETTER_OUT : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL SHIFT : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT g14_barrel_shifter
	PORT (
	LETTER_IN : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
	LETTER_OUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
	SHIFT : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_barrel_shifter
	PORT MAP (
-- list connections between master ports and signals
	LETTER_IN => LETTER_IN,
	LETTER_OUT => LETTER_OUT,
	SHIFT => SHIFT
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
		-- When letter_in(0) and letter_in(5) are high and the rest are 0
	LETTER_IN <= (0 => '1', 5 => '1', others => '0');
	
	for i in 0 to 31 loop
		SHIFT <= std_logic_vector(to_unsigned(i, 5));
		
		wait for 1 ns;
	end loop;	
			  
WAIT;                                                        
END PROCESS always;                                          
END g14_barrel_shifter_arch;
