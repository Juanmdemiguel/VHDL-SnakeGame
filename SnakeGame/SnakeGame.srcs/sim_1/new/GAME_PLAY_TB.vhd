----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2024 17:58:03
-- Design Name: 
-- Module Name: GAME_PLAY_TB - Behavioral
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

entity GAME_PLAY_TB is
--  Port ( );
end GAME_PLAY_TB;

architecture Behavioral of GAME_PLAY_TB is

    -- Component declaration for GAME_Play
    component GAME_Play is
        port(
            clk_60hz        : in  std_logic;
            clk_108Mhz      : in  std_logic;
            reset           : in std_logic;
            play            : in std_logic;
            teclado         : in std_logic_vector(2 downto 0);
            
            pyton_length    : out integer range 0 to pyton_length_max;
            pyton_mesh_pos  : out xys(0 to pyton_length_max - 1);
            apple_pos       : out xy;
            
            lose            : out std_logic;
            
            led_choque      : out std_logic
        );
    end component;

    -- Signals to connect to the GAME_Play entity
    signal clk_60hz        : std_logic := '0';
    signal clk_108Mhz      : std_logic := '0';
    signal reset           : std_logic := '0';
    signal play            : std_logic := '0';
    signal teclado         : std_logic_vector(2 downto 0):="111";

    signal pyton_length    : integer range 0 to pyton_length_max;
    signal pyton_mesh_pos  : xys(0 to pyton_length_max - 1);
    signal apple_pos       : xy;
    signal lose            : std_logic :='0';
    signal led             : std_logic;

    -- Clock period definition
    constant clk_period : time := 10 ns; -- 60Hz clock

begin
    -- Instantiate the GAME_Play entity
    uut: GAME_Play
        port map (
            clk_60hz        => clk_60hz,
            clk_108Mhz      => clk_108Mhz,
            reset           => reset,
            play            => play,
            teclado        => teclado,
            
            pyton_length    => pyton_length,
            pyton_mesh_pos  => pyton_mesh_pos,
            apple_pos       => apple_pos,
           
            lose            => lose,
            
            led_choque      => led
        );

    -- Clock generation process
    clk_process: process
    begin
        while true loop
            clk_60hz <= '0';
            wait for clk_period / 2;
            clk_60hz <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;
    
    -- Clock generation process
    clk_process2: process
    begin
        while true loop
            clk_108Mhz <= '0';
            wait for clk_period / 2;
            clk_108Mhz <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus: process
    begin
        -- Reset the system
        reset <= '1';
        wait for 8 * clk_period;
        reset <= '0';
        
        -- Start the game
        play <= '1';
        wait for clk_period;

        -- Test teclado movements
        teclado <= "111"; -- Move init/none     -> Only at firt time
        wait for 10 * clk_period;

        teclado <= "000"; -- Move up
        wait for 10 * clk_period;

        teclado <= "001"; -- Move down
        wait for 10 * clk_period;

        teclado <= "010"; -- Move left
        wait for 10 * clk_period;
        
        teclado <= "011"; -- Move right
        wait for 10 * clk_period;
        
        teclado <= "100"; -- Move none      -> Case imposible
        wait for 10 * clk_period;

        
        -- Stop the game
        play <= '0';
        wait for 50 * clk_period;
        
        play <= '1';
        wait for 5 * clk_period;
        
        teclado <= "000"; -- Move up
        wait for 10 * clk_period;

        -- End simulation
        wait;
    end process;
end Behavioral;
