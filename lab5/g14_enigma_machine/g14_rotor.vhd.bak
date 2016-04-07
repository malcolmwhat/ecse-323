-- Entire two way rotor mechanism
-- Author: Malcolm Watt 260585950

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity g14_rotor is
    port (
        load : in std_logic; -- Tells us whether to load values
        clock : in std_logic;
        enable : in std_logic; -- Enables the counter
        data : in std_logic_vector(4 downto 0); -- The value to load to the counter
		rotor_type : in std_logic_vector(1 downto 0);
        ring_setting : in std_logic_vector(4 downto 0); -- Amount we will shift by
        input_code_forward : in std_logic_vector(4 downto 0); -- Towards reflector
        input_code_reverse : in std_logic_vector(4 downto 0); -- Back from reflector

        knock_count : out std_logic_vector(4 downto 0);
        output_code_forward : out std_logic_vector(4 downto 0);
        output_code_reverse : out std_logic_vector(4 downto 0)
    ) ;
end g14_rotor;

architecture arch of g14_rotor is
	signal current_count : std_logic_vector(4 downto 0);

	signal input_decoded_forward : std_logic_vector(25 downto 0);
	signal forward_shifted_once : std_logic_vector(25 downto 0);
	signal forward_shifted_twice : std_logic_vector(25 downto 0);
	signal forward_to_permutation : std_logic_vector(4 downto 0);
	signal forward_from_perm : std_logic_vector(4 downto 0);
	signal forward_permuted_decoded : std_logic_vector(25 downto 0);
	signal forward_shifted_thrice : std_logic_vector(25 downto 0);
	signal forward_shifted_frice : std_logic_vector(25 downto 0);

	signal input_decoded_inverse : std_logic_vector(25 downto 0);
	signal inverse_shifted_once : std_logic_vector(25 downto 0);
	signal inverse_shifted_twice : std_logic_vector(25 downto 0);
	signal inverse_to_permutation : std_logic_vector(4 downto 0);
	signal inverse_from_perm : std_logic_vector(4 downto 0);
	signal inverse_permuted_decoded : std_logic_vector(25 downto 0);
	signal inverse_shifted_thrice : std_logic_vector(25 downto 0);
	signal inverse_shifted_frice : std_logic_vector(25 downto 0);

	-- Component instantiation
	component g14_5_26_decoder
		port (
			input : in std_logic_vector(4 downto 0);
		    output : out std_logic_vector(25 downto 0);
		    err : out std_logic
		);
	end component;

	component g14_26_5_encoder
		port (
			letter : in std_logic_vector(25 downto 0);
			index : out std_logic_vector(4 downto 0);
			error : out std_logic
		);
	end component;

	component g14_barrel_shifter
		port (
			letter_in : in std_logic_vector(25 downto 0);
			shift : in std_logic_vector(4 downto 0);
			direction : in std_logic;
			letter_out : out std_logic_vector(25 downto 0)
		);
	end component;

	component g14_counter_with_load
		port (
			clk : in std_logic;
			load : in std_logic;
			load_value : in std_logic_vector(4 downto 0);
			reset : in std_logic;
			enable : in std_logic;
			count : out std_logic_vector(4 downto 0)
		);
	end component;


	component g14_permutation
		port (
			input_code : in std_logic_vector(4 downto 0);
			rotor_type :in std_logic_vector(1 downto 0);
			output_code :out std_logic_vector(4 downto 0);
			inv_output_code :out std_logic_vector(4 downto 0)
		);
	end component;
begin
	-- Update count
	knock_count <= current_count;

	-- Forward direction
	counter : g14_counter_with_load
		port map (clock, load, data, '0', enable, current_count);


	forward_decoder_0 : g14_5_26_decoder
		port map (input => input_code_forward, output => input_decoded_forward);

	forward_barrel_shifter_0 : g14_barrel_shifter
		port map (letter_in => input_decoded_forward, shift => current_count,
					 direction => '0', letter_out => forward_shifted_once);

	forward_barrel_shifter_1 : g14_barrel_shifter
		port map (letter_in => forward_shifted_once, shift => ring_setting,
					 direction => '1', letter_out => forward_shifted_twice);

	forward_encoder_0 : g14_26_5_encoder
		port map (letter => forward_shifted_twice, index => forward_to_permutation);

	forward_permuter : g14_permutation
		port map (input_code => forward_to_permutation, rotor_type => rotor_type,
					 output_code => forward_from_perm);

	forward_decoder_1 : g14_5_26_decoder
		port map (input => forward_from_perm, output => forward_permuted_decoded);

	forward_barrel_shifter_2 : g14_barrel_shifter
		port map (letter_in => forward_permuted_decoded, shift => ring_setting,
					 direction => '1', letter_out => forward_shifted_thrice);

	forward_barrel_shifter_3 : g14_barrel_shifter
		port map (letter_in => forward_shifted_thrice, shift => current_count,
					 direction => '0', letter_out => forward_shifted_frice);

	forward_encoder_1 : g14_26_5_encoder
		port map (letter => forward_shifted_frice, index => output_code_forward);


	-- Inverse direction
	inverse_decoder_0 : g14_5_26_decoder
		port map (input => input_code_reverse, output => input_decoded_inverse);

	inverse_barrel_shifter_0 : g14_barrel_shifter
		port map (letter_in => input_decoded_inverse, shift => current_count,
					 direction => '1', letter_out => inverse_shifted_once);

	inverse_barrel_shifter_1 : g14_barrel_shifter
		port map (letter_in => inverse_shifted_once, shift => ring_setting,
					 direction => '0', letter_out => inverse_shifted_twice);

	inverse_encoder_0 : g14_26_5_encoder
		port map (letter => inverse_shifted_twice, index => inverse_to_permutation);

	inverse_permuter : g14_permutation
		port map (input_code => inverse_to_permutation, rotor_type => rotor_type,
					 inv_output_code => inverse_from_perm);

	inverse_decoder_1 : g14_5_26_decoder
		port map (input => inverse_from_perm, output => inverse_permuted_decoded);

	inverse_barrel_shifter_2 : g14_barrel_shifter
		port map (letter_in => inverse_permuted_decoded, shift => ring_setting,
					 direction => '0', letter_out => inverse_shifted_thrice);

	inverse_barrel_shifter_3 : g14_barrel_shifter
		port map (letter_in => inverse_shifted_thrice, shift => current_count,
					 direction => '1', letter_out => inverse_shifted_frice);

	inverse_encoder_1 : g14_26_5_encoder
		port map (letter => inverse_shifted_frice, index => output_code_reverse);

end arch;
