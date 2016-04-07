-- Concept will use a multiplexing methodology, with defaults in the case of faulty input. 
-- Enigma machine user interface
-- Author: Malcolm Watt

library ieee;
use ieee.std_logic_1164.all;

entity g14_enigma_user_interface is 
	port(
		clock : in std_logic;
		value_key : in std_logic;
		initialize_key : in std_logic;
		input_code : in std_logic_vector(4 downto 0); 
		setup_switch : in std_logic; -- Allows the user to toggle between setup and operation mode
		setup_type : in std_logic_vector(1 downto 0); -- reflector, initial positions, rotor type, or ring setting
		setup_side : in std_logic_vector(1 downto 0); -- Which rotor to setup (when applicable)
		setup_switch_led : out std_logic_vector(6 downto 0);
		setup_type_leds : out std_logic_vector(13 downto 0);
		setup_side_led : out std_logic_vector(6 downto 0);
		value_led_1 : out std_logic_vector(6 downto 0);
		value_led_0 : out std_logic_vector(6 downto 0)
	);
end g14_enigma_user_interface;

architecture behaviour of g14_enigma_user_interface is
		signal rotor_type_r : std_logic_vector(1 downto 0) := "00";
		signal rotor_type_m : std_logic_vector(1 downto 0) := "00";
		signal rotor_type_l : std_logic_vector(1 downto 0) := "00";
		signal reflector_type : std_logic := '0';
		signal rotor_ini_pos_r : std_logic_vector(4 downto 0) := "00000";
		signal rotor_ini_pos_m : std_logic_vector(4 downto 0) := "00000";
		signal rotor_ini_pos_l : std_logic_vector(4 downto 0) := "00000";
		signal ring_setting_r : std_logic_vector(4 downto 0) := "00000";
		signal ring_setting_m : std_logic_vector(4 downto 0) := "00000";
		signal ring_setting_l : std_logic_vector(4 downto 0) := "00000";
		
		signal output_value : std_logic_vector(4 downto 0);
	
		-- Add Required Components
		component enigma
			port(
				clock : in std_logic;
				keypress : in std_logic;
				reset : in std_logic; -- Resets to the day settings
				rotor_type_r : in std_logic_vector(1 downto 0);
				rotor_type_m : in std_logic_vector(1 downto 0);
				rotor_type_l : in std_logic_vector(1 downto 0);
				reflector_type : in std_logic;
				rotor_ini_pos_r : in std_logic_vector(4 downto 0);
				rotor_ini_pos_m : in std_logic_vector(4 downto 0);
				rotor_ini_pos_l : in std_logic_vector(4 downto 0);
				ring_setting_r : in std_logic_vector(4 downto 0);
				ring_setting_m : in std_logic_vector(4 downto 0);
				ring_setting_l : in std_logic_vector(4 downto 0);
				input_code : in std_logic_vector(4 downto 0);
				output_code : out std_logic_vector(4 downto 0)
			);
		end component;
		
		component g14_7_segment_decoder
			port(
				code : in std_logic_vector(4 downto 0);
				segments : out std_logic_vector(6 downto 0);
				num : in std_logic_vector(1 downto 0);
			);
		end component;
		
	begin
		
		-- Instantiate the actual enigma machine 
		workhorse : enigma port map(
			clock => clock,
			keypress => value_key, 
			reset => initialize_key,
			rotor_type_r => rotor_type_r,
			rotor_type_m => rotor_type_m,
			rotor_type_l => rotor_type_l,
			reflector_type => reflector_type,
			rotor_ini_pos_r => rotor_ini_pos_r,
			rotor_ini_pos_m => rotor_ini_pos_m,
			rotor_ini_pos_l => rotor_ini_pos_l,
			ring_setting_r => ring_setting_r,
			ring_setting_m => ring_setting_m,
			ring_setting_l => ring_setting_l, 
			input_code => input_code,
			output_code => output_value
		);
		
end behaviour;