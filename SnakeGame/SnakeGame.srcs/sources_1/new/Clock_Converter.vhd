----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: VGA
-- Module Name: VGA_Sync - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Sincroniza el pulso de la pantalla vga con los pixeles del mismo y emite la zona visible 
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
        clk_in   : in  std_logic;  -- Reloj de entrada (33 MHz)
        reset    : in  std_logic; 
        clk_out  : out std_logic   -- Reloj de salida (60 Hz)
    );
end Clock_Converter;

architecture BEHAVIORAL of Clock_Converter is
    constant converter : integer := 550_000;  -- Factor de conversión
    signal counter   : integer range 0 to converter - 1 := 0; 
    signal clk_temp  : std_logic := '0';  
begin

    process(clk_in, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_temp <= '0';
        elsif rising_edge(clk_in) then
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

