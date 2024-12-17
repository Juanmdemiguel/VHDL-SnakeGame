----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2024 17:39:36
-- Design Name: 
-- Module Name: MOVE_INIT_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MOVE_INIT_TB is
--  Port ( );
end MOVE_INIT_TB;

architecture Behavioral of MOVE_INIT_TB is

-- Component declaration
    component Move_Init
        port (
            clk_60hz       : in  std_logic;
            enable         : in  std_logic;
            
            snake_length   : out integer range 0 to snake_length_max;
            snake_mesh_xy  : out xys(0 to snake_length_max - 1);
            food_xy        : out xy;
            
            lose           : out std_logic
        );
    end component;

    -- Signals for testbench
    signal clk_60hz      : std_logic := '0';
    signal enable        : std_logic := '0';

    signal snake_length  : integer range 0 to snake_length_max;
    signal snake_mesh_xy : xys(0 to snake_length_max - 1);
    signal food_xy       : xy;

    signal lose          : std_logic;

    -- Clock generation constants
    constant clk_period  : time := 100 ns; -- 60 Hz clock

begin

    -- Instantiate the DUT (Device Under Test)
    dut : Move_Init
        port map (
            clk_60hz      => clk_60hz,
            enable        => enable,
            snake_length  => snake_length,
            snake_mesh_xy => snake_mesh_xy,
            food_xy       => food_xy,
            lose          => lose
        );

    -- Clock generation
    clk_process : process
   begin
        while true loop
            clk_60hz <= '1';
            wait for clk_period / 2;
            clk_60hz <= '0';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus : process
    begin
        -- Initial conditions
        enable <= '0';
        wait for clk_period * 2;

        -- Enable the process and verify reset behavior
        enable <= '1';
        wait for clk_period * 5;

        -- Disable the process and check the outputs remain stable
        enable <= '0';
        wait for clk_period * 5;

        -- Re-enable to ensure it reinitializes correctly
        enable <= '1';
        wait for clk_period * 5;

        -- End simulation
        wait;
    end process;

end Behavioral;
