----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2024 16:23:31
-- Design Name: 
-- Module Name: FLIP_FLOP_Snake - Behavioral
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
use work.Types.all;

entity FLIP_FLOP_Snake is
    Port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        snake_length_in    : in integer range 0 to snake_length_max;
        snake_mesh_xy_in   : in xys(0 to snake_length_max - 1);
        food_xy_in         : in xy;
        snake_length_out   : out integer range 0 to snake_length_max;
        snake_mesh_xy_out  : out xys(0 to snake_length_max - 1);
        food_xy_out        : out xy
    );
end FLIP_FLOP_Snake;

architecture BEHAVIORAL of FLIP_FLOP_Snake is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            snake_length_out   <= 0;
            snake_mesh_xy_out  <= (others => (others => '0'));
            food_xy_out        <= (others => '0');
        elsif rising_edge(clk) then
            snake_length_out    <= snake_length_in;
            snake_mesh_xy_out  <= snake_mesh_xy_in;
            food_xy_out        <= food_xy_in;
        end if;
    end process;


end BEHAVIORAL;
