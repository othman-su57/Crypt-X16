library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Combinational Logic Unit	(CLU)
-- connects ALU + Shifter + LUT + MUX

entity CLU is
    port (
        A_BUS  : in  std_logic_vector(15 downto 0);
        B_BUS  : in  std_logic_vector(15 downto 0);
        CTRL   : in  std_logic_vector(3 downto 0);
        RESULT : out std_logic_vector(15 downto 0)
    );
end entity CLU;

architecture rtl of structural_VHDL is

    component ALU is
        port (
            ABUS    : in  std_logic_vector(15 downto 0);
            BBUS    : in  std_logic_vector(15 downto 0);
            ALUctrl : in  std_logic_vector(3 downto 0);
            ALUOUT  : out std_logic_vector(15 downto 0)
        );
    end component;

    component shifter is
        generic ( N : integer := 16 );
        port (
            SHIFTINPUT : in  std_logic_vector(N-1 downto 0);
            SHIFT_Ctrl : in  std_logic_vector(3 downto 0);
            SHIFTOUT   : out std_logic_vector(N-1 downto 0)
        );
    end component;

    component non_linear_lookup is
        port (
            LUTIN  : in  std_logic_vector(7 downto 0);
            LUTOUT : out std_logic_vector(7 downto 0)
        );
    end component;

    signal alu_out    : std_logic_vector(15 downto 0);
    signal shift_out  : std_logic_vector(15 downto 0);
    signal lut_out    : std_logic_vector(7 downto 0);
    signal lut_result : std_logic_vector(15 downto 0);

begin

    -- TODO: port map ALU
    -- TODO: port map shifter
    -- TODO: port map non_linear_lookup
    -- TODO: lut_result <= A_BUS(15 downto 8) & lut_out
    -- TODO: MUX process

end architecture rtl;