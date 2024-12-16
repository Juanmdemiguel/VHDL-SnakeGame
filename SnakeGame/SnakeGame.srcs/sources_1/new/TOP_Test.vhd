----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: VGA
-- Module Name: VGA_Sync - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Sincroniza el pulso de la pantalla vga con los pixeles del mismo y emite la zona visible 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.Types.ALL;
use work.Letters.ALL;



ENTITY top is

    PORT (  
        clk            : in std_logic;
        reset          : in std_logic;
        button_up      : in std_logic;
        button_down    : in std_logic;
        button_left    : in std_logic;
        button_right   : in std_logic;
        button_center  : in std_logic;
        
        --VGA output
        HSync, VSync   : out std_logic;
        Red,Green,Blue : out std_logic_vector(3 downto 0);
        
        --Debug Leds
        LEDs           : out std_logic_vector(4 downto 0);
        LED            : out std_logic_vector(2 downto 0)
    );
    
END top;

architecture Structural of top is
        -- signals for clock manager
            signal clk_PLL, clk_FSM, clk_SC, clk_CV, clk_EDGE : std_logic;
            signal sig_60Hz   : std_logic;
            signal sig_108MHz : std_logic;
        
        -- signals for VGA manager  
            signal sig_snake_length   : integer range 0 to snake_length_max;
            signal SyncEnable         : std_logic;
            signal row_i, col_i       : std_logic_vector(15 downto 0); 
            signal sig_snake_mesh_xy  : xys(0 to snake_length_max - 1):= (others => (others => '0'));
            signal sig_food_xy        : xy:= (others => '0'); 

        -- signals for scaled string
            signal start    :  big_letter_array(0 to 4);
            signal gameover :  big_letter_array(0 to 8);
            
        --signals for gameplay
            signal GAMESTATE: std_logic_vector (2 downto 0);
            
        -- signals for main FSM
            signal STATE : std_logic_vector(1 downto 0);
            signal sig_lose : std_logic := '0';
         
        -- signals for buttons
            signal sig_buttons : std_logic_vector(2 downto 0); --Used in START and GAMEOVER
            signal sig_buttons_lock : std_logic_vector(2 downto 0); --Used in GAMEPLAY
            signal sig_butEdged : std_logic_vector(2 downto 0);
            
            
-- Component declaration   
-- Components for data processing
 COMPONENT Scaled_String 
     port(
      clk : in std_logic;
      GAME_OVER: out big_letter_array(0 to 8);
      START    : out big_letter_array(0 to 4)
      );
 END COMPONENT;
 
 COMPONENT EDGEDTCTR
PORT(
    CLK : in STD_LOGIC;
    SYNC_IN : in STD_LOGIC_VECTOR(2 downto 0);
    EDGE : out STD_LOGIC_VECTOR(2 downto 0)
);
END COMPONENT;

-- COMPONENT Clock_Manager
--    port (
--        clk_input   : in  std_logic;  
--       -- clk_108MHz  : out  std_logic; 
--        clk_60Hz    : out std_logic   
--     );
--END COMPONENT;

COMPONENT Clock_distributor
    Port ( clk_in : in STD_LOGIC;
           clk_out1 : out STD_LOGIC;
           clk_out2 : out STD_LOGIC;
           clk_out3 : out STD_LOGIC;
           clk_out4 : out STD_LOGIC
          );
END COMPONENT;

    -- main FSM
COMPONENT Main_Game
  port(
	    BUTTON     :  in std_logic_vector(2 downto 0);
	    LOSE       :  in std_logic;
        CLK_100MHz :  in std_logic;
        STATE      :  out std_logic_vector(1 downto 0)
    );
end COMPONENT;

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

    -- component of main game logic
COMPONENT GAME_Play
    port(
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

    -- component for buttons sync
COMPONENT BUTTONS_Sync 
    port ( 
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
    port ( 
        clk_60Hz       : in std_logic;
        enable         : in std_logic;
        buttons_input  : in std_logic_vector (2 downto 0);
        buttons_output : out std_logic_vector (2 downto 0)   
    );
END COMPONENT;

COMPONENT PLL100to108
    port(
    clk_in1  : in std_logic;
    clk_out1 : out std_logic);
END COMPONENT;

COMPONENT Clock_Converter
    port (
        clk_in   : in  std_logic;
        clk_out  : out std_logic   
     );
END COMPONENT;


BEGIN

Inst_ClockDistributor : Clock_distributor
    Port map ( 
           clk_in   => clk,
           clk_out1 => clk_FSM,
           clk_out2 => clk_SC,
           clk_out3 => clk_CV,
           clk_out4 => clk_EDGE
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
    
    Inst_edge: EDGEDTCTR  PORT MAP (
     CLK =>clk_EDGE,
     SYNC_IN =>sig_buttons,
     EDGE => sig_butEDGED
);

 -- Both instances provide the program with useful data structures 
    -- Provides different frequencies   
--    Inst_Clock_Manager: Clock_Manager
--     PORT MAP (
--        clk_input              =>  clk,
--       -- clk_108MHz             =>  sig_108MHz,
--        clk_60Hz               =>  sig_60Hz
--    );

    -- provides the strings for the start and gameover state
   Inst_ScaledString : Scaled_String 
     port map(
      clk => clk_SC,
      GAME_OVER => gameover,
      START    => start
      );
 
-- -- State declaration, outputs the current state
Inst_MainFSM : Main_Game
  port map(
	    BUTTON     => sig_butEDGED,
	    LOSE       => sig_lose,
        CLK_100MHz => clk_FSM,
        STATE      => STATE
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
   
   -- General game logic, outputs data for the vga to draw
    Inst_GAME_Play: GAME_Play 
     PORT MAP (
        clk_60hz        => sig_60Hz,
        reset           => reset,
        play            => STATE(0),
        joystick        => sig_buttons_lock,
        
        snake_length    => sig_snake_length,
        snake_mesh_xy   => sig_snake_mesh_xy,
        food_xy         => sig_food_xy,
        estado         => GAMESTATE,
        lose            => sig_lose
    );
    
--    -- Sync of buttons with clock
    Inst_Buttons_Sync: BUTTONS_Sync
     PORT MAP (
            clk_60Hz => sig_60Hz,
            
            button_up_input     => button_up,
            button_down_input   => button_down,
            button_left_input   => button_left,
            button_right_input  => button_right,
            button_center_input => button_center,
            
            button_output => sig_buttons
    );
    with sig_buttons_lock select 
        LEDs <= "10000" when "000" ,
        "01000" when "001" ,
        "00100" when "010" ,
        "00010" when "011" ,
        "00001" when "100" ,
        "00000" when others;
      
     with GAMESTATE select  
      LED <= 
       "111" when "000", -- init
       "001" when "001", -- up
       "010" when "010", -- down
       "011" when "011", -- left
       "100" when "100", -- right
       "000" when others; 
    
    -- Sync of buttons with clock
    Inst_Buttons_Lock: BUTTON_Lock
     PORT MAP (
        clk_60Hz       => sig_60Hz,
        enable         => STATE(0),
        buttons_input  => sig_buttons,
        buttons_output => sig_buttons_lock
    );
        
end architecture;


