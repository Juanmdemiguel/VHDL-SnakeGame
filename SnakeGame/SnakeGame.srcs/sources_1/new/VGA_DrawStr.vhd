----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: VGA
-- Module Name: VGA_DrawStr - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Drawing of characters (letters) on screen
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Letters.all;
use work.Types.all;
use IEEE.NUMERIC_STD.ALL;

entity VGA_DrawStr is
     port(
        --clk_108mhz          : in  std_logic
        START               : in big_letter_array(0 to 4);
        GAMEOVER            : in big_letter_array(0 to 8);
        enable              : in std_logic;
        mode                : in std_logic_vector(1 downto 0);
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0)
       );
       
end VGA_DrawStr;

architecture Behavioral of VGA_DrawStr is

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
        Strlen   <= 5;    
    when "10" =>
        Strlen   <= 9;
    when others =>
        Strlen   <= 5;
 end case;
end process;

drawPyton: process(row, col)


        variable dx, dy : integer := 0;
        variable is_text_pixel : std_logic := '0';
        variable selector: integer := 0;

    begin
    if enable = '1' then
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
                else
                    rout <= "0000"; -- Background
                    gout <= "0100";
                    bout <= "0000";
                end if;
     else -- if not enabled
            rout <= "0100";
            gout <= "0000";
            bout <= "0000";
     end if;
    end process;

end Behavioral;
