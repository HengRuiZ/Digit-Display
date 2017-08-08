LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY driver_tb IS
END driver_tb;
architecture arch_driver_tb of driver_tb is
	component driver is
	port(
		  dataslct  :in std_logic_vector(2 downto 0);
		  datain    :in std_logic_vector(3 downto 0);
		  dataen:in std_logic;
		  clk:in std_logic;
		  slctout :out std_logic_vector(7 downto 0);
		  dataout:out std_logic_vector(6 downto 0)
	);
	end component;
	signal dataslct_n:std_logic_vector(2 downto 0);
	signal datain_n:std_logic_vector(3 downto 0);
	signal dataen_n:std_logic;
	signal clk_n:std_logic;
	signal slctout_n:std_logic_vector(7 downto 0);
	signal dataout_n:std_logic_vector(6 downto 0);
begin
	u0:driver port map(dataslct_n,datain_n,dataen_n,clk_n,slctout_n,dataout_n);
	u2:process
	begin
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="000";
		datain_n<="0000";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="001";
		datain_n<="0001";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="010";
		datain_n<="0010";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="011";
		datain_n<="0011";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="100";
		datain_n<="0100";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="101";
		datain_n<="0101";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="110";
		datain_n<="0110";
		dataen_n<='1';
		wait for 10 ns;
		
		dataen_n<='0';
		wait for 10 ns;
		dataslct_n<="111";
		datain_n<="0111";
		dataen_n<='1';
		wait for 10000 ms;
	end process;
	u1:process
	begin
		clk_n <= '0';
		wait for 10 ns;
		clk_n <= '1';
		wait for 10 ns;
	end process;
end arch_driver_tb;
