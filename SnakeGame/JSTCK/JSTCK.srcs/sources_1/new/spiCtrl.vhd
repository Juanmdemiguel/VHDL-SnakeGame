library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity spiCtrl is
    Port (
        CLK     : in  STD_LOGIC;
        RST     : in  STD_LOGIC;
        sndRec  : in  STD_LOGIC;
        BUSY    : in  STD_LOGIC;
        DIN     : in  STD_LOGIC_VECTOR(7 downto 0);
        RxData  : in  STD_LOGIC_VECTOR(7 downto 0);
        SS      : out STD_LOGIC;
        getByte : out STD_LOGIC;
        sndData : out STD_LOGIC_VECTOR(7 downto 0);
        DOUT    : out STD_LOGIC_VECTOR(39 downto 0)
    );
end spiCtrl;

architecture Behavioral of spiCtrl is
    signal state       : integer range 0 to 5 := 0;
    signal temp_DOUT   : STD_LOGIC_VECTOR(39 downto 0) := (others => '0');
begin

    process (CLK, RST)
    begin
        if RST = '1' then
            state <= 0;
            SS <= '1';
            getByte <= '0';
            sndData <= (others => '0');
            temp_DOUT <= (others => '0');
        elsif rising_edge(CLK) then
            case state is
                when 0 =>
                    if sndRec = '1' then
                        SS <= '0';
                        sndData <= DIN;
                        getByte <= '1';
                        state <= 1;
                    end if;
                when 1 =>
                    if BUSY = '0' then
                        getByte <= '0';
                        state <= 2;
                    end if;
                when 2 =>
                    temp_DOUT <= temp_DOUT(31 downto 0) & RxData;
                    if temp_DOUT'length = 40 then
                        DOUT <= temp_DOUT;
                        SS <= '1';
                        state <= 0;
                    else
                        sndData <= DIN; -- Update data if needed
                        getByte <= '1';
                        state <= 1;
                    end if;
                when others =>
                    state <= 0;
            end case;
        end if;
    end process;

end Behavioral;
