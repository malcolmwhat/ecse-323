-- This hardware description takes as input a 5 bit logic vector, corresponding 
-- to an index between 0 and 31, if it falls between 0 and 25 then it outputs the
-- appropriate 7 segment code for the particular FPGA that we are using. 
--
-- Entity Name: g14_7_segment_decoder
--
-- Authors : Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
--				 Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
-- Date : February 16 2016

library ieee;
use ieee.std_logic_1164.all;

entity g14_7_segment_decoder is
	port(code : in std_logic_vector(4 downto 0);
	     segments : out std_logic_vector(6 downto 0));
end g14_7_segment_decoder;

architecture behaviour of g14_7_segment_decoder is 
	
	begin
	with code select segments <= 
		"0001000" when "00000", -- a
		"0000011" when "00001", -- b
		"1000110" when "00010", -- c
		"0100001" when "00011", -- d
		"0000110" when "00100", -- e
		"0001110" when "00101", -- f
		"1000010" when "00110", -- g
		"0001011" when "00111", -- h
		"1001111" when "01000", -- i
		"1100001" when "01001", -- j
		"0001111" when "01010", -- k
		"1000111" when "01011", -- l
		"1001000" when "01100", -- m
		"0101011" when "01101", -- n
		"1000000" when "01110", -- o
		"0001100" when "01111", -- p
		"0100011" when "10000", -- q
		"1001110" when "10001", -- r
		"0010010" when "10010", -- s
		"0000111" when "10011", -- t
		"1000001" when "10100", -- u
		"1011001" when "10101", -- v
		"1100011" when "10110", -- w
		"0001001" when "10111", -- x
		"0010001" when "11000", -- y
		"0100100" when "11001", -- z
		"1111111" when others;

end behaviour;
