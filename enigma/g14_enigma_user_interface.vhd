-- Enigma machine user interface
-- Concept will use a multiplexing methodology with defaults.

-- Author: Malcolm Watt
-- Date: 4/12/2016

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
		
		signal setup_letter : std_logic_vector(4 downto 0);
		signal setup_type_letter_1 : std_logic_vector(4 downto 0);
		signal setup_type_letter_0 : std_logic_vector(4 downto 0);
		signal setup_side_letter : std_logic_vector(4 downto 0);
		
		signal setup_type_led_1, setup_type_led_0 : std_logic_vector(6 downto 0);
		
		signal input_value : std_logic_vector(4 downto 0);
		signal output_value : std_logic_vector(4 downto 0);
		
		signal display_value_left : std_logic_vector(4 downto 0);
		signal display_value_right : std_logic_vector(4 downto 0);
		
		signal display_type_left : std_logic_vector(1 downto 0);
		signal display_type_right : std_logic_vector(1 downto 0);
	
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
				num : in std_logic_vector(1 downto 0)
			);
		end component;
		
	begin
	
	input_value <= input_code;
	setup_type_leds <= setup_type_led_1 & setup_type_led_0;
	
	setup_proc : process (setup_letter, setup_type_letter_0, setup_type_letter_1, 
								 setup_side_letter, display_type_left, display_type_right, 
								 display_value_left, display_value_right, input_value, output_value,
								 reflector_type, input_code, setup_type, setup_switch)
		begin
			case setup_switch is
				when '0' =>
					-- Opperate normally
					setup_letter <= "01110"; -- O
					
					-- Turn LEDs off
					setup_type_letter_0 <= "11111"; -- Off
					setup_type_letter_1 <= "11111"; -- Off
					setup_side_letter <= "11111"; -- Off
					
					-- Both display types should display letters
					display_type_left <= "00";
					display_type_right <= "00";
					
					-- Convert the appropriate values
					display_value_left <= input_value;
					display_value_right <= output_value;
				when others =>
					-- Handle Setup of the Enigma Machine
					setup_letter <= "10010"; -- S
					
					-- Handle updating values
					if falling_edge(value_key) then
						if setup_type = "00" then 
							reflector_type <= input_code(0);
						
						elsif setup_type = "01" then
							
							if setup_side = "00" then 
								rotor_type_r <= input_code(1 downto 0);
							elsif setup_side = "01" then
								rotor_type_m <= input_code(1 downto 0);
							else 
								rotor_type_l <= input_code(1 downto 0);
							end if;
						
						elsif setup_type = "10" then
							if setup_side = "00" then 
								rotor_ini_pos_r <= input_code;
							elsif setup_side = "01" then
								rotor_ini_pos_m <= input_code;
							else 
								rotor_ini_pos_l <= input_code;
							end if;
							
						else 
							if setup_side = "00" then 
								ring_setting_r <= input_code;
							elsif setup_side = "01" then
								ring_setting_m <= input_code;
							else 
								ring_setting_l <= input_code;
							end if;
						end if;
					end if;
					
					case setup_type is 
						-- Reflector
						when "00" => 
							setup_type_letter_1 <= "10001"; -- R
							setup_type_letter_0 <= "00101"; -- F
							setup_side_letter <= "11111"; -- Off
							display_type_left <= "01"; -- Numeric
							display_type_right <= "01"; -- Numeric
							
							display_value_left <= "0000" & input_code(0);
							display_value_right <= "0000" & reflector_type;
							
						-- Rotor Type
						when "01" =>
							setup_type_letter_1 <= "10001"; -- R
							setup_type_letter_0 <= "10011"; -- T
							
							display_type_left <= "01";
							display_value_left <= "000" & input_code(1 downto 0);
							display_type_right <= "01"; -- Numeric Ones digit
							
							case setup_side is 
								-- Setup right rotor on key press
								when "00" =>
									setup_side_letter <= "10001"; -- R
									display_value_right <= "000" & rotor_type_r;
									
								-- Setup middle rotor on key press
								when "01" =>
									setup_side_letter <= "01100"; -- M
									display_value_right <= "000" & rotor_type_m;
									
								when others => 
									setup_side_letter <= "01011"; -- L
									display_value_right <= "000" & rotor_type_l;
							end case;
						
						-- Rotor initial positions
						when "10" => 
							setup_type_letter_1 <= "01000"; -- I
							setup_type_letter_0 <= "01111"; -- P
							display_type_left <= "00";
							display_type_right <= "00";
							case setup_side is 
								-- Setup right rotor on key press
								when "00" =>
									setup_side_letter <= "10001"; -- R
									display_value_left <= input_code;
									display_value_right <= rotor_ini_pos_r;
									
								-- Setup middle rotor on key press
								when "01" =>
									setup_side_letter <= "01100"; -- M
									display_value_left <= input_code;
									display_value_right <= rotor_ini_pos_m;
									
								when others => 
									setup_side_letter <= "01011"; -- L
									display_value_left <= input_code;
									display_value_right <= rotor_ini_pos_l;
									
							end case;
						
						-- Ring settings
						when others =>
							setup_type_letter_1 <= "10001"; -- R
							setup_type_letter_0 <= "10010"; -- S
							display_type_left <= "00";
							display_type_right <= "00";
							case setup_side is 
								-- Setup right rotor on key press
								when "00" =>
									setup_side_letter <= "10001"; -- R
									display_value_left <= input_code;
									display_value_right <= ring_setting_r;
									
								-- Setup middle rotor on key press
								when "01" =>
									setup_side_letter <= "01100"; -- M
									display_value_left <= input_code;
									display_value_right <= ring_setting_m;
									
								when others => 
									setup_side_letter <= "01011"; -- L
									display_value_left <= input_code;
									display_value_right <= ring_setting_l;
									
							end case;
							
					end case;
			end case;
	end process;
	
	-- Instantiate the actual enigma machine 
	workhorse : enigma port map(
		clock => clock,
		keypress => value_key, 
		reset => not(initialize_key),
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
	
	
	setup_sw_led : g14_7_segment_decoder port map(
		code => setup_letter,
		segments => setup_switch_led,
		num => "00"
	);
	
	setup_tp_led_0 : g14_7_segment_decoder port map(
		code => setup_type_letter_0,
		segments => setup_type_led_0,
		num => "00"
	);
	
	setup_tp_led_1 : g14_7_segment_decoder port map(
		code => setup_type_letter_1,
		segments => setup_type_led_1,
		num => "00"
	);
	
	setup_side_led_conv : g14_7_segment_decoder port map(
		code => setup_side_letter,
		segments => setup_side_led,
		num => "00"
	);
	
	left_val_led_conv : g14_7_segment_decoder port map(
		code => display_value_left,
		segments => value_led_1,
		num => display_type_left
	);
	
	right_val_led_conv : g14_7_segment_decoder port map(
		code => display_value_right,
		segments => value_led_0,
		num => display_type_right
	);
		
end behaviour;