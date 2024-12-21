library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Entradas y salidas del sincronizador
entity BUTTONS_Sync is
    Port ( 
            clk_60Hz : in std_logic;--Reloj de entrada
            button_center_input : in std_logic; --Botón de entrada
            button_output : out std_logic --Botón de salida
    );
end BUTTONS_Sync;
--Suncionamiento del sincronizador
architecture Behavioral of BUTTONS_Sync is
--Señal intermedia del sincronizador
    signal sreg : std_logic_vector(1 downto 0) := "00";
begin
--Actualizamos con el reloj
process (clk_60Hz)
begin
--Al recibir un flanco de subida
     if rising_edge(clk_60hz) then
--La salida se iguala al segundo valor del registro intermedio
         button_output <= sreg(1);
--El registro intermedio se convierte en su valor inicial concatenado con la señal del botón de entrada
         sreg <= sreg(0) & button_center_input;
     end if; 
 end process;
end Behavioral;
