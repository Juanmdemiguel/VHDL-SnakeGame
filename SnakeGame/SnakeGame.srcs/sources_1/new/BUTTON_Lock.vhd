----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2024 18:35:23
-- Design Name: 
-- Module Name: BUTTON_Lock - Behavioral
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

entity BUTTON_Lock is
    Port (
        clk_60Hz       : in std_logic;
        enable         : in std_logic;
        buttons_input  : in std_logic_vector (2 downto 0);
        buttons_output : out std_logic_vector (2 downto 0)
    );
end BUTTON_Lock;

architecture Behavioral of BUTTON_Lock is
    type LOCK is (LOCK_UP, LOCK_DOWN, LOCK_LEFT, LOCK_RIGHT, LOCK_NONE);  --Tipo de datos
    signal cur_state, nxt_state : LOCK;  --Estado actual y proximo

begin
st_reg: process (enable, clk_60Hz)  --State register
  begin
    if enable = '0' then  --Entradas asincronas primero
      cur_state <= LOCK_NONE;
    elsif rising_edge(clk_60Hz) then
      cur_state <= nxt_state;
    end if;
  end process;
    
  nxt_st_dec: process (buttons_input)  --Next state register
  begin
    nxt_state <= cur_state;  --Para mantener el estado en caso de que no
                             --suceda nada. Si no se crearía un latch.
    case cur_state is
      when LOCK_NONE      =>  --Caso 1
        if buttons_input = "000" then nxt_state <= LOCK_UP;
        elsif buttons_input = "001" then nxt_state <= LOCK_DOWN;
        elsif buttons_input = "010" then nxt_state <= LOCK_LEFT;
        elsif buttons_input = "011" then nxt_state <= LOCK_RIGHT;
        end if;
      
      when LOCK_UP  =>  --Caso 2
        if buttons_input = "001" then nxt_state <= LOCK_DOWN;
        elsif buttons_input = "010" then nxt_state <= LOCK_LEFT;
        elsif buttons_input = "011" then nxt_state <= LOCK_RIGHT;
        end if;
      
      when LOCK_DOWN =>  --Caso 3
        if buttons_input = "000" then nxt_state <= LOCK_UP;
        elsif buttons_input = "010" then nxt_state <= LOCK_LEFT;
        elsif buttons_input = "011" then nxt_state <= LOCK_RIGHT;
        end if;
        
      when LOCK_LEFT =>  --Caso 4
        if buttons_input = "000" then nxt_state <= LOCK_UP;
        elsif buttons_input = "001" then nxt_state <= LOCK_DOWN;
        elsif buttons_input = "011" then nxt_state <= LOCK_RIGHT;
        end if;
        
      when LOCK_RIGHT =>  --Caso 5
        if buttons_input = "000" then nxt_state <= LOCK_UP;
        elsif buttons_input = "001" then nxt_state <= LOCK_DOWN;
        elsif buttons_input = "010" then nxt_state <= LOCK_LEFT;
        end if;
        
      when others       =>  --El resto de casos que no tengamos en mente
                            --pero que la máquina si tenga en cuenta.
        nxt_state <= cur_state;
      end case;
  end process;
  
  out_dec: process   --Third state // Solo entradas asincronas entre '()'
  begin
    case cur_state is
      when LOCK_NONE      =>  --Caso 1
          buttons_output <= "101";
      
      when LOCK_UP      =>  --Caso 2
          buttons_output <= "000";
      
      when LOCK_DOWN      =>  --Caso 3
          buttons_output <= "001";
          
      when LOCK_LEFT      =>  --Caso 4
          buttons_output <= "010";
          
      when LOCK_RIGHT      =>  --Caso 5
          buttons_output <= "011";
        
      when others       =>  --El resto de casos que no tengamos en mente
                            --pero que la máquina si tenga en cuenta.
          buttons_output <= "101";
      end case;
  end process;


end Behavioral;
