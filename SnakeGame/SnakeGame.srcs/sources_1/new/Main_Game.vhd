library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Entradas y salidas de la FMS
entity Main_Game is
  port(
	    BUTTON     :  in std_logic; --Botón central para actualizar la máquina de estados
	    LOSE       :  inout std_logic; --Señal que muestra cuándo pierdes
        CLK_100MHz :  in std_logic; --Reloj central
        STATE      :  out std_logic_vector(1 downto 0) --Salida del estado en el que se está
    );
end Main_Game;

--Funcionamiento de la FMS
architecture Structural of Main_Game is

--Estados en los que se va a encontrar la máquina
    Type STATE_T is (S0_START, S1_GAME, S2_GO);
    signal cur_state : STATE_T := S0_START; -- Estado actual inicializado a START
    signal nxt_state : STATE_T;             -- Estado siguiente
    signal counter   : integer range 0 to 200_000_000 := 0; -- Contador de ciclos para S2_GO
    signal s_lose :std_logic;
    
begin

    -- A cada flanco de reloj actualizaremos el estado haciendo que pase al siguiente
    state_register: process (CLK_100MHz)
    begin
        if rising_edge(CLK_100MHz) then
            cur_state <= nxt_state;
        end if;
    end process;

    -- Lógica de la FMS (Lose y Button a la L.Sensibilidad para que puedan actualizar directamente)
    next_st_dec : process(cur_state, LOSE, BUTTON)
    begin
        nxt_state <= cur_state; -- Por defecto, permanece en el estado actual
        case cur_state is
            when S0_START => --Si el estado es START
                if BUTTON = '1' then --Si se pulsa el botón
                    nxt_state <= S1_GAME; --Comenzaremos el juego
                    s_lose<='0'; --Se pone lose a cero para recargar el juego
                end if;
            when S1_GAME => --Si estamos jugando
                if (LOSE = '1' or BUTTON = '1') then --Perdemos o se pulsa el botón central
                    nxt_state <= S2_GO; --Pasamos a GAME OVER
                    s_lose<='1'; --Ponemos la variable lose a 1
                end if;
            when S2_GO => --Si estamos en GAME OVER 
                if BUTTON = '1' then --Pulsamos el botón para volver a jugar
                    nxt_state <= S0_START; --El siguiente estado será START nuevamente
                    s_lose<='0'; --La señal lose se pondrá a cero para recargar el juego
                end if;
            when others => --Si nos salimos de la máquina de estados forzaremos volver a START
                nxt_state <= S0_START;
        end case;
    end process;


   --Se muestran salidas de los estados para poder ver que funciona la máquina de estado con LEDs
    out_dec : process(cur_state) --Actualizamos las salidas al cambiar el estado
    begin
        case cur_state is
            when S0_START => --Al estado START le corresponde 00
                STATE <= "00";
            when S1_GAME =>  --Al juego le corresponde 01
                STATE <= "01";
            when S2_GO =>    --Al estado de GAME OVER le corresponde 01
                STATE <= "10";
            when others =>   --Si nos salimos de la máquina de estados
                STATE <= "00";
        end case;
    end process;

end Structural;

