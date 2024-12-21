library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Entradas y salidas del detector de flanco
entity EDGEDTCTR is
    Port ( CLK     : in STD_LOGIC; --Reloj
           SYNC_IN : in std_logic; --Entrada síncrona
           EDGE    : out std_logic --Flanco
    );
end EDGEDTCTR;
--Funcionamiento del detector de flanco 
architecture Behavioral of EDGEDTCTR is
--Señal intermedia
    signal sreg : std_logic_vector(2 downto 0);
begin
  process (CLK) --Actualizamos con el reloj
    begin
    --Si detectamos un flanco positivo de reloj
     if rising_edge(CLK) then
     --Concatenamos la señal con la entrada síncrona
        sreg <= sreg(1 downto 0) & SYNC_IN;
     end if;
   end process;
   
   --Cuando la señal llega a 100 detectamos un flanco
 with sreg select
    EDGE <= '1' when "100",
    '0' when others;
    
 end Behavioral;