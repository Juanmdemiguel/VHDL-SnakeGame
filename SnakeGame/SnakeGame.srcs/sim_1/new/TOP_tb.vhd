----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2024 12:13:26
-- Design Name: 
-- Module Name: TOP_tb - Behavioral
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
--
--
--      TESTBENCH NO ACTUALIZADO
--      Este testbench fue utilizado en versiones previas a la incorporación 
--      de varias funcionabilidades, es especial el teclado.
--      NO SE ENCUENTRA EN ESTADO FUNCIONAL
--
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.Types.ALL;
use work.Letters.ALL;

ENTITY top_tb IS
END top_tb;

ARCHITECTURE behavior OF top_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT TOP_2
        PORT(
            clk           : IN std_logic;
            reset         : IN std_logic;
            button_up     : IN std_logic;
            button_down   : IN std_logic;
            button_left   : IN std_logic;
            button_right  : IN std_logic;
            button_center : IN std_logic;
            HSync, VSync  : OUT std_logic;
            Red, Green, Blue : OUT std_logic_vector(3 DOWNTO 0);
            LEDs           : out std_logic_vector(4 downto 0);
            --LED            : out std_logic_vector(2 downto 0);
            STATE_OUT       : OUT std_logic_vector(2 downto 0);
            MAINSTATE       : OUT std_logic_vector(1 downto 0);
            lose          : out std_logic; 
            pyton_length  : OUT integer RANGE 0 TO 20;
            pyotn_mesh_pos : OUT xys(0 TO pyton_length_max-1);
            apple_pos       : OUT xy
        );
    END COMPONENT;

    -- Signals to connect to UUT
    SIGNAL clk           : std_logic := '0';
    SIGNAL reset         : std_logic := '0';
    SIGNAL button_up     : std_logic := '0';
    SIGNAL button_down   : std_logic := '0';
    SIGNAL button_left   : std_logic := '0';
    SIGNAL button_right  : std_logic := '0';
    SIGNAL button_center : std_logic := '0';
    SIGNAL HSync         : std_logic;
    SIGNAL VSync         : std_logic;
    SIGNAL Red, Green, Blue : std_logic_vector(3 DOWNTO 0);
    SIGNAL LEDs          : std_logic_vector(4 downto 0);
    --SIGNAL LED           : std_logic_vector(2 downto 0);
    SIGNAL STATE_OUT     : std_logic_vector(2 downto 0);
    SIGNAL MAINSTATE     : std_logic_vector(1 downto 0);
    SIGNAL lose          : std_logic;
    SIGNAL pyton_length  : integer RANGE 0 TO 20;
    SIGNAL pyton_mesh_pos : xys(0 TO pyton_length_max-1);
    SIGNAL apple_pos       : xy;

    CONSTANT clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: TOP_2 PORT MAP (
        clk => clk,
        reset => reset,
        button_up => button_up,
        button_down => button_down,
        button_left => button_left,
        button_right => button_right,
        button_center => button_center,
        HSync => HSync,
        VSync => VSync,
        Red => Red,
        Green => Green,
        Blue => Blue,
        leds => leds,
        --led => led,
        state_out => state_out,
        mainstate => mainstate,
        lose => lose,
        pyton_length => pyton_length,
        pyton_mesh_pos => pyton_mesh_pos,
        apple_pos => apple_pos
    );

    -- Clock generation
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period / 2;
        clk <= '1';
        WAIT FOR clk_period / 2;
    END PROCESS;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Reset the system
        reset <= '1';
        WAIT FOR 10*clk_period;
        reset <= '0';

        -- Simulate button presses
        button_up <= '1';
        WAIT FOR 10*clk_period;
        button_up <= '0';

        button_center <= '1';
        WAIT FOR 10*clk_period;
        button_center <= '0';

        button_left <= '1';
        WAIT FOR 10*clk_period;
        button_left <= '0';

        button_right <= '1';
        WAIT FOR 10*clk_period;
        button_right <= '0';

        button_down <= '1';
        WAIT FOR 10*clk_period;
        button_down <= '0';
        
        button_center <= '1';
        WAIT FOR 10*clk_period;
        button_center <= '0';

        -- Finish simulation
        WAIT FOR 500 ns;
        WAIT;
    END PROCESS;

END behavior;
