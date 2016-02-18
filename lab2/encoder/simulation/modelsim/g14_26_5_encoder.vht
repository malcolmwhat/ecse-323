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
-- Generated on "02/18/2016 08:38:17"
                                                            
-- Vhdl Test Bench template for design  :  g14_26_5_encoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g14_26_5_encoder_vhd_tst IS
END g14_26_5_encoder_vhd_tst;
ARCHITECTURE g14_26_5_encoder_arch OF g14_26_5_encoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ERROR : STD_LOGIC;
SIGNAL INDEX : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL LETTER : STD_LOGIC_VECTOR(25 DOWNTO 0);
COMPONENT g14_26_5_encoder
	PORT (
	ERROR : OUT STD_LOGIC;
	INDEX : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	LETTER : IN STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_26_5_encoder
	PORT MAP (
-- list connections between master ports and signals
	ERROR => ERROR,
	INDEX => INDEX,
	LETTER => LETTER
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
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g14_26_5_encoder_arch;
