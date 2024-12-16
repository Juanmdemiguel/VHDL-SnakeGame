library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (
        CLK100MHZ : in STD_LOGIC;
        PS2_CLK : in STD_LOGIC;
        PS2_DATA : in STD_LOGIC;
        RESET_TECLADO : in STD_LOGIC;
        SEG : out STD_LOGIC_VECTOR(6 downto 0);
        AN : out STD_LOGIC_VECTOR(7 downto 0);
        DP : out STD_LOGIC;
        UART_TXD : out STD_LOGIC;
        SALIDA_ARRIBA : out STD_LOGIC;
        SALIDA_ABAJO : out STD_LOGIC;
        SALIDA_IZQUIERDA : out STD_LOGIC;
        SALIDA_DERECHA : out STD_LOGIC        
    );
end top;

architecture Behavioral of top is

    signal CLK50MHZ : STD_LOGIC := '0';
    signal keycode : STD_LOGIC_VECTOR(31 downto 0);

begin

    -- Generate 50 MHz clock
    process(CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            CLK50MHZ <= not CLK50MHZ;
        end if;
    end process;

    -- Instantiate the PS2Receiver module
    keyboard: entity work.PS2Receiver
        port map (
            clk => CLK50MHZ,
            kclk => PS2_CLK,
            kdata => PS2_DATA,
            keycodeout => keycode
        );

    -- Instantiate the seg7decimal module
    sevenSeg: entity work.MAQUINA_ESTADOS_TECLADO
        port map (
            x => keycode,
            clk => CLK100MHZ,
            seg => SEG,
            an => AN,
            dp => DP,
            reset=> reset_teclado,
            
            arriba=>SALIDA_ARRIBA,
            abajo=>SALIDA_ABAJO,
            izquierda=>SALIDA_IZQUIERDA,
            derecha=>SALIDA_DERECHA
        );

end Behavioral;
