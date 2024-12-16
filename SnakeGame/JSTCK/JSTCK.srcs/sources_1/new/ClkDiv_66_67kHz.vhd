library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClkDiv_66_67kHz is
    Port (
        CLK     : in  STD_LOGIC;  -- 100 MHz input clock
        RST     : in  STD_LOGIC;  -- Reset signal
        CLKOUT  : out STD_LOGIC   -- 66.67 kHz output clock
    );
end ClkDiv_66_67kHz;

architecture Behavioral of ClkDiv_66_67kHz is

    -- Parameter equivalent: Count value to toggle the clock
    constant cntEndVal : integer := 750;  -- 100 MHz / (2 * 66.67 kHz) = 750

    -- Registers
    signal clkCount : integer range 0 to cntEndVal := 0;
    signal clkReg   : STD_LOGIC := '1';

begin

    -- Process for clock division
    process(CLK, RST)
    begin
        if RST = '1' then
            clkReg <= '0';
            clkCount <= 0;
        elsif rising_edge(CLK) then
            if clkCount = cntEndVal then
                clkReg <= not clkReg;  -- Toggle the clock output
                clkCount <= 0;
            else
                clkCount <= clkCount + 1;
            end if;
        end if;
    end process;

    -- Assign the divided clock to the output
    CLKOUT <= clkReg;

end Behavioral;
