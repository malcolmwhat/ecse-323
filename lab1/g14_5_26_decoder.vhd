-- This circuit description is for our 5 -> 26 decoder circuit
--
-- The purpose of the circuit is to use a 5 bit wide input to 
-- select one of the 26 output pins and effectively set them 
-- high. So for input "00001" it would set the second output 
-- pin high and the reset would be low. 
--
-- An extra component of the design includes an error output
-- We effectively do not want the inputs to ever select a value
-- higher than the 26th output. Since our inputs can yield values
-- between 0 and 31, and we don't want them to be higher than 25, 
-- Then when the input 5 bit signal evaluates to abouve 25, the 
-- Error output signal is set high. 
--
-- entity name: g14_5_26_Decoder
--
-- Version 1.0
--
-- Authors : Malcolm Watt (260585950); malcolm.watt@mail.mcgill.ca
--				 Joanna Halpern (260410826); joanna.halpern@mail.mcgill.ca
-- Date : February 4 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g14_5_26_decoder is 
	port(INPUT : in std_logic_vector(4 downto 0);
		  OUTPUT : out std_logic_vector(25 downto 0);
		  ERR : out std_logic); 
end g14_5_26_decoder;

architecture decoder of g14_5_26_decoder is 
	begin
		-- Error Logic
 		ERR <= INPUT(4) and INPUT(3) and (INPUT(2) or INPUT(1));
		
		-- Evaluate our actual output under non-error causing conditions
		OUTPUT(0) <= not INPUT(0) and not INPUT(1) and not INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(1) <= not INPUT(0) and not INPUT(1) and not INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(2) <= not INPUT(0) and not INPUT(1) and not INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(3) <= not INPUT(0) and not INPUT(1) and not INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(4) <= not INPUT(0) and not INPUT(1) and INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(5) <= not INPUT(0) and not INPUT(1) and INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(6) <= not INPUT(0) and not INPUT(1) and INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(7) <= not INPUT(0) and not INPUT(1) and INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(8) <= not INPUT(0) and INPUT(1) and not INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(9) <= not INPUT(0) and INPUT(1) and not INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(10) <= not INPUT(0)and INPUT(1) and not INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(11) <= not INPUT(0)and INPUT(1) and not INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(12) <= not INPUT(0)and INPUT(1) and INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(13) <= not INPUT(0)and INPUT(1) and INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(14) <= not INPUT(0)and INPUT(1) and INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(15) <= not INPUT(0)and INPUT(1) and INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(16) <=  INPUT(0) and not INPUT(1) and not INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(17) <=  INPUT(0) and not INPUT(1) and not INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(18) <=  INPUT(0) and not INPUT(1) and not INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(19) <=  INPUT(0) and not INPUT(1) and not INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(20) <=  INPUT(0) and not INPUT(1) and INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(21) <=  INPUT(0) and not INPUT(1) and INPUT(2) and not INPUT(3) and INPUT(4);
		OUTPUT(22) <=  INPUT(0) and not INPUT(1) and INPUT(2) and INPUT(3) and not INPUT(4);
		OUTPUT(23) <=  INPUT(0) and not INPUT(1) and INPUT(2) and INPUT(3) and INPUT(4);
		OUTPUT(24) <=  INPUT(0) and INPUT(1)and not INPUT(2) and not INPUT(3) and not INPUT(4);
		OUTPUT(25) <=  INPUT(0) and INPUT(1)and not INPUT(2) and not INPUT(3) and INPUT(4);

end decoder;