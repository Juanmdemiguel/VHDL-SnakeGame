----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2024 10:24:40
-- Design Name: 
-- Module Name: TOP_2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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
        
        --button_up      : in std_logic;
        --button_down    : in std_logic;
        --button_left    : in std_logic;
        --button_right   : in std_logic;
        button_center  : in std_logic;
        
        --VGA output
        HSync, VSync   : out std_logic;
        Red,Green,Blue : out std_logic_vector(3 downto 0);
        
        --Led de testeo---------------------------------------------------------------------
        LEDs           : out std_logic_vector(4 downto 0);
        --Testeo----------------------------------------------------------------------------
--        sig_buttons_out: out std_logic_vector(2 downto 0);
--        sig_buttons_lock_out: out std_logic_vector(2 downto 0);
--        sig_butEDGED_out: out std_logic_vector(2 downto 0):= "000";
--        clk_FSM_out, clk_SC_out, clk_CV_out, clk_EDGE_out : out std_logic;
--        clk_108MHz     : out std_logic;
--        clk_60Hz       : out std_logic;
--        sig_lose_out   : out std_logic;
--        sig_state_out  : out std_logic_vector(1 downto 0);
--        sig_snake_length_out   : out integer range 0 to snake_length_max;
--        sig_snake_mesh_xy_out  : out xys(0 to snake_length_max - 1);
--        sig_food_xy_out        : out xy;
--        estado_juego           : out std_logic_vector (2 downto 0)
        
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
        SALIDA_DERECHA : out STD_LOGIC --Señal para mover la serpiente hacia la derecha 
         );
end TOP_2;



architecture Behavioral of TOP_2 is
                -----------------------------------------SIGNALS-----------------------------------------------------
                -- CLOCK SIGNALS --
                signal sig_108MHz : std_logic;
                signal sig_60Hz : std_logic;
                signal clk_PLL, clk_FSM, clk_SC, clk_CV, clk_EDGE,clk_TEC : std_logic;
                -- BUTTONS SIGNALS --
                
                signal sig_buttons : std_logic_vector(2 downto 0); --Used in START and GAMEOVER
                signal sig_buttons_lock : std_logic_vector(2 downto 0);
                signal sig_butEDGED : std_logic_vector(2 downto 0);
                -- GAME SIGNALS --
                signal sig_lose : std_logic :='0';
                signal STATE : std_logic_vector(1 downto 0);
                signal sig_snake_length   : integer range 0 to snake_length_max;
                signal sig_snake_mesh_xy  : xys(0 to snake_length_max - 1):= (others => (others => '0'));
                signal sig_food_xy        : xy:= (others => '0'); 
                -- SCALED STRING SIGNALS --
                signal start    :  big_letter_array(0 to 4);
                signal gameover :  big_letter_array(0 to 8);
                -- TEST ONLY SIGNALS --
                signal sig_estado_juego          : std_logic_vector (2 downto 0);
                
               signal teclado_arriba :std_logic;
               signal teclado_abajo :std_logic;
               signal teclado_izquierda :std_logic;
               signal teclado_derecha :std_logic;
-----------------------------------------------COMPONENTS FOR DATA PROCESSING-----------------------------------------
 COMPONENT Scaled_String 
    Port (
        clk : in std_logic;
        GAME_OVER: out big_letter_array(0 to 8);
        START    : out big_letter_array(0 to 4)
      );
END COMPONENT;
COMPONENT Clock_distributor
    Port ( 
        clk_in : in STD_LOGIC;
        clk_out1 : out STD_LOGIC;
        clk_out2 : out STD_LOGIC;
        clk_out3 : out STD_LOGIC;
        clk_out4 : out STD_LOGIC;
        clk_out5 : out STD_LOGIC
     );
END COMPONENT;
COMPONENT PLL100to108
    Port (
        clk_in1  : in std_logic;
        clk_out1 : out std_logic
     );
END COMPONENT;
COMPONENT Clock_Converter
    Port (
        clk_in   : in  std_logic;
        clk_out  : out std_logic   
     );
END COMPONENT;
COMPONENT BUTTONS_Sync 
    Port ( 
        clk_60Hz : in std_logic;
        button_up_input : in std_logic;
        button_down_input : in std_logic;
        button_left_input : in std_logic;
        button_right_input : in std_logic;
        button_center_input : in std_logic;
        button_output : out std_logic_vector(2 downto 0)    
    );
END COMPONENT;
 --component to lock the buttons signal
COMPONENT BUTTON_Lock 
    Port ( 
        clk_60Hz       : in std_logic;
        enable         : in std_logic;
        buttons_input  : in std_logic_vector (2 downto 0);
        buttons_output : out std_logic_vector (2 downto 0)   
    );
END COMPONENT;
COMPONENT EDGEDTCTR
    Port (
        CLK : in STD_LOGIC;
        SYNC_IN : in STD_LOGIC_VECTOR(2 downto 0);
        EDGE : out STD_LOGIC_VECTOR(2 downto 0)
    );
END COMPONENT;
COMPONENT Main_Game
    Port (
	    BUTTON     :  in std_logic_vector(2 downto 0);
	    LOSE       :  in std_logic;
        CLK_100MHz :  in std_logic;
        STATE      :  out std_logic_vector(1 downto 0)
    );
END COMPONENT;
-- component of main game logic
COMPONENT GAME_Play
    Port(
        clk_60hz        : in  std_logic;
        reset           : in std_logic;
        play            : in std_logic;
        joystick        : in std_logic_vector(2 downto 0);
        
        snake_length    : out integer range 0 to snake_length_max;
        snake_mesh_xy   : out xys(0 to snake_length_max - 1);
        food_xy         : out xy;
        estado          : out std_logic_vector (2 downto 0);
        lose            : out std_logic
    );
END COMPONENT;
-- Component for VGA
COMPONENT VGA_Manager 
  Port ( 
        START           : in big_letter_array(0 to 4);
        GAMEOVER        : in big_letter_array(0 to 8);
        mode            : in std_logic_vector(1 downto 0);
        clk             : in std_logic;
        snake_length    : in  integer range 0 to 20; 
        snake_mesh_xy   : in  xys(0 to snake_length_max-1);
        food_xy         : in xy;
        HSync, VSync    : out std_logic;
        red, green, blue: out std_logic_vector(3 downto 0)
        
);
END COMPONENT;

COMPONENT TOP_TECLADO
    port (
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
    elsif sig_buttons = "100" then 
        sig_buttons_lock <= "100";                   
    end if;
end process;



-- provides the strings for the start and gameover state
Inst_ScaledString : Scaled_String 
    PORT MAP(
      clk => clk_SC,
      GAME_OVER => gameover,
      START    => start
    );
Inst_ClockDistributor : Clock_distributor
    PORT MAP ( 
            clk_in   => clk,
            clk_out1 => clk_FSM,
            clk_out2 => clk_SC,
            clk_out3 => clk_CV,
            clk_out4 => clk_EDGE,
            clk_out5 => clk_TEC
    );
Inst_PLL: PLL100to108
    PORT MAP(
            clk_in1  => clk,
            clk_out1 => sig_108MHz
    );
Inst_Clock_Converter: Clock_Converter 
     PORT MAP (
            clk_in              =>  clk_CV,
            clk_out             =>  sig_60Hz
    );
Inst_Buttons_Sync: BUTTONS_Sync
     PORT MAP (
            clk_60Hz            => sig_60Hz,
            button_up_input     => teclado_arriba,
            button_down_input   => teclado_abajo,
            button_left_input   => teclado_izquierda,
            button_right_input  => teclado_derecha,
            button_center_input => button_center,
            button_output       => sig_buttons
    );
---- Sync of buttons with clock
--    Inst_Buttons_Lock: BUTTON_Lock
--     PORT MAP (
--        clk_60Hz       => sig_60Hz,
--        enable         => STATE(0),
--        buttons_input  => sig_buttons,
--        buttons_output => sig_buttons_lock
--    );

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
        reset           => '0',
        play            => STATE(0),
        joystick        => sig_buttons_lock,
        
        snake_length    => sig_snake_length,
        snake_mesh_xy   => sig_snake_mesh_xy,
        food_xy         => sig_food_xy,
        estado          => sig_estado_juego,
        lose            => sig_lose
    );
-- -- Inputs draw depending on the state
    Inst_VGA_Manager: VGA_Manager
      PORT MAP (
        START            => start,
        GAMEOVER         => gameover,
        mode             => STATE,
        clk              => sig_108MHz,
        snake_length	 => sig_snake_length,
        snake_mesh_xy	 => sig_snake_mesh_xy,
        food_xy          => sig_food_xy,
        HSync            => HSync,
        VSync            => VSync,
        red              => Red,
        green            => Green,
        blue             => Blue
    );
    
    ------------------------------------------------TESTEO---------------------------------------------

    with sig_buttons select 
            LEDs <= "10000" when "000" ,
                    "01000" when "001" ,
                    "00100" when "010" ,
                    "00010" when "011" ,
                    "00001" when "100" ,
                    "00000" when others;
                
--    sig_buttons_out       <= sig_buttons;
--    sig_buttons_lock_out  <= sig_buttons_lock;
--    sig_butEDGED_out      <= sig_butEDGED;
    
--    sig_lose_out <= sig_lose;
--    sig_state_out <= state;
--    sig_snake_length_out <= sig_snake_length;
--    sig_snake_mesh_xy_out <= sig_snake_mesh_xy;
--    sig_food_xy_out <= sig_food_xy; 
--    estado_juego <= sig_estado_juego;
    
--    clk_FSM_out     <= clk_FSM;
--    clk_SC_out      <= clk_SC;
--    clk_CV_out      <= clk_CV;
--    clk_EDGE_out    <= clk_EDGE;
--    clk_108MHz      <= sig_108MHz;
--    clk_60Hz        <= sig_60Hz;
    
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
end Behavioral;