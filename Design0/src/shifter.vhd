library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Shifter module
-- operations: ROR8 ROR4 SLL8

entity shifter is
    generic (
        N : integer := 16
    );
    port (
        SHIFTINPUT : in  std_logic_vector(N-1 downto 0);
        SHIFT_Ctrl : in  std_logic_vector(3 downto 0);
        SHIFTOUT   : out std_logic_vector(N-1 downto 0)
    );
end entity shifter;

architecture rtl of shifter is
begin

    -- TODO

end architecture rtl;