----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2024 16:54:52
-- Design Name: 
-- Module Name: VGA_Manager_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;
use work.Letters.all;

entity VGA_Manager_tb is
end VGA_Manager_tb;

architecture TestBench of VGA_Manager_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component VGA_Manager
        Port (
            START           : in big_letter_array(0 to 4);
            GAMEOVER        : in big_letter_array(0 to 8);
            mode            : in std_logic_vector(1 downto 0);
            clk             : in std_logic;
            snake_length    : in integer range 0 to 20; 
            snake_mesh_xy   : in xys(0 to 19);
            food_xy         : in xy;
            HSync, VSync    : out std_logic;
            red, green, blue: out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals to connect to the UUT
    signal START           : big_letter_array(0 to 4) := (others => (others => (others => '0')));
    signal GAMEOVER        : big_letter_array(0 to 8) := (others => (others => (others => '0')));
    signal mode            : std_logic_vector(1 downto 0) := "00";
    signal clk             : std_logic := '0';
    signal snake_length    : integer range 0 to 20 := 1;
    signal snake_mesh_xy   : xys(0 to 19);
    signal food_xy         : xy := (others => '0');
    signal HSync, VSync    : std_logic;
    signal red, green, blue: std_logic_vector(3 downto 0);

    -- Clock period
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: VGA_Manager
        Port Map (
            START           => START,
            GAMEOVER        => GAMEOVER,
            mode            => mode,
            clk             => clk,
            snake_length    => snake_length,
            snake_mesh_xy   => snake_mesh_xy,
            food_xy         => food_xy,
            HSync           => HSync,
            VSync           => VSync,
            red             => red,
            green           => green,
            blue            => blue
        );

    -- Clock process definition
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
            food_xy(31 downto 16) <= std_logic_vector(to_signed(food_begin_x, 16));
            food_xy(15 downto 0) <= std_logic_vector(to_signed(food_begin_y, 16));

        for i in 0 to 19 loop
            snake_mesh_xy(i)(31 downto 16) <= std_logic_vector(to_signed(300, 16));
            snake_mesh_xy(i)(15 downto 0) <= std_logic_vector(to_signed(450, 16));
        end loop;

        -- Test mode 00
        mode <= "00";
        wait for 100 ns;

        -- Test mode 01
        mode <= "01";
        snake_length <= 5;
        wait for 300 ns;

        -- End simulation
        wait;
    end process;

end TestBench;

