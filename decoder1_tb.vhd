LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY decoder1_tb IS
END decoder1_tb;
architecture arch_decoder1 of decoder1_tb is
	component decoder1 is
	PORT (
		input:in std_logic_vector( 2 downto 0);
		output: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	end component;
	signal input_n:std_logic_VECTOR(2 downto 0);
	signal output_n:std_logic_VECTOR(7 downto 0);
begin
	u0:decoder1 port map(input_n,output_n);
	process
	begin
	input_n <= "000";
	wait for 20 ns;
	input_n <= "001";
	wait for 20 ns;
	input_n <= "010";
	wait for 20 ns;
	input_n <= "011";
	wait for 20 ns;
	input_n <= "100";
	wait for 20 ns;
	input_n <= "101";
	wait for 20 ns;
	input_n <= "110";
	wait for 20 ns;
	input_n <= "111";
	end process;
end arch_decoder1;