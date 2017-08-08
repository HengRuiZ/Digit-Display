LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY decoder1 IS
	PORT (
           input:in std_logic_vector( 2 downto 0);            
			  output: out STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END decoder1;  
architecture arch_decoder1 of decoder1 is
begin
	process(input)begin
	case input is
	when "000" => output <= "00000001";   
	when "001" => output <= "00000010";   
	when "010" => output <= "00000100";   
	when "011" => output <= "00001000";   
	when "100" => output <= "00010000";   
	when "101" => output <= "00100000";   
	when "110" => output <= "01000000";   
	when "111" => output <= "10000000";
	when others => null;
	end case;
	end process;
end arch_decoder1;