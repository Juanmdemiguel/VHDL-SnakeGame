library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spiMode0 is
    Port (
        CLK     : in  STD_LOGIC;  -- 66.67 kHz serial clock
        RST     : in  STD_LOGIC;  -- Reset
        sndRec  : in  STD_LOGIC;  -- Send/Receive trigger
        DIN     : in  STD_LOGIC_VECTOR(7 downto 0);  -- Data to send
        MISO    : in  STD_LOGIC;  -- Master Input Slave Output
        MOSI    : out STD_LOGIC;  -- Master Output Slave Input
        SCLK    : out STD_LOGIC;  -- Serial Clock
        BUSY    : out STD_LOGIC;  -- Busy signal
        DOUT    : out STD_LOGIC_VECTOR(7 downto 0)  -- Data received
    );
end spiMode0;

architecture Behavioral of spiMode0 is

    -- FSM States
    type state_type is (Idle, Init, RxTx, Done);
    signal pState : state_type := Idle;

    -- Registers and Wires
    signal CE       : STD_LOGIC := '0';  -- Clock Enable
    signal bitCount : INTEGER range 0 to 8 := 0;  -- Bit Counter
    signal rSR      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  -- Read Shift Register
    signal wSR      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  -- Write Shift Register

begin

    -- Assign Serial Clock and Data Lines
    SCLK <= CLK when CE = '1' else '0';  -- Enable serial clock if CE is high
    MOSI <= wSR(7);                      -- MSB of Write Shift Register
    DOUT <= rSR;                         -- Data Output from Read Shift Register

    -- Write Shift Register Logic (on falling edge)
    process(CLK)
    begin
        if falling_edge(CLK) then
            if RST = '1' then
                wSR <= (others => '0');
            else
                case pState is
                    when Idle =>
                        wSR <= DIN;  -- Load data to send
                    when RxTx =>
                        if CE = '1' then
                            wSR <= wSR(6 downto 0) & '0';  -- Shift left
                        end if;
                    when others =>
                        wSR <= wSR;  -- No change
                end case;
            end if;
        end if;
    end process;

    -- Read Shift Register Logic (on rising edge)
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                rSR <= (others => '0');
            else
                case pState is
                    when RxTx =>
                        if CE = '1' then
                            rSR <= rSR(6 downto 0) & MISO;  -- Shift in data from MISO
                        end if;
                    when others =>
                        rSR <= rSR;  -- No change
                end case;
            end if;
        end if;
    end process;

    -- FSM Logic
    process(CLK)
    begin
        if falling_edge(CLK) then
            if RST = '1' then
                CE <= '0';
                BUSY <= '0';
                bitCount <= 0;
                pState <= Idle;
            else
                case pState is
                    -- Idle State
                    when Idle =>
                        CE <= '0';
                        BUSY <= '0';
                        bitCount <= 0;
                        if sndRec = '1' then
                            pState <= Init;
                        end if;

                    -- Init State
                    when Init =>
                        BUSY <= '1';
                        bitCount <= 0;
                        CE <= '0';
                        pState <= RxTx;

                    -- RxTx State
                    when RxTx =>
                        BUSY <= '1';
                        if bitCount < 8 then
                            CE <= '1';  -- Enable clock during transfer
                            bitCount <= bitCount + 1;
                        else
                            CE <= '0';  -- Disable clock after 8 bits
                            pState <= Done;
                        end if;

                    -- Done State
                    when Done =>
                        CE <= '0';
                        BUSY <= '1';
                        pState <= Idle;

                    when others =>
                        pState <= Idle;
                end case;
            end if;
        end if;
    end process;

end Behavioral;

