library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;

--Entradas y salidas del juego principal
entity GAME_Play is
    port(
        clk_60hz        : in  std_logic; --Entrada de reloj a 60 Hz
        clk_108Mhz      : in  std_logic; --Entrada de reloj a 108 MHz
        reset           : in std_logic; --Señal de reset
        play            : in std_logic; --Señal de comenzar a jugar
        teclado         : in std_logic_vector(2 downto 0); --Señales de entrada para movimiento
        
        longitud_snake  : out integer range 0 to snake_length_max; --Longitud que va alcanzando la serpiente
        GRID_SNAKE_xy   : out xys(0 to snake_length_max - 1);
        manzana_xy      : out xy; --Posición de la manzana en pantalla
        
        estado          : out std_logic_vector (2 downto 0); --Estado de movimiento
        lose            : out std_logic; --Señal de lose para comunicarse con la FMS
        
        led_choque      : out std_logic --Señal para ver si la serpiente se ha comido a sí misma
        );
end entity;

--Funcionamiento del juego principal
architecture BEHAVIORAL of GAME_Play is

--Señales intermedias para poder llevar a cabo la actualización del SNAKE
    signal sig_GRID_SNAKE_xy        : xys(0 to snake_length_max - 1);
    signal sig_MANZANA_xy           : xy;
    signal random_xy                : unsigned(31 downto 0); --generación aleatoria en coordenadas X e Y
    signal sig_lose                 : std_logic :='0';
    signal inited                   : std_logic := '0';
    signal s_led_choque             : std_logic := '0';
begin
--Asignamos a la salida de lose que va a la FMS su señal intermedia
lose<= sig_lose;
snake_move:
--El movimiento se actualizará con el reloj, el reset, el play y la generación de xy aleatorio
    process(clk_60hz, reset, random_xy, play)
        --speed in pixel
        constant snake_speed    : signed(15 downto 0) := to_signed(6, 16);

--Declaración de variables a ir actualizando en el juego
        variable cabeza_snake_xy_f          : xy := (others => '0');--Cabeza del snake
        variable manzana_xy_f               : xy := (others => '0');--Manzana 
        variable longitud_snake_f           : integer := 0; --Longitud variable del snake
        variable dx, dy                     : signed(15 downto 0) := (others => '0');--variables auxiliares de distancia
        variable count                      : integer := 0; --Cuenta de manzanas
    begin
        manzana_xy        <= manzana_xy_f; --La posición de la manzana va a ser la posición futura
        longitud_snake    <= longitud_snake_f; --La longitud del snake va a ser la longitud futura
        GRID_SNAKE_xy     <= sig_GRID_SNAKE_xy; -- El mallado de la serpiente va a ser el mallado futuro
        
        --Si el juego se resetea, inicia o se empieza a jugar
        if (reset = '1' or inited = '0' or play = '0') then
            --La longitud de la serpiente pasa a ser por defecto
            longitud_snake_f := snake_length_begin;
            --Reiniciamos la cuenta de manzanas
            count := 0;

            --Colocamos la primera manzana en su posición inicial
            manzana_xy_f(31 downto 16) := std_logic_vector(to_signed(food_begin_x, 16));
            manzana_xy_f(15 downto 0) := std_logic_vector(to_signed(food_begin_y, 16));

            --Colocamos la cabeza del snake en su posición inicial
            cabeza_snake_xy_f(31 downto 16)  := std_logic_vector(to_signed(snake_begin_x , 16));
            cabeza_snake_xy_f(15 downto 0)   := std_logic_vector(to_signed(snake_begin_y , 16));

            --Colocamos el reto del snake en su posición inicial
            for i in 0 to snake_length_max - 1 loop
            --El siguiente eslabón es la cabeza
                sig_GRID_SNAKE_xy(i) <= cabeza_snake_xy_f;
            end loop;
            --Reseteamos la señal lose para que el juego no entre en GAME OVER accidentalmente
            sig_lose <= '0';
            --Seteamos la señal de inicio
            inited <= '1';
            --Actualizamos el juego con cada flanco de reloj a 60Hz. Si usamos frecuencias más altas el juego va muy rápido
        elsif (rising_edge(clk_60hz)) then
                --Movimientos extraidos del teclado
                case teclado is
                    when("000") =>       --Subimos
                    --Movemos la cabeza del snake hacia arriba y los eslabones recuerdan la posición anterior
                        cabeza_snake_xy_f(15 downto 0) := std_logic_vector(signed(cabeza_snake_xy_f(15 downto 0)) - snake_speed);
                    when("011") =>       --Derecha
                    --Movemos la cabeza del snake hacia la derecha y los eslabones recuerdan la posición anterior
                        cabeza_snake_xy_f(31 downto 16) := std_logic_vector(signed(cabeza_snake_xy_f(31 downto 16)) + snake_speed);
                    when("001") =>       --Bajamos
                    --Movemos la cabeza del snake hacia abajo y los eslabones recuerdan la posición anterior
                        cabeza_snake_xy_f(15 downto 0) := std_logic_vector(signed(cabeza_snake_xy_f(15 downto 0)) + snake_speed);
                    when("010") =>       --Izquierda
                    --Movemos la cabeza del snake hacia la izquierda y los eslabones recuerdan la posición anterior
                        cabeza_snake_xy_f(31 downto 16) := std_logic_vector(signed(cabeza_snake_xy_f(31 downto 16)) - snake_speed);
                    when others =>       --Cualquier otro caso (vamos hacia abajo)
                        cabeza_snake_xy_f(15 downto 0) := std_logic_vector(signed(cabeza_snake_xy_f(15 downto 0)) - snake_speed);                    
                end case;
                --La posición de los eslabones siguiente es la anterior (recuerdo de posición)
                for i in snake_length_max - 1 downto 1 loop
                    sig_GRID_SNAKE_xy(i) <= sig_GRID_SNAKE_xy(i - 1);
                end loop;
                --Metemos otro eslabón en la serpiente
                sig_GRID_SNAKE_xy(0) <= cabeza_snake_xy_f;
                --Verificación del choque de la cabeza de la serpiente con los bordes
                if (signed(cabeza_snake_xy_f(31 downto 16)) < 0 or --Centro Y
                    signed(cabeza_snake_xy_f(31 downto 16)) >= screen_width or --Borde Y
                    signed(cabeza_snake_xy_f(15 downto 0)) < 0 or  --Centro X
                    signed(cabeza_snake_xy_f(15 downto 0)) >= screen_height) then --Borde X
                --Si se choca contra los bordes perdemos
                    sig_lose<='1';
                end if;
                
                --Si la cuenta de eslabones es menor a 101 aumentamos la cuenta
                if count < 101 then
                    count := count + 1;
                end if;
                
                --Si la cuenta supera 100 podemos comernos a nosotros mismos
                if count > 100 then
                --Si la serpiente choca contra sí misma
                    for i in snake_length_max - 1 downto 1 loop
                        if (i < longitud_snake_f) then
                        --Mostramos con un LED
                         s_led_choque<='1';
                            dx := abs(signed(cabeza_snake_xy_f(31 downto 16)) - signed(sig_GRID_SNAKE_xy(i)(31 downto 16)));
                            dy := abs(signed(cabeza_snake_xy_f(15 downto 0))  - signed(sig_GRID_SNAKE_xy(i)(15 downto 0)));
                            if (dx = 0 and dy = 0) then 
                            --Perdemos      
                                sig_lose <= '1';
                            end if;
                        end if;
                    end loop;
                end if;
    
                --Si la distancia a la comida es lo suficientemente corta
                dx := abs(signed(cabeza_snake_xy_f(31 downto 16)) - signed(cabeza_snake_xy_f(31 downto 16)));
                dy := abs(signed(cabeza_snake_xy_f(15 downto 0))  - signed(cabeza_snake_xy_f(15 downto 0)));
                if (dy < (food_width + head_width) / 2 and
                    dx < (food_width + head_width) / 2) then
                    --Crecemos la serpiente
                    longitud_snake_f := longitud_snake_f + grow;
                    --Comemos la manzana y la recolocamos
                    manzana_xy_f  := std_logic_vector(random_xy);
                end if;
                
                --Si la longitud de la serpiente lega al máximo acaba el juego
                if longitud_snake_f > snake_length_max then 
                    sig_lose <= '1';
                end if;
            end if;
    end process;
    --Depuración para ver si la serpiente se choca contra sí misma
led_choque<=s_led_choque;


--Generación de números aleatorios
ramdom_number_gen:
--Actualizamos con un reloj de 108MHz
    process(clk_108Mhz)
    --Posición aleatoria en X
        variable random_x : unsigned(15 downto 0) := (others => '0');
    --Posición aleatoria en Y
        variable random_y : unsigned(15 downto 0) := (others => '0');
    begin
    --Al darse un flanco de subida de reloj
        if (rising_edge(clk_108Mhz)) then
    --Damos una posición aleatoria entre la anchura de pantalla -14 píxeles y 16 píxeles para no dejar la comida al límite
            if (random_x = to_unsigned(screen_width - 14, 16)) then 
                random_x := (others => '0');
            end if;
    --Damos una posición aleatoria entre la altura de pantalla -14 píxeles y 16 píxeles para no dejar la comida al límite
            if (random_y = to_unsigned(screen_height - 14, 16)) then 
                random_y := (others => '0');
            end if;
            --Sumamos 1 y 7 píxeles y asignamos las posiciones aleatorias para no dejar la comida en los bordes
            --Hacemos este ajuste porque la serpiente antes se comía 8 manzanas generadas en zonas muy cercanas, se agrandaba muy rápido y el juego acababa muy pronto
            random_x := random_x + 1;
            random_y := random_y + 1;
            random_xy(31 downto 16) <= random_x + 7;
            random_xy(15 downto 0) <= random_y + 7;
        end if;
    end process;
    
--ramdom_number_gen:
--   process(clk_60hz)
--    begin
--        if rising_edge(clk_60hz) then
--            -- Generación de nuevo valor para lfsr_x (LFSR para X)
--            lfsr_x <= lfsr_x(14 downto 0) & (lfsr_x(15) xor lfsr_x(14));  -- Polinomio LFSR para 16 bits
            
--            -- Generación de nuevo valor para lfsr_y (LFSR para Y)
--            lfsr_y <= lfsr_y(14 downto 0) & (lfsr_y(15) xor lfsr_y(14));  -- Polinomio LFSR para 16 bits

--            -- Ajustar los valores dentro del rango de la pantalla (screen_width y screen_height)
--            random_xy(31 downto 16) <= lfsr_x + to_unsigned(7, 16);  -- X con un ajuste de 7
--            random_xy(15 downto 0) <= lfsr_y + to_unsigned(7, 16);  -- Y con un ajuste de 7
--        end if;
--    end process;
    
 end BEHAVIORAL;

