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
use work.Letters.all;

entity VGA_Draw is
        
    port(
        enable              : in std_logic;
        snake_length		: in  integer range 0 to snake_length_max;
        snake_mesh_xy		: in  xys(0 to snake_length_max - 1);
        food_xy             : in xy;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0)
       );
        
end entity;

architecture BEHAVIORAL of VGA_Draw is
    
  begin   
   drawSnake: process(row, col)
        --x and y distance from shape
        variable dx, dy     : signed(15 downto 0) := (others => '0');
        --if current pixel is shape
        variable is_shape   : std_logic := '0';  
        --if current pixel is food
        variable is_food       : std_logic := '0';
        variable is_text_pixel : std_logic := '0';
        variable draw_management : integer := 2;
    begin
    if enable = '1' then
       
            --draw body
            is_shape := '0';
         
            for i in 0 to snake_length_max - 1 loop
              draw_management := draw_management - 1;
            if draw_management = 1 then
                if (i < snake_length) then  --if is valid snake body
                    dx := abs(signed(col) - signed(snake_mesh_xy(i)(31 downto 16)));
                    dy := abs(signed(row) - signed(snake_mesh_xy(i)(15 downto 0)));
                        if (dx < head_width / 2 and dy < head_width / 2) then
                            is_shape := '1';
                        end if;
                 end if;
                 draw_management := grow;
             end if;
             end loop;
        
             dx := abs(signed(col) - signed(food_xy(31 downto 16)));
             dy := abs(signed(row) - signed(food_xy(15 downto 0)));
             
             if (dx < food_width / 2 and dy < food_width / 2) then
                 is_food := '1';
             else 
                  is_food := '0';
             end if;
                                
                if is_shape = '1' then
                    rout <= "0010";
                    gout <= "0100";
                    bout <= "0110";
                elsif is_food = '1' then
                    rout <= "1111";
                    gout <= "0000";
                    bout <= "0000";
                else
                    rout <= "1000"; -- Background
                    gout <= "1110";
                    bout <= "0000";
                end if;
        else -- if not enabled
            rout <= "0100";
            gout <= "0000";
            bout <= "0000";
        end if;
    end process;
end;



