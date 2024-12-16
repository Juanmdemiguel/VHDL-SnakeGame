library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ssdCtrl is
    Port (
        CLK   : in  STD_LOGIC;                       -- 100 MHz clock
        RST   : in  STD_LOGIC;                       -- Reset
        DIN   : in  STD_LOGIC_VECTOR(9 downto 0);    -- Input data to display
        AN    : out STD_LOGIC_VECTOR(3 downto 0);    -- Anodes for seven-segment display
        SEG   : out STD_LOGIC_VECTOR(6 downto 0)     -- Cathodes for seven-segment display
    );
end ssdCtrl;

architecture Behavioral of ssdCtrl is

    -- Parameters
    constant cntEndVal : INTEGER := 50000;  -- 1 kHz clock divider (for 100 MHz input clock)

    -- Signals
    signal clkCount : INTEGER range 0 to cntEndVal := 0;  -- Clock divider counter
    signal DCLK     : STD_LOGIC := '0';                   -- 1 kHz clock

    signal CNT      : INTEGER range 0 to 3 := 0;          -- 2-bit counter for digit selection
    signal bcdData  : STD_LOGIC_VECTOR(15 downto 0);      -- BCD converted data
    signal muxData  : STD_LOGIC_VECTOR(3 downto 0);       -- Selected digit to display

    -- Registers for outputs
    signal AN_reg   : STD_LOGIC_VECTOR(3 downto 0) := "1111";
    signal SEG_reg  : STD_LOGIC_VECTOR(6 downto 0) := "0000000";

begin

    -- Assign outputs
    AN <= AN_reg;
    SEG <= SEG_reg;

    -- Binary to BCD Conversion
    Binary_To_BCD_inst : entity work.Binary_To_BCD
        port map (
            CLK => CLK,
            RST => RST,
            START => DCLK,
            BIN => DIN,
            BCDOUT => bcdData
        );

    -- Output Data Multiplexer
    process(CNT, bcdData, RST)
    begin
        if RST = '1' then
            muxData <= "0000";
        else
            case CNT is
                when 0 => muxData <= bcdData(3 downto 0);
                when 1 => muxData <= bcdData(7 downto 4);
                when 2 => muxData <= bcdData(11 downto 8);
                when 3 => muxData <= bcdData(15 downto 12);
                when others => muxData <= "0000";
            end case;
        end if;
    end process;

    -- Segment Decoder (Cathode Control)
    process(DCLK)
    begin
        if rising_edge(DCLK) then
            if RST = '1' then
                SEG_reg <= "1000000";  -- Default: Display 0
            else
                case muxData is
                    when "0000" => SEG_reg <= "1000000";  -- 0
                    when "0001" => SEG_reg <= "1111001";  -- 1
                    when "0010" => SEG_reg <= "0100100";  -- 2
                    when "0011" => SEG_reg <= "0110000";  -- 3
                    when "0100" => SEG_reg <= "0011001";  -- 4
                    when "0101" => SEG_reg <= "0010010";  -- 5
                    when "0110" => SEG_reg <= "0000010";  -- 6
                    when "0111" => SEG_reg <= "1111000";  -- 7
                    when "1000" => SEG_reg <= "0000000";  -- 8
                    when "1001" => SEG_reg <= "0010000";  -- 9
                    when others => SEG_reg <= "1000000";  -- Default
                end case;
            end if;
        end if;
    end process;

    -- Anode Decoder
    process(DCLK)
    begin
        if rising_edge(DCLK) then
            if RST = '1' then
                AN_reg <= "0000";
            else
                case CNT is
                    when 0 => AN_reg <= "1110";  -- Activate digit 0
                    when 1 => AN_reg <= "1101";  -- Activate digit 1
                    when 2 => AN_reg <= "1011";  -- Activate digit 2
                    when 3 => AN_reg <= "0111";  -- Activate digit 3
                    when others => AN_reg <= "1111";  -- Default
                end case;
            end if;
        end if;
    end process;

    -- 2-bit Counter
    process(DCLK)
    begin
        if rising_edge(DCLK) then
            CNT <= (CNT + 1) mod 4;
        end if;
    end process;

    -- 1 kHz Clock Divider
    process(CLK)
    begin
        if rising_edge(CLK) then
            if clkCount = cntEndVal then
                DCLK <= '1';
                clkCount <= 0;
            else
                DCLK <= '0';
                clkCount <= clkCount + 1;
            end if;
        end if;
    end process;

end Behavioral;
