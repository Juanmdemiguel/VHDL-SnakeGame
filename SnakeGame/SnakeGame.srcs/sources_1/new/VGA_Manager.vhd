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
        pyton_length    : in  integer range 0 to snake_length_max; 
        pyton_mesh_pos  : in  xys(0 to snake_length_max-1);
        apple_pos       : in xy;
        HSync, VSync    : out std_logic;
        red, green, blue: out std_logic_vector(3 downto 0)
        
);
end VGA_Manager;

architecture Behavioral of VGA_Manager is

    signal SyncEnable     : std_logic;
    signal row_i, col_i   : std_logic_vector(15 downto 0); 
    signal red_g,green_g, blue_g : std_logic_vector(3 downto 0); 
    signal red_s,green_s, blue_s : std_logic_vector(3 downto 0);
    
 COMPONENT VGA_Sync 
     port (
        clk             : in  std_logic;  
        en              : out std_logic;    
        h_sync, v_sync  : out std_logic;     
        row, col        : out std_logic_vector(15 downto 0)
     );
END COMPONENT;

COMPONENT VGA_DrawStr
  port(
        START               : in big_letter_array(0 to 4);
        GAMEOVER            : in big_letter_array(0 to 8);
        enable              : in std_logic;
        mode                : in std_logic_vector(1 downto 0);
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0)
        );
END COMPONENT;

COMPONENT VGA_Draw 
     port(
        enable              : in std_logic;
        pyton_length		: in  integer range 0 to snake_length_max;
        pyton_mesh_pos		: in  xys(0 to snake_length_max - 1);
        apple_pos             : in xy;
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

    Inst_VGA_Draw: VGA_Draw 
      PORT MAP (
        enable         => SyncEnable,
        pyton_length   => pyton_length,
        pyton_mesh_pos => pyton_mesh_pos,
        apple_pos      => apple_pos,
        row            => row_i, 
        col            => col_i,
        rout           => red_g,
        gout           => green_g,
        bout           => blue_g
    );

 Inst_VGA_DrawStr : VGA_DrawStr
      port map(
        START               => START,
        GAMEOVER            => GAMEOVER,
        enable              => SyncEnable,
        mode                => mode,
        row                 => row_i,
        col                 => col_i,
        rout           => red_s,
        gout           => green_s,
        bout           => blue_s
      );

control: process(clk)
    begin
        case mode is
          when "00" =>
            red   <= red_s;
            green <= green_s;
            blue  <= blue_s;
          when "01" =>
            red   <= red_g;
            green <= green_g;
            blue  <= blue_g;
          when "10" =>
            red   <= red_s;
            green <= green_s;
            blue  <= blue_s;
          when others =>
            red   <= (others=>'1');
            green <= (others=>'0');
            blue  <= (others=>'0');
        end case;      
end process;

end Behavioral;
