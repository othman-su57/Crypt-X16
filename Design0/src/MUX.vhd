library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 3x1 Multiplexer (16-bit)
-- Selects one of three inputs: ALU, Shifter, or LUT

entity MUX is
    port (
        ALU_OUT   : in  std_logic_vector(15 downto 0); -- From ALU
        SHIFT_OUT : in  std_logic_vector(15 downto 0); -- From Shifter
        LUT_OUT   : in  std_logic_vector(15 downto 0); -- From LUT
        SEL       : in  std_logic_vector(1 downto 0);  -- Selection signal
        MUX_OUT   : out std_logic_vector(15 downto 0)  -- Final output
    );
end entity;

architecture rtl of MUX is
begin

    -- Combinational MUX logic
    process(ALU_OUT, SHIFT_OUT, LUT_OUT, SEL)
	begin
	    case SEL is
	        when "01" => MUX_OUT <= ALU_OUT;    -- ALU
	        when "10" => MUX_OUT <= SHIFT_OUT;  -- Shifter
	        when "11" => MUX_OUT <= LUT_OUT;    -- LUT
	        when others => MUX_OUT <= (others => '0');
    	end case;
	end process;

end architecture;