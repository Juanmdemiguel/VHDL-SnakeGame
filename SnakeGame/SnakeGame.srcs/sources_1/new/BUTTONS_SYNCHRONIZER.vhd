----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 18:00:57
-- Design Name: 
-- Module Name: BUTTONS_SYNCHRONIZER - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
