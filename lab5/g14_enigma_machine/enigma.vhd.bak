-- Enigma Machine w/ Hard Coded Determinants
-- Author: Malcolm Watt 260585950

entity enigma is
  port (
    clock : in std_logic;
    keypress : in std_logic;
    input_code : in std_logic_vector(4 downto 0);
    reset : in std_logic; -- Resets to the day settings
    output_code : out std_logic_vector(4 downto 0);
  );
end enigma ;

architecture arch of enigma is
    -- Determined by the FSM
    signal enable_l, enable_m, enable_r, load : std_logic;

    -- Related to scrambling rotors
    signal forward_input_r, forward_input_m, forward_input_l : std_logic_vector(4 downto 0);
    signal reverse_input_r, reverse_input_m, reverse_input_l : std_logic_vector(4 downto 0);
    signal forward_out_r, forward_out_m, forward_out_l : std_logic_vector(4 downto 0);
    signal reverse_out_r, reverse_out_m, reverse_out_l : std_logic_vector(4 downto 0);
    signal directions : in std_logic_vector(3 downto 0);

    -- Important for rotor stepper FSM
    signal count_m, count_r : std_logic_vector(4 downto 0);
    signal notch_m, notch_r : std_logic_vector(4 downto 0);
    signal knock_m, knock_r : std_logic;

    -- Finite State Machine
    component g14_rotor_stepper_fsm
        port (
            keypress : in std_logic;
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

    -- Rotor component
    component g14_rotor
        port (
            clock : in std_logic;
            input_code_forward : in std_logic_vector(4 downto 0);
            input_code_reverse : in std_logic_vector(4 downto 0);
            directions : in std_logic_vector(3 downto 0);
            ring_setting : in std_logic_vector(4 downto 0);
            data : in std_logic_vector(4 downto 0);
            load : in std_logic;
            enable : in std_logic;
            rotor_type : in std_logic_vector(1 downto 0);
            knock_count : out std_logic_vector(4 downto 0);
            output_code_forward : out std_logic_vector(4 downto 0);
            output_code_reverse : out std_logic_vector(4 downto 0)
        );
    end component;

    -- Reflector component
    component g14_reflector
        port (
            input_code : in std_logic_vector(4 downto 0);
            reflector_type : in std_logic;
            output_code : out std_logic_vector(4 downto 0)
        );
    end component;

    -- Stecker component
    component g14_stecker
        port (
            input_code : in std_logic_vector(4 downto 0);
            output_code : out std_logic_vector(4 downto 0)
        );
    end component;

    -- Comparator for knocks
    component g14_5_bit_comparator
        port (
            comp1 : in std_logic_vector(4 downto 0);
            comp2 : in std_logic_vector(4 downto 0);
            eq : out std_logic
        );
    end component;

begin
    -- Connect wires to make clear connections from one stage to the next
    forward_input_m <= forward_out_r;
    forward_input_l <= forward_out_m;
    reverse_input_m <= reverse_out_l;
    reverse_input_r <= reverse_out_m;

    -- Handles keypresses and state transitions
    rotor_stepper : g14_rotor_stepper_fsm port map (
        keypress => keypress,
        knock_m => knock_m,
        knock_r => knock_r,
        clk => clock,
        init => reset,
        en_l => enable_l,
        en_m => enable_m,
        en_r => enable_r,
        load => load
    );

    -- Handle knock comparisons
    -- Comparator for right rotor's knock position
    knock_r_comparator : g14_5_bit_comparator port map (
        comp1 => count_r,
        comp2 => notch_r,
        eq => knock_r
    );

    -- Comparator for middle rotor's knock position
    knock_r_comparator : g14_5_bit_comparator port map (
        comp1 => count_m,
        comp2 => notch_m,
        eq => knock_m
    );


    -- Now let's go linearly around the circuit:
    -- 1) The Stecker
    forward_stecker : g14_stecker port map (
        input_code => input_code,
        output_code => forward_input_r
    );

    -- Let's also define the Stecker for the return path
    reverse_stecker : g14_stecker port map (
        input_code => reverse_out_r,
        output_code => output_code
    );

    -- 2) Right Rotor
    right_rotor : g14_rotor port map (
        clock => clock,
        input_code_forward => forward_input_r,
        input_code_reverse => reverse_input_r,
        directions => directions,
        ring_setting => "00000",
        data => "00010",
        load => '0',
        enable => enable_l,
        rotor_type => "00",
        knock_count => count_r,
        output_code_forward => forward_out_r,
        output_code_reverse => reverse_out_r
    );

    -- 3) Middle Rotor
    middle_rotor : g14_rotor port map (
        clock => clock,
        input_code_forward => forward_input_m,
        input_code_reverse => reverse_input_m,
        directions => directions,
        ring_setting => "00000",
        data => "00010",
        load => '0',
        enable => enable_m,
        rotor_type => "01",
        knock_count => count_m,
        output_code_forward => forward_out_m,
        output_code_reverse => reverse_out_m
    );

    -- 4) Left Rotor
    right_rotor : g14_rotor port map (
        clock => clock,
        input_code_forward => forward_input_l,
        input_code_reverse => reverse_input_l,
        directions => directions,
        ring_setting => "00000",
        data => "00010",
        load => '0',
        enable => enable_l,
        rotor_type => "10",
        output_code_forward => forward_out_l,
        output_code_reverse => reverse_out_l
    );

    -- 5) Reflector
    reflector : g14_reflector port map (
        input_code => forward_out_l,
        reflector_type => '0',
        output_code => reverse_input_l
    );
end arch ;
