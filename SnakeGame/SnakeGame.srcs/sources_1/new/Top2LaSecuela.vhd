----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: TOP_2
-- Module Name: TOP_2 - Structural
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Main gaming entity, coordinator of the different entities
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
USE work.Types.ALL;
use work.Letters.ALL;


entity TOP_2 is
    PORT (  
        clk            : in std_logic;
        reset          : in std_logic;
        
--        button_up      : in std_logic;
--        button_down    : in std_logic;
--        button_left    : in std_logic;
--        button_right   : in std_logic;
        button_center  : in std_logic;
        
        --VGA output
        HSync, VSync   : out std_logic;
        Red,Green,Blue : out std_logic_vector(3 downto 0);
        
         --Teclado y salidas
        PS2_DATA : in STD_LOGIC; --Datos de las teclas devueltos codificados
        PS2_CLK : in STD_LOGIC; --Reloj para el comunicador USB
        
        SEG : out STD_LOGIC_VECTOR(6 downto 0); --Salida de displays de 7 segmentos
        AN : out STD_LOGIC_VECTOR(7 downto 0); --Selector de los displays de 7 segmentos
        DP : out STD_LOGIC; --Variable usada para poner o quitar los puntos de los displays
        UART_TXD : out STD_LOGIC; 
        
        SALIDA_ARRIBA : out STD_LOGIC; --Señal para mover la serpiente hacia arriba
        SALIDA_ABAJO : out STD_LOGIC; --Señal para mover la serpiente hacia abajo
        SALIDA_IZQUIERDA : out STD_LOGIC; --Señal para mover la serpiente hacia la izquierda
        SALIDA_DERECHA : out STD_LOGIC; --Señal para mover la serpiente hacia la derecha 
        
        --Led de testeo---------------------------------------------------------------------
        LEDs           : out std_logic_vector(4 downto 0);
        --Testeo----------------------------------------------------------------------------
--        sig_buttons_out        : out std_logic_vector(2 downto 0);
--        sig_buttons_lock_out   : out std_logic_vector(2 downto 0);
--        sig_butEDGED_out: out std_logic_vector(2 downto 0):= "000";
--        clk_FSM_out, clk_SC_out, clk_CV_out, clk_EDGE_out : out std_logic;
--        clk_108MHz             : out std_logic;
--        clk_60Hz               : out std_logic;
--        sig_lose_out           : out std_logic;
--        sig_state_out          : out std_logic_vector(1 downto 0);
--        sig_pyton_length_out   : out integer range 0 to pyton_length_max;
--        sig_pyton_mesh_pos_out : out xys(0 to pyton_length_max - 1);
--        sig_apple_pos_out      : out xy;
--        estado_juego           : out std_logic_vector (2 downto 0)
        led_choque               : out std_logic
         );
end TOP_2;

architecture Structural of TOP_2 is
                -----------------------------------------SIGNALS-----------------------------------------------------
                -- CLOCK SIGNALS --
                signal sig_108MHz : std_logic;
                signal sig_60Hz : std_logic;
                signal clk_FSM, clk_SC, clk_CV, clk_EDGE,clk_TEC : std_logic;
                
                -- BUTTONS SIGNALS --
                signal sig_buttons      : std_logic; --Used in START and GAMEOVER
                signal sig_buttons_lock : std_logic_vector(2 downto 0);
                signal sig_butEDGED     : std_logic;
                
                -- GAME SIGNALS --
                signal sig_lose : std_logic :='0';
                signal STATE : std_logic_vector(1 downto 0);
                signal sig_pyton_length     : integer range 0 to pyton_length_max;
                signal sig_pyton_mesh_pos   : xys(0 to pyton_length_max - 1):= (others => (others => '0'));
                signal sig_apple_pos        : xy:= (others => '0'); 
                
                -- SCALED STRING SIGNALS --
                signal start    :  big_letter_array(0 to 4);
                signal gameover :  big_letter_array(0 to 8);
                
                -- FLIPFLOP SIGNALS --
                signal sig_pyton_length_flipflop    : integer range 0 to pyton_length_max;
                signal sig_pyton_mesh_pos_flipflop  : xys(0 to pyton_length_max - 1);
                signal sig_apple_pos_flipflop       : xy;
                
                -- TEST ONLY SIGNALS --
                signal sig_estado_juego          : std_logic_vector (2 downto 0);
                
                signal teclado_arriba :std_logic;
                signal teclado_abajo :std_logic;
                signal teclado_izquierda :std_logic;
                signal teclado_derecha :std_logic;
               
-----------------------------------------------COMPONENTS FOR DATA PROCESSING-----------------------------------------

COMPONENT FLIP_FLOP_Pyton 
    Port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        pyton_length_in    : in integer range 0 to pyton_length_max;
        pyton_mesh_pos_in   : in xys(0 to pyton_length_max - 1);
        apple_pos_in         : in xy;
        pyton_length_out   : out integer range 0 to pyton_length_max;
        pyton_mesh_pos_out  : out xys(0 to pyton_length_max - 1);
        apple_pos_out        : out xy
    );
END COMPONENT;

COMPONENT Scaled_String 
    Port (
        clk : in std_logic;
        GAME_OVER: out big_letter_array(0 to 8);
        START    : out big_letter_array(0 to 4)
      );
END COMPONENT;

COMPONENT Clock_manager 
     Port (
        clk_input  : in std_logic; 
        clk_FSM    : out std_logic;
        clk_SC     : out std_logic;     
        clk_CV     : out std_logic;     
        clk_EDGE   : out std_logic;     
        clk_TEC    : out std_logic;          
        clk_108MHz : out std_logic;
        clk_60Hz   : out std_logic
);
END COMPONENT;
COMPONENT BUTTONS_Sync 
    Port ( 
        clk_60Hz : in std_logic;
        button_center_input : in std_logic;
        button_output : out std_logic  
    );
END COMPONENT;
 --component to lock the buttons signal
COMPONENT BUTTON_Lock 
    Port ( 
        clk_60Hz       : in std_logic;
        enable         : in std_logic;
        buttons_input  : in std_logic;
        buttons_output : out std_logic 
    );
END COMPONENT;
COMPONENT EDGEDTCTR
    Port (
        CLK     : in STD_LOGIC;
        SYNC_IN : in STD_LOGIC;
        EDGE    : out STD_LOGIC
    );
END COMPONENT;
COMPONENT Main_Game
    Port (
	    BUTTON     :  in std_logic;
	    LOSE       :  inout std_logic;
        CLK_100MHz :  in std_logic;
        STATE      :  out std_logic_vector(1 downto 0)
    );
END COMPONENT;
-- component of main game logic
COMPONENT GAME_Play
    Port(
        clk_60hz        : in  std_logic;
        clk_108Mhz      : in  std_logic;
        reset           : in std_logic;
        play            : in std_logic;
        teclado         : in std_logic_vector(2 downto 0);
        
        pyton_length    : out integer range 0 to pyton_length_max;
        pyton_mesh_pos  : out xys(0 to pyton_length_max - 1);
        apple_pos       : out xy;
        estado          : out std_logic_vector (2 downto 0);
        lose            : inout std_logic;
        led_choque      : out std_logic
    );
END COMPONENT;
-- Component for VGA
COMPONENT VGA_Manager 
  Port ( 
        START            : in big_letter_array(0 to 4);
        GAMEOVER         : in big_letter_array(0 to 8);
        mode             : in std_logic_vector(1 downto 0);
        clk              : in std_logic;
        pyton_length     : in  integer range 0 to pyton_length_max; 
        pyton_mesh_pos   : in  xys(0 to pyton_length_max-1);
        apple_pos        : in xy;
        HSync, VSync     : out std_logic;
        red, green, blue : out std_logic_vector(3 downto 0)
        
);
END COMPONENT;

COMPONENT TOP_TECLADO
    port (
        CLK100MHZ        : in STD_LOGIC; --Entra el reloj de la FPGA a 100 MHZ
        PS2_CLK          : in STD_LOGIC; --Reloj para el comunicador USB
        PS2_DATA         : in STD_LOGIC; --Datos de las teclas devueltos codificados
        RESET_TECLADO    : in STD_LOGIC; --Reset que va al teclado para ponerlo a defecto
        SEG              : out STD_LOGIC_VECTOR(6 downto 0); --Salida de displays de 7 segmentos
        AN               : out STD_LOGIC_VECTOR(7 downto 0); --Selector de los displays de 7 segmentos
        DP               : out STD_LOGIC; --Variable usada para poner o quitar los puntos de los displays
        UART_TXD         : out STD_LOGIC; 
        SALIDA_ARRIBA    : out STD_LOGIC; --Señal para mover la serpiente hacia arriba
        SALIDA_ABAJO     : out STD_LOGIC; --Señal para mover la serpiente hacia abajo
        SALIDA_IZQUIERDA : out STD_LOGIC; --Señal para mover la serpiente hacia la izquierda
        SALIDA_DERECHA   : out STD_LOGIC --Señal para mover la serpiente hacia la derecha   
     );
END COMPONENT;

begin  ----------------------------------------------------FUNCTIONAL CODE-------------------------------------

input_management : process(teclado_arriba,teclado_abajo,teclado_izquierda,teclado_derecha,sig_buttons)
begin
    if teclado_arriba = '1' then 
        sig_buttons_lock <= "000";
    elsif teclado_abajo = '1' then 
        sig_buttons_lock <= "001";  
    elsif teclado_izquierda = '1' then 
        sig_buttons_lock <= "010"; 
    elsif teclado_derecha = '1' then 
        sig_buttons_lock <= "011"; 
    elsif sig_buttons = '1' then 
        sig_buttons_lock <= "100";                   
    end if;
end process;

    Inst_Flip_Flop: FLIP_FLOP_Pyton
      PORT MAP (
        clk     => sig_108MHz,
        reset   => '0',
        pyton_length_in    => sig_pyton_length,
        pyton_mesh_pos_in   => sig_pyton_mesh_pos,
        apple_pos_in         => sig_apple_pos,
        pyton_length_out   => sig_pyton_length_flipflop,
        pyton_mesh_pos_out  => sig_pyton_mesh_pos_flipflop,
        apple_pos_out        => sig_apple_pos_flipflop
    );
Inst_Clock_Manager : Clock_Manager
     PORT MAP (
        clk_input   => clk,
        clk_FSM     => clk_FSM,
        clk_SC      => clk_SC,     
        clk_CV      => clk_CV,     
        clk_EDGE    => clk_EDGE,     
        clk_TEC     => clk_TEC,          
        clk_108MHz  => sig_108MHz,
        clk_60Hz    => sig_60Hz 
    );

-- provides the strings for the start and gameover state
Inst_ScaledString : Scaled_String 
     PORT MAP(
        clk       => clk_SC,
        GAME_OVER => gameover,
        START     => start
    );    

Inst_Buttons_Sync: BUTTONS_Sync
     PORT MAP (
            clk_60Hz            => sig_60Hz,
            button_center_input => button_center,
            button_output       => sig_buttons
    );


Inst_edge: EDGEDTCTR  
     PORT MAP (
            CLK         => clk_EDGE,
            SYNC_IN     => sig_buttons,
            EDGE        => sig_butEDGED
    );
-- -- State declaration, outputs the current state
Inst_MainFSM : Main_Game
     PORT MAP(
	    BUTTON     => sig_butEDGED,
	    LOSE       => sig_lose,
        CLK_100MHz => clk_FSM,
        STATE      => STATE
    );
   -- General game logic, outputs data for the vga to draw
Inst_GAME_Play: GAME_Play 
     PORT MAP (
        clk_60hz        => sig_60Hz,
        clk_108Mhz      => sig_108Mhz,
        reset           => '0',
        play            => STATE(0),
        teclado         => sig_buttons_lock,
        
        pyton_length    => sig_pyton_length,
        pyton_mesh_pos  => sig_pyton_mesh_pos,
        apple_pos       => sig_apple_pos,
        estado          => sig_estado_juego,
        lose            => sig_lose,
        led_choque      => led_choque
    );
-- -- Inputs draw depending on the state
Inst_VGA_Manager: VGA_Manager
      PORT MAP (
        START            => start,
        GAMEOVER         => gameover,
        mode             => STATE,
        clk              => sig_108MHz,
        pyton_length	 => sig_pyton_length_flipflop,
        pyton_mesh_pos   => sig_pyton_mesh_pos_flipflop,
        apple_pos        => sig_apple_pos_flipflop,
        HSync            => HSync,
        VSync            => VSync,
        red              => Red,
        green            => Green,
        blue             => Blue
    );
    
Inst_Teclado: TOP_TECLADO
     PORT MAP (
        CLK100MHZ=>clk_TEC,
        PS2_CLK=>PS2_CLK,
        PS2_DATA=>PS2_DATA,
        RESET_TECLADO=>reset,
        SEG=>seg,
        AN=>AN,
        DP=>DP,
        UART_TXD=>UART_TXD,
        SALIDA_ARRIBA=>teclado_arriba,
        SALIDA_ABAJO=>teclado_abajo,
        SALIDA_IZQUIERDA=>teclado_izquierda,
        SALIDA_DERECHA=>teclado_derecha
    );   
    
    
    SALIDA_ARRIBA <=teclado_arriba;
    SALIDA_ABAJO <=teclado_abajo;
    SALIDA_IZQUIERDA <=teclado_izquierda;
    SALIDA_DERECHA <=teclado_derecha;
    
    ------------------------------------------------TESTEO---------------------------------------------

--    with sig_buttons select 
--            LEDs <= "10000" when "000" ,
--                    "01000" when "001" ,
--                    "00100" when "010" ,
--                    "00010" when "011" ,
--                    "00001" when "100" ,
--                    "00000" when others;
                
--    sig_buttons_out       <= sig_buttons;
--    sig_buttons_lock_out  <= sig_buttons_lock;
--    sig_butEDGED_out      <= sig_butEDGED;
    
--    sig_lose_out <= sig_lose;
--    sig_state_out <= state;
--    sig_pyton_length_out <= sig_pyton_length;
--    sig_pyton_mesh_pos_out <= sig_pyton_mesh_pos;
--    sig_apple_pos_out <= sig_apple_pos; 
--    estado_juego <= sig_estado_juego;
    
--    clk_FSM_out     <= clk_FSM;
--    clk_SC_out      <= clk_SC;
--    clk_CV_out      <= clk_CV;
--    clk_EDGE_out    <= clk_EDGE;
--    clk_108MHz      <= sig_108MHz;
--    clk_60Hz        <= sig_60Hz;
    
end Structural;