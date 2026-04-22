library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_TB is
end entity;

architecture sim of MUX_TB is

    signal ALU_OUT   : std_logic_vector(15 downto 0);
    signal SHIFT_OUT : std_logic_vector(15 downto 0);
    signal LUT_OUT   : std_logic_vector(15 downto 0);
    signal SEL       : std_logic_vector(1 downto 0);
    signal MUX_OUT   : std_logic_vector(15 downto 0);

	begin
		
	    UUT: entity MUX
	        port map(ALU_OUT => ALU_OUT,SHIFT_OUT => SHIFT_OUT,LUT_OUT=> LUT_OUT,
			         SEL => SEL,MUX_OUT => MUX_OUT);
			
	    process
	    begin
	        ALU_OUT   <= x"000A";
	        SHIFT_OUT <= x"00B0";
	        LUT_OUT   <= x"0C00";
	        SEL <= "01"; wait for 10 ns;  -- ALU
	        SEL <= "10"; wait for 10 ns;  -- SHIFT
	        SEL <= "11"; wait for 10 ns;  -- LUT
	        SEL <= "00"; wait for 10 ns;  -- default
			--End Simulation
	        wait;
	    end process;

end architecture;