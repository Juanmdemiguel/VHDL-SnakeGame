library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seg7decimal is
    Port (
        x : in STD_LOGIC_VECTOR(31 downto 0);
        clk : in STD_LOGIC;
        seg : out STD_LOGIC_VECTOR(6 downto 0);
        an : out STD_LOGIC_VECTOR(7 downto 0);
        dp : out STD_LOGIC
    );
end seg7decimal;

architecture Behavioral of seg7decimal is

    signal clkdiv : STD_LOGIC_VECTOR(19 downto 0) := (others => '0');
    signal s : STD_LOGIC_VECTOR(2 downto 0);
    signal digit : STD_LOGIC_VECTOR(3 downto 0);
    signal mode : STD_LOGIC_VECTOR(3 downto 0); -- Encoded input for directional keys
    constant aen : STD_LOGIC_VECTOR(7 downto 0) := "11111111";

begin

    dp <= '1';  -- Decimal point always off
    s <= clkdiv(19 downto 17);

    -- Determine mode based on input `x`
    process(x)
    begin
        case x(7 downto 0) is
            when "00000001" => mode <= "0001"; -- Up
            when "00000010" => mode <= "0010"; -- Down
            when "00000100" => mode <= "0011"; -- Left
            when "00001000" => mode <= "0100"; -- Right
            when others => mode <= "0000";      -- Default
        end case;
    end process;

    -- Select digit based on "s"
    process(clk)
    begin
        if rising_edge(clk) then
            case s is
                when "000" =>
                    case mode is
                        when "0001" => digit <= "1010"; -- A for ARRIBA
                        when "0010" => digit <= "1011"; -- B for ABAJO
                        when "0011" => digit <= "1100"; -- C for IZQ
                        when "0100" => digit <= "1101"; -- D for DCH
                        when others => digit <= "1111"; -- Blank
                    end case;
                when "001" =>
                    case mode is
                        when "0001" => digit <= "1010"; -- A for ARRIBA
                        when "0010" => digit <= "1011"; -- B for ABAJO
                        when "0011" => digit <= "1110"; -- Z for IZQ
                        when "0100" => digit <= "1100"; -- C for DCH
                        when others => digit <= "1111"; -- Blank
                    end case;
                when "010" =>
                    case mode is
                        when "0001" => digit <= "1111"; -- Blank for ARRIBA
                        when "0010" => digit <= "1011"; -- B for ABAJO
                        when "0011" => digit <= "1010"; -- A for IZQ
                        when "0100" => digit <= "1110"; -- H for DCH
                        when others => digit <= "1111"; -- Blank
                    end case;
                when "011" =>
                    case mode is
                        when "0001" => digit <= "1111"; -- Blank for ARRIBA
                        when "0010" => digit <= "1111"; -- Blank for ABAJO
                        when "0011" => digit <= "1011"; -- B for IZQ
                        when "0100" => digit <= "1011"; -- B for DCH
                        when others => digit <= "1111"; -- Blank
                    end case;
                when others => digit <= "1111"; -- Default blank
            end case;
        end if;
    end process;

    -- 7-segment decoder
    process(digit)
    begin
        case digit is
            when "0000" => seg <= "1000000"; -- 0
            when "0001" => seg <= "1111001"; -- 1
            when "0010" => seg <= "0100100"; -- 2
            when "0011" => seg <= "0110000"; -- 3
            when "0100" => seg <= "0011001"; -- 4
            when "0101" => seg <= "0010010"; -- 5
            when "0110" => seg <= "0000010"; -- 6
            when "0111" => seg <= "1111000"; -- 7
            when "1000" => seg <= "0000000"; -- 8
            when "1001" => seg <= "0010000"; -- 9
            when "1010" => seg <= "0001000"; -- A
            when "1011" => seg <= "0000011"; -- B
            when "1100" => seg <= "1000110"; -- C
            when "1101" => seg <= "0100001"; -- D
            when "1110" => seg <= "0000110"; -- E
            when "1111" => seg <= "1111111"; -- Blank
            when others => seg <= "1111111";  -- Default blank
        end case;
    end process;

    -- Enable signal for active digit
    process(s)
    begin
        an <= "11111111";  -- All off by default
        an(to_integer(unsigned(s))) <= '0';
    end process;

    -- Clock divider
    process(clk)
    begin
        if rising_edge(clk) then
            clkdiv <= std_logic_vector(unsigned(clkdiv) + 1);
        end if;
    end process;

end Behavioral;

