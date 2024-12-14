----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2024 18:21:03
-- Design Name: 
-- Module Name: VGA_Manager - Behavioral
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
use work.Types.all;
use work.Letters.all;

entity VGA_Manager is
      Port ( 
        START           : in big_letter_array(0 to 4);
        GAMEOVER        : in big_letter_array(0 to 8);
        mode            : in std_logic_vector(1 downto 0);
        clk             : in std_logic;
        snake_length    : in  integer range 0 to snake_length_max; 
        snake_mesh_xy   : in  xys(0 to snake_length_max-1);
        food_xy         : in xy;
        HSync, VSync    : out std_logic;
        red, green, blue: out std_logic_vector(3 downto 0)
        
);
end VGA_Manager;

architecture Behavioral of VGA_Manager is

    signal SyncEnable     : std_logic;
    signal row_i, col_i   : std_logic_vector(15 downto 0); 

 COMPONENT VGA_Sync 
     port (
        clk             : in  std_logic;  
        en              : out std_logic;    
        h_sync, v_sync  : out std_logic;     
        row, col        : out std_logic_vector(15 downto 0)
     );
END COMPONENT;

COMPONENT VGA_Draw 
     port(
        START               : in big_letter_array(0 to 4);
        GAMEOVER            : in big_letter_array(0 to 8);
        mode                : in std_logic_vector(1 downto 0);
        enable              : in std_logic;
        snake_length		: in  integer range 0 to snake_length_max;
        snake_mesh_xy		: in  xys(0 to snake_length_max - 1);
        food_xy             : in xy;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0));
END COMPONENT;
     
begin
    Inst_VGA_Sync: VGA_Sync  
         PORT MAP (
            clk      => clk,
            en       => SyncEnable,
            h_sync   => HSync,
            v_sync   => VSync,
            row      => row_i,
            col      => col_i
        );

--    Inst_VGA_Draw: VGA_Draw 
--      PORT MAP (
--        START          => START,
--        GAMEOVER       => GAMEOVER,
--        mode           => mode,
--        enable         => SyncEnable,
--        snake_length   => snake_length,
--        snake_mesh_xy  => snake_mesh_xy,
--        food_xy        =>  food_xy,
--        row            => row_i, 
--        col            => col_i,
--        rout           => red,
--        gout           => green,
--        bout           => blue
--    );
--    red <= "1111" when mode = "01" else unaffected;
--    green <= "1111" when mode = "01" else unaffected;
--    blue <= "1111" when mode = "01" else unaffected;


end Behavioral;
