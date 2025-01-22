----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 20.11.2024 10:53:37
-- Design Name: VGA
-- Module Name: VGA_Draw - Behavioral
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Drawn game elements on the screen
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;
use work.Letters.all;

entity VGA_Draw is
        
    port(
        enable              : in std_logic;
        pyton_length		: in  integer range 0 to Pyton_length_max;
        pyton_mesh_pos		: in  xys(0 to Pyton_length_max - 1);
        apple_pos           : in xy;
        row, col            : in  std_logic_vector(15 downto 0);
        rout, gout, bout    : out std_logic_vector(3 downto 0)
       );
        
end entity;

architecture BEHAVIORAL of VGA_Draw is
    
  begin   
   drawPyton: process(row, col)
        --x and y distance from shape
        variable dx, dy     : signed(15 downto 0) := (others => '0');
        --if current pixel is shape
        variable is_shape   : std_logic := '0';  
        --if current pixel is apple
        variable is_apple       : std_logic := '0';
        variable is_text_pixel : std_logic := '0';
        variable draw_management : integer := 2;
    begin
    if enable = '1' then
       
            --draw body
            is_shape := '0';
         
            for i in 0 to Pyton_length_max - 1 loop
              draw_management := draw_management - 1;
            if draw_management = 1 then
                if (i < pyton_length) then  --if is valid Pyton body
                    dx := abs(signed(col) - signed(pyton_mesh_pos(i)(31 downto 16)));
                    dy := abs(signed(row) - signed(pyton_mesh_pos(i)(15 downto 0)));
                        if (dx < head_width / 2 and dy < head_width / 2) then
                            is_shape := '1';
                        end if;
                 end if;
                 draw_management := grow;
             end if;
             end loop;
        
             dx := abs(signed(col) - signed(apple_pos(31 downto 16)));
             dy := abs(signed(row) - signed(apple_pos(15 downto 0)));
             
             if (dx < apple_width / 2 and dy < apple_width / 2) then
                 is_apple := '1';
             else 
                  is_apple := '0';
             end if;
                                
                if is_shape = '1' then
                    rout <= "1111";
                    gout <= "1010";
                    bout <= "0011";
                elsif is_apple = '1' then
                    rout <= "1111";
                    gout <= "0000";
                    bout <= "0000";
                else
                    rout <= "0000"; -- Background
                    gout <= "0000";
                    bout <= "0000";
                end if;
        else -- if not enabled
            rout <= "0100";
            gout <= "0000";
            bout <= "0000";
        end if;
    end process;
end;



