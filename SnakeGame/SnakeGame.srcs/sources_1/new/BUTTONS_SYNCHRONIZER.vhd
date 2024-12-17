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
            
            button_up_input : in std_logic;
            button_down_input : in std_logic;
            button_left_input : in std_logic;
            button_right_input : in std_logic;
            button_center_input : in std_logic;
            
            button_output : out std_logic_vector(2 downto 0)    
    );
end BUTTONS_Sync;

architecture Behavioral of BUTTONS_Sync is
    subtype button_type is std_logic_vector (2 downto 0);
    type button_list is array (1 downto 0) of button_type;
    signal sreg : button_list;
begin

process (clk_60Hz)
begin
    if rising_edge(clk_60Hz) then
        
        button_output <= sreg(1);
        
        if    button_up_input = '1' then sreg <= sreg(0) & "000";
        elsif button_down_input = '1' then sreg <= sreg(0) & "001";
        elsif button_left_input = '1' then sreg <= sreg(0) & "010";
        elsif button_right_input = '1' then sreg <= sreg(0) & "011";
        elsif button_center_input = '1' then sreg <= sreg(0) & "100";
        else sreg <= sreg(0) & "101";
        end if;
    end if;
 end process;
end Behavioral;
