library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLU_TB is
end entity;

architecture sim of CLU_TB is

    signal A_BUS  : std_logic_vector(15 downto 0);
    signal B_BUS  : std_logic_vector(15 downto 0);
    signal CTRL   : std_logic_vector(3 downto 0);
    signal RESULT : std_logic_vector(15 downto 0);

	begin 
		
	    UUT: entity CLU
	        port map(A_BUS => A_BUS,B_BUS => B_BUS,CTRL => CTRL,RESULT => RESULT);
	
	    process
	    begin
	        -- ALU ADD
	        A_BUS <= x"0005";
	        B_BUS <= x"0003";
	        CTRL  <= "0000"; wait for 10 ns;
	        -- ALU AND
	        CTRL  <= "0010"; wait for 10 ns;
	        -- SHIFT
	        CTRL  <= "1000"; wait for 10 ns;
	        -- LUT
	        CTRL  <= "1011"; wait for 10 ns;
			--End simulation
	        wait;
	    end process;

end architecture;