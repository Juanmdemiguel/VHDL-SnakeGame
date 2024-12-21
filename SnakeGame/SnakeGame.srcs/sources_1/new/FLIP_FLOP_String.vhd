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
use work.Letters.all;


entity FLIP_FLOP_String is
    Port (
        clk            : in  std_logic;
        reset         : in  std_logic;
        START_in      : in big_letter_array(0 to 4);
        GAMEOVER_in   : in big_letter_array(0 to 8);
        START_out     : out big_letter_array(0 to 4);
        GAMEOVER_out  : out big_letter_array(0 to 8)
    );
end FLIP_FLOP_String;

architecture BEHAVIORAL of FLIP_FLOP_String is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            START_out <= (others => (others => (others => '0')));
            GAMEOVER_out <= (others => (others => (others => '0')));
        elsif rising_edge(clk) then
           START_out <= START_in;
           GAMEOVER_out <= GAMEOVER_in;
        end if;
    end process;
end BEHAVIORAL;
