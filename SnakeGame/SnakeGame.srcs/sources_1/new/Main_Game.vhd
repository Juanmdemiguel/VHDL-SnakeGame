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
    signal cur_state : STATE_T := S0_START; -- Estado actual
    signal nxt_state : STATE_T;             -- Próximo estado
    signal counter   : integer range 0 to 200_000_000 := 0; -- Contador de ciclos para S2_GO

begin

    -- Registro de estado
    state_register: process (CLK_100MHz)
    begin
        if rising_edge(CLK_100MHz) then
            cur_state <= nxt_state;
        end if;
    end process;

    -- Lógica combinacional de próximo estado
    next_st_dec : process(cur_state, LOSE, BUTTON)
    begin
        nxt_state <= cur_state; -- Por defecto, permanece en el estado actual
        case cur_state is
            when S0_START =>
                if BUTTON = "100" then
                    nxt_state <= S1_GAME;
                end if;
            when S1_GAME =>
                if (LOSE = '1' and BUTTON = "100") then
                    nxt_state <= S2_GO;
                end if;
            when S2_GO =>
                if BUTTON = "100" then
                    nxt_state <= S0_START;
                end if;
            when others =>
                nxt_state <= S0_START;
        end case;
    end process;



    -- Decodificador de salidas
    out_dec : process(cur_state)
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

