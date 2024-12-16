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
        --clk_108mhz          : in  std_logic
        START               : in big_letter_array(0 to 4);
        GAMEOVER            : in big_letter_array(0 to 8);
        enable              : in std_logic;
        mode                : in std_logic_vector(1 downto 0);
        snake_length		: in  integer range 0 to snake_length_max;
        snake_mesh_xy		: in  xys(0 to snake_length_max - 1);
        food_xy             : in xy;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0));
        
end entity;

architecture BEHAVIORAL of VGA_Draw is
    
     -- Define right top corner of the letter
    constant TEXT_START_X : integer := 500;  -- Horizontal position of the text
    constant TEXT_START_Y : integer := 400;  -- Vertical position of the text
    signal typeDraw : std_logic;
    signal Strlen : integer;
    
   begin 
   
control: process(row,col)
begin
 case mode is
    when "00" =>
        typedraw <= '1';
        Strlen   <= 5;    
    when "01" =>
        typedraw <= '0';
        Strlen   <= 0;
    when "10" =>
        typedraw <= '1';
        Strlen   <= 9;
    when "11" =>
        typedraw <= '1';
        Strlen   <= 5;
    when others =>
        typedraw <= '0';
        Strlen   <= 0;
 end case;
end process;

drawSnake: process(row, col)
        --x and y distance from shape
       -- variable dx, dy     : signed(15 downto 0) := (others => '0');
        --if current pixel is shape
        variable is_shape   : std_logic := '0';  
        --if current pixel is food
        variable is_food    : std_logic := '0';

        variable dx, dy : integer := 0;
        variable is_text_pixel : std_logic := '0';
        variable selector: integer := 0;

    begin
    if enable = '1' then
        if typeDraw = '0' then 
            --draw body
            is_shape := '0';
            for i in 0 to snake_length_max - 1 loop
                if (i < snake_length) then  --if is valid snake body
                    dx := to_integer(abs(signed(col) - signed(snake_mesh_xy(i)(31 downto 16))));
                    dy := to_integer(abs(signed(row) - signed(snake_mesh_xy(i)(15 downto 0))));
                        if (dx < head_width / 2 and dy < head_width / 2) then
                            is_shape := '1';
                        end if;
                 end if;
             end loop;
            
             dx := to_integer(abs(signed(col) - signed(food_xy(31 downto 16))));
             dy := to_integer(abs(signed(row) - signed(food_xy(15 downto 0))));
             
             if (dx < food_width / 2 and dy < food_width / 2) then
                 is_food := '1';
             else 
                  is_food := '0';
             end if;
                                
        elsif typeDraw = '1' then
                  -- Calculate relative positions
                dx := to_integer(unsigned(col)) - TEXT_START_X;
                dy := to_integer(unsigned(row)) - TEXT_START_Y;
                -- Check if the pixel is part of the letter
                is_text_pixel := '0'; -- negated unless said otherwise 
             --Checks boundaries 
                   if (dx >= 0 and dx < Strlen*CHAR_LARGE_WIDTH and dy >= 0 and dy < CHAR_LARGE_HEIGHT) then
                        selector := dx/CHAR_LARGE_WIDTH; --selects the element of the array              
                    -- Selects the string to print 
                       if Strlen = 5 then
                          if START(selector)(dy)(dx - selector*CHAR_LARGE_WIDTH) = '1' then
                            is_text_pixel := '1';
                          end if;
                       elsif Strlen = 9 then
                          if GAMEOVER(selector)(dy)(dx - selector*CHAR_LARGE_WIDTH) = '1' then
                            is_text_pixel := '1';
                          end if;
                       end if;   
                   end if;
            
            -- Assign colors based on whether it is a text pixel
                if is_text_pixel = '1' then
                    rout <= "1111"; -- White text
                    gout <= "1111";
                    bout <= "1111";
                elsif is_shape = '1' then
                    rout <= "0010";
                    gout <= "0100";
                    bout <= "0110";
                elsif is_food = '1' then
                    rout <= "1100";
                    gout <= "1111";
                    bout <= "0000";
                else
                    rout <= "0000"; -- Background
                    gout <= "0100";
                    bout <= "0000";
                end if;
        end if;
        else -- if not enabled
            rout <= "0100";
            gout <= "0000";
            bout <= "0000";
        end if;
    end process;
end;



