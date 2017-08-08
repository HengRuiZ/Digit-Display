LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY decoder_tb IS
END decoder_tb;
architecture arch_decoder of decoder_tb is
	component decoder is
	PORT (
		input:in std_logic_vector( 3 downto 0);
		output: out STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
	end component;
	signal input_n:std_logic_VECTOR(3 downto 0);
	signal output_n:std_logic_VECTOR(6 downto 0);
begin
	u0:decoder port map(input_n,output_n);
	process
	begin
	input_n <= "0000";
	wait for 20 ns;
	input_n <= "0001";
	wait for 20 ns;
	input_n <= "0010";
	wait for 20 ns;
	input_n <= "0011";
	wait for 20 ns;
	input_n <= "0100";
	wait for 20 ns;
	input_n <= "0101";
	wait for 20 ns;
	input_n <= "0110";
	wait for 20 ns;
	input_n <= "0111";
	wait for 20 ns;
	input_n <= "1000";
	wait for 20 ns;
	input_n <= "1001";
	wait for 20 ns;
	end process;
end arch_decoder;