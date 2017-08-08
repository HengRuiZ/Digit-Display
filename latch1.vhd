library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity latch1 is
port(
	slct:in std_logic_vector(2 downto 0);
	datain:in std_logic_vector(3 downto 0);
	en:in std_logic;
	count:in std_logic_vector(2 downto 0);
	dataout:out std_logic_vector(3 downto 0)
	);
end latch1;

architecture arch_latch1 of latch1 is
	signal cnt1:std_logic_vector(3 downto 0):="0000";
	signal cnt2:std_logic_vector(3 downto 0):="0000";
	signal cnt3:std_logic_vector(3 downto 0):="0000";
	signal cnt4:std_logic_vector(3 downto 0):="0000";
	signal cnt5:std_logic_vector(3 downto 0):="0000";
	signal cnt6:std_logic_vector(3 downto 0):="0000";
	signal cnt7:std_logic_vector(3 downto 0):="0000";
	signal cnt0:std_logic_vector(3 downto 0):="0000";
begin
	u0:process(slct,datain,en)
	begin
		if(en='1')then
			case slct is
				when "000" => cnt0<=datain;
				when "001" => cnt1<=datain;
				when "010" => cnt2<=datain;
				when "011" => cnt3<=datain;
				when "100" => cnt4<=datain;
				when "101" => cnt5<=datain;
				when "110" => cnt6<=datain;
				when "111" => cnt7<=datain;
				when others => null;
			end case;
		end if;
	end process u0;
	u1:process(count,cnt0,cnt1,cnt2,cnt3,cnt4,cnt5,cnt6,cnt7)
	begin
		case count is
			when "000" => dataout<=cnt0;
			when "001" => dataout<=cnt1;
			when "010" => dataout<=cnt2;
			when "011" => dataout<=cnt3;
			when "100" => dataout<=cnt4;
			when "101" => dataout<=cnt5;
			when "110" => dataout<=cnt6;
			when "111" => dataout<=cnt7;
			when others => null;
		end case;
	end process u1;
end arch_latch1;
