----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2024 16:49:19
-- Design Name: 
-- Module Name: Letters - Behavioral
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
use IEEE.std_logic_1164.all;

package Letters is

    constant SCALE_FACTOR : integer := 5;  --Scale factor
   
   -- Define the dimensions of a character
    constant CHAR_SMALL_WIDTH  : integer := 16;
    constant CHAR_SMALL_HEIGHT : integer := 13;
    constant CHAR_LARGE_WIDTH  : integer := CHAR_SMALL_WIDTH * SCALE_FACTOR;
    constant CHAR_LARGE_HEIGHT : integer := CHAR_SMALL_HEIGHT * SCALE_FACTOR;
    
    -- Define a type for character matrices
    type char_small_matrix is array (0 to CHAR_SMALL_HEIGHT - 1) of std_logic_vector(0 to (CHAR_SMALL_WIDTH - 1));
    type char_big_matrix is array (0 to CHAR_LARGE_HEIGHT - 1) of std_logic_vector(0 to (CHAR_LARGE_WIDTH - 1)); -- matrix as big as the scaled letter
  
    --Define a type for words and char arrays
   	type small_letter_array is array (0 to 8) of char_small_matrix;
    type big_letter_array is array (integer range <>) of char_big_matrix;
    
   -- Define matrices for each letter
    constant CHAR_G : char_small_matrix := (
        "0001111111111000",
        "0011111111111100",
        "0111110000000000",
        "0111100000000000",
        "1111000000000000",
        "1111000001111100",
        "1111000001111100",
        "1111000001111100",
        "0111100001111100",
        "0111110001111100",
        "0011111111111000",
        "0001111111110000",
        "0000111111100000",
        others => (others => '0')
    );

    constant CHAR_A : char_small_matrix := (
        "0000111111100000",
        "0001111111110000",
        "0011111111111000",
        "0111110001111100",
        "0111100000111100",
        "1111000000011110",
        "1111111111111110",
        "1111111111111110",
        "1111000000011110",
        "1111000000011110",
        "0111100000111100",
        "0111110001111100",
        "0011110001111000",
        others => (others => '0')
    );

    constant CHAR_M : char_small_matrix := (
        "1111000000001111",
        "1111100000011111",
        "1111110000111111",
        "1111111001111111",
        "1111011110111111",
        "1111000110011111",
        "1111000000011111",
        "1111000000011111",
        "1111000000011111",
        "1111000000011111",
        "1111000000011111",
        "1111000000011111",
        "1111000000011111",
        others => (others => '0')
    );

    constant CHAR_E : char_small_matrix := (
        "0111111111111110",
        "0111111111111110",
        "0111111111111110",
        "0111110000000000",
        "0111110000000000",
        "0111111111111100",
        "0111111111111100",
        "0111111111111110",
        "0111110000000000",
        "0111110000000000",
        "0111111111111110",
        "0111111111111110",
        "0111111111111110",
        others => (others => '0')
    );

    constant CHAR_O : char_small_matrix := (
        "0000111111110000",
        "0001111111111000",
        "0011111111111100",
        "0111110001111100",
        "0111100000111100",
        "1111000000011110",
        "1111000000011110",
        "1111000000011110",
        "0111100000111100",
        "0111110001111100",
        "0011111111111100",
        "0001111111111000",
        "0000111111110000",
        others => (others => '0')
    );

    constant CHAR_V : char_small_matrix := (
        "1111000000011110",
        "1111000000011110",
        "1111000000011110",
        "1111000000011110",
        "0111100000111100",
        "0111100000111100",
        "0011110001111000",
        "0011110001111000",
        "0001111011110000",
        "0001111011110000",
        "0000111111100000",
        "0000111111100000",
        "0000011111000000",
        others => (others => '0')
    );

    constant CHAR_R : char_small_matrix := (
        "1111111111100000",
        "1111111111110000",
        "1111000001111000",
        "1111000000111100",
        "1111000001111100",
        "1111111111111000",
        "1111111111100000",
        "1111000111100000",
        "1111000011110000",
        "1111000001111000",
        "1111000000111100",
        "1111000000011110",
        "1111000000001111",
        others => (others => '0')
    );
    
      -- Definición de la letra S
  constant CHAR_S : char_small_matrix := (
      "0011111111110000",
      "0111111111111000",
      "0111100000000000",
      "0011100000000000",
      "0001111000000000",
      "0000111110000000",
      "0000011111000000",
      "0000001111110000",
      "0000000111111000",
      "0000000011111110",
      "0111100001111110",
      "0111111111111110",
      "0011111111111110",
      others => (others => '0')
  );

  -- Definición de la letra T
  constant CHAR_T : char_small_matrix := (
      "1111111111111110",
      "1111111111111110",
      "1111111111111110",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      "0000011111000000",
      others => (others => '0')
  );
--enough spaces to carry all the letters
    constant TotalLetters : small_letter_array := (
            CHAR_A, CHAR_E, CHAR_G, CHAR_M, CHAR_O,
            CHAR_R, CHAR_S ,CHAR_T, CHAR_V
            );     
end Letters;

package body Letters is
end package body Letters;