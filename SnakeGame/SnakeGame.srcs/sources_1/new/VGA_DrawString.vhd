----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2024 12:33:40
-- Design Name: 
-- Module Name: VGA_DrawString - Behavioral
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
use work.Letters.all;

entity VGA_DrawSTART is
    port(
        START               : in big_letter_array(0 to 4);
        en                  : in  std_logic;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0));
end entity;

architecture BEHAVIORAL of VGA_DrawSTART is

    -- Define right top corner of the letter
    constant TEXT_START_X : integer := 500;  -- Horizontal position of the text
    constant TEXT_START_Y : integer := 400;  -- Vertical position of the text

begin
    process(row, col, en)
        variable dx, dy : integer := 0;
        variable is_text_pixel : std_logic := '0';
        constant Number : integer := 5;
 
    begin
        if (en = '1') then
            -- Calculate relative positions
            dx := to_integer(unsigned(col)) - TEXT_START_X;
            dy := to_integer(unsigned(row)) - TEXT_START_Y;

            -- Check if the pixel is part of the letter
            is_text_pixel := '0'; -- negated unless said otherwise
      
           if (dx >= 0 and dx < Number*CHAR_LARGE_WIDTH and dy >= 0 and dy < Number*CHAR_LARGE_HEIGHT) then
                if START(dx/CHAR_LARGE_WIDTH)(dy)(dx) = '1' then
                    is_text_pixel := '1';
                end if;
            end if;
            -- Assign colors based on whether it is a text pixel
            if (is_text_pixel = '1') then
                rout <= "1111"; -- White text
                gout <= "1111";
                bout <= "1111";
            else
                rout <= "0000"; -- Black background
                gout <= "0000";
                bout <= "0000";
            end if;
        else
            rout <= "0000";
            gout <= "0000";
            bout <= "0000";
        end if;
    end process;

end BEHAVIORAL;