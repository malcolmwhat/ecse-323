-- Reflector circuit.
-- Author : Malcolm Watt

library ieee;
use ieee.std_logic_1164.all;

entity g14_reflector is
    port (
        input_code : in std_logic_vector(4 downto 0);
        reflector_type : in std_logic;
        output_code : out std_logic_vector(4 downto 0)
    ) ;
end entity ; -- g14_reflector


architecture behaviour of g14_reflector is
begin
    permute : process(input_code, reflector_type)
    begin
        case reflector_type is
            -- Reflector B
            when '0' =>
                case input_code is
                    when "00000" => output_code <= "11000"; -- A -> Y
                    when "11000" => output_code <= "00000"; -- Y -> A
                    when "00001" => output_code <= "10001"; -- B -> R
                    when "10001" => output_code <= "00001"; -- R -> B
                    when "00010" => output_code <= "10100"; -- C -> U
                    when "10100" => output_code <= "00010"; -- U -> C
                    when "00011" => output_code <= "00111"; -- D -> H
                    when "00111" => output_code <= "00011"; -- H -> D
                    when "00100" => output_code <= "10000"; -- E -> Q
                    when "10000" => output_code <= "00100"; -- Q -> E
                    when "00101" => output_code <= "10010"; -- F -> S
                    when "10010" => output_code <= "00101"; -- S -> F
                    when "00110" => output_code <= "01011"; -- G -> L
                    when "01011" => output_code <= "00110"; -- L -> G
                    when "01000" => output_code <= "01111"; -- I -> P
                    when "01111" => output_code <= "01000"; -- P -> I
                    when "01001" => output_code <= "10111"; -- J -> X
                    when "10111" => output_code <= "01001"; -- X -> J
                    when "01010" => output_code <= "01101"; -- K -> N
                    when "01101" => output_code <= "01010"; -- N -> K
                    when "01100" => output_code <= "01110"; -- M -> O
                    when "01110" => output_code <= "01100"; -- O -> M
                    when "10011" => output_code <= "11001"; -- T -> Z
                    when "11001" => output_code <= "10011"; -- Z -> T
                    when "10101" => output_code <= "10110"; -- V -> W
                    when others => output_code <= "10101"; -- W -> V
                end case;
            when others =>
                case input_code  is
                    when "00000" => output_code <= "00101"; -- A -> F
                    when "00101" => output_code <= "00000"; -- F -> A
                    when "00001" => output_code <= "10101"; -- B -> V
                    when "10101" => output_code <= "00001"; -- V -> B
                    when "00010" => output_code <= "01111"; -- C -> P
                    when "01111" => output_code <= "00010"; -- P -> C
                    when "00011" => output_code <= "01001"; -- D -> J
                    when "01001" => output_code <= "00011"; -- J -> D
                    when "00100" => output_code <= "01000"; -- E -> I
                    when "01000" => output_code <= "00100"; -- I -> E
                    when "00110" => output_code <= "01110"; -- G -> O
                    when "01110" => output_code <= "00110"; -- O -> G
                    when "00111" => output_code <= "11000"; -- H -> Y
                    when "11000" => output_code <= "00111"; -- Y -> H
                    when "01010" => output_code <= "10001"; -- K -> R
                    when "10001" => output_code <= "01010"; -- R -> K
                    when "01011" => output_code <= "11001"; -- L -> Z
                    when "11001" => output_code <= "01011"; -- Z -> L
                    when "01100" => output_code <= "10111"; -- M -> X
                    when "10111" => output_code <= "01100"; -- X -> M
                    when "01101" => output_code <= "10110"; -- N -> W
                    when "10110" => output_code <= "01101"; -- W -> N
                    when "10011" => output_code <= "10000"; -- T -> Q
                    when "10000" => output_code <= "10011"; -- Q -> T
                    when "10010" => output_code <= "10100"; -- S -> U
                    when others => output_code <= "10010"; -- U -> S
                end case ;
        end case;
    end process;
end behaviour ;
