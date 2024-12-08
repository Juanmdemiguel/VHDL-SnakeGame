----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2024 20:38:47
-- Design Name: 
-- Module Name: Clock_Manager_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Clock_Manager_tb is
end Clock_Manager_tb;

architecture Behavioral of Clock_Manager_tb is
--Component declaration
    COMPONENT Clock_Manager
        PORT (
            clk_input  : in  std_logic;
            clk_108MHz : out std_logic;
            clk_60Hz   : out std_logic
        );
    END COMPONENT;

    -- Signals
    signal clk_input_tb  : std_logic := '0';
    signal clk_108MHz_tb : std_logic;
    signal clk_60Hz_tb   : std_logic;

    constant clk_input_period : time := 10 ns; -- Clock period for 100 MHz


begin
  
    uut: Clock_Manager
        PORT MAP (
            clk_input  => clk_input_tb,
            clk_108MHz => clk_108MHz_tb,
            clk_60Hz   => clk_60Hz_tb
        );

    -- Clock generation process
    clk_process: process
    begin
        clk_input_tb <= '0';
        wait for 0.5*clk_input_period;
        clk_input_tb <= '1';
        wait for 0.5*clk_input_period;
    end process;
end Behavioral;