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
    Generic(
        snake_length_max    : integer := 3
        );
    PORT (  
        clk   : in std_logic;
        reset : in std_logic;
        
        --VGA output
        HSync, VSync: out std_logic;
        Red,Green,Blue : out std_logic_vector(3 DOWNTO 0)
    );
END top;

architecture Structural of top is

    signal sig_60Hz : std_logic;
    signal sig_108MHz : std_logic;
    signal sig_snake_length : integer range 0 to snake_length_max;
    signal SyncEnable : std_logic;
    signal row_i, col_i   : std_logic_vector(15 downto 0); 
    signal sig_snake_mesh_xy  : xys(0 to snake_length_max - 1);
    
COMPONENT GAME_Move
    port(
        clk_60hz            : in  std_logic;
        snake_length    : out integer range 0 to snake_length_max;
        snake_mesh_xy   : out xys(0 to snake_length_max - 1)
    );
END COMPONENT;

COMPONENT VGA_Manager 
     port (
        clk             : in std_logic;
        snake_length    : in  integer range 0 to 20; 
        snake_mesh_xy   : in  xys(0 to snake_length_max-1);
        HSync, VSync    : out std_logic;
        red, green, blue: out std_logic_vector(3 downto 0)
     );
END COMPONENT;
COMPONENT Clock_Manager
    port (
        clk_input   : in  std_logic;  
        clk_108MHz  : out  std_logic; 
        clk_60Hz    : out std_logic   
     );
END COMPONENT;


BEGIN
    Inst_GAME_Move: GAME_Move 
     PORT MAP (
        clk_60hz         => sig_60Hz,
        snake_length     => sig_snake_length,
        snake_mesh_xy    => sig_snake_mesh_xy
    );
    Inst_Clock_Manager: Clock_Manager
     PORT MAP (
        clk_input              =>  clk,
        clk_108MHz             =>  sig_108MHz,
        clk_60Hz               =>  sig_60Hz
    );

    Inst_VGA_Manager: VGA_Manager
      PORT MAP (
        clk              => sig_108MHz,
        snake_length	 => sig_snake_length,
        snake_mesh_xy	 => sig_snake_mesh_xy,
        HSync            => HSync,
        VSync            => VSync,
        red              => Red,
        green            => Green,
        blue             => Blue
    );
    
end architecture;


