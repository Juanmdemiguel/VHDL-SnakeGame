library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PmodJSTK is
    Port (
        CLK     : in  STD_LOGIC;       -- 100 MHz clock
        RST     : in  STD_LOGIC;       -- Reset
        sndRec  : in  STD_LOGIC;       -- Send/receive request
        DIN     : in  STD_LOGIC_VECTOR(7 downto 0); -- Data to send to slave
        MISO    : in  STD_LOGIC;       -- Master-In Slave-Out
        SS      : out STD_LOGIC;       -- Slave Select (active low)
        SCLK    : out STD_LOGIC;       -- Serial Clock
        MOSI    : out STD_LOGIC;       -- Master-Out Slave-In
        DOUT    : out STD_LOGIC_VECTOR(39 downto 0) -- Data read from slave
    );
end PmodJSTK;

architecture Behavioral of PmodJSTK is

    -- Internal signals
    signal iSCLK       : STD_LOGIC;                    -- Internal serial clock
    signal getByte     : STD_LOGIC;                    -- Initiates a byte transfer
    signal sndData     : STD_LOGIC_VECTOR(7 downto 0); -- Data to be sent to slave
    signal RxData      : STD_LOGIC_VECTOR(7 downto 0); -- Data received from slave
    signal BUSY        : STD_LOGIC;                    -- Handshake between SPI_Int and SPI_Ctrl

begin

    -- SPI Controller
    SPI_Ctrl_inst : entity work.spiCtrl
        port map (
            CLK     => iSCLK,
            RST     => RST,
            sndRec  => sndRec,
            BUSY    => BUSY,
            DIN     => DIN,
            RxData  => RxData,
            SS      => SS,
            getByte => getByte,
            sndData => sndData,
            DOUT    => DOUT
        );

    -- SPI Interface (Mode 0)
    SPI_Int_inst : entity work.spiMode0
        port map (
            CLK     => iSCLK,
            RST     => RST,
            sndRec  => getByte,
            DIN     => sndData,
            MISO    => MISO,
            MOSI    => MOSI,
            SCLK    => SCLK,
            BUSY    => BUSY,
            DOUT    => RxData
        );

    -- Clock Divider for 66.67 kHz
    Clock_Divider_inst : entity work.ClkDiv_66_67kHz
        port map (
            CLK     => CLK,
            RST     => RST,
            CLKOUT  => iSCLK
        );

end Behavioral;

