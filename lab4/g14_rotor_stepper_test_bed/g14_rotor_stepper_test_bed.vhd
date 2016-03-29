-- Rotor Stepper FSM Test Bed
-- Authors: Joanna Halpern, Malcolm Watt

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity g14_rotor_stepper_test_bed is
    port (
        clock : in std_logic;
        init : in std_logic;
        seven_seg_l : out std_logic_vector(6 downto 0);
        seven_seg_m : out std_logic_vector(6 downto 0);
        seven_seg_r : out std_logic_vector(6 downto 0)
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
    signal inv_init : std_logic;

    -- Counters
    signal load_counters : std_logic; -- Asserted if we should load the counters with the hardcoded values
    signal data_in_counter_l : std_logic_vector(4 downto 0); -- Data to load to respective counters
    signal data_in_counter_m : std_logic_vector(4 downto 0);
    signal data_in_counter_r : std_logic_vector(4 downto 0);
    signal count_l : std_logic_vector(4 downto 0); -- Current count value of a particular counter
    signal count_m : std_logic_vector(4 downto 0);
    signal count_r : std_logic_vector(4 downto 0);

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
            clk : in std_logic;
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
    notch_m <= "01001"; -- J
    notch_r <= "00100"; -- E

    data_in_counter_l <= "01000"; -- I
    data_in_counter_m <= "00110"; -- G
    data_in_counter_r <= "00011"; -- D
    inv_init <= not(init);


    -- Instantiate components
    pulse_gen : pulse_generator port map (
        clock => clock,
        epulse => keypress
    );

    middle_comparator : g14_5_bit_comparator port map (
        comp1 => notch_m,
        comp2 => count_m,
        eq => knock_m
    );

    right_comparator : g14_5_bit_comparator port map (
        comp1 => notch_r,
        comp2 => count_r,
        eq => knock_r
    );

    rotor_stepper_fsm : g14_rotor_stepper port map (
        keypress => keypress,
        knock_m => knock_m,
        knock_r => knock_r,
        clk => clock,
        init => inv_init,
        en_l => en_l,
        en_m => en_m,
        en_r => en_r,
        load => load_counters
    );

    left_counter : g14_counter_with_load port map (
        clk => clock,
        load => load_counters,
        load_value => data_in_counter_l,
        reset => '0', -- Reseting the counters to zero has no meaningful use case in this scenario
        enable => en_l,
        count => count_l
    );

    middle_counter : g14_counter_with_load port map (
        clk => clock,
        load => load_counters,
        load_value => data_in_counter_m,
        reset => '0',
        enable => en_m,
        count => count_m
    );

    right_counter : g14_counter_with_load port map (
        clk => clock,
        load => load_counters,
        load_value => data_in_counter_r,
        reset => '0',
        enable => en_r,
        count => count_r
    );

    left_led_out : g14_7_segment_decoder port map (
        code => count_l,
        segments => seven_seg_l
    );

    middle_led_out : g14_7_segment_decoder port map (
        code => count_m,
        segments => seven_seg_m
    );

    right_led_out : g14_7_segment_decoder port map (
        code => count_r,
        segments => seven_seg_r
    );
end behaviour ;
