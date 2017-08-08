library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity driver is
	port(
		  dataslct  :in std_logic_vector(2 downto 0);
		  datain    :in std_logic_vector(3 downto 0);
		  dataen:in std_logic;
		  clk:in std_logic;
		  slctout :out std_logic_vector(7 downto 0);
		  dataout:out std_logic_vector(6 downto 0)
		  );
end driver;

architecture arch_driver of driver is
	component counter is
	port(
		clkin:in std_logic;
		clkout:out std_logic_vector(2 downto 0)
	);
	end component;
	component decoder IS
	PORT (
           input:in std_logic_vector( 3 downto 0);            
			  output: out STD_LOGIC_VECTOR(6 DOWNTO 0)); 
	end component;
	component decoder1 IS
	PORT (
           input:in std_logic_vector( 2 downto 0);            
			  output: out STD_LOGIC_VECTOR(7 DOWNTO 0)); 
	end component;
	component latch1 is
	port(
		slct:in std_logic_vector(2 downto 0);
		datain:in std_logic_vector(3 downto 0);
		en:in std_logic;
		count:in std_logic_vector(2 downto 0);
		dataout:out std_logic_vector(3 downto 0));
	end component;
	signal data:std_logic_vector(3 downto 0);
	signal slct:std_LOGIC_VECTOR(2 downto 0);
	begin
		u0:counter port map(clk,slct);
		u1:decoder port map(data,dataout);
		u2:decoder1 port map(slct,slctout);
		u3:latch1 port map(dataslct,datain,dataen,slct,data);
end arch_driver;