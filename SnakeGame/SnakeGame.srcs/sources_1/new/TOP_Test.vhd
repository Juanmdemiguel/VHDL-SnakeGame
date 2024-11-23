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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.Types.ALL;

ENTITY top is
    PORT (  
        clk   : in std_logic;
        reset : in std_logic;
        light : out std_logic_vector(3 DOWNTO 0)
    );
END top;

architecture Behavioral of top is

    signal sig_60Hz : std_logic;
    signal sig_snake_length : integer range 0 to 20 := 20;
    
COMPONENT GAME_Move
    port(
        clk_60hz            : in  std_logic
    );
END COMPONENT;
COMPONENT VGA_Sync 
     port (
        clk             : in  std_logic;  
        en              : out std_logic;    
        h_sync, v_sync  : out std_logic;     
        row, col        : out std_logic_vector(15 downto 0)
     );
END COMPONENT;
COMPONENT VGA_Draw 
     port (
        snake_length		: in  integer range 0 to 20;          --Pendiente de revisión  20 -> snake_length
        snake_mesh_xy		: in  xys(0 to 20 - 1);               --Pendiente de revisión  20 -> snake_length
        en                  : in  std_logic;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0)
     );
END COMPONENT;
COMPONENT Clock_Converter
    port (
        clk_in   : in  std_logic;  
        reset    : in  std_logic; 
        clk_out  : out std_logic   
     );
END COMPONENT;

BEGIN
    Inst_GAME_Move: GAME_Move 
     PORT MAP (
        clk_60hz            => sig_60Hz
    );
    Inst_Clock_Convertere: Clock_Converter 
     PORT MAP (
        clk_in              =>  clk,
        reset               =>  reset,
        clk_out             =>  sig_60Hz
    );
--    Inst_VGA_Sync: VGA_Sync  
--     PORT MAP (
--        clk                 => 
--        en                  =>  
--        h_sync, v_sync      => 
--        row, col            =>
--    );
--    Inst_VGA_Draw: VGA_Draw 
--      PORT MAP (
--        snake_length		=> 
--        snake_mesh_xy		=>
--        en                  =>
--        row, col            =>
--        rout, gout, bout    =>
--    );
    
end architecture;


