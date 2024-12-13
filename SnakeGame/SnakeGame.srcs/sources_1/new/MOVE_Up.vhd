----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: Game_Move
-- Module Name: Move_Up - Behavioral
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

entity Move_Up is
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
end entity;

architecture BEHAVIORAL of Move_Up is
    signal snake_length_i    : integer range 0 to snake_length_max;
    signal snake_mesh_xy_i   : xys(0 to snake_length_max - 1);
    signal food_xy_i         : xy;
    signal lose_i            : std_logic := '0'; 
    signal random_xy         : unsigned(31 downto 0);
    signal inited            : std_logic := '0';
    
    
    
begin

snake_move_up:process(clk_60hz, enable)
        --Constantes
        
        --Variables
        variable snake_head_xy_future       : xy := (others => '0');                    --Posición de xy a futuro de la cabeza
        variable food_xy_future             : xy := (others => '0');                    --Posición de xy  a futuro de comida
        variable snake_length_future        : integer := 0;                             --Longitud de la serpiente a futuro
        variable dx, dy                     : signed(15 downto 0) := (others => '0');
        
    begin
        
        if (enable = '0') then                 --Resetea ell estado de iniciado
            inited <= '0';
        
        elsif (inited = '0' and enable = '1') then          --Proceso de inicio
            snake_length_future    := snake_length_input;
            snake_mesh_xy_i        <= snake_mesh_xy_input;
            snake_head_xy_future   := snake_mesh_xy_input(0);
            food_xy_future         := food_xy_input;
            inited                 <= '1';
        
        elsif rising_edge(clk_60hz) then  --Caso dentro del juego (jugando)
            if(inited = '1' and enable = '1') then
                --Movimiemto
                snake_head_xy_future(15 downto 0) := std_logic_vector(signed(snake_head_xy_future(15 downto 0)) - snake_speed);
                
                for i in snake_length_max - 1 downto 1 loop      --Cada parte posterior de la serpiente se mueve a la posición de la parte anterior
                    snake_mesh_xy_i(i) <= snake_mesh_xy_i(i - 1);    --Se descomprime en los primeros ciclos de reloj
                end loop;
                snake_mesh_xy_i(0) <= snake_head_xy_future; --Mueve la cabeza a la proxima posición
                
                                                                                 --Pierde por salirse de la pantalla
                if (signed(snake_head_xy_future(15 downto 0)) < 0) then       --Sale por arriba
                    lose_i <= '1';                                                        --Codigo de accion en caso de muerte
                end if;
                
                                                                            --Calculo de la distancia de la serpiente a la manzana
                dy := abs(signed(snake_head_xy_future(15 downto 0)) - signed(food_xy_future(15 downto 0)));
                                                                          
                if (dy < (food_width + head_width) / 2) then               --Compruebación de choque
                    --snake_length_future := snake_length_future + 1;       --Aumenta la longitud de la serpiente
                    snake_length_i <= snake_length_future + 1; 
                    
                    --food_xy_future := std_logic_vector(random_xy);        --Cambia la posición de la comida
                    food_xy_i <= std_logic_vector(random_xy);        --Cambia la posición de la comida
                end if;
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
    
output:
    process(enable)  
    begin  
    if (enable = '1' and inited = '1') then
        snake_length  <= snake_length_i;
        snake_mesh_xy <= snake_mesh_xy_i;
        food_xy       <= food_xy_i;
        lose          <= lose_i;
        
    end if;
end process;
    
end architecture;
