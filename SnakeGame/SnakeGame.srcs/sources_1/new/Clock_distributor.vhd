----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: Clock_distributor
-- Module Name: Clock_distributor - Structural
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Handler for related entities that return clock signals
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
library UNISIM;
use UNISIM.VComponents.all;

entity Clock_distributor is
    Port ( clk_in : in STD_LOGIC;
           clk_out1 : out STD_LOGIC;
           clk_out2 : out STD_LOGIC;
           clk_out3 : out STD_LOGIC;
           clk_out4 : out STD_LOGIC;
           clk_out5 : out STD_LOGIC);
end Clock_distributor;

architecture Structural of Clock_distributor is
    signal clk_buf : std_logic;  -- Señal bufferizada

begin
-- Instanciación del BUFG
    bufg_inst : BUFG
        port map (
            I => clk_in,  -- Entrada del reloj
            O => clk_buf  -- Salida bufferizada
        );

    -- Distribución del reloj a las entidades
    clk_out1 <= clk_buf;
    clk_out2 <= clk_buf;
    clk_out3 <= clk_buf;
    clk_out4 <= clk_buf;
    clk_out5 <= clk_buf;

end Structural;
