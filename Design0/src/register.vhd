library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Register File
-- 16x16 bit synchronous read/write

entity register_file is
    port (
        clock  : in  std_logic;
        reset  : in  std_logic;
        RdWEn  : in  std_logic;
        RES    : in  std_logic_vector(15 downto 0);
        Ra     : in  std_logic_vector(3 downto 0);
        Rb     : in  std_logic_vector(3 downto 0);
        Rd     : in  std_logic_vector(3 downto 0);
        SRCa   : out std_logic_vector(15 downto 0);
        SRCb   : out std_logic_vector(15 downto 0)
    );
end entity register_file;

architecture rtl of register_file is

    type reg_array is array(0 to 15) of std_logic_vector(15 downto 0);
    signal REG_FILE : reg_array;

begin

    -- TODO: write process
    -- TODO: read process

end architecture rtl;