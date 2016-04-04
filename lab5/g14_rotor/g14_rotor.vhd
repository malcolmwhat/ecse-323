-- Entire two way rotor mechanism
-- Author: Malcolm Watt 260585950

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity g14_rotor is
    port (
        clock : in std_logic;
        input_code_forward : in std_logic_vector(4 downto 0); -- Towards reflector
        input_code_reverse : in std_logic_vector(4 downto 0); -- Back from reflector
        directions : in std_logic_vector(3 downto 0); -- Specify the directions of the barrel shifter
        ring_setting : in std_logic_vector(4 downto 0); -- Amount we will shift by
        data : in std_logic_vector(4 downto 0); -- The value to load to the counter
        load : in std_logic; -- Tells us whether to load values
        enable : in std_logic; -- Enables the counter
        knock_count : out std_logic_vector(4 downto 0);
        output_code_forward : out std_logic_vector(4 downto 0);
        output_code_reverse : out std_logic_vector(4 downto 0)
    ) ;
end g14_rotor;

architecture arch of g14_rotor is

begin



end arch;
