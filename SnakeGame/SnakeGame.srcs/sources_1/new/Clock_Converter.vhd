----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: Clock_Converter
-- Module Name: Clock_Converter - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: 100 MHz to 60 Hz clock frequency converter
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

entity Clock_Converter is --Convertidor de señales de reloj de 33 MHz en señales de 60 Hz
    Port (
        clk_in   : in  std_logic;  -- Reloj de entrada (100 MHz)
        clk_out  : out std_logic   -- Reloj de salida (60 Hz)
    );
end Clock_Converter;

architecture BEHAVIORAL of Clock_Converter is
    constant converter : integer := 833_333;  -- Factor de conversión (1.666.666,6667)
    signal counter   : integer range 0 to converter - 1 := 0; 
    signal clk_temp  : std_logic := '0';  
begin

    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = converter - 1 then
                counter <= 0;
                clk_temp <= not clk_temp;  
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_temp;  

end BEHAVIORAL;

