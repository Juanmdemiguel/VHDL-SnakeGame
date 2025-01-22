----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: Scaled_String
-- Module Name: Scaled_String - Structural
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: Entity in charge of scaling the letters to a correct size for display on the screen
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
use work.Letters.all;

entity Scaled_String is
port(
  clk : in std_logic;
  GAME_OVER: out big_letter_array(0 to 8);
  START    : out big_letter_array(0 to 4)
  );
end Scaled_String;

architecture STRUCTURAL of Scaled_String is

    --enough spaces to carry all the letters
	signal LargeLetters : big_letter_array(0 to 8):=(others=>(others=>(others=>'0'))); 
     
    component SCALER
      port (
        clk       : in  std_logic;
        char_in   : in  char_small_matrix; -- Letra pequeña de entrada
        char_out  : out char_big_matrix  -- Letra escalada (grande) de salida
      );
    end component;
  
begin             
  scaling:for i in 0 to 8 generate
   Inst_Scaler: Scaler
                PORT MAP (
                  clk        => clk,
                  char_in    => TotalLetters(i),
                  char_out   => LargeLetters(i)
                ); 
  end generate;
                 
   GAME_OVER <= (LargeLetters(2), LargeLetters(0), LargeLetters(3), LargeLetters(1), 
                  (others => (others => '0')), LargeLetters(4), LargeLetters(8), 
                  LargeLetters(1), LargeLetters(5));
    START <= (LargeLetters(6), LargeLetters(7), LargeLetters(0), LargeLetters(5), LargeLetters(7));
    
end;
