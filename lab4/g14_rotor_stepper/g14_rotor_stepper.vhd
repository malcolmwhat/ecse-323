-- Rotor Stepper FSM
-- Authors : Joanna Halpern, Malcolm Watt

library ieee;
use ieee.std_logic_1164.all;

entity g14_rotor_stepper is
	port(keypress : in std_logic; --
         knock_m : in std_logic;
         knock_r : in std_logic;
         clock : in std_logic;
         init : in std_logic;
         en_l : out std_logic;
         en_m : out std_logic;
         en_r : out std_logic;
         load : out std_logic;
end g14_rotor_stepper;


architecture rotor_step of g14_rotor_stepper is
begin
end rotor_step ;
