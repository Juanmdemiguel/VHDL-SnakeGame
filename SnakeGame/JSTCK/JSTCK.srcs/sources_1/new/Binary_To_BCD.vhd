library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Binary_To_BCD is
    Port (
        CLK     : in  STD_LOGIC;                       -- 100 MHz clock
        RST     : in  STD_LOGIC;                       -- Reset
        START   : in  STD_LOGIC;                       -- Start signal for conversion
        BIN     : in  STD_LOGIC_VECTOR(9 downto 0);    -- 10-bit binary input
        BCDOUT  : out STD_LOGIC_VECTOR(15 downto 0)    -- 4-digit BCD output
    );
end Binary_To_BCD;

architecture Behavioral of Binary_To_BCD is

    -- State encoding
    type state_type is (Idle, Init, Shift, Check, Done);
    signal STATE : state_type := Idle;

    -- Signals
    signal BCDOUT_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');  -- BCD output register
    signal tmpSR      : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');  -- Temporary shift register
    signal shiftCount : INTEGER range 0 to 12 := 0;                        -- Shift count

begin

    -- Assign output
    BCDOUT <= BCDOUT_reg;

    -- Binary to BCD FSM
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                -- Reset values
                BCDOUT_reg <= (others => '0');
                tmpSR <= (others => '0');
                shiftCount <= 0;
                STATE <= Idle;
            else
                case STATE is

                    -- Idle state: Wait for START signal
                    when Idle =>
                        BCDOUT_reg <= BCDOUT_reg;  -- Retain previous output
                        tmpSR <= (others => '0');
                        if START = '1' then
                            STATE <= Init;
                        end if;

                    -- Init state: Load input binary into temporary shift register
                    when Init =>
                        BCDOUT_reg <= BCDOUT_reg;  -- Retain previous output
                        tmpSR <= (others => '0');  -- Load binary input into lower 10 bits
                        shiftCount <= 0;
                        STATE <= Shift;

                    -- Shift state: Shift left by 1 bit
                    when Shift =>
                        tmpSR <= tmpSR(26 downto 0) & '0';  -- Shift left
                        shiftCount <= shiftCount + 1;
                        STATE <= Check;

                    -- Check state: Add 3 to BCD digits if >= 5
                    when Check =>
                        -- Adjust thousands place
                        if unsigned(tmpSR(27 downto 24)) >= 5 then
                            tmpSR(27 downto 24) <= std_logic_vector(unsigned(tmpSR(27 downto 24)) + 3);
                        end if;
                        -- Adjust hundreds place
                        if unsigned(tmpSR(23 downto 20)) >= 5 then
                            tmpSR(23 downto 20) <= std_logic_vector(unsigned(tmpSR(23 downto 20)) + 3);
                        end if;
                        -- Adjust tens place
                        if unsigned(tmpSR(19 downto 16)) >= 5 then
                            tmpSR(19 downto 16) <= std_logic_vector(unsigned(tmpSR(19 downto 16)) + 3);
                        end if;
                        -- Adjust ones place
                        if unsigned(tmpSR(15 downto 12)) >= 5 then
                            tmpSR(15 downto 12) <= std_logic_vector(unsigned(tmpSR(15 downto 12)) + 3);
                        end if;

                        -- Continue shifting or finish
                        if shiftCount < 12 then
                            STATE <= Shift;
                        else
                            STATE <= Done;
                        end if;

                    -- Done state: Store BCD result in output and reset temporary registers
                    when Done =>
                        BCDOUT_reg <= tmpSR(27 downto 12);  -- Assign the top 16 bits to BCDOUT
                        tmpSR <= (others => '0');  -- Clear temporary shift register
                        shiftCount <= 0;
                        STATE <= Idle;

                    when others =>
                        -- Default to Idle state
                        STATE <= Idle;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
