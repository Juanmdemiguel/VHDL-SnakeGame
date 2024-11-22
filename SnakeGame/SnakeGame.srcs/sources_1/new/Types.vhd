----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2024 13:35:24
-- Design Name: 
-- Module Name: Types - Behavioral
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
use ieee.numeric_std.all;

--Paquete
package Types is
    subtype xy is std_logic_vector(31 downto 0);
    type xys is array (integer range <>) of xy;
end package Types;

-- Implementación del paquete
package body Types is
end package body Types;