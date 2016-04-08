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
-- Generated on "04/07/2016 18:09:39"
                                                            
-- Vhdl Test Bench template for design  :  g14_enigma_user_interface
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g14_enigma_user_interface_vhd_tst IS
END g14_enigma_user_interface_vhd_tst;
ARCHITECTURE g14_enigma_user_interface_arch OF g14_enigma_user_interface_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL initialize_key : STD_LOGIC;
SIGNAL input_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL setup_side : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL setup_side_led : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL setup_switch : STD_LOGIC;
SIGNAL setup_switch_led : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL setup_type : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL setup_type_leds : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL value_key : STD_LOGIC;
SIGNAL value_led_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL value_led_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g14_enigma_user_interface
	PORT (
	clock : IN STD_LOGIC;
	initialize_key : IN STD_LOGIC;
	input_code : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	setup_side : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	setup_side_led : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	setup_switch : IN STD_LOGIC;
	setup_switch_led : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	setup_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	setup_type_leds : BUFFER STD_LOGIC_VECTOR(13 DOWNTO 0);
	value_key : IN STD_LOGIC;
	value_led_0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	value_led_1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g14_enigma_user_interface
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	initialize_key => initialize_key,
	input_code => input_code,
	setup_side => setup_side,
	setup_side_led => setup_side_led,
	setup_switch => setup_switch,
	setup_switch_led => setup_switch_led,
	setup_type => setup_type,
	setup_type_leds => setup_type_leds,
	value_key => value_key,
	value_led_0 => value_led_0,
	value_led_1 => value_led_1
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
END g14_enigma_user_interface_arch;
