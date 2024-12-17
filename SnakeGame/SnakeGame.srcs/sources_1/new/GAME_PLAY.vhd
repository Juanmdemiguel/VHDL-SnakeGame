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
        
        --estado          : out STATE_T;
        estado          : out std_logic_vector (2 downto 0);
        lose            : out std_logic
        );
end entity;

architecture main of GAME_Play is

    --assume the left most xy is the head position
    signal sig_snake_length         : integer range 0 to snake_length_max;
    signal sig_snake_mesh_xy        : xys(0 to snake_length_max - 1);
    signal sig_food_xy              : xy;
    signal random_xy            : unsigned(31 downto 0);
begin

snake_move:
    process(clk_60hz, reset, random_xy)
        --speed in pixel
        constant snake_speed    : signed(15 downto 0) := to_signed(6, 16);

        variable inited                     : std_logic := '0';
        variable snake_head_xy_future       : xy := (others => '0');
        variable food_xy_future             : xy := (others => '0');
        variable snake_length_future        : integer := 0;
        variable dx, dy                     : signed(15 downto 0) := (others => '0');
    begin
        food_xy         <= food_xy_future;
        snake_length    <= snake_length_future;
        snake_mesh_xy   <= sig_snake_mesh_xy;
        
        if (reset = '1' or inited = '0') then
            --reset snake length
            snake_length_future := snake_length_begin;

            --set food position
            food_xy_future(31 downto 16) := std_logic_vector(to_signed(food_begin_x, 16));
            food_xy_future(15 downto 0) := std_logic_vector(to_signed(food_begin_y, 16));

            --set head position
            snake_head_xy_future(31 downto 16)  := std_logic_vector(to_signed(snake_begin_x , 16));
            snake_head_xy_future(15 downto 0)   := std_logic_vector(to_signed(snake_begin_y , 16));

            --set snake position
            for i in 0 to snake_length_max - 1 loop
                sig_snake_mesh_xy(i) <= snake_head_xy_future;
            end loop;
            
            inited := '1';
        elsif (rising_edge(clk_60hz)) then

                --move
                case joystick is
                    when("000") =>       --up
                        snake_head_xy_future(15 downto 0) := std_logic_vector(signed(snake_head_xy_future(15 downto 0)) - snake_speed);
                    when("011") =>       --right
                        snake_head_xy_future(31 downto 16) := std_logic_vector(signed(snake_head_xy_future(31 downto 16)) + snake_speed);
                    when("001") =>       --down
                        snake_head_xy_future(15 downto 0) := std_logic_vector(signed(snake_head_xy_future(15 downto 0)) + snake_speed);
                    when("010") =>       --left
                        snake_head_xy_future(31 downto 16) := std_logic_vector(signed(snake_head_xy_future(31 downto 16)) - snake_speed);
                    when others =>
                        snake_head_xy_future(15 downto 0) := std_logic_vector(signed(snake_head_xy_future(15 downto 0)) - snake_speed);                    
                end case;
                for i in snake_length_max - 1 downto 1 loop
                    sig_snake_mesh_xy(i) <= sig_snake_mesh_xy(i - 1);
                end loop;
                sig_snake_mesh_xy(0) <= snake_head_xy_future; --push new head to snake body queue

                --boundary check
                if (signed(snake_head_xy_future(31 downto 16)) < 0 or 
                    signed(snake_head_xy_future(31 downto 16)) >= screen_width or
                    signed(snake_head_xy_future(15 downto 0)) < 0 or
                    signed(snake_head_xy_future(15 downto 0)) >= screen_height) then
                    inited := '0';
                end if;

                --food check
                dx := abs(signed(snake_head_xy_future(31 downto 16)) - signed(food_xy_future(31 downto 16)));
                dy := abs(signed(snake_head_xy_future(15 downto 0))  - signed(food_xy_future(15 downto 0)));
                if (dy < (food_width + head_width) / 2 and
                    dx < (food_width + head_width) / 2) then
                    snake_length_future := snake_length_future + 1;
                    --change food position 
                    food_xy_future := std_logic_vector(random_xy);
                end if;
            end if;
    end process;


ramdom_number_gen:
    process(clk_60hz)
        variable random_x : unsigned(15 downto 0) := (others => '0');
        variable random_y : unsigned(15 downto 0) := (others => '0');
    begin
        if (rising_edge(clk_60hz)) then
            if (random_x = to_unsigned(screen_width - 14, 16)) then 
                random_x := (others => '0');
            end if;
            if (random_y = to_unsigned(screen_height - 14, 16)) then 
                random_y := (others => '0');
            end if;
            random_x := random_x + 1;
            random_y := random_y + 1;
            random_xy(31 downto 16) <= random_x + 7;
            random_xy(15 downto 0) <= random_y + 7;
        end if;
    end process;
    
 end main;
--architecture BEHAVIORAL of GAME_Play is
--    --Signals for FSM
--    type STATE_T is (STATE_UP,STATE_DOWN,STATE_RIGHT, STATE_LEFT, STATE_INIT);  --Tipo de datos
--    signal cur_state : STATE_T := STATE_INIT;
--    signal nxt_state : STATE_T := STATE_INIT;  --Estado actual y proximo
--    signal init_en, up_en, down_en, right_en, left_en : std_logic := '0' ; --Habilitador de estados
    
--    -- Lenght signals
--    signal snake_length_input_reg : integer range 0 to snake_length_max;
--    signal  snake_length_init_reg, snake_length_up_reg, snake_length_down_reg, snake_length_left_reg, snake_length_right_reg : integer range 0 to snake_length_max;
    
--    -- Mesh signals
--    signal snake_mesh_xy_input_reg : xys(0 to snake_length_max - 1):= (others => (others => '0'));
--    signal  snake_mesh_xy_init_reg, snake_mesh_xy_up_reg, snake_mesh_xy_down_reg, snake_mesh_xy_left_reg, snake_mesh_xy_right_reg : xys(0 to snake_length_max - 1):= (others => (others => '0'));
    
--    -- Food signals
--    signal food_xy_input_reg : xy:= (others => '0');
--    signal food_xy_init_reg, food_xy_up_reg, food_xy_down_reg, food_xy_left_reg, food_xy_right_reg : xy := (others => '0');
    
--    -- Lose signals
--    signal lose_init_sig, lose_up_sig, lose_down_sig, lose_left_sig, lose_right_sig : std_logic := '0';
    
    
--    -------------------------------Component declaration-------------------------------------------------
--component Move_Init is
--    port(
--        clk_60hz            : in  std_logic;
--        enable              : in  std_logic;
   
--        snake_length        : out integer range 0 to snake_length_max;
--        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
--        food_xy             : out xy;
        
--        --game_inited         : out std_logic;
--        lose                : out std_logic
--    );
--end component;

--component Move_Up is
--    port(
--        clk_60hz            : in  std_logic;
--        enable              : in  std_logic;
        
--        snake_length_input  : in integer range 0 to snake_length_max;
--        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
--        food_xy_input       : in xy;
        
--        snake_length        : out integer range 0 to snake_length_max;
--        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
--        food_xy             : out xy;
        
--        lose                : out std_logic
--    );
--end component;

--component Move_Down is
--    port(
--        clk_60hz            : in  std_logic;
--        enable              : in  std_logic;
        
--        snake_length_input  : in integer range 0 to snake_length_max;
--        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
--        food_xy_input       : in xy;
        
--        snake_length        : out integer range 0 to snake_length_max;
--        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
--        food_xy             : out xy;
        
--        lose                : out std_logic
--    );
--end component;

--component Move_Left is
--    port(
--        clk_60hz            : in  std_logic;
--        enable              : in  std_logic;
        
--        snake_length_input  : in integer range 0 to snake_length_max;
--        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
--        food_xy_input       : in xy;
        
--        snake_length        : out integer range 0 to snake_length_max;
--        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
--        food_xy             : out xy;
        
--        lose                : out std_logic
--    );
--end component;

--component Move_Right is
--    port(
--        clk_60hz            : in  std_logic;
--        enable              : in  std_logic;
        
--        snake_length_input  : in integer range 0 to snake_length_max;
--        snake_mesh_xy_input : in xys(0 to snake_length_max - 1);
--        food_xy_input       : in xy;
        
--        snake_length        : out integer range 0 to snake_length_max;
--        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
--        food_xy             : out xy;
       
--        lose                : out std_logic
--    );
--end component;

--    ------------------------------- End Component declaration----------------------------------------------
--begin
----State control
--with cur_state select
--estado <=   "000" when STATE_INIT,
--            "001" when STATE_UP,
--            "010" when STATE_DOWN,
--            "011" when STATE_LEFT,
--            "100" when STATE_RIGHT,
--            "111" when others;

--    Output: process(cur_state, clk_60hz)
--    begin
--    case cur_state is 
--    when STATE_INIT =>
--        snake_mesh_xy   <= snake_mesh_xy_init_reg;
--        snake_length    <= snake_length_init_reg;
--        food_xy         <= food_xy_init_reg;
--        lose            <= lose_init_sig;
--    when STATE_UP =>
--        snake_mesh_xy   <= snake_mesh_xy_up_reg;
--        snake_length    <= snake_length_up_reg;
--        food_xy         <= food_xy_up_reg;
--        lose            <= lose_up_sig;
--    when STATE_DOWN =>
--        snake_mesh_xy   <= snake_mesh_xy_down_reg;
--        snake_length    <= snake_length_down_reg;
--        food_xy         <= food_xy_down_reg;
--        lose            <= lose_down_sig;
--    when STATE_LEFT =>
--        snake_mesh_xy   <= snake_mesh_xy_left_reg;
--        snake_length    <= snake_length_left_reg;
--        food_xy         <= food_xy_left_reg;
--        lose            <= lose_left_sig;
--    when STATE_RIGHT =>
--        snake_mesh_xy   <= snake_mesh_xy_right_reg;
--        snake_length    <= snake_length_right_reg;
--        food_xy         <= food_xy_right_reg;
--        lose            <= lose_right_sig;
--    when others =>
--        snake_mesh_xy   <= snake_mesh_xy_init_reg;
--        snake_length    <= snake_length_init_reg;
--        food_xy         <= food_xy_init_reg;
--        lose            <= lose_init_sig;
--    end case;
--    end process;
    
    
--    STATE_REGISTER: process (reset, clk_60Hz)  --Registro  de estados
--      begin
--      --  if reset = '1' then            --Reset
--      --    cur_state <= STATE_INIT;
--        if rising_edge(clk_60Hz) and play = '1' then   --Cambio de estado
--          cur_state <= nxt_state;
--        end if;     
--    end process;
   
--   next_state_decoder : process(joystick)
--   begin
--        nxt_state <= cur_state;  
--    case joystick is
--                when "000" => nxt_state <= STATE_UP;    
--                when "001" => nxt_state <= STATE_DOWN;
--                when "010" => nxt_state <= STATE_LEFT;
--                when "011" => nxt_state <= STATE_RIGHT;
--                when others => nxt_state <= STATE_INIT;
--            end case;
--   end process;
   
--   out_demux: process (joystick, cur_state)  --Next state register
--      begin  
--           --   nxt_state <= cur_state;  
--        case cur_state is
--          when STATE_INIT    =>  --INICIO DEL JUEGO
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_init_reg;
--                                snake_length_input_reg    <= snake_length_init_reg;
--                                food_xy_input_reg         <= food_xy_init_reg;
----            case joystick is
----                when "000" => nxt_state <= STATE_UP;    
----                when "001" => nxt_state <= STATE_DOWN;
----                when "010" => nxt_state <= STATE_LEFT;
----                when "011" => nxt_state <= STATE_RIGHT;
----                when others => nxt_state <= STATE_INIT;
----            end case;
          
--          when STATE_UP      =>  --HACIA ARRIBA
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_up_reg;
--                                snake_length_input_reg    <= snake_length_up_reg;
--                                food_xy_input_reg         <= food_xy_up_reg;
----            case joystick is
----                when "000" => nxt_state <= STATE_UP;
----                when "001" => nxt_state <= STATE_DOWN;
----                when "010" => nxt_state <= STATE_LEFT;
----                when "011" => nxt_state <= STATE_RIGHT;
----                when others => nxt_state <= STATE_INIT;
----            end case;
          
--          when STATE_DOWN    =>  --HACIA ABAJO
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_down_reg;
--                                snake_length_input_reg    <= snake_length_down_reg;
--                                food_xy_input_reg         <= food_xy_down_reg;
----            case joystick is
----                when "000" => nxt_state <= STATE_UP;
----                when "001" => nxt_state <= STATE_DOWN;
----                when "010" => nxt_state <= STATE_LEFT;
----                when "011" => nxt_state <= STATE_RIGHT;
----                when others => nxt_state <= STATE_INIT;
----            end case;
--          when STATE_LEFT    =>  --HACIA LA IZQUIERDA
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_left_reg;
--                                snake_length_input_reg    <= snake_length_left_reg;
--                                food_xy_input_reg         <= food_xy_left_reg;
----            case joystick is
----                when "000" => nxt_state <= STATE_UP;
----                when "001" => nxt_state <= STATE_DOWN;
----                when "010" => nxt_state <= STATE_LEFT;
----                when "011" => nxt_state <= STATE_RIGHT;
----                when others => nxt_state <= STATE_INIT;
----            end case;
            
--          when STATE_RIGHT   =>  --HACIA LA DERECHA
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_right_reg;
--                                snake_length_input_reg    <= snake_length_right_reg;
--                                food_xy_input_reg         <= food_xy_right_reg;
----            case joystick is
----                when "000" => nxt_state <= STATE_UP;
----                when "001" => nxt_state <= STATE_DOWN;
----                when "010" => nxt_state <= STATE_LEFT;
----                when "011" => nxt_state <= STATE_RIGHT;
----                when others => nxt_state <= STATE_INIT;
----            end case;
--          when others       =>  
--                                snake_mesh_xy_input_reg   <= snake_mesh_xy_init_reg;
--                                snake_length_input_reg    <= snake_length_init_reg;
--                                food_xy_input_reg         <= food_xy_init_reg;
          
--        end case;
--   end process;
   
--   out_dec: process(cur_state)     --Third state // Solo entradas asincronas entre '()'
--      begin
      
--      init_en  <= '0';
--      up_en    <= '0';
--      down_en  <= '0'; 
--      right_en <= '0';
--      left_en  <= '0';
      
--        case cur_state is
--          when STATE_INIT  => init_en  <= '1'; 
--          when STATE_UP    => up_en    <= '1'; 
--          when STATE_DOWN  => down_en  <= '1'; 
--          when STATE_LEFT  => left_en  <= '1'; 
--          when STATE_RIGHT => right_en <= '1';
--          when others      => init_en  <= '1'; 
--        end case;
--   end process;
--   --------------------------------- Instances ----------------------------------------------
--    Inst_Move_Init: Move_Init
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => init_en,
        
--         snake_length        => snake_length_init_reg,
--         snake_mesh_xy       => snake_mesh_xy_init_reg,
--         food_xy             => food_xy_init_reg,
        
--         lose                => lose_init_sig
--    );

--    Inst_Move_Up: Move_Up
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => up_en,
        
--         snake_length_input  => snake_length_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_length_up_reg,
--         snake_mesh_xy       => snake_mesh_xy_up_reg,
--         food_xy             => food_xy_up_reg,
        
--         lose                => lose_up_sig
--    );
    
--    Inst_Move_Down: Move_Down
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => down_en,
        
--         snake_length_input  => snake_length_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_length_down_reg,
--         snake_mesh_xy       => snake_mesh_xy_down_reg,
--         food_xy             => food_xy_down_reg,
        
--         lose                => lose_down_sig
--    );
    
--    Inst_Move_Left: Move_Left
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => left_en,
        
--         snake_length_input  => snake_length_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_length_left_reg,
--         snake_mesh_xy       => snake_mesh_xy_left_reg,
--         food_xy             => food_xy_left_reg,
        
--         lose                => lose_left_sig
--    );
    
--    Inst_Move_Right: Move_Right
--       PORT MAP (
--         clk_60hz            => clk_60hz,
--         enable              => right_en,
        
--         snake_length_input  => snake_length_input_reg,
--         snake_mesh_xy_input => snake_mesh_xy_input_reg,
--         food_xy_input       => food_xy_input_reg,
        
--         snake_length        => snake_length_right_reg,
--         snake_mesh_xy       => snake_mesh_xy_right_reg,
--         food_xy             => food_xy_right_reg,
        
--         lose                => lose_right_sig
--    );
--   --------------------------------- End Instances ----------------------------------------------

--end BEHAVIORAL;

