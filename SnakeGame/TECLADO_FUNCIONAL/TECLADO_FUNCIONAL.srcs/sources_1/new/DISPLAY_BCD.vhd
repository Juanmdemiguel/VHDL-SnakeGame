library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MAQUINA_ESTADOS_TECLADO is
    Port (
        x          : in  STD_LOGIC_VECTOR(31 downto 0); -- Entrada de teclas
        clk        : in  STD_LOGIC;                     -- Reloj
        reset      : in  STD_LOGIC;                     -- RESET asíncrono
        seg        : out STD_LOGIC_VECTOR(6 downto 0);  -- Salida 7 segmentos
        an         : out STD_LOGIC_VECTOR(7 downto 0);  -- Activación de displays
        dp         : out STD_LOGIC;                     -- Punto decimal
        arriba     : out STD_LOGIC;                     -- Dirección ARRIBA
        abajo      : out STD_LOGIC;                     -- Dirección ABAJO
        izquierda  : out STD_LOGIC;                     -- Dirección IZQUIERDA
        derecha    : out STD_LOGIC                      -- Dirección DERECHA
    );
end MAQUINA_ESTADOS_TECLADO;

architecture Behavioral of MAQUINA_ESTADOS_TECLADO is

    -- Definición de estados
    type STATES is (ES_RESET, ES_ARRIBA, ES_ABAJO, ES_IZQUIERDA, ES_DERECHA);
    signal current_state : STATES := ES_RESET; -- Estado actual
    signal next_state    : STATES;             -- Próximo estado

    -- Señales internas
    signal clkdiv        : STD_LOGIC_VECTOR(19 downto 0) := (others => '0'); -- Divisor de reloj
    signal s             : STD_LOGIC_VECTOR(2 downto 0);                     -- Selección del display
    signal digit         : STD_LOGIC_VECTOR(3 downto 0);                     -- Dígito activo
    signal display_data  : STD_LOGIC_VECTOR(31 downto 0);                    -- Datos a mostrar

    -- Señales de enclavamiento
    signal s_arriba      : STD_LOGIC := '0';
    signal s_abajo       : STD_LOGIC := '0';
    signal s_izquierda   : STD_LOGIC := '0';
    signal s_derecha     : STD_LOGIC := '0';

begin

    -- Desactivar punto decimal (lógica negativa)
    dp <= '1';

    -- Divisor de reloj para seleccionar el display activo
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                clkdiv <= (others => '0');
            else
                clkdiv <= std_logic_vector(unsigned(clkdiv) + 1);
            end if;
        end if;
    end process;

    s <= clkdiv(19 downto 17); -- Divisor del reloj para seleccionar el display

    -- FSM: Registro de estado
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= ES_RESET;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- FSM: Transiciones de estado
    process(x, current_state)
    begin
        next_state <= current_state; -- Por defecto, mantener el estado actual
        case current_state is
            when ES_RESET =>
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- A
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"1C" then -- S
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
                
                elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA;    
                end if;

            when ES_ARRIBA =>
                if x(7 downto 0) = X"1C" then -- S
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"1B" then -- A
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
                    
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

            when ES_ABAJO =>
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1C" then -- S
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
                    
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

            when ES_IZQUIERDA =>
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- A
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
                    
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

            when ES_DERECHA =>
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- A
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"1C" then -- S
                    next_state <= ES_IZQUIERDA;
                    
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

            when others =>
                next_state <= ES_RESET;
        end case;
    end process;

    -- FSM: Lógica de salida
    process(current_state)
    begin
        -- Inicializar salidas
        s_arriba    <= '0';
        s_abajo     <= '0';
        s_izquierda <= '0';
        s_derecha   <= '0';
        display_data <= (others => '0'); -- Predeterminado en blanco

        case current_state is
            when ES_RESET =>
                display_data <= X"19D9EBBB"; -- Muestra RESETas

            when ES_ARRIBA =>
                s_arriba <= '1';
                display_data <= X"011230BB"; -- Muestra ARRIBA

            when ES_ABAJO =>
                s_abajo <= '1';
                display_data <= X"030A8BBB"; -- Muestra ABAJO

            when ES_IZQUIERDA =>
                s_izquierda <= '1';
                display_data <= X"25629140"; -- Muestra IZQUIERDA

            when ES_DERECHA =>
                s_derecha <= '1';
                display_data <= X"4919C70B"; -- Muestra DERECHA
        end case;
    end process;

    -- Asignar salidas de enclavamiento
    arriba <= s_arriba;
    abajo <= s_abajo;
    izquierda <= s_izquierda;
    derecha <= s_derecha;

    -- Selección de dígito
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
                when others => digit <= "1111";
            end case;
        end if;
    end process;

    -- Decodificador del display de 7 segmentos
    process(digit)
    begin
        case digit is
    when "0000" => seg <= "0001000"; -- A (0)
    when "0001" => seg <= "0011000"; -- R (1)
    when "0010" => seg <= "1111001"; -- I (2)
    when "0011" => seg <= "0110000"; -- B (3)
    when "0100" => seg <= "1110000"; -- D (4)
    when "0101" => seg <= "0010010"; -- Z (5)
    when "0110" => seg <= "1000000"; -- Q (6)
    when "0111" => seg <= "0001001"; -- H (7)
    when "1000" => seg <= "1000000"; -- O (8)
    when "1001" => seg <= "0000110"; -- E (9)
    when "1010" => seg <= "1110001"; -- J (A)
    when "1011" => seg <= "1111110"; -- RESET (guion '-')
    when "1100" => seg <= "1000110"; -- C (C)
    when "1101" => seg <= "1011011"; -- S (D)
    when "1111" => seg <= "1111111"; -- Blank
    when others => seg <= "1111111"; -- Default Blank
        end case;
    end process;

    -- Activar displays específicos
    process(s)
    begin
        an <= "11111111"; -- Todos apagados por defecto
        case s is
            when "000" => an <= "11111110";
            when "001" => an <= "11111101";
            when "010" => an <= "11111011";
            when "011" => an <= "11110111";
            when "100" => an <= "11101111";
            when "101" => an <= "11011111";
            when "110" => an <= "10111111";
            when "111" => an <= "01111111";
            when others => an <= "11111111";
        end case;
    end process;

end Behavioral;

