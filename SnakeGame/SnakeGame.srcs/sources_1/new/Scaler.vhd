----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2024 16:54:44
-- Design Name: 
-- Module Name: Scaler - Behavioral
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
use work.Letters.all;

entity Scaler is
    port (
        clk       : in  std_logic;
        char_in   : in  char_small_matrix; -- Letra pequeña de entrada
        char_out  : out char_big_matrix  -- Letra escalada (grande) de salida
    );
end Scaler;

architecture Behavioral of Scaler is

  
 --assures that the code is only run once
    signal en : std_logic := '1'; 
    
begin
    -- Proceso para escalar la matriz
    process(clk)
        variable row, col : integer;
        variable src_row, src_col : integer;
        
        -- Tipo para letras grandes
    variable char_scaled : char_big_matrix := (others => (others => '0'));
    
    begin
        if rising_edge(clk) then
        	if(en = '1') then
            for row in 0 to CHAR_LARGE_HEIGHT - 1 loop -- for each row in large chars
                src_row := row / SCALE_FACTOR; -- get the original row's index
                for col in 0 to CHAR_LARGE_WIDTH - 1 loop -- for each column in large chars
                    src_col := col / SCALE_FACTOR; -- original column's index
                    char_scaled(row)(col) := char_in(src_row)(src_col); -- Copy the pixel
                end loop;
            end loop;
        en <= '0';
            end if;
         end if;
         char_out <= char_scaled;
    end process;

end Behavioral;