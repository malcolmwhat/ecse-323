-- Test bed for Lab 3
-- Authors: Malcolm Watt, Joanna Halpern

library ieee;
use ieee.std_logic_1164.all;
use work.all;


entity g14_lab3_test_bed is
    port(clock : in std_logic;
         dipswitches : in std_logic_vector(4 downto 0); -- The physical switches on the altera board
         seven_segment_output : out std_logic_vector(6 downto 0) -- To the LED display on the board
    );
end g14_lab3_test_bed;


architecture test of g14_lab3_test_bed is
    signal counter_enable : std_logic;
    signal current_count : std_logic_vector(4 downto 0);
    signal letter_index : std_logic_vector(25 downto 0);
    signal shifted_letter : std_logic_vector(25 downto 0);
    signal shifted_letter_5_bit : std_logic_vector(4 downto 0);
    signal output_error : std_logic;

    -- Pulse generator component, to create the 2Hz pulse
    component pulse_generator
        port(clock : in std_logic;
             epulse : out std_logic);
    end component;

    -- 0 to 25 counter
    component g14_counter
        port(clk, reset, enable : in std_logic;
             count : out std_logic_vector(4 downto 0));
    end component;

    -- 5 : 26 decoder component
    component g14_5_26_decoder
        port(input : in std_logic_vector(4 downto 0);
             output : out std_logic_vector(25 downto 0);
             err : out std_logic);
    end component;

    -- Barrel Shifter
    component g14_barrel_shifter
        port(letter_in : in std_logic_vector(25 downto 0);
             shift : in std_logic_vector(4 downto 0);
             letter_out : out std_logic_vector(25 downto 0));
    end component;

    -- 26 : 5 decoder
    component g14_26_5_encoder
        port(letter : in std_logic_vector(25 downto 0);
             index : out std_logic_vector(4 downto 0);
             error : out std_logic);
    end component;

    -- 7 segment decoder
    component g14_7_segment_decoder
        port(code : in std_logic_vector(4 downto 0);
             segments : out std_logic_vector(6 downto 0));
    end component;

    begin
        -- Create a 2 Hz enable signal from the system clock
        pulse_gen : pulse_generator
            port map(clock => clock, epulse => counter_enable);

        -- 0 to 25 counter
        counter_0_to_25 : g14_counter
            port map(clk => clock, reset => '0', enable => counter_enable,
                count => current_count);

        -- 5 : 26 decoder from dipswitches
        dipswitch_decoder : g14_5_26_decoder
            port map(input => dipswitches, output => letter_index);

        -- Barrel shifter shifts the letter decoded from the dipswitches.
        barrel_shifter : g14_barrel_shifter
            port map(letter_in => letter_index, shift => current_count,
                letter_out => shifted_letter);

        -- 26 : 5 encoder encodes the shifted letter back into 5 bit letter rep
        encoder_26_to_5 : g14_26_5_encoder
            port map(letter => shifted_letter, index => shifted_letter_5_bit);

        seven_seg_disp_decoder : g14_7_segment_decoder
            port map(code => shifted_letter_5_bit, segments => seven_segment_output);
end test;
