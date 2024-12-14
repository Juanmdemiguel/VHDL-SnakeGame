----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 13:35:24
-- Design Name: 
-- Module Name: Types - Behavioral
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
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

--Paquete
package Types is

    constant screen_width        : integer := 1280;  
    constant screen_height       : integer := 1024;
    constant snake_begin_x       : integer := 300;
    constant snake_begin_y       : integer := 450;
    constant snake_length_begin  : integer := 1;
    constant snake_length_max    : integer := 20;
    constant food_width          : integer := 20;
    constant head_width          : integer := 20;
    constant snake_speed         : signed(15 downto 0) := to_signed(4, 16);     --Velocidad en pixel  ->  Constante de velocidad (6 por cada rising clk) 
    constant food_begin_x        : integer := 800;
    constant food_begin_y        : integer := 500;
    
    
    type BOTON_T is (BOTON_UP, BOTON_DOWN, BOTON_RIGHT, BOTON_LEFT, BOTON_CENTER, BOTON_NONE);  --Tipo de datos
    subtype xy is std_logic_vector(31 downto 0);
    type xys is array (integer range <>) of xy;
end package Types;

-- Implementación del paquete
package body Types is
end package body Types;