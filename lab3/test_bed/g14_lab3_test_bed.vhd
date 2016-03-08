-- Test bed for Lab 3
-- Authors: Malcolm Watt, Joanna Halpern

library ieee;
use ieee.std_logic_1164.all;
use work.all;


entity g14_lab3_test_bed is 
	port(clock : in std_logic;
		  dipswitches : in std_logic_vector(4 downto 0); -- The physical switches on the altera board
		  seven_segment_output : out std_logic_vector(6 downto 0); -- To the LED display on the board
   );
end g14_lab3_test_bed;


architecture test of g14_lab3_test_bed is 
	-- Pulse generator component, to create the 2Hz pulse
	component pulse_generator 
		port(clock : in std_logic;
		     epulse : out std_logic
		);
   end component;
	
	-- 0 to 25 counter
	component g14_counter 
		port(clk, reset, enable : in std_logic;
		     count : out std_logic_vector(4 downto 0)
	   );
	end component;
	
	-- 5 : 26 decoder component
	
end test;