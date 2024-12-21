----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2024 08:35:32
-- Design Name: 
-- Module Name: Main_FSM_tb - Behavioral
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

-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 13.12.2024 07:34:09 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_Main_Game is
end tb_Main_Game;

architecture tb of tb_Main_Game is

    component Main_Game
        port (
            BUTTON     : in std_logic_vector(2 downto 0);
            LOSE       : in std_logic;
            CLK_100MHz : in std_logic;
            STATE      : out std_logic_vector(1 downto 0)
        );
    end component;

    signal BUTTON     : std_logic_vector(2 downto 0) := (others => '0');
    signal LOSE       : std_logic := '0';
    signal CLK_100MHz : std_logic := '0';
    signal STATE      : std_logic_vector(1 downto 0);

    constant TbPeriod : time := 10 ns; -- 100 MHz clock period
    signal TbSimEnded : std_logic := '0';

begin

    dut : Main_Game
    port map (
        BUTTON     => BUTTON,
        LOSE       => LOSE,
        CLK_100MHz => CLK_100MHz,
        STATE      => STATE
    );

    -- Clock generation
    CLK_100MHz <= not CLK_100MHz after TbPeriod / 2 when TbSimEnded /= '1' else '0';

    stimuli : process
    begin
        -- Inicialización
        BUTTON <= (others => '0');
        LOSE <= '0';
        wait for 50 * TbPeriod;

        -- Prueba transición a S1_GAME
        BUTTON <= "100";
        wait for 20 * TbPeriod;
        BUTTON <= (others => '0');
        wait for 50 * TbPeriod;

        -- Prueba transición a S2_GO
        LOSE <= '1';
        wait for 20 * TbPeriod;
        LOSE <= '0';
        wait for 50 * TbPeriod;

        -- Prueba regreso a S0_START
        BUTTON <= "100";
        wait for 50 * TbPeriod;
        BUTTON <= (others => '0');
        wait for 50 * TbPeriod;

        -- Finalización
        TbSimEnded <= '1';
        wait;
    end process;

end tb;
