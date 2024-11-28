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
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;

entity VGA_Draw is
 generic(
        head_width          : integer := 60;
        snake_length_begin  : integer := 1;
        snake_length_max    : integer := 3);
        
    port(
        --clk_108mhz          : in  std_logic
        snake_length		: in  integer range 0 to snake_length_max;
        snake_mesh_xy		: in  xys(0 to snake_length_max - 1);
        en                  : in  std_logic;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0));
        
end entity;

architecture BEHAVIORAL of VGA_Draw is

    subtype xy is std_logic_vector(31 downto 0);
    type xys is array (integer range <>) of xy;
    
   -- signal snake_length         : integer range 0 to snake_length_max;
   -- signal snake_mesh_xy        : xys(0 to snake_length_max - 1); 
    
   begin 
draw: process(snake_length, snake_mesh_xy, row, col, en)
        --x and y distance from shape
        variable dx, dy     : signed(15 downto 0) := (others => '0');
        --if current pixel is shape
        variable is_shape   : std_logic := '0';
        
    begin
        if (en = '1') then 
            --draw body
            is_shape := '0';
            for i in 0 to snake_length_max - 1 loop
             if (i < snake_length) then  --if is valid snake body
                dx := abs(signed(col) - signed(snake_mesh_xy(i)(31 downto 16)));
                dy := abs(signed(row) - signed(snake_mesh_xy(i)(15 downto 0)));
                    if (dx < head_width / 2 and dy < head_width / 2) then
                        is_shape := '1';
                    end if;
                end if;
            end loop;
            
            if (is_shape = '1') then
                rout <= "0010";
                gout <= "0100";
                bout <= "0110";
            else -- if it's background
                rout <= "0100";
                gout <= "1100";
                bout <= "0100";
            end if;
        else -- if not enabled
            rout <= "0000";
            gout <= "0000";
            bout <= "0000";
        end if;
    end process;
end;


