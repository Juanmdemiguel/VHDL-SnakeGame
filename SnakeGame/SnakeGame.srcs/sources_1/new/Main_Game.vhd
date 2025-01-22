----------------------------------------------------------------------------------
-- Company: UPM
-- Engineer: Iván Asensio Díez
-- Engineer: Mario Luna López
-- Engineer: Juan Muñoz de Bustillo de Miguel
-- 
-- Create Date: 12.12.2024 21:09:15
-- Design Name: Main_Game
-- Module Name: Main_Game - Structural
-- Project Name: VHDL_SnakeGame
-- Target Devices: Nexys4 - DDR
-- Tool Versions: Vivado 2024.1
-- Description: State machine to control the change between start and end menu and the main game
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
	    BUTTON     :  in std_logic;
	    LOSE       :  inout std_logic;
        CLK_100MHz :  in std_logic;
        STATE      :  out std_logic_vector(1 downto 0)
    );
end Main_Game;

architecture Structural of Main_Game is

    Type STATE_T is (S0_START, S1_GAME, S2_GO);
    signal cur_state : STATE_T := S0_START; -- Estado actual
    signal nxt_state : STATE_T;             -- Próximo estado
    signal counter   : integer range 0 to 200_000_000 := 0; -- Contador de ciclos para S2_GO
    signal s_lose :std_logic;
    
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
                if BUTTON = '1' then
                    nxt_state <= S1_GAME;
                    s_lose<='0';
                end if;
            when S1_GAME =>
                if (LOSE = '1' or BUTTON = '1') then
                    nxt_state <= S2_GO;
                    s_lose<='1';
                end if;
            when S2_GO =>
                if BUTTON = '1' then
                    nxt_state <= S0_START;
                    s_lose<='0';
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

