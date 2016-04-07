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
	     segments : out std_logic_vector(6 downto 0);
		  num : in std_logic_vector(1 downto 0);
		  );
end g14_7_segment_decoder;

architecture behaviour of g14_7_segment_decoder is 
	
	begin
	process (code, segments, num)
	begin
		case num is 
			when "00" => 
				case code is 
					when "00000" => segments <= "0001000"; -- a
					when "00001" => segments <= "0000011"; -- b
					when "00010" => segments <= "1000110"; -- c
					when "00011" => segments <= "0100001"; -- d
					when "00100" => segments <= "0000110"; -- e
					when "00101" => segments <= "0001110"; -- f
					when "00110" => segments <= "1000010"; -- g
					when "00111" => segments <= "0001011"; -- h
					when "01000" => segments <= "1001111"; -- i
					when "01001" => segments <= "1100001"; -- j
					when "01010" => segments <= "0001111"; -- k
					when "01011" => segments <= "1000111"; -- l
					when "01100" => segments <= "1001000"; -- m
					when "01101" => segments <= "0101011"; -- n
					when "01110" => segments <= "1000000"; -- o
					when "01111" => segments <= "0001100"; -- p
					when "10000" => segments <= "0100011"; -- q
					when "10001" => segments <= "1001110"; -- r
					when "10010" => segments <= "0010010"; -- s
					when "10011" => segments <= "0000111"; -- t
					when "10100" => segments <= "1000001"; -- u
					when "10101" => segments <= "1011001"; -- v
					when "10110" => segments <= "1100011"; -- w
					when "10111" => segments <= "0001001"; -- x
					when "11000" => segments <= "0010001"; -- y
					when "11001" => segments <= "0100100"; -- z
					when others => segments <= "1111111";
				end case;
			when "01" => 
				-- Display numeric version of LSB seg disp.
				case code is 
					when "00000" => segments <= "1000000"; -- 0 
					when "00001" => segments <= "1111001"; -- 1
					when "00010" => segments <= "0100100"; -- 2
					when "00011" => segments <= "0110000"; -- 3
					when "00100" => segments <= "0011001"; -- 4
					when "00101" => segments <= "0010010"; -- 5
					when "00110" => segments <= "0000010"; -- 6
					when "00111" => segments <= "1111000"; -- 7
					when "01000" => segments <= "0000000"; -- 8
					when "01001" => segments <= "0011000"; -- 9
					when "01010" => segments <= "1000000"; -- 0
					when "01011" => segments <= "1111001"; -- 1
					when "01100" => segments <= "0100100"; -- 2
					when "01101" => segments <= "0110000"; -- 3
					when "01110" => segments <= "0011001"; -- 4
					when "01111" => segments <= "0010010"; -- 5
					when "10000" => segments <= "0000010"; -- 6
					when "10001" => segments <= "1111000"; -- 7
					when "10010" => segments <= "0000000"; -- 8
					when "10011" => segments <= "0011000"; -- 9
					when "10100" => segments <= "1000000"; -- 0
					when "10101" => segments <= "1111001"; -- 1
					when "10110" => segments <= "0100100"; -- 2
					when "10111" => segments <= "0110000"; -- 3
					when "11000" => segments <= "0011001"; -- 4
					when "11001" => segments <= "0010010"; -- 5
					when others => segments <= "1111111";
				end case;
			when others => 
				-- Display numeric version of MSB seg disp.
				case code is 
					when "00000" => segments <= "1000000"; -- 0 -- 0 
					when "00001" => segments <= "1000000"; -- 0 -- 1
					when "00010" => segments <= "1000000"; -- 0 -- 2
					when "00011" => segments <= "1000000"; -- 0 -- 3
					when "00100" => segments <= "1000000"; -- 0 -- 4
					when "00101" => segments <= "1000000"; -- 0 -- 5
					when "00110" => segments <= "1000000"; -- 0 -- 6
					when "00111" => segments <= "1000000"; -- 0 -- 7
					when "01000" => segments <= "1000000"; -- 0 -- 8
					when "01001" => segments <= "1000000"; -- 0 -- 9
					when "01010" => segments <= "1111001"; -- 1 -- 0
					when "01011" => segments <= "1111001"; -- 1 -- 1
					when "01100" => segments <= "1111001"; -- 1 -- 2
					when "01101" => segments <= "1111001"; -- 1 -- 3
					when "01110" => segments <= "1111001"; -- 1 -- 4
					when "01111" => segments <= "1111001"; -- 1 -- 5
					when "10000" => segments <= "1111001"; -- 1 -- 6
					when "10001" => segments <= "1111001"; -- 1 -- 7
					when "10010" => segments <= "1111001"; -- 1 -- 8
					when "10011" => segments <= "1111001"; -- 1 -- 9
					when "10100" => segments <= "0100100"; -- 2 -- 0
					when "10101" => segments <= "0100100"; -- 2 -- 1
					when "10110" => segments <= "0100100"; -- 2 -- 2
					when "10111" => segments <= "0100100"; -- 2 -- 3
					when "11000" => segments <= "0100100"; -- 2 -- 4
					when "11001" => segments <= "0100100"; -- 2 -- 5
					when others => segments <= "1111111";
				end case;
		end case;
	end process;
end behaviour;
