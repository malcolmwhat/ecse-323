library ieee;
library lpm;

use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity pulse_generator is 
	port(clock : in std_logic;
		  epulse : out std_logic);
end pulse_generator;

-- We need to count down using the counter, when the output is all 0's we set sload high. 
-- data must always be the value we want to count down from (which is 24999999 in decimal)
-- data in binary is 
architecture gen of pulse_generator is
	signal intermediate : std_logic;
	signal load_to_counter : std_logic_vector (24 downto 0);
	begin
		load_to_counter <= "1011111010111100000111111"; -- 25 million minus 1
		
		down_counter : lpm_counter
			generic map (
				lpm_direction => "DOWN",
				lpm_width => 25
			)
			port map (
				data => load_to_counter,
				sload => intermediate,
				clock => clock,
				eq(0) => intermediate -- Need to apply data as well as sload
			);
		
		
		epulse <= intermediate;
		
end gen;