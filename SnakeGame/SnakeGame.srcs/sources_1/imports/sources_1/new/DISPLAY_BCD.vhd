library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


--Entradas y salidas de la máquina de estados
entity MAQUINA_ESTADOS_TECLADO is
    Port (
        x          : in  STD_LOGIC_VECTOR(31 downto 0); -- Teclas codificadas --Cogeremos los 8 primeros bits
        clk        : in  STD_LOGIC;                     -- Reloj general
        reset      : in  STD_LOGIC;                     -- Reset
        seg        : out STD_LOGIC_VECTOR(6 downto 0);  -- Salida de display de 7 segmentos
        an         : out STD_LOGIC_VECTOR(7 downto 0);  -- Selección de displays
        dp         : out STD_LOGIC;                     -- Activación de punto decimal 
        arriba     : out STD_LOGIC;                     -- Dirección ARRIBA
        abajo      : out STD_LOGIC;                     -- Dirección ABAJO
        izquierda  : out STD_LOGIC;                     -- Dirección IZQUIERDA
        derecha    : out STD_LOGIC                      -- Dirección DERECHA
    );
end MAQUINA_ESTADOS_TECLADO;

architecture Behavioral of MAQUINA_ESTADOS_TECLADO is

    -- Definición de los estados de la máquina
    type STATES is (ES_RESET, ES_ARRIBA, ES_ABAJO, ES_IZQUIERDA, ES_DERECHA);
    signal current_state : STATES := ES_RESET; -- Estado actual inicializado a RESET
    signal next_state    : STATES;             -- Estado siguiente

    -- Señales internas
    signal clkdiv        : STD_LOGIC_VECTOR(19 downto 0) := (others => '0'); -- Divisor de reloj para displays
    signal s             : STD_LOGIC_VECTOR(2 downto 0);                     -- Selección del display
    signal digit         : STD_LOGIC_VECTOR(3 downto 0);                     -- Dígito activo
    signal display_data  : STD_LOGIC_VECTOR(31 downto 0);                    -- Datos a mostrar

    -- Señales de enclavamiento en las cuatro direcciones inicializadas a cero
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
        --Al activar el reset pondremos el reloj de los displays a cero
            if reset = '0' then
                clkdiv <= (others => '0');
        --Si no seguirá contando para hacer la división del reloj principal
            else
                clkdiv <= std_logic_vector(unsigned(clkdiv) + 1);
            end if;
        end if;
    end process;

-- Divisor del reloj para seleccionar el display
    s <= clkdiv(19 downto 17); 

-- Registro de estados de a máquina
    process(clk, reset)
    begin
        if reset = '0' then --Reset asíncrono
            current_state <= ES_RESET;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;


--Permitiremos recargar el estado dentro del mismo para limpiar los buffers del teclado
--Cambios de estado en la máquina
    process(x, current_state)
    begin
        next_state <= current_state; 
        case current_state is
        --Si hacemos un reset ponemos todo a cero
            when ES_RESET =>
        --Como estamos en estado de reset podremos movernos en cualquier dirección al iniciar
        --Teclas superiores
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- S
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"1C" then -- A
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
        --Flechas        
                elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA;    
                end if;
                
        --Movemos hacia arriba --OK
            when ES_ARRIBA =>
            
        --Podremos mover hacia los lados o hacia arriba pero no hacia abajo otra vez.
        --Para que la serpiente no se de le vuelta y el juego no se rompa.
        
        --Movimiento con teclas
             if x(7 downto 0) = X"1C" then -- A
                    next_state <= ES_IZQUIERDA;
             elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;       
             elsif x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;         

        --Movimiento con flechas
             elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                     next_state <= ES_IZQUIERDA;
             elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                     next_state <= ES_DERECHA; 
             elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                     next_state <= ES_ARRIBA; 
                end if;

        --Movemos hacia abajo  --OK
            when ES_ABAJO =>
                
        --Podremos mover hacia los lados o hacia abajo pero no hacia abajo otra vez.
        --Para que la serpiente no se de le vuelta y el juego no se rompa.
         
        --Movimiento con teclas
             if x(7 downto 0) = X"1C" then -- A
                    next_state <= ES_IZQUIERDA;
             elsif x(7 downto 0) = X"1B" then -- S
                 next_state <= ES_ABAJO;
             elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
                    
        --Movimiento con flechas         
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

        --Movemos hacia la izquierda  --OK
            when ES_IZQUIERDA =>
            
           --Podremos mover hacia arriba , abajo o a la izquierda, pero no a la derecha.
           --Para que la serpiente no se de le vuelta y el juego no se rompa.
           
           --Movimiento con teclas 
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- S
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"1C" then -- A
                    next_state <= ES_IZQUIERDA;
           
           --Movimiento con flechas
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"6B" then -- FLECHA IZQUIERDA
                    next_state <= ES_IZQUIERDA;
                end if;


         --Movemos hacia la derecha  --OK
            when ES_DERECHA =>
            
            --Podremos mover hacia arriba , abajo o a la derecha, pero no a la izquerda.
           --Para que la serpiente no se de le vuelta y el juego no se rompa.
           
           --Movimiento con teclas 
                if x(7 downto 0) = X"1D" then -- W
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"1B" then -- S
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"23" then -- D
                    next_state <= ES_DERECHA;
            
            --Movimiento con flechas        
                    elsif x(7 downto 0) = X"75" then -- FLECHA ARRIBA
                    next_state <= ES_ARRIBA;
                elsif x(7 downto 0) = X"72" then -- FLECHA ABAJO
                    next_state <= ES_ABAJO;
                elsif x(7 downto 0) = X"74" then -- FLECHA DERECHA
                    next_state <= ES_DERECHA; 
                end if;

            --Si se sale de la máquina de estados va al reset por defecto
            when others =>
                next_state <= ES_RESET;
        end case;
    end process;

    -- FSM: Lógica de salida
    process(current_state)
    begin
        -- Inicializar salidas a cero
        s_arriba    <= '0';
        s_abajo     <= '0';
        s_izquierda <= '0';
        s_derecha   <= '0';
        display_data <= (others => '0'); -- Predeterminado en blanco


--Asignamos las salidas del display en HEXADECIMAl (una letra codifica un caracter)
        case current_state is
        
        --En reset
            when ES_RESET =>
                display_data <= X"BBBBBBBB"; -- Muestra RESET
        --En hacia arriba
            when ES_ARRIBA =>
                s_arriba <= '1';
                display_data <= X"011230BB"; -- Muestra ARRIBA
        --En hacia abajo
            when ES_ABAJO =>
                s_abajo <= '1';
                display_data <= X"030A8BBB"; -- Muestra ABAJO
        --En hacia la izquierda
            when ES_IZQUIERDA =>
                s_izquierda <= '1';
                display_data <= X"25629140"; -- Muestra IZQUIERDA
        --En hacia la derecha
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

    -- Selección de los displays necesarios para poder mostrar los estados de la máquina físicamente
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

    -- Caracteres codificados con números hexadecimales
    process(digit)
    begin
        case digit is
    when "0000" => seg <= "0001000"; -- A (0) OK
    when "0001" => seg <= "0011000"; -- R (1) OK
    when "0010" => seg <= "1111001"; -- I (2) OK
    when "0011" => seg <= "0110000"; -- B (3) OK
    when "0100" => seg <= "1110000"; -- D (4) OK
    when "0101" => seg <= "0010010"; -- Z (5) OK
    when "0110" => seg <= "1000000"; -- Q (6) OK
    when "0111" => seg <= "0001001"; -- H (7) OK
    when "1000" => seg <= "1000000"; -- O (8) OK
    when "1001" => seg <= "0000110"; -- E (9) OK
    when "1010" => seg <= "1110001"; -- J (A) OK
    when "1011" => seg <= "1111110"; -- RESET (guion '-') (B)
    when "1100" => seg <= "1000110"; -- C (C) OK
    when "1101" => seg <= "1011011"; -- S (D) NO_USADO_AL_FINAL
    when "1111" => seg <= "1111111"; -- Blank
    when others => seg <= "1111111"; -- Default Blank
        end case;
    end process;

    -- Activar displays específicos
    process(s)
    begin
        an <= "11111111"; -- Todos apagados por defecto (Lógica a nivel bajo)
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

