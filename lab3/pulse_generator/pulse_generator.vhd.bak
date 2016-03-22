library ieee;
library lpm;

use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity pulse_generator is 
	port(clock : in std_logic;
		  epulse : out std_logic);
end pulse_generator;

architecture gen of pulse_generator is
	signal intermediate : std_logic_vector (0 downto 0);
	begin
		down_counter : lpm_counter
			generic map (
				lpm_direction => "DOWN",
			)
			port map (
				clock => clock,
				q => intermediate
			);
		
		epulse <= intermediate(0);
		
end gen;