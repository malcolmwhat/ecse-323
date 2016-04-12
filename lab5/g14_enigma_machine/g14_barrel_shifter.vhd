-- Authors: Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
--          Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
-- entity name: g14_barrel_shifter
-- Date: 4/12/2016

library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;

entity g14_barrel_shifter is
    port (
        LETTER_IN : in std_logic_vector(25 downto 0);
        SHIFT : in std_logic_vector(4 downto 0);
        DIRECTION : in std_logic;
        LETTER_OUT : out std_logic_vector(25 downto 0)
    );
end g14_barrel_shifter;


architecture shifter of g14_barrel_shifter is
    signal dir_shift : std_logic_vector(5 downto 0);
begin
    -- direction -> 1 is left, 0 is right
    dir_shift <= direction & shift;
    with dir_shift select LETTER_OUT <=
        LETTER_IN(24 downto 0) & LETTER_IN(25 downto 25) WHEN "000001",
        LETTER_IN(23 downto 0) & LETTER_IN(25 downto 24) WHEN "000010",
        LETTER_IN(22 downto 0) & LETTER_IN(25 downto 23) WHEN "000011",
        LETTER_IN(21 downto 0) & LETTER_IN(25 downto 22) WHEN "000100",
        LETTER_IN(20 downto 0) & LETTER_IN(25 downto 21) WHEN "000101",
        LETTER_IN(19 downto 0) & LETTER_IN(25 downto 20) WHEN "000110",
        LETTER_IN(18 downto 0) & LETTER_IN(25 downto 19) WHEN "000111",
        LETTER_IN(17 downto 0) & LETTER_IN(25 downto 18) WHEN "001000",
        LETTER_IN(16 downto 0) & LETTER_IN(25 downto 17) WHEN "001001",
        LETTER_IN(15 downto 0) & LETTER_IN(25 downto 16) WHEN "001010",
        LETTER_IN(14 downto 0) & LETTER_IN(25 downto 15) WHEN "001011",
        LETTER_IN(13 downto 0) & LETTER_IN(25 downto 14) WHEN "001100",
        LETTER_IN(12 downto 0) & LETTER_IN(25 downto 13) WHEN "001101",
        LETTER_IN(11 downto 0) & LETTER_IN(25 downto 12) WHEN "001110",
        LETTER_IN(10 downto 0) & LETTER_IN(25 downto 11) WHEN "001111",
        LETTER_IN(9 downto 0)  & LETTER_IN(25 downto 10) WHEN "010000",
        LETTER_IN(8 downto 0)  & LETTER_IN(25 downto 9)  WHEN "010001",
        LETTER_IN(7 downto 0)  & LETTER_IN(25 downto 8)  WHEN "010010",
        LETTER_IN(6 downto 0)  & LETTER_IN(25 downto 7)  WHEN "010011",
        LETTER_IN(5 downto 0)  & LETTER_IN(25 downto 6)  WHEN "010100",
        LETTER_IN(4 downto 0)  & LETTER_IN(25 downto 5)  WHEN "010101",
        LETTER_IN(3 downto 0)  & LETTER_IN(25 downto 4)  WHEN "010110",
        LETTER_IN(2 downto 0)  & LETTER_IN(25 downto 3)  WHEN "010111",
        LETTER_IN(1 downto 0)  & LETTER_IN(25 downto 2)  WHEN "011000",
        LETTER_IN(0 downto 0)  & LETTER_IN(25 downto 1)  WHEN "011001",
        LETTER_IN(0 downto 0)  & LETTER_IN(25 downto 1)  WHEN "100001",
        LETTER_IN(1 downto 0)  & LETTER_IN(25 downto 2)  WHEN "100010",
        LETTER_IN(2 downto 0)  & LETTER_IN(25 downto 3)  WHEN "100011",
        LETTER_IN(3 downto 0)  & LETTER_IN(25 downto 4)  WHEN "100100",
        LETTER_IN(4 downto 0)  & LETTER_IN(25 downto 5)  WHEN "100101",
        LETTER_IN(5 downto 0)  & LETTER_IN(25 downto 6)  WHEN "100110",
        LETTER_IN(6 downto 0)  & LETTER_IN(25 downto 7)  WHEN "100111",
        LETTER_IN(7 downto 0)  & LETTER_IN(25 downto 8)  WHEN "101000",
        LETTER_IN(8 downto 0)  & LETTER_IN(25 downto 9)  WHEN "101001",
        LETTER_IN(9 downto 0)  & LETTER_IN(25 downto 10) WHEN "101010",
        LETTER_IN(10 downto 0) & LETTER_IN(25 downto 11) WHEN "101011",
        LETTER_IN(11 downto 0) & LETTER_IN(25 downto 12) WHEN "101100",
        LETTER_IN(12 downto 0) & LETTER_IN(25 downto 13) WHEN "101101",
        LETTER_IN(13 downto 0) & LETTER_IN(25 downto 14) WHEN "101110",
        LETTER_IN(14 downto 0) & LETTER_IN(25 downto 15) WHEN "101111",
        LETTER_IN(15 downto 0) & LETTER_IN(25 downto 16) WHEN "110000",
        LETTER_IN(16 downto 0) & LETTER_IN(25 downto 17) WHEN "110001",
        LETTER_IN(17 downto 0) & LETTER_IN(25 downto 18) WHEN "110010",
        LETTER_IN(18 downto 0) & LETTER_IN(25 downto 19) WHEN "110011",
        LETTER_IN(19 downto 0) & LETTER_IN(25 downto 20) WHEN "110100",
        LETTER_IN(20 downto 0) & LETTER_IN(25 downto 21) WHEN "110101",
        LETTER_IN(21 downto 0) & LETTER_IN(25 downto 22) WHEN "110110",
        LETTER_IN(22 downto 0) & LETTER_IN(25 downto 23) WHEN "110111",
        LETTER_IN(23 downto 0) & LETTER_IN(25 downto 24) WHEN "111000",
        LETTER_IN(24 downto 0) & LETTER_IN(25 downto 25) WHEN "111001",
        LETTER_IN WHEN others;
end shifter;
