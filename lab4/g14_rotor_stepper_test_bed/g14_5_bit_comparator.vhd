-- 5 bit comparator
-- Authors: Malcolm Watt, Joanna Halpern

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g14_5_bit_comparator is
  port (comp1 : in std_logic_vector(4 downto 0);
        comp2 : in std_logic_vector(4 downto 0);
        eq : out std_logic) ;
end entity ; -- g14_5_bit_comparator

architecture behaviour of g14_5_bit_comparator is
begin
    process (comp1, comp2)
        eq <= '0';
        if unsigned(comp1) = unsigned(comp2) then
            eq <= '1';
        end if;
    end process;
end behaviour ;
