----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: TOP_TECLADO
-- Module Name: TOP_TECLADO - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Entity in charge of the connection with the keyboard
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Entidad general de entradas por teclado
entity TOP_TECLADO is
    Port (
        CLK100MHZ : in STD_LOGIC; --Entra el reloj de la FPGA a 100 MHZ
        PS2_CLK : in STD_LOGIC; --Reloj para el comunicador USB
        PS2_DATA : in STD_LOGIC; --Datos de las teclas devueltos codificados
        RESET_TECLADO : in STD_LOGIC; --Reset que va al teclado para ponerlo a defecto
        SEG : out STD_LOGIC_VECTOR(6 downto 0); --Salida de displays de 7 segmentos
        AN : out STD_LOGIC_VECTOR(7 downto 0); --Selector de los displays de 7 segmentos
        DP : out STD_LOGIC; --Variable usada para poner o quitar los puntos de los displays
        UART_TXD : out STD_LOGIC; 
        SALIDA_ARRIBA : out STD_LOGIC; --Señal para mover la serpiente hacia arriba
        SALIDA_ABAJO : out STD_LOGIC; --Señal para mover la serpiente hacia abajo
        SALIDA_IZQUIERDA : out STD_LOGIC; --Señal para mover la serpiente hacia la izquierda
        SALIDA_DERECHA : out STD_LOGIC --Señal para mover la serpiente hacia la derecha 
    );
end TOP_TECLADO;

--Entidades englobadas por el teclado
architecture Behavioral of TOP_TECLADO is

--Reloj auxiliar para la comunicación con el teclado por USB
    signal CLK50MHZ : STD_LOGIC := '0';
--Datos recogidos con el teclado
    signal keycode : STD_LOGIC_VECTOR(31 downto 0);

begin

    --Generamos un reloj de 50 MHZ que espera dos flancos del reloj de 100 MHz para dar uno de 50 MHz
    --Prescaler de uno
    process(CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            CLK50MHZ <= not CLK50MHZ;
        end if;
    end process;

    -- Instanciamos el modulo receptor (IP de DIGILENT en VERILOG)
    -- No sé qué hay dentro. Nos interesa obtener las codificaciones de las teclas
    keyboard: entity work.PS2Receiver
        port map (
            clk => CLK50MHZ, --Entrada del reloj a 50 MHz
            kclk => PS2_CLK, --Reloj auxiliar de entrada para el protocolo
            kdata => PS2_DATA, --Datos de salida
            keycodeout => keycode --Datos de las teclas codificados
        );

    -- Instanciamos la máquina de estados para enclavar las señales proporcionadas por el teclado.
    --Queremos llevar un control de la serpiente restringiendo su movimiento para que no se de la vuelta
    sevenSeg: entity work.MAQUINA_ESTADOS_TECLADO
        port map (
            x => keycode, --Código de las teclas
            clk => CLK100MHZ, --Reloj a 100 MHz
            seg => SEG, --Array para los LEDs de los displays de 7 segmentos
            an => AN, --Ánodos que queremos activar (Displays a activar)
            dp => DP, --Habilitación o no de los puntos de los displays
            reset=> reset_teclado, --Reset para la máquina de estado
            
            arriba=>SALIDA_ARRIBA, --Señal de subida sacada de la máquina de estado
            abajo=>SALIDA_ABAJO, --Señal de bajada sacada de la máquina de estado
            izquierda=>SALIDA_IZQUIERDA, --Señal de izquierda sacada de la máquina de estado
            derecha=>SALIDA_DERECHA --Señal de derecha sacada de la máquina de estado
        );

end Behavioral;