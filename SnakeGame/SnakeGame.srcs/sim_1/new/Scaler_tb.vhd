----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.12.2024 19:14:06
-- Design Name: 
-- Module Name: Scaler_tb - Behavioral
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

entity Scaler_tb is
-- No se necesitan puertos en el testbench
end Scaler_tb;

architecture Behavioral of Scaler_tb is
    -- Señales para conectar al DUT (Design Under Test)
    signal clk       : std_logic := '0';
    signal out_char : char_big_matrix := (others => (others => '0'));
  

    -- Constantes de tiempo
    constant CLK_PERIOD : time := 10 ns; -- Período del reloj para 100 MHz

    -- DUT instantiation
    component Scaler 
    port (
        clk       : in  std_logic;
        char_in   : in  char_small_matrix;
        char_out  : out char_big_matrix  
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
    dut: Scaler
        port map(
            clk       => clk,
            char_in => TotalLetters(0),
            char_out     => out_char
        );
    -- Proceso de estímulos
    test_process: process
        variable row, col : integer;
        variable src_row, src_col : integer;
        variable error : std_logic := '0';
    begin
        wait for 4500ns; --enough time for the scaler to scale
             for row in 0 to CHAR_LARGE_HEIGHT - 1 loop -- for each row in large chars
                src_row := row / SCALE_FACTOR; -- get the original row's index
                for col in 0 to CHAR_LARGE_WIDTH - 1 loop -- for each column in large chars
                    src_col := col / SCALE_FACTOR; -- original column's index
                    if TotalLetters(0)(src_row)(src_col) /= out_char(row)(col) then
                       report "[ERROR]: failure in (" & integer'image(row)& "," & integer'image(col)& "). " &
                       "Expected: " & std_logic'image(TotalLetters(0)(src_row)(src_col)) & "Got: " & std_logic'image(out_char(row)(col));
                       error := '1';
                    end if;
                end loop;
            end loop;   
            
             if error = '0' then 
                  report "[COMPLETED]: Simulation correctly finished";
             end if;
    wait; -- Finaliza la simulación
    end process;

end Behavioral;

