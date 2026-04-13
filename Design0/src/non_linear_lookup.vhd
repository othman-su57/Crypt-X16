library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Nonlinear Lookup Unit
-- S_Box1 on upper nibble, S_Box2 on lower nibble

entity non_linear_lookup is
    port (
        LUTIN  : in  std_logic_vector(7 downto 0);
        LUTOUT : out std_logic_vector(7 downto 0)
    );
end entity non_linear_lookup;

architecture rtl of non_linear_lookup is
begin

    -- TODO

end architecture rtl;