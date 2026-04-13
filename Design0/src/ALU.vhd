library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ALU module
-- operations: ADD SUB AND OR XOR NOT MOV NOP

entity ALU is
    port (
        ABUS    : in  std_logic_vector(15 downto 0);
        BBUS    : in  std_logic_vector(15 downto 0);
        ALUctrl : in  std_logic_vector(3 downto 0);
        ALUOUT  : out std_logic_vector(15 downto 0)
    );
end entity ALU;

architecture rtl of ALU is
begin

    -- TODO

end architecture rtl;