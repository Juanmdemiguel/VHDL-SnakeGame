----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2024 17:29:32
-- Design Name: 
-- Module Name: String_tb - Behavioral
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
use IEEE.std_logic_1164.all;
use work.Letters.all;

entity BigLetters_tb is
end BigLetters_tb;

architecture Behavioral of BigLetters_tb is
    -- Señales para conectar al DUT (Design Under Test)
    signal clk       : std_logic := '0';
    signal GAME_OVER : big_letter_array(0 to 8);
    signal START     : big_letter_array(0 to 4);

    -- Constantes de tiempo
    constant CLK_PERIOD : time := 10 ns; -- Período del reloj para 100 MHz

    -- DUT instantiation
    component Scaled_String
        port(
            clk       : in  std_logic;
            GAME_OVER : out big_letter_array(0 to 8);
            START     : out big_letter_array(0 to 4)
        );
    end component;

begin
    -- Generación de reloj
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Instanciación del DUT
    UUT: Scaled_String
        port map(
            clk       => clk,
            GAME_OVER => GAME_OVER,
            START     => START
        );
    -- Proceso de estímulos
    stimulus_process: process
     variable row, col : integer;
     variable src_row, src_col : integer;
     variable errA, errE, errR : std_logic:= '0';
        
    begin
    wait for 4000ns;
        for row in 0 to CHAR_LARGE_HEIGHT - 1 loop -- for each row in large chars
                src_row := row / SCALE_FACTOR; -- get the original row's index
                for col in 0 to CHAR_LARGE_WIDTH - 1 loop -- for each column in large chars
                    src_col := col / SCALE_FACTOR; -- original column's index
                      if TotalLetters(0)(src_row)(src_col) /= GAME_OVER(1)(row)(col) then 
                        report "[ERROR]: failure in letter A (" & integer'image(row)& "," & integer'image(col)& "). " &
                       "Expected: " & std_logic'image(TotalLetters(0)(src_row)(src_col)) & "Got: " & std_logic'image(GAME_OVER(1)(row)(col));
                       errA := '1';
                    end if;
                end loop;
            end loop;   
            
             for row in 0 to CHAR_LARGE_HEIGHT - 1 loop -- for each row in large chars
                src_row := row / SCALE_FACTOR; -- get the original row's index
                for col in 0 to CHAR_LARGE_WIDTH - 1 loop -- for each column in large chars
                    src_col := col / SCALE_FACTOR; -- original column's index
                      if TotalLetters(1)(src_row)(src_col) /= GAME_OVER(3)(row)(col) then 
                        report "[ERROR]: failure in letter E (" & integer'image(row)& "," & integer'image(col)& "). " &
                       "Expected: " & std_logic'image(TotalLetters(0)(src_row)(src_col)) & "Got: " & std_logic'image(GAME_OVER(1)(row)(col));
                       errE := '1';
                    end if;
                end loop;
            end loop;   
            
            for row in 0 to CHAR_LARGE_HEIGHT - 1 loop -- for each row in large chars
                src_row := row / SCALE_FACTOR; -- get the original row's index
                for col in 0 to CHAR_LARGE_WIDTH - 1 loop -- for each column in large chars
                    src_col := col / SCALE_FACTOR; -- original column's index
                      if TotalLetters(5)(src_row)(src_col) /= START(3)(row)(col) then 
                        report "[ERROR]: failure in letter R (" & integer'image(row)& "," & integer'image(col)& "). " &
                       "Expected: " & std_logic'image(TotalLetters(0)(src_row)(src_col)) & "Got: " & std_logic'image(GAME_OVER(1)(row)(col));
                       errR := '1';
                    end if;
                end loop;
            end loop;   
    
   if ErrA = '0' then
    report "No errors found in A of GAMEOVER";
   end if; 
   if ErrE = '0' then
    report "No errors found in E of GAMEOVER";
   end if; 
   if ErrR = '0' then
       report "No errors found in R of START";
   end if;
            
    wait; -- Finaliza la simulación
    end process;

end Behavioral;

