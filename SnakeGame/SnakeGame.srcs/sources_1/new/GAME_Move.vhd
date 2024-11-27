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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;

entity GAME_Move is
    generic(
        screen_width        : integer := 1280;  
        screen_height       : integer := 1024;
        snake_begin_x       : integer := 300;
        snake_begin_y       : integer := 450;
        snake_length_begin  : integer := 1;
        snake_length_max    : integer := 3
        );
    port(
        clk_60hz        : in  std_logic;
        snake_length    : out integer range 0 to snake_length_max;
        snake_mesh_xy   : out xys(0 to snake_length_max - 1)
        );
end entity;

architecture BEHAVIORAL of GAME_Move is
    signal snake_mesh_xy_i        : xys(0 to snake_length_max - 1);
begin

snake_move:
    process(clk_60hz)
        --Constantes
        --Velocidad en pixel
        constant snake_speed    : signed(15 downto 0) := to_signed(1, 16);              --Constante de velocidad (6 por cada rising clk) 

        --Variables
        variable inited                     : std_logic := '0';                         --Boton de inicio
        variable snake_head_xy_future       : xy := (others => '0');                    --Posición de xy a futuro de la cabeza
        variable food_xy_future             : xy := (others => '0');                    --Posición de xy  a futuro de comida
        variable snake_length_future        : integer := 0;                             --Longitud de la serpiente a futuro
        
    begin
        snake_length    <= snake_length_future;
        if (inited = '0') then --Caso fuera del juego
        
            snake_length_future := snake_length_begin; --Resetea la longitud de la serpiente


            snake_head_xy_future(31 downto 16)  := std_logic_vector(to_signed(snake_begin_x , 16));  --Resetea la posición x de la cabeza
            snake_head_xy_future(15 downto 0)   := std_logic_vector(to_signed(snake_begin_y , 16));  --Resetea la posición y de la cabeza

            for i in 0 to snake_length_max - 1 loop
                snake_mesh_xy_i(i) <= snake_head_xy_future; --Asigna al inicio la misma posición para toda la serpiente
            end loop;
            
            inited := '1';  --Inicia el juego
            
        elsif (rising_edge(clk_60hz)) then  --Caso dentro del juego (jugando)
            --move
            snake_head_xy_future(15 downto 0) := std_logic_vector(signed(snake_head_xy_future(15 downto 0)) + snake_speed);
            
            for i in snake_length_max - 1 downto 1 loop      --Cada parte posterior de la serpiente se mueve a la posición de la parte anterior
                snake_mesh_xy_i(i) <= snake_mesh_xy_i(i - 1);    --Se descomprime en los primeros ciclos de reloj
            end loop;
            snake_mesh_xy_i(0) <= snake_head_xy_future; --Mueve la cabeza a la proxima posición

                                                                             --Pierde por salirse de la pantalla
            if (signed(snake_head_xy_future(31 downto 16)) < 0 or                      --Sale por la izq
                signed(snake_head_xy_future(31 downto 16)) >= screen_width or          --Sale por la dcha
                signed(snake_head_xy_future(15 downto 0)) < 0 or                       --Sale por abajo
                signed(snake_head_xy_future(15 downto 0)) >= screen_height) then       --Sale por arriba
                inited := '0';
            end if;
        end if;
    end process;
    snake_mesh_xy <= snake_mesh_xy_i;
end BEHAVIORAL;

