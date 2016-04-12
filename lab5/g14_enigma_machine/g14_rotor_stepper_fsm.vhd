-- Rotor Stepper FSM
-- Authors : Joanna Halpern, Malcolm Watt
-- Date: 4/12/2016

library ieee;
use ieee.std_logic_1164.all;

entity g14_rotor_stepper_fsm is
	port(keypress : in std_logic; --
        knock_m : in std_logic;
        knock_r : in std_logic;
        clk : in std_logic;
        init : in std_logic;
        en_l : out std_logic;
        en_m : out std_logic;
        en_r : out std_logic;
        load : out std_logic);
end g14_rotor_stepper_fsm;


architecture rotor_step of g14_rotor_stepper_fsm is
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);
    signal state : state_type;
-- Begin architecture
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if init = '1' then
                state <= S0;
            else
                case state is
                    when S0 => -- Set load
                        state <= S1;
                    when S1 => -- Wait to go to 0
                        if keypress = '1' then
                            state <= S2;
                        end if;
                    when S2 => -- Wait to go to 1
                        if keypress = '0' then
                            state <= S3;
                        end if;
                    when S3 => -- Set enables
                        if (knock_m = '0' and knock_r = '0') then
                            state <= S4;
                        elsif (knock_m = '0' and knock_r = '1') then
                            state <= S5;
                        elsif (knock_m = '1' and knock_r = '0') then
                            state <= S6;
                        else
                            state <= S7;
                        end if;
                    when S4 => -- Only en_r asserted
                        state <= S1;
                    when S5 => -- en_r and en_m asserted
                        state <= S1;
                    when S6 => -- All asserted
                        state <= S1;
                    when S7 => -- All asserted, en_m asserted twice
                        state <= S6;
                end case;
            end if;
        end if;
    end process;
    -- Set outputs based on state.
    load <= '1' when state = S0 else '0';
    en_r <= '1' when (state = S4 or state = S5 or state = S6) else '0';
    en_m <= '1' when (state = S5 or state = S6 or state = S7) else '0';
    en_l <= '1' when (state = S6) else '0';

end rotor_step ;
