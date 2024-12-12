----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 10:56:16
-- Design Name: 
-- Module Name: Main_Game - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_Game is
  port(
	    BUTTON     :  in std_logic_vector(2 downto 0);
	    LOSE       :  in std_logic;
        CLK_100MHz :  in std_logic;
        STATE      :  out std_logic_vector(1 downto 0)
    );
end Main_Game;

architecture Structural of Main_Game is

    Type STATE_T is (S0_START, S1_GAME, S2_GO);
	signal cur_state, nxt_state : STATE_T := S0_START; -- Cualquier cosa que sea estado necesita dos señales
--	constant CLK_PERIOD : time := 10 ns; -- Período del reloj para 100 MHz
--	signal CLK_100MHz : std_logic:= '0';
	
begin
    -- Generación de reloj
--    clk_process : process
--    begin
--        CLK_100MHz <= '0';
--        wait for CLK_PERIOD / 2;
--        CLK_100MHz <= '1';
--        wait for CLK_PERIOD / 2;
--    end process;

	st_reg : process(CLK_100MHz) -- clk state register
    begin
        if rising_edge(CLK_100MHz) then 
        	cur_state <= nxt_state; -- Si se asigna directamente a estado actual se cortocircuita el componente combinacional, creando un oscilador.
        end if;
    end process;
    
    next_st_dec : process -- next state register
    begin
    	nxt_state <= cur_state; -- Evita la aparición de un Latch -> Garantza combinacional
    	case cur_state is	-- Cuando se le da a start empieza a bajar
        	when S0_START =>
            	if BUTTON = "100" then
                	nxt_state <= S1_GAME;
                end if; 
            when S1_GAME => -- Cuando llegue al final de carrera sube
          	    if LOSE = '1' then
                	nxt_state <= S2_GO;
                end if; 
            when S2_GO => -- Cuando termina de subir se para
          	    if BUTTON = "100" then
                	nxt_state <= S0_START;
                end if; 
            when others => 
            	nxt_state <= S0_START;
        end case;
    end process;
    
    out_dec : process -- out decoder
    begin
    	case cur_state is
        	when S0_START =>
                 STATE <= "00";
            when S1_GAME =>
                 STATE <= "01";
            when S2_GO =>
                 STATE <= "10";
            when others =>
                 STATE <= "00";
        end case;
    end process;
end Structural;
