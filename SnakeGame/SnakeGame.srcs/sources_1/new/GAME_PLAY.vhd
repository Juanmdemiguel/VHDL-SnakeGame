----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: GAME
-- Module Name: GAME_Move - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;

entity GAME_Play is
    port(
        clk_60hz        : in  std_logic;
        reset           : in std_logic;
        play            : in std_logic;
        joystick        : in std_logic_vector(2 downto 0);
        
        snake_length    : out integer range 0 to snake_length_max;
        snake_mesh_xy   : out xys(0 to snake_length_max - 1);
        food_xy         : out xy;
        
        lose            : out std_logic
        );
end entity;

architecture BEHAVIORAL of GAME_Play is
    --Signals
    type STATE_T is (STATE_UP,STATE_DOWN,STATE_RIGHT, STATE_LEFT, STATE_INIT);  --Tipo de datos
    signal cur_state : STATE_T := STATE_INIT;
    signal nxt_state : STATE_T;  --Estado actual y proximo
    signal init_en, up_en, down_en, right_en, left_en : std_logic := '0' ; --Habilitador de estados
    signal snake_legth_input_reg, snake_legth_output_reg : integer range 0 to snake_length_max;
    signal snake_mesh_xy_input_reg, snake_mesh_xy_output_reg : xys(0 to snake_length_max - 1);
    signal food_xy_input_reg, food_xy_output_reg : xy;
    signal lose_sig : std_logic;
    
component Move_Init is
    port(
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
   
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        --game_inited         : out std_logic;
        lose                : out std_logic
    );
end component;

component Move_Up is
    port(
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
        
        snake_length_input  : in integer range 0 to snake_length_max;
        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
        food_xy_input       : in xy;
        
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        lose                : out std_logic
    );
end component;

component Move_Down is
    port(
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
        
        snake_length_input  : in integer range 0 to snake_length_max;
        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
        food_xy_input       : in xy;
        
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        lose                : out std_logic
    );
end component;

component Move_Left is
    port(
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
        
        snake_length_input  : in integer range 0 to snake_length_max;
        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
        food_xy_input       : in xy;
        
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        lose                : out std_logic
    );
end component;

component Move_Right is
    port(
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
        
        snake_length_input  : in integer range 0 to snake_length_max;
        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
        food_xy_input       : in xy;
        
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        lose                : out std_logic
    );
end component;

begin

    snake_mesh_xy   <= snake_mesh_xy_output_reg;
    snake_length    <= snake_legth_output_reg;
    food_xy         <= food_xy_output_reg;
    
    lose            <= '1';
    
    
    STATE_REGISTER: process (reset, clk_60Hz)  --Registro  de estados
      begin
        if reset = '1' then            --Reset
          cur_state <= STATE_INIT;
          
        elsif rising_edge(clk_60Hz) then   --Cambio de estado
          cur_state <= nxt_state;
        end if;     
    end process;
   
   NEXT_STATE_REGISTER: process (play, joystick)  --Next state register
      begin
        nxt_state <= cur_state; 
        
        snake_legth_input_reg   <= snake_legth_output_reg;
        snake_mesh_xy_input_reg <= snake_mesh_xy_output_reg;
        food_xy_input_reg       <= food_xy_output_reg;
                                 
        case cur_state is
          when STATE_INIT    =>  --INICIO DEL JUEGO
            case joystick is
                when "000" => nxt_state <= STATE_UP;
                when "001" => nxt_state <= STATE_DOWN;
                when "010" => nxt_state <= STATE_LEFT;
                when "011" => nxt_state <= STATE_RIGHT;
                when others => nxt_state <= STATE_INIT;
            end case;
          
          when STATE_UP      =>  --HACIA ARRIBA
            case joystick is
                when "000" => nxt_state <= STATE_UP;
                when "001" => nxt_state <= STATE_DOWN;
                when "010" => nxt_state <= STATE_LEFT;
                when "011" => nxt_state <= STATE_RIGHT;
                when others => nxt_state <= STATE_INIT;
            end case;
          
          when STATE_DOWN    =>  --HACIA ABAJO
            case joystick is
                when "000" => nxt_state <= STATE_UP;
                when "001" => nxt_state <= STATE_DOWN;
                when "010" => nxt_state <= STATE_LEFT;
                when "011" => nxt_state <= STATE_RIGHT;
                when others => nxt_state <= STATE_INIT;
            end case;
            
          when STATE_RIGHT   =>  --HACIA LA DERECHA
            case joystick is
                when "000" => nxt_state <= STATE_UP;
                when "001" => nxt_state <= STATE_DOWN;
                when "010" => nxt_state <= STATE_LEFT;
                when "011" => nxt_state <= STATE_RIGHT;
                when others => nxt_state <= STATE_INIT;
            end case;
            
          when STATE_LEFT    =>  --HACIA LA IZQUIERDA
            case joystick is
                when "000" => nxt_state <= STATE_UP;
                when "001" => nxt_state <= STATE_DOWN;
                when "010" => nxt_state <= STATE_LEFT;
                when "011" => nxt_state <= STATE_RIGHT;
                when others => nxt_state <= STATE_INIT;
            end case;
            
          when others       =>   nxt_state <= STATE_INIT;
          
        end case;
   end process;
   
   out_dec: process(cur_state)     --Third state // Solo entradas asincronas entre '()'
      begin
      
      init_en  <= '0';
      up_en    <= '0';
      down_en  <= '0'; 
      right_en <= '0';
      left_en  <= '0';
      
        case cur_state is
          when STATE_INIT  => init_en  <= '1'; 
          when STATE_UP    => up_en    <= '1'; 
          when STATE_DOWN  => down_en  <= '1'; 
          when STATE_LEFT  => left_en  <= '1'; 
          when STATE_RIGHT => right_en <= '1'; 
          when others      => init_en  <= '1';  
        end case;
   end process;

    Inst_Move_Init: Move_Init
       PORT MAP (
         clk_60hz            => clk_60hz,
         enable              => init_en,
        
         snake_length        => snake_legth_output_reg,
         snake_mesh_xy       => snake_mesh_xy_output_reg,
         food_xy             => food_xy_output_reg,
        
         lose                => lose_sig
    );

--    Inst_Move_Up: Move_Up
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => up_en,
        
--         snake_length_input  => snake_legth_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_legth_output_reg,
--         snake_mesh_xy       => snake_mesh_xy_output_reg,
--         food_xy             => food_xy_output_reg,
        
--         lose                => lose_sig
--    );
    
--    Inst_Move_Down: Move_Down
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => down_en,
        
--         snake_length_input  => snake_legth_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_legth_output_reg,
--         snake_mesh_xy       => snake_mesh_xy_output_reg,
--         food_xy             => food_xy_output_reg,
        
--         lose                => lose_sig
--    );
    
--    Inst_Move_Left: Move_Left
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => left_en,
        
--         snake_length_input  => snake_legth_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_legth_output_reg,
--         snake_mesh_xy       => snake_mesh_xy_output_reg,
--         food_xy             => food_xy_output_reg,
        
--         lose                => lose_sig
--    );
    
--    Inst_Move_Right: Move_Right
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => right_en,
        
--         snake_length_input  => snake_legth_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_legth_output_reg,
--         snake_mesh_xy       => snake_mesh_xy_output_reg,
--         food_xy             => food_xy_output_reg,
        
--         lose                => lose_sig
--    );

end BEHAVIORAL;


