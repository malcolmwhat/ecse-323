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
-- Generated on "03/08/2016 16:20:18"
                                                            
-- Vhdl Test Bench template for design  :  g14_5_26_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

ENTITY g14_5_26_decoder_vhd_tst IS
END g14_5_26_decoder_vhd_tst;
ARCHITECTURE g14_5_26_decoder_arch OF g14_5_26_decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ERR : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(25 DOWNTO 0);
COMPONENT g14_5_26_decoder
	PORT (
	ERR : OUT STD_LOGIC;
	INPUT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_5_26_decoder
	PORT MAP (
-- list connections between master ports and signals
	ERR => ERR,
	INPUT => INPUT,
	OUTPUT => OUTPUT
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
	INPUT <= std_logic_vector(to_unsigned(i, 5));
	wait for 1 ns;
end loop;                                                       
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g14_5_26_decoder_arch;
