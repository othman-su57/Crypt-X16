library ieee;
use ieee.std_logic_1164.all;

entity MUX_TB is
end entity;

architecture muxArch of MUX_TB is

signal NLLUT_out: std_logic_vector(15 downto 0) := x"1111";
signal ALU_out: std_logic_vector(15 downto 0) := x"2222";
signal shifter_out: std_logic_vector(15 downto 0) := x"3333";
signal CTRL: std_logic_vector(3 downto 0);
signal RESULT: std_logic_vector(15 downto 0);

begin
	
	UUT: entity work.mux
		port map(
			NLLUT_out => NLLUT_out,
			ALU_out => ALU_out,
			shifter_out => shifter_out,
			CTRL => CTRL,
			RESULT => RESULT
		);
		
simulation_process: process
					begin
					
						CTRL <= "0000"; --ALU output1 (CTRL(3) = 0)
						wait for 20 ns;

						CTRL <= "0101"; --ALU output2
						wait for 20 ns;
					
						CTRL <= "0011"; --ALU output3
						wait for 20 ns;
					
						CTRL <= "0100";	--ALU output4
						wait for 20 ns;
					
						CTRL <= "1000"; --shifter output1
						wait for 20 ns;
					
						CTRL <= "1001";	--shifter output2
						wait for 20 ns;
					
						CTRL <= "1010";	--shifter output3
						wait for 20 ns;
					
						CTRL <= "1011";	--NLLUT output
						wait for 20 ns;
					
					wait;
					
					end process;
					
end architecture;
					