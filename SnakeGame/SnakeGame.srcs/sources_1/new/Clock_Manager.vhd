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

entity Clock_Manager is
  Port (
  clk_input  : in std_logic; 
  clk_FSM    : out std_logic;
  clk_SC     : out std_logic;     
  clk_CV     : out std_logic;     
  clk_EDGE   : out std_logic;     
  clk_TEC    : out std_logic;          
  clk_108MHz : out std_logic;
  clk_60Hz   : out std_logic
  
);
end Clock_Manager;
 
architecture Structural of Clock_Manager is


COMPONENT clock_distributor is
 Port ( clk_in : in STD_LOGIC;
       clk_out1 : out STD_LOGIC;
       clk_out2 : out STD_LOGIC;
       clk_out3 : out STD_LOGIC;
       clk_out4 : out STD_LOGIC;
       clk_out5 : out STD_LOGIC);
END COMPONENT;

COMPONENT Clock_Converter
    port (
        clk_in   : in  std_logic;
        clk_out  : out std_logic   
     );
END COMPONENT;

COMPONENT PLL100to108
    port(
    clk_in1  : in std_logic;
    clk_out1 : out std_logic);
END COMPONENT;

begin

    Inst_ClockDistributor : Clock_distributor
    PORT MAP ( 
            clk_in   => clk_input,
            clk_out1 => clk_FSM,
            clk_out2 => clk_SC,
            clk_out3 => clk_CV,
            clk_out4 => clk_EDGE,
            clk_out5 => clk_TEC
    );
    
    Inst_PLL: PLL100to108
        PORT MAP(
            clk_in1  => clk_input,
            clk_out1 => clk_108MHz
    );
    Inst_Clock_Converter: Clock_Converter 
     PORT MAP (
        clk_in              =>  clk_input,
        clk_out             =>  clk_60Hz
    );


end Structural;
