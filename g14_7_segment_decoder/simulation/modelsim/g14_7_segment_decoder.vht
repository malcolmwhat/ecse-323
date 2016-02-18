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
-- Generated on "02/18/2016 13:43:23"
                                                            
-- Vhdl Test Bench template for design  :  g14_7_segment_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;     
use ieee.numeric_std.all;                           

ENTITY g14_7_segment_decoder_vhd_tst IS
END g14_7_segment_decoder_vhd_tst;
ARCHITECTURE g14_7_segment_decoder_arch OF g14_7_segment_decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL segments : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g14_7_segment_decoder
	PORT (
	code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	segments : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_7_segment_decoder
	PORT MAP (
-- list connections between master ports and signals
	code => code,
	segments => segments
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
	for i in 0 to 31 loop
		-- Set the input according to the index, and wait. 
		CODE <= std_logic_vector(to_unsigned(i, 5));
		wait for 1 ns;
	end loop;
WAIT;                                                        
END PROCESS always;                                          
END g14_7_segment_decoder_arch;
