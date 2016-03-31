-- Stecker circuit
-- Authors : Malcolm Watt, Joanna Halpern

library ieee;
use ieee.std_logic_1164.all;

entity g14_stecker is
	port ( 
		input_code : in std_logic_vector(4 downto 0);
		output_code : out std_logic_vector(4 downto 0)
	);
end g14_stecker;


architecture behaviour of g14_stecker is 
	signal A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z  : std_logic_vector(4 downto 0);
begin
	A <= "00000";
	B <= "00001";
	C <= "00010";
	D <= "00011";
	E <= "00100";
	F <= "00101";
	G <= "00110";
	H <= "00111";
	I <= "01000";
	J <= "01001";
	K <= "01010";
	L <= "01011";
	M <= "01100";
	N <= "01101";
	O <= "01110";
	P <= "01111";
	Q <= "10000";
	R <= "10001";
	S <= "10010";
	T <= "10011";
	U <= "10100";
	V <= "10101";
	W <= "10110";
	X <= "10111";
	Y <= "11000";
	Z <= "11001";
	
	steck : process (input_code)
	begin
		case input_code is 
			when "00000" => output_code <= D;
			when "00001" => output_code <= T;
			when "00010" => output_code <= F;
			when "00011" => output_code <= A;
			when "00100" => output_code <= C;
			when "00101" => output_code <= I;
			when "00110" => output_code <= G;
			when "00111" => output_code <= L;
			when "01000" => output_code <= E;
			when "01001" => output_code <= R;
			when "01010" => output_code <= Z;
			when "01011" => output_code <= J;
			when "01100" => output_code <= K;
			when "01101" => output_code <= P;
			when "01110" => output_code <= N;
			when "01111" => output_code <= B;
			when "10000" => output_code <= X;
			when "10001" => output_code <= O;
			when "10010" => output_code <= U;
			when "10011" => output_code <= S;
			when "10100" => output_code <= Q;
			when "10101" => output_code <= V;
			when "10110" => output_code <= Y;
			when "10111" => output_code <= H;
			when "11000" => output_code <= W;
			when others => output_code <= M;
		end case;
	end process;
end behaviour;