-- permutation for lab 4
-- Authors: Malcolm Watt, Joanna Halpern

library ieee;
use ieee.std_logic_1164.all;



entity g14_permutation is
port (input_code : in std_logic_vector(4 downto 0);
		rotor_type :in std_logic_vector(1 downto 0);
		output code :out std_logic_vector(4 downto 0);
		inv_output_code :out std_logic_vector(4 downto 0));
end g14_permutation; 


architecture permuter of g14_permutation is 
	begin
	
	permute : process()
		begin
			case rotor_type is
				when "00" =>   
					-- Put Rotor I case statements here
				when "01" =>   Z <= B;
					-- Put Rotor II case statements here
				when "10" =>
					-- Put Rotor III case statements here
				when others => Z <= 'X
					-- Put Rotor IV case statements here
		end case;
		
	end process;

	end permute;
