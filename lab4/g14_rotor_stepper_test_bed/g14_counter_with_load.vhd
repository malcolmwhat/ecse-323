-- This circuit is for our 0 to 25 counter


-- Authors : Malcolm Watt (260585950), Joanna Halpern (260410826)
-- Group : 14

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g14_counter is 
	port(clk : in std_logic;  
        reset : in std_logic;
		  enable : in std_logic;
		  count : out std_logic_vector(4 downto 0)
		  );
end g14_counter;

architecture counter of g14_counter is 
	signal temp_count : integer range 0 to 25;--range(0, 25);

	begin	
		counting: process (reset, clk, enable, temp_count)
			begin

				if reset = '1' then 
					temp_count <= 0;
				
				elsif clk = '1' and clk'event then
					if enable = '1' then
						
						
						
						if temp_count >= 25 then 
							temp_count <= 0;  -- Reset to 0
					
						else 
							-- Add one and convert back to std_logic_vector	
							temp_count <= temp_count + 1; 
						end if;
					end if;
				end if;
				
				count <= std_logic_vector(to_unsigned(temp_count, 5));
		end process;
		
end counter;