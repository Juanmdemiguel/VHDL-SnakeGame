----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2024 12:09:10
-- Design Name: 
-- Module Name: EDGEDTCTR - Behavioral
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

entity EDGEDTCTR is
    Port ( CLK : in STD_LOGIC;
           SYNC_IN : in STD_LOGIC_VECTOR(2 downto 0);
           EDGE : out STD_LOGIC_VECTOR(2 downto 0));
end EDGEDTCTR;

architecture Behavioral of EDGEDTCTR is
    signal sreg : std_logic_vector(8 downto 0);
begin
  process (CLK)
    begin
     if rising_edge(CLK) then
        sreg <= sreg(5 downto 0) & SYNC_IN;
     end if;
   end process;
   
 with sreg select
    EDGE <= "000" when "000101101",
    "001" when "001101101",
    "010" when "010101101",
    "011" when "011101101",
    "100" when "100101101",
    "101" when others;
 end Behavioral;