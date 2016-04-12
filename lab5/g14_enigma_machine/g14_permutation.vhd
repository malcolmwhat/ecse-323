-- permutation for lab 4
-- Authors: Malcolm Watt, Joanna Halpern
-- Date: 4/12/2016

library ieee;
use ieee.std_logic_1164.all;



entity g14_permutation is
port (input_code : in std_logic_vector(4 downto 0);
		rotor_type :in std_logic_vector(1 downto 0);
		output_code :out std_logic_vector(4 downto 0);
		inv_output_code :out std_logic_vector(4 downto 0));
end g14_permutation; 


architecture permuter of g14_permutation is 
	begin
	
	permute : process (input_code, rotor_type)
		begin
			case rotor_type is
				-- ***** ROTOR 1 *****
				when "00" => 
					-- Mapping for the first rotor
					case input_code is 
						when "00000" => output_code <= "00100"; -- A -> E
						when "00001" => output_code <= "01010"; -- B -> K
						when "00010" => output_code <= "01100"; -- C -> M
						when "00011" => output_code <= "00101"; -- D -> F
						when "00100" => output_code <= "01011"; -- E -> L
						when "00101" => output_code <= "00110"; -- F -> G
						when "00110" => output_code <= "00011"; -- G -> D
						when "00111" => output_code <= "10000"; -- H -> Q
						when "01000" => output_code <= "10101"; -- I -> V
						when "01001" => output_code <= "11001"; -- J -> Z
						when "01010" => output_code <= "01101"; -- K -> N
						when "01011" => output_code <= "10011"; -- L -> T
						when "01100" => output_code <= "01110"; -- M -> O
						when "01101" => output_code <= "10110"; -- N -> W
						when "01110" => output_code <= "11000"; -- O -> Y
						when "01111" => output_code <= "00111"; -- P -> H
						when "10000" => output_code <= "10111"; -- Q -> X
						when "10001" => output_code <= "10100"; -- R -> U
						when "10010" => output_code <= "10010"; -- S -> S
						when "10011" => output_code <= "01111"; -- T -> P
						when "10100" => output_code <= "00000"; -- U -> A
						when "10101" => output_code <= "01000"; -- V -> I
						when "10110" => output_code <= "00001"; -- W -> B
						when "10111" => output_code <= "10001"; -- S -> R
						when "11000" => output_code <= "00010"; -- Y -> C
						when others => output_code <= "01001"; -- Z -> J
					end case;
					-- Inverse mapping for Rotor 1
					case input_code is
						when "00100" => inv_output_code <= "00000"; -- E -> A
						when "01010" => inv_output_code <= "00001"; -- K -> B
						when "01100" => inv_output_code <= "00010"; -- M -> C
						when "00101" => inv_output_code <= "00011"; -- F -> D
						when "01011" => inv_output_code <= "00100"; -- L -> E
						when "00110" => inv_output_code <= "00101"; -- G -> F
						when "00011" => inv_output_code <= "00110"; -- D -> G
						when "10000" => inv_output_code <= "00111"; -- Q -> H
						when "10101" => inv_output_code <= "01000"; -- V -> I
						when "11001" => inv_output_code <= "01001"; -- Z -> J
						when "01101" => inv_output_code <= "01010"; -- N -> K
						when "10011" => inv_output_code <= "01011"; -- T -> L
						when "01110" => inv_output_code <= "01100"; -- O -> M
						when "10110" => inv_output_code <= "01101"; -- W -> N
						when "11000" => inv_output_code <= "01110"; -- Y -> O
						when "00111" => inv_output_code <= "01111"; -- H -> P
						when "10111" => inv_output_code <= "10000"; -- X -> Q
						when "10100" => inv_output_code <= "10001"; -- U -> R
						when "10010" => inv_output_code <= "10010"; -- S -> S
						when "01111" => inv_output_code <= "10011"; -- P -> T
						when "00000" => inv_output_code <= "10100"; -- A -> U
						when "01000" => inv_output_code <= "10101"; -- I -> V
						when "00001" => inv_output_code <= "10110"; -- B -> W
						when "10001" => inv_output_code <= "10111"; -- R -> S
						when "00010" => inv_output_code <= "11000"; -- C -> Y
						when others => inv_output_code <= "11001"; -- J -> Z
					end case;

				-- ***** ROTOR 2 *****
				when "01" =>   
					-- Mapping for Rotor 2 output code
					case input_code is 
						when "00000" => output_code <= "00000"; -- A -> A
						when "00001" => output_code <= "01001"; -- B -> J
						when "00010" => output_code <= "00011"; -- C -> D
						when "00011" => output_code <= "01010"; -- D -> K
						when "00100" => output_code <= "10010"; -- E -> S
						when "00101" => output_code <= "01000"; -- F -> I
						when "00110" => output_code <= "10001"; -- G -> R
						when "00111" => output_code <= "10100"; -- H -> U
						when "01000" => output_code <= "10111"; -- I -> X
						when "01001" => output_code <= "00001"; -- J -> B
						when "01010" => output_code <= "01011"; -- K -> L
						when "01011" => output_code <= "00111"; -- L -> H
						when "01100" => output_code <= "10110"; -- M -> W
						when "01101" => output_code <= "10011"; -- N -> T
						when "01110" => output_code <= "01100"; -- O -> M
						when "01111" => output_code <= "00010"; -- P -> C
						when "10000" => output_code <= "10000"; -- Q -> Q
						when "10001" => output_code <= "00110"; -- R -> G
						when "10010" => output_code <= "11001"; -- S -> Z
						when "10011" => output_code <= "01101"; -- T -> N
						when "10100" => output_code <= "01111"; -- U -> P
						when "10101" => output_code <= "11000"; -- V -> Y
						when "10110" => output_code <= "00101"; -- W -> F
						when "10111" => output_code <= "10101"; -- X -> V
						when "11000" => output_code <= "01110"; -- Y -> O
						when others => output_code <= "00100"; -- Z -> E
					end case;
					-- Inverse mapping for Rotor 2
					case input_code is
						when "00000" => inv_output_code <= "00000"; -- A -> A
						when "01001" => inv_output_code <= "00001"; -- J -> B
						when "00011" => inv_output_code <= "00010"; -- D -> C
						when "01010" => inv_output_code <= "00011"; -- K -> D
						when "10010" => inv_output_code <= "00100"; -- S -> E
						when "01000" => inv_output_code <= "00101"; -- I -> F
						when "10001" => inv_output_code <= "00110"; -- R -> G
						when "10100" => inv_output_code <= "00111"; -- U -> H
						when "10111" => inv_output_code <= "01000"; -- X -> I
						when "00001" => inv_output_code <= "01001"; -- B -> J
						when "01011" => inv_output_code <= "01010"; -- L -> K
						when "00111" => inv_output_code <= "01011"; -- H -> L
						when "10110" => inv_output_code <= "01100"; -- W -> M
						when "10011" => inv_output_code <= "01101"; -- T -> N
						when "01100" => inv_output_code <= "01110"; -- M -> O
						when "00010" => inv_output_code <= "01111"; -- C -> P
						when "10000" => inv_output_code <= "10000"; -- Q -> Q
						when "00110" => inv_output_code <= "10001"; -- G -> R
						when "11001" => inv_output_code <= "10010"; -- Z -> S
						when "01101" => inv_output_code <= "10011"; -- N -> T
						when "01111" => inv_output_code <= "10100"; -- P -> U
						when "11000" => inv_output_code <= "10101"; -- Y -> V
						when "00101" => inv_output_code <= "10110"; -- F -> W
						when "10101" => inv_output_code <= "10111"; -- V -> X
						when "01110" => inv_output_code <= "11000"; -- O -> Y
						when others => inv_output_code <= "11001"; -- E -> Z
					end case;
				-- ***** ROTOR 3 *****
				when "10" =>
					-- Input mapping for rotor 3
					case input_code is 
						when "00000" => output_code <= "00001"; ---> B
						when "00001" => output_code <= "00011"; ---> D
						when "00010" => output_code <= "00101"; ---> F
						when "00011" => output_code <= "00111"; ---> H
						when "00100" => output_code <= "01001"; ---> J
						when "00101" => output_code <= "01011"; ---> L
						when "00110" => output_code <= "00010"; ---> C
						when "00111" => output_code <= "01111"; ---> P
						when "01000" => output_code <= "10001"; ---> R
						when "01001" => output_code <= "10011"; ---> T
						when "01010" => output_code <= "10111"; ---> X
						when "01011" => output_code <= "10101"; ---> V
						when "01100" => output_code <= "11001"; ---> Z
						when "01101" => output_code <= "01101"; ---> N
						when "01110" => output_code <= "11000"; ---> Y
						when "01111" => output_code <= "00100"; ---> E
						when "10000" => output_code <= "01000"; ---> I
						when "10001" => output_code <= "10110"; ---> W
						when "10010" => output_code <= "00110"; ---> G
						when "10011" => output_code <= "00000"; ---> A
						when "10100" => output_code <= "01010"; ---> K
						when "10101" => output_code <= "01100"; ---> M
						when "10110" => output_code <= "10100"; ---> U
						when "10111" => output_code <= "10010"; ---> S
						when "11000" => output_code <= "10000"; ---> Q
						when others => output_code <= "01110"; ---> O
					end case;
					-- Inverse mapping for Rotor 3
					case input_code is
						when "00001" => inv_output_code <= "00000";
						when "00011" => inv_output_code <= "00001";
						when "00101" => inv_output_code <= "00010";
						when "00111" => inv_output_code <= "00011";
						when "01001" => inv_output_code <= "00100";
						when "01011" => inv_output_code <= "00101";
						when "00010" => inv_output_code <= "00110";
						when "01111" => inv_output_code <= "00111";
						when "10001" => inv_output_code <= "01000";
						when "10011" => inv_output_code <= "01001";
						when "10111" => inv_output_code <= "01010";
						when "10101" => inv_output_code <= "01011";
						when "11001" => inv_output_code <= "01100";
						when "01101" => inv_output_code <= "01101";
						when "11000" => inv_output_code <= "01110";
						when "00100" => inv_output_code <= "01111";
						when "01000" => inv_output_code <= "10000";
						when "10110" => inv_output_code <= "10001";
						when "00110" => inv_output_code <= "10010";
						when "00000" => inv_output_code <= "10011";
						when "01010" => inv_output_code <= "10100";
						when "01100" => inv_output_code <= "10101";
						when "10100" => inv_output_code <= "10110";
						when "10010" => inv_output_code <= "10111";
						when "10000" => inv_output_code <= "11000";
						when others => inv_output_code <= "11001";
					end case;
				-- ***** Rotor 4 *****
				when others => 
					case input_code is 
						when "00000" => output_code <= "00100"; ---> E
						when "00001" => output_code <= "10010"; ---> S
						when "00010" => output_code <= "01110"; ---> O
						when "00011" => output_code <= "10101"; ---> V
						when "00100" => output_code <= "01111"; ---> P
						when "00101" => output_code <= "11001"; ---> Z
						when "00110" => output_code <= "01001"; ---> J
						when "00111" => output_code <= "00000"; ---> A
						when "01000" => output_code <= "11000"; ---> Y
						when "01001" => output_code <= "10000"; ---> Q
						when "01010" => output_code <= "10100"; ---> U
						when "01011" => output_code <= "01000"; ---> I
						when "01100" => output_code <= "10001"; ---> R
						when "01101" => output_code <= "00111"; ---> H
						when "01110" => output_code <= "10111"; ---> X
						when "01111" => output_code <= "01011"; ---> L
						when "10000" => output_code <= "01101"; ---> N
						when "10001" => output_code <= "00101"; ---> F
						when "10010" => output_code <= "10011"; ---> T
						when "10011" => output_code <= "00110"; ---> G
						when "10100" => output_code <= "01010"; ---> K
						when "10101" => output_code <= "00011"; ---> D
						when "10110" => output_code <= "00010"; ---> C
						when "10111" => output_code <= "01100"; ---> M
						when "11000" => output_code <= "10110"; ---> W
						when others => output_code <= "00001"; ---> B
					end case;
					case input_code is 
						-- Inverse mapping for Rotor 4
						when "00100" => inv_output_code <= "00000"; ---> E
						when "10010" => inv_output_code <= "00001"; ---> S
						when "01110" => inv_output_code <= "00010"; ---> O
						when "10101" => inv_output_code <= "00011"; ---> V
						when "01111" => inv_output_code <= "00100"; ---> P
						when "11001" => inv_output_code <= "00101"; ---> Z
						when "01001" => inv_output_code <= "00110"; ---> J
						when "00000" => inv_output_code <= "00111"; ---> A
						when "11000" => inv_output_code <= "01000"; ---> Y
						when "10000" => inv_output_code <= "01001"; ---> Q
						when "10100" => inv_output_code <= "01010"; ---> U
						when "01000" => inv_output_code <= "01011"; ---> I
						when "10001" => inv_output_code <= "01100"; ---> R
						when "00111" => inv_output_code <= "01101"; ---> H
						when "10111" => inv_output_code <= "01110"; ---> X
						when "01011" => inv_output_code <= "01111"; ---> L
						when "01101" => inv_output_code <= "10000"; ---> N
						when "00101" => inv_output_code <= "10001"; ---> F
						when "10011" => inv_output_code <= "10010"; ---> T
						when "00110" => inv_output_code <= "10011"; ---> G
						when "01010" => inv_output_code <= "10100"; ---> K
						when "00011" => inv_output_code <= "10101"; ---> D
						when "00010" => inv_output_code <= "10110"; ---> C
						when "01100" => inv_output_code <= "10111"; ---> M
						when "10110" => inv_output_code <= "11000"; ---> W
						when others => inv_output_code <= "11001"; ---> B
					end case;
			end case;
	end process;
end permuter;
