----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2024 09:24:58
-- Design Name: 
-- Module Name: MOVE_Up_tb - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Types.all;

entity Move_Up_tb is
end entity;

architecture TEST of Move_Up_tb is
    
    -- Component Declaration
    component Move_Up
        port(
            clk_60hz            : in  std_logic;
            enable              : in  std_logic;
            snake_length_input  : in  integer range 0 to snake_length_max;
            snake_mesh_xy_input : in  xys(0 to snake_length_max - 1);
            food_xy_input       : in  xy;
            snake_length        : out integer range 0 to snake_length_max;
            snake_mesh_xy       : out xys(0 to snake_length_max - 1);
            food_xy             : out xy;
            lose                : out std_logic
        );
    end component;

    -- Signals for connecting to the DUT
    signal clk_60hz            : std_logic := '0';
    signal enable              : std_logic := '0';
    signal snake_length_input  : integer range 0 to snake_length_max := 0;
    signal snake_mesh_xy_input : xys(0 to snake_length_max - 1) := (others => (others => '0'));
    signal food_xy_input       : xy := (others => '0');

    signal snake_length        : integer range 0 to snake_length_max;
    signal snake_mesh_xy       : xys(0 to snake_length_max - 1);
    signal food_xy             : xy;
    signal lose                : std_logic;

    -- Clock period definition
    constant clk_period : time := 100 ns; -- 60 Hz clock

begin
    -- Instantiate the DUT
    DUT: Move_Up
        port map(
            clk_60hz            => clk_60hz,
            enable              => enable,
            snake_length_input  => snake_length_input,
            snake_mesh_xy_input => snake_mesh_xy_input,
            food_xy_input       => food_xy_input,
            snake_length        => snake_length,
            snake_mesh_xy       => snake_mesh_xy,
            food_xy             => food_xy,
            lose                => lose
        );

    -- Clock generation
    clk_process: process
    begin
        while true loop
            clk_60hz <= '0';
            wait for clk_period / 2;
            clk_60hz <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        enable <= '0';
        snake_length_input <= 3;
        snake_mesh_xy_input(0) <= x"0008" & x"00ff"; -- (x = 8, y = 8)
        snake_mesh_xy_input(1) <= x"0008" & x"00ff"; -- (x = 7, y = 8)
        snake_mesh_xy_input(2) <= x"0008" & x"00ff"; -- (x = 6, y = 8)
        food_xy_input <= x"0008" & x"0008";           -- (x = 4, y = 4)

        -- Enable the module
        wait for 450 ns;
        enable <= '1';

        -- Let the simulation run for a few cycles
        wait for 1000 ns;

        -- Change the snake position
        snake_mesh_xy_input(0) <= x"0008" & x"03ff"; -- Move head
        snake_mesh_xy_input(1) <= x"0008" & x"03ff"; -- Move head
        snake_mesh_xy_input(2) <= x"0008" & x"03ff"; -- Move head
        wait for 6000 ns;

        -- Disable the module
        enable <= '0';
        wait for 2000 ns;
        
        enable <= '1';

        -- Finish the simulation
        wait;
    end process;

end architecture;

