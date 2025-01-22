----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: BUTTONS_Sync
-- Module Name: BUTTONS_Sync - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Synchronize the pressed buttons with the clock cycles
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

entity BUTTONS_Sync is
    Port ( 
            clk_60Hz : in std_logic;
            button_center_input : in std_logic;
            button_output : out std_logic
    );
end BUTTONS_Sync;

architecture Behavioral of BUTTONS_Sync is
    signal sreg : std_logic_vector(1 downto 0) := "00";
begin

process (clk_60Hz)
begin
     if rising_edge(clk_60hz) then
         button_output <= sreg(1);
         sreg <= sreg(0) & button_center_input;
     end if; 
 end process;
end Behavioral;
