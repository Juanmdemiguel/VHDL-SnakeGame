----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: EDGEDTCTR
-- Module Name: EDGEDTCTR - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Downhill edge detector
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
    Port ( CLK     : in STD_LOGIC;
           SYNC_IN : in std_logic;
           EDGE    : out std_logic
    );
end EDGEDTCTR;

architecture Behavioral of EDGEDTCTR is
    signal sreg : std_logic_vector(2 downto 0);
begin
  process (CLK)
    begin
     if rising_edge(CLK) then
        sreg <= sreg(1 downto 0) & SYNC_IN;
     end if;
   end process;
   
 with sreg select
    EDGE <= '1' when "100",
            '0' when others;
    
 end Behavioral;