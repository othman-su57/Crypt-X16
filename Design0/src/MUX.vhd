library ieee;
use ieee.std_logic_1164.all;

entity MUX is 
	port(
	NLLUT_out,ALU_out,shifter_out: in std_logic_vector(15 downto 0);
	CTRL: in std_logic_vector(3 downto 0);
	RESULT: out std_logic_vector(15 downto 0)
	);
end entity;

architecture muxArch of MUX is 
begin
	
	RESULT <= ALU_out when CTRL(3) = '0' else
			  NLLUT_out when CTRL(1 downto 0) = "11" else
			  shifter_out;
			
end architecture;
			  
			  