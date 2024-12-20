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
        clk_108Mhz      : in  std_logic;
        reset           : in std_logic;
        play            : in std_logic;
        joystick        : in std_logic_vector(2 downto 0);
        
        snake_length    : out integer range 0 to snake_length_max;
        snake_mesh_xy   : out xys(0 to snake_length_max - 1);
        food_xy         : out xy;
        
        estado          : out std_logic_vector (2 downto 0);
        lose            : out std_logic;
        
        led_choque      : out std_logic
        );
end entity;

architecture BEHAVIORAL of GAME_Play is

    --assume the left most xy is the head position
    --signal sig_snake_length         : integer range 0 to snake_length_max;
    signal sig_snake_mesh_xy        : xys(0 to snake_length_max - 1);
    signal sig_food_xy              : xy;
    signal random_xy                : unsigned(31 downto 0);
    signal sig_lose                 : std_logic :='0';
    signal inited                   : std_logic := '0';
    signal s_led_choque             : std_logic := '0';
begin
lose<= sig_lose;
snake_move:
    process(clk_60hz, reset, random_xy, play)
        --speed in pixel
        constant snake_speed    : signed(15 downto 0) := to_signed(6, 16);

        
        variable snake_head_xy_future       : xy := (others => '0');
        variable food_xy_future             : xy := (others => '0');
        variable snake_length_future        : integer := 0;
        variable dx, dy                     : signed(15 downto 0) := (others => '0');
        variable count                      : integer := 0;
    begin
        food_xy         <= food_xy_future;
        snake_length    <= snake_length_future;
        snake_mesh_xy   <= sig_snake_mesh_xy;
        
        if (reset = '1' or inited = '0' or play = '0') then
            --reset snake length
            snake_length_future := snake_length_begin;
            count := 0;

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
            sig_lose <= '0';
            
            inited <= '1';
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
                    sig_lose<='1';
                end if;
                
                if count < 101 then
                    count := count + 1;
                end if;
                
                if count > 100 then
                    for i in snake_length_max - 1 downto 1 loop
                        if (i < snake_length_future) then
                         s_led_choque<='1';
                            dx := abs(signed(snake_head_xy_future(31 downto 16)) - signed(sig_snake_mesh_xy(i)(31 downto 16)));
                            dy := abs(signed(snake_head_xy_future(15 downto 0))  - signed(sig_snake_mesh_xy(i)(15 downto 0)));
                            if (dx = 0 and dy = 0) then          --Compruebación de choque con serpiente
                                sig_lose <= '1';
                            end if;
                        end if;
                    end loop;
                end if;
    
                --food check
                dx := abs(signed(snake_head_xy_future(31 downto 16)) - signed(food_xy_future(31 downto 16)));
                dy := abs(signed(snake_head_xy_future(15 downto 0))  - signed(food_xy_future(15 downto 0)));
                if (dy < (food_width + head_width) / 2 and
                    dx < (food_width + head_width) / 2) then
                    snake_length_future := snake_length_future + grow;
                    --change food position 
                    food_xy_future := std_logic_vector(random_xy);
                end if;
                
                if snake_length_future > snake_length_max then 
                    sig_lose <= '1';
                end if;
            end if;
    end process;
led_choque<=s_led_choque;

ramdom_number_gen:
    process(clk_108Mhz)
        variable random_x : unsigned(15 downto 0) := (others => '0');
        variable random_y : unsigned(15 downto 0) := (others => '0');
    begin
        if (rising_edge(clk_108Mhz)) then
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

