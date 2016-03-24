-- Rotor Stepper FSM Test Bed
-- Authors: Joanna Halpern, Malcolm Watt

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity g14_rotor_stepper_test_bed is
    port (
        clock : in std_logic;
        init : in std_logic;
        seven_seg_1 : out std_logic_vector(6 downto 0);
        seven_seg_2 : out std_logic_vector(6 downto 0);
        seven_seg_3 : out std_logic_vector(6 downto 0)
    ) ;
end entity ; -- g14_rotor_stepper_test_bed

architecture behaviour of g14_rotor_stepper_test_bed is
    -- Signals --
    signal notch_m : std_logic_vector(4 downto 0);
    signal notch_r : std_logic_vector(4 downto 0);
    signal knock_m : std_logic;
    signal knock_r : std_logic;
    signal keypress : std_logic;
    signal en_l : std_logic;
    signal en_m : std_logic;
    signal en_r : std_logic;

    -- Counters
    signal load_counters : std_logic; -- Asserted if we should load the counters with the hardcoded values
    signal data_in_counter_1 : std_logic_vector(4 downto 0); -- Data to load to respective counters
    signal data_in_counter_2 : std_logic_vector(4 downto 0);
    signal data_in_counter_3 : std_logic_vector(4 downto 0);
    signal count_1 : std_logic_vector(4 downto 0); -- Current count value of a particular counter
    signal count_2 : std_logic_vector(4 downto 0);
    signal count_3 : std_logic_vector(4 downto 0);

    -- Components --
    component pulse_generator
        port (
            clock : in std_logic;
            epulse : out std_logic
        );
    end component;

    component g14_rotor_stepper
        port (
            keypress : in std_logic; --
            knock_m : in std_logic;
            knock_r : in std_logic;
            clock : in std_logic;
            init : in std_logic;
            en_l : out std_logic;
            en_m : out std_logic;
            en_r : out std_logic;
            load : out std_logic
        );
    end component;

    component g14_5_bit_comparator
        port (
            comp1 : in std_logic_vector(4 downto 0);
            comp2 : in std_logic_vector(4 downto 0);
            eq : out std_logic
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

    component g14_7_segment_decoder
        port(
            code : in std_logic_vector(4 downto 0);
            segments : out std_logic_vector(6 downto 0)
        );
    end component;
begin
    -- Hard code certain values :
    notch_m <= "00000";
    notch_r <= "00000";
    data_in_counter_1 <= "00000";
    data_in_counter_2 <= "00000";
    data_in_counter_3 <= "00000";


end behaviour ;
