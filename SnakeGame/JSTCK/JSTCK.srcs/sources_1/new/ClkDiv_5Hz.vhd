library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClkDiv_5Hz is
    Port (
        CLK    : in  STD_LOGIC;           -- Entrada: Reloj de 100 MHz
        RST    : in  STD_LOGIC;           -- Entrada: Reset
        CLKOUT : out STD_LOGIC            -- Salida: Reloj de 5 Hz
    );
end ClkDiv_5Hz;

architecture Behavioral of ClkDiv_5Hz is

    -- Parámetro: Valor límite del contador (100 MHz / 2 * 5 Hz)
    constant cntEndVal : unsigned(23 downto 0) := x"989680";

    -- Señales internas
    signal clkCount : unsigned(23 downto 0) := (others => '0');  -- Contador de reloj
    signal clkOut_reg : STD_LOGIC := '0';                        -- Registro para salida del reloj

begin

    -- Asignación de la salida del reloj
    CLKOUT <= clkOut_reg;

    -- Proceso del divisor de reloj
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                -- Reiniciar contador y salida
                clkCount <= (others => '0');
                clkOut_reg <= '0';
            else
                -- Incrementar el contador o alternar la salida cuando se alcanza el valor límite
                if clkCount = cntEndVal then
                    clkOut_reg <= not clkOut_reg;  -- Alternar la salida
                    clkCount <= (others => '0');  -- Reiniciar el contador
                else
                    clkCount <= clkCount + 1;     -- Incrementar el contador
                end if;
            end if;
        end if;
    end process;

end Behavioral;
