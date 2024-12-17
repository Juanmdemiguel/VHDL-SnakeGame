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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity VGA_Sync is
    generic( -- Parámetros de la pantalla
        --1280x1024 with 60hz in vga, h_polar and v_polar are all negative
        h_polar         : std_logic := '1';
        v_polar         : std_logic := '1';
        
          -- Screen dimensions 
        scr_width       : integer := 1280;
        scr_height      : integer := 1024;
        
      	  -- Horizontal data 
        h_front_porch   : integer := 48;
        h_sync_pulse    : integer := 112;
        h_back_porch    : integer := 248;
        
      	  -- Horizontal data 
        v_front_porch   : integer := 1;
        v_sync_pulse    : integer := 3;
        v_back_porch    : integer := 38);
        
    port(
        clk             : in  std_logic;    --virtual clock called per pixel
        en              : out std_logic;    -- enable
        h_sync, v_sync  : out std_logic;    -- horizontal and vertical sync 
        row, col        : out std_logic_vector(15 downto 0));     --row and col of the pixel need to be displayed
end VGA_Sync;


architecture BEHAVIORAL of VGA_Sync is
--Periodo de señal tanto horizontal como vertical 
    constant h_period : integer := scr_width  + h_front_porch + h_sync_pulse + h_back_porch;
    constant v_period : integer := scr_height + v_front_porch + v_sync_pulse + v_back_porch;
begin
    process (clk)
    --Mantiene la cuenta de la posición actual 
        variable h_count : integer range 0 to h_period - 1 := 0;
        variable v_count : integer range 0 to v_period - 1 := 0;
    begin
        if rising_edge(clk) then
            --Si el contador alcanza el valor final del periodo se reinicia
            if (h_count = h_period - 1) then
                h_count := 0;
                if (v_count = v_period - 1) then
                    v_count := 0;
                else 
                    v_count := v_count + 1;
                end if;
            else
                h_count := h_count + 1;
            end if;

            --Si no te encuentras en el pulso de sincronización horizantal 
            if (h_count < scr_width + h_front_porch or 
                h_count >= scr_width + h_front_porch + h_sync_pulse) then 
                h_sync <= not h_polar;
            else 
                h_sync <= h_polar;
            end if;

            --Si no te encuentras en el pulso de sincronización vertical
            if (v_count < scr_height + v_front_porch or 
                v_count >= scr_height + v_front_porch + v_sync_pulse) then
                v_sync <= not v_polar;
            else 
                v_sync <= v_polar;
            end if;
            
            -- Si estás en la zona visible activa el enable 
            if (h_count < scr_width and v_count < scr_height) then 
                en <= '1';
            else 
                en <= '0';
            end if;
	-- Asigna la posición del pixel a la zona a dibujar (Si no está en la visible no dibuja por enable = 0)
            row <= std_logic_vector(to_unsigned(v_count, row'length));
            col <= std_logic_vector(to_unsigned(h_count, col'length));
        end if;
    end process;
end BEHAVIORAL;