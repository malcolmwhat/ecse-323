 -- This circuit takes as input a 26-bit vector and produces a 5-bit output named
-- INDEX which indicates the highest bit position over all input bits that have
-- a high value. If no inputs bits are high, then assert an ERROR signal.
--
-- Copyright (C) 2016 Malcolm Watt, Joanna Halpern
-- Version 0.0.2
--
-- Authors: Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
-- 			Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
-- entity name: g14_lab2

library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g14_lab2 is
	port (LETTER : in std_logic_vector(25 downto 0);
			INDEX : out std_logic_vector(4 downto 0);
			ERROR : out std_logic);
end g14_lab2; 


architecture encoder of g14_lab2 is 
	begin
	
			
		-- If the input is all 0s then we assert the ERROR output and end the process
			ERROR <= '1' when to_integer(unsigned(LETTER)) = 0 else '0';

			
		encode_letter : process(LETTER)
		begin
			
			-- Default values for outputs
			INDEX <= (others => '0'); 


			
			-- Loop through the input and look for an asserted input
			check_for_letter : for i in 0 to 25 loop
				if LETTER(i) = '1' then 
					-- When we find an asserted input, we make this the index and exit the process
					INDEX <= std_logic_vector(to_unsigned(i, 5));
				end if;
			end loop;			
		end process;
end encoder;