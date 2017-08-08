LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY counter_tb IS
END counter_tb;
architecture arch_counter_tb of counter_tb is
	component counter is
	port(
	clkin:in std_logic;
	clkout:out std_logic_vector(2 downto 0)
	);
	end component;
	signal input_n:std_logic;
	signal output_n:std_logic_VECTOR(2 downto 0);
begin
	u0:counter port map(input_n,output_n);
	process
	begin
	input_n <= '0';
	wait for 10 ns;
	input_n <= '1';
	wait for 10 ns;
	end process;
end arch_counter_tb;
