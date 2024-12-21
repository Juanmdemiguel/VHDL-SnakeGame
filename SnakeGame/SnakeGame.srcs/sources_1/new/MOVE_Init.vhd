----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 09:13:02
-- Design Name: 
-- Module Name: Move_Init - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.Types.all;

entity Move_Init is
   port ( 
        clk_60hz            : in  std_logic;
        enable              : in  std_logic;
   
        snake_length        : out integer range 0 to snake_length_max;
        snake_mesh_xy       : out xys(0 to snake_length_max - 1);
        food_xy             : out xy;
        
        --game_inited         : out std_logic;
        lose                : out std_logic
   
   );
end Move_Init;

architecture BEHAVIORAL of Move_Init is

begin
    
    Init_Position: process(clk_60hz, enable)
            --variable init_secure : integer := 0;
    begin
        
        if (rising_edge(clk_60hz) and enable = '1') then
            --Reseteo la longitud de la serpiente
            snake_length <= snake_length_begin;
            
            --Reseteo la posición de la serpiente
            for i in 0 to snake_length_max - 1 loop
                snake_mesh_xy(i)(31 downto 16) <= std_logic_vector(to_signed(snake_begin_x, 16));
                snake_mesh_xy(i)(15 downto  0) <= std_logic_vector(to_signed(snake_begin_y, 16));
            end loop;

            --Reseteo la posición de la manzana
            food_xy(31 downto 16) <= std_logic_vector(to_signed(food_begin_x, 16));
            food_xy(15 downto 0) <= std_logic_vector(to_signed(food_begin_y, 16));
            
            --init_secure := init_secure + 1;
            
--            if (init_secure = 2) then
--                init_secure := 0;
--                game_inited <= '1';
--            end if;
            lose <= '0';
         end if;
    end process;


end BEHAVIORAL;