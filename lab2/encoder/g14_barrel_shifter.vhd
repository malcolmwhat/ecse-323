-- Authors: Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
-- 			Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
-- entity name: g14_barrel_shifter

library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;

entity g14_barrel_shifter is
	port (LETTER_IN : in std_logic_vector(25 downto 0);
			SHIFT : in std_logic_vector(4 downto 0);
			LETTER_OUT : out std_logic_vector(25 downto 0));
end g14_barrel_shifter; 


architecture shifter of g14_barrel_shifter is 
	begin
		with SHIFT select
		    LETTER_OUT <= 
			 
			
			LETTER_IN(24 downto 0) & LETTER_IN(25 downto 25) WHEN "00001",
			LETTER_IN(23 downto 0) & LETTER_IN(25 downto 24) WHEN "00010",
			LETTER_IN(22 downto 0) & LETTER_IN(25 downto 23) WHEN "00011",
			LETTER_IN(21 downto 0) & LETTER_IN(25 downto 22) WHEN "00100",
			LETTER_IN(20 downto 0) & LETTER_IN(25 downto 21) WHEN "00101",
			LETTER_IN(19 downto 0) & LETTER_IN(25 downto 20) WHEN "00110",
			LETTER_IN(18 downto 0) & LETTER_IN(25 downto 19) WHEN "00111",
			LETTER_IN(17 downto 0) & LETTER_IN(25 downto 18) WHEN "01000",
			LETTER_IN(16 downto 0) & LETTER_IN(25 downto 17) WHEN "01001",
			LETTER_IN(15 downto 0) & LETTER_IN(25 downto 16) WHEN "01010",
			LETTER_IN(14 downto 0) & LETTER_IN(25 downto 15) WHEN "01011",
			LETTER_IN(13 downto 0) & LETTER_IN(25 downto 14) WHEN "01100",
			LETTER_IN(12 downto 0) & LETTER_IN(25 downto 13) WHEN "01101",
			LETTER_IN(11 downto 0) & LETTER_IN(25 downto 12) WHEN "01110",
			LETTER_IN(10 downto 0) & LETTER_IN(25 downto 11) WHEN "01111",
			LETTER_IN(9 downto 0) & LETTER_IN(25 downto 10) WHEN "10000",
			LETTER_IN(8 downto 0) & LETTER_IN(25 downto 9) WHEN "10001",
			LETTER_IN(7 downto 0) & LETTER_IN(25 downto 8) WHEN "10010",
			LETTER_IN(6 downto 0) & LETTER_IN(25 downto 7) WHEN "10011",
			LETTER_IN(5 downto 0) & LETTER_IN(25 downto 6) WHEN "10100",
			LETTER_IN(4 downto 0) & LETTER_IN(25 downto 5) WHEN "10101",
			LETTER_IN(3 downto 0) & LETTER_IN(25 downto 4) WHEN "10110",
			LETTER_IN(2 downto 0) & LETTER_IN(25 downto 3) WHEN "10111",
			LETTER_IN(1 downto 0) & LETTER_IN(25 downto 2) WHEN "11000",
			LETTER_IN(0 downto 0) & LETTER_IN(25 downto 1) WHEN "11001",

			LETTER_IN WHEN others;
end shifter;