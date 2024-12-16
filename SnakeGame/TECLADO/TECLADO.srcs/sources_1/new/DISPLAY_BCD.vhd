library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seg7decimal is
    Port (
        x : in STD_LOGIC_VECTOR(31 downto 0);
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        seg : out STD_LOGIC_VECTOR(6 downto 0);
        an : out STD_LOGIC_VECTOR(7 downto 0);
        dp : out STD_LOGIC;
        arriba : out STD_LOGIC;
        abajo : out STD_LOGIC;
        izquierda : out STD_LOGIC;
        derecha : out STD_LOGIC
    );
end seg7decimal;

architecture Behavioral of seg7decimal is

    signal clkdiv : STD_LOGIC_VECTOR(19 downto 0) := (others => '0');
    signal s : STD_LOGIC_VECTOR(2 downto 0);
    signal digit : STD_LOGIC_VECTOR(3 downto 0);
    signal display_data : STD_LOGIC_VECTOR(31 downto 0);

    signal s_arriba : STD_LOGIC;
    signal s_abajo : STD_LOGIC;
    signal s_izquierda : STD_LOGIC;
    signal s_derecha : STD_LOGIC;
begin

    dp <= '1'; -- Decimal point always off
    s <= clkdiv(19 downto 17);

    -- Update display_data based on input keys (A, W, S, D)
    process(clk,reset)
    begin
        if reset='1' then 
        display_data <= X"19D9EBBB"; -- RESET
                s_abajo<='0';
                s_derecha<='0';
                s_arriba<='0';
                s_izquierda<='0';
        else
        
         if rising_edge(clk) then
            case x(7 downto 0) is
                when X"1C"  => 
                display_data <= X"25629140"; -- Key 'S' -> "IZQUIERDA"
                s_abajo<='0';
                s_derecha<='0';
                s_arriba<='0';
                s_izquierda<='1';
                when X"1D" => 
                display_data <= X"011230BB"; -- Key 'W' -> "ARRIBA"
                s_abajo<='0';
                s_derecha<='0';
                s_izquierda<='0';
                s_arriba<='1';
                when X"1B" => 
                display_data <= X"030A8BBB"; -- Key 'A' -> "ABAJO"
                s_derecha<='0';
                s_arriba<='0';
                s_izquierda<='0';
                s_abajo<='1';
                when X"23" => 
                display_data <= X"4919C70BB"; -- Key 'D' -> "DERECHA"
                s_abajo<='0';
                s_arriba<='0';
                s_izquierda<='0';
                s_derecha<='1';
                
                when X"6B"  => 
                display_data <= X"25629140"; -- Key 'S' -> "IZQUIERDA"
                s_abajo<='0';
                s_derecha<='0';
                s_arriba<='0';
                s_izquierda<='1';
                when X"75" => 
                display_data <= X"011230BB"; -- Key 'W' -> "ARRIBA"
                s_abajo<='0';
                s_derecha<='0';
                s_izquierda<='0';
                s_arriba<='1';
                when X"72" => 
                display_data <= X"030A8BBB"; -- Key 'A' -> "ABAJO"
                s_derecha<='0';
                s_arriba<='0';
                s_izquierda<='0';
                s_abajo<='1';
                when X"74" => 
                display_data <= X"4919C70BB"; -- Key 'D' -> "DERECHA"
                s_abajo<='0';
                s_arriba<='0';
                s_izquierda<='0';
                s_derecha<='1';
                
                when others =>  --OTRA TECLA
                s_abajo<='0';
                s_arriba<='0';
                s_izquierda<='0';
                s_derecha<='0';
                display_data <= (others => '0'); -- Blank
            end case;
        end if;
       
        end if;
        
        
    arriba<=s_arriba;
    abajo<=s_abajo;
    izquierda<=s_izquierda;
    derecha<=s_derecha;
    
    end process;

    -- Select digit based on "s"
    process(clk)
    begin
        if rising_edge(clk) then
            case s is
                when "000" => digit <= display_data(3 downto 0);
                when "001" => digit <= display_data(7 downto 4);
                when "010" => digit <= display_data(11 downto 8);
                when "011" => digit <= display_data(15 downto 12);
                when "100" => digit <= display_data(19 downto 16);
                when "101" => digit <= display_data(23 downto 20);
                when "110" => digit <= display_data(27 downto 24);
                when "111" => digit <= display_data(31 downto 28);
                when others => digit <= "1111"; -- Blank digit
            end case;
        end if;
    end process;

    -- Decoder or truth-table for 7-segment display values
    process(digit)
    begin
        case digit is
    when "0000" => seg <= "0111011"; -- A (0)
    when "0001" => seg <= "0000110"; -- R (1)
    when "0010" => seg <= "1011011"; -- I (2)
    when "0011" => seg <= "0011111"; -- B (3)
    when "0100" => seg <= "0001110"; -- D (4)
    when "0101" => seg <= "0111101"; -- Z (5)
    when "0110" => seg <= "1111101"; -- Q (6)
    when "0111" => seg <= "0100111"; -- H (7)
    when "1000" => seg <= "1111111"; -- O (8)
    when "1001" => seg <= "0111100"; -- E (9)
    when "1010" => seg <= "0000111"; -- J (A)
    when "1011" => seg <= "0000001"; -- RESET (guion '-') (B)
    when "1100" => seg <= "1001110"; -- C (C)
    when "1101" => seg <= "0110111"; -- S (D)
    when "1110" => seg <= "0001111"; -- T (E)
    when "1111" => seg <= "0000000"; -- Blank
    when others => seg <= "0000000"; -- Default Blank
end case;

    end process;

    -- Activate specific digit
    process(s)
    begin
        an <= "11111111"; -- All digits off by default
        an(to_integer(unsigned(s))) <= '0'; -- Activate the current digit
    end process;

    -- Clock divider
    process(clk)
    begin
        if rising_edge(clk) then
            clkdiv <= std_logic_vector(unsigned(clkdiv) + 1);
        end if;
    end process;

end Behavioral;
