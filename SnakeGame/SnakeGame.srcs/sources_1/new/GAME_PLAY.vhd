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
        teclado         : in std_logic_vector(2 downto 0);
        
        pyton_length    : out integer range 0 to pyton_length_max;
        pyton_mesh_pos  : out xys(0 to pyton_length_max - 1);
        apple_pos       : out xy;
        
        estado          : out std_logic_vector (2 downto 0);
        lose            : out std_logic;
        
        led_choque      : out std_logic
        );
end entity;

architecture BEHAVIORAL of GAME_Play is

    --assume the left most pos is the head position
    --signal sig_pyton_length         : integer range 0 to pyton_length_max;
    signal sig_pyton_mesh_pos       : xys(0 to pyton_length_max - 1);
    signal sig_apple_pos            : xy;
    signal random_pos               : unsigned(31 downto 0);
    signal sig_lose                 : std_logic :='0';
    signal inited                   : std_logic := '0';
    signal s_led_choque             : std_logic := '0';
begin
lose<= sig_lose;
pyton_move:
    process(clk_60hz, reset, random_pos, play)
        --speed in pixel
        constant pyton_speed    : signed(15 downto 0) := to_signed(6, 16);

        
        variable pyton_head_pos_future       : xy := (others => '0');
        variable apple_pos_future             : xy := (others => '0');
        variable pyton_length_future        : integer := 0;
        variable dx, dy                     : signed(15 downto 0) := (others => '0');
        variable count                      : integer := 0;
    begin
        apple_pos         <= apple_pos_future;
        pyton_length      <= pyton_length_future;
        pyton_mesh_pos    <= sig_pyton_mesh_pos;
        
        if (reset = '1' or inited = '0' or play = '0') then
            --reset pyton length
            pyton_length_future := pyton_length_begin;
            count := 0;

            --set apple position
            apple_pos_future(31 downto 16) := std_logic_vector(to_signed(apple_begin_x, 16));
            apple_pos_future(15 downto 0) := std_logic_vector(to_signed(apple_begin_y, 16));

            --set head position
            pyton_head_pos_future(31 downto 16)  := std_logic_vector(to_signed(pyton_begin_x , 16));
            pyton_head_pos_future(15 downto 0)   := std_logic_vector(to_signed(pyton_begin_y , 16));

            --set pyton position
            for i in 0 to pyton_length_max - 1 loop
                sig_pyton_mesh_pos(i) <= pyton_head_pos_future;
            end loop;
            sig_lose <= '0';
            
            inited <= '1';
        elsif (rising_edge(clk_60hz)) then

                --move
                case teclado is
                    when("000") =>       --up
                        pyton_head_pos_future(15 downto 0) := std_logic_vector(signed(pyton_head_pos_future(15 downto 0)) - pyton_speed);
                    when("011") =>       --right
                        pyton_head_pos_future(31 downto 16) := std_logic_vector(signed(pyton_head_pos_future(31 downto 16)) + pyton_speed);
                    when("001") =>       --down
                        pyton_head_pos_future(15 downto 0) := std_logic_vector(signed(pyton_head_pos_future(15 downto 0)) + pyton_speed);
                    when("010") =>       --left
                        pyton_head_pos_future(31 downto 16) := std_logic_vector(signed(pyton_head_pos_future(31 downto 16)) - pyton_speed);
                    when others =>
                        pyton_head_pos_future(15 downto 0) := std_logic_vector(signed(pyton_head_pos_future(15 downto 0)) - pyton_speed);                    
                end case;
                for i in pyton_length_max - 1 downto 1 loop
                    sig_pyton_mesh_pos(i) <= sig_pyton_mesh_pos(i - 1);
                end loop;
                sig_pyton_mesh_pos(0) <= pyton_head_pos_future; --push new head to pyton body queue

                --boundary check
                if (signed(pyton_head_pos_future(31 downto 16)) < 0 or 
                    signed(pyton_head_pos_future(31 downto 16)) >= screen_width or
                    signed(pyton_head_pos_future(15 downto 0)) < 0 or
                    signed(pyton_head_pos_future(15 downto 0)) >= screen_height) then
                    sig_lose<='1';
                end if;
                
                if count < 101 then
                    count := count + 1;
                end if;
                
                if count > 100 then
                    for i in pyton_length_max - 1 downto 1 loop
                        if (i < pyton_length_future) then
                         s_led_choque<='1';
                            dx := abs(signed(pyton_head_pos_future(31 downto 16)) - signed(sig_pyton_mesh_pos(i)(31 downto 16)));
                            dy := abs(signed(pyton_head_pos_future(15 downto 0))  - signed(sig_pyton_mesh_pos(i)(15 downto 0)));
                            if (dx = 0 and dy = 0) then          --Compruebación de choque con serpiente
                                sig_lose <= '1';
                            end if;
                        end if;
                    end loop;
                end if;
    
                --apple check
                dx := abs(signed(pyton_head_pos_future(31 downto 16)) - signed(apple_pos_future(31 downto 16)));
                dy := abs(signed(pyton_head_pos_future(15 downto 0))  - signed(apple_pos_future(15 downto 0)));
                if (dy < (apple_width + head_width) / 2 and
                    dx < (apple_width + head_width) / 2) then
                    pyton_length_future := pyton_length_future + grow;
                    --change apple position 
                    apple_pos_future := std_logic_vector(random_pos);
                end if;
                
                if pyton_length_future > pyton_length_max then 
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
            random_pos(31 downto 16) <= random_x + 7;
            random_pos(15 downto 0) <= random_y + 7;
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
--            random_pos(31 downto 16) <= lfsr_x + to_unsigned(7, 16);  -- X con un ajuste de 7
--            random_pos(15 downto 0) <= lfsr_y + to_unsigned(7, 16);  -- Y con un ajuste de 7
--        end if;
--    end process;
    
 end BEHAVIORAL;

