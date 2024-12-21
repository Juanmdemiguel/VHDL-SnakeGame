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

entity FLIP_FLOP_Pyton is
    Port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        pyton_length_in    : in integer range 0 to snake_length_max;
        pyton_mesh_pos_in   : in xys(0 to snake_length_max - 1);
        apple_pos_in        : in xy;
        pyton_length_out   : out integer range 0 to snake_length_max;
        pyton_mesh_pos_out  : out xys(0 to snake_length_max - 1);
        apple_pos_out       : out xy
    );
end FLIP_FLOP_Pyton;

architecture BEHAVIORAL of FLIP_FLOP_Pyton is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            pyton_length_out   <= 0;
            pyton_mesh_pos_out  <= (others => (others => '0'));
            apple_pos_out       <= (others => '0');
        elsif rising_edge(clk) then
            pyton_length_out   <= pyton_length_in;
            pyton_mesh_pos_out  <= pyton_mesh_pos_in;
            apple_pos_out       <= apple_pos_in;
        end if;
    end process;


end BEHAVIORAL;
