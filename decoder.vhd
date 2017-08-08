LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 
USE ieee.std_logic_unsigned.all;  
ENTITY decoder IS
	PORT (
           input:in std_logic_vector( 3 downto 0);            
			  output: out STD_LOGIC_VECTOR(6 DOWNTO 0)); 
END decoder;  
architecture arch_decoder of decoder is
begin
	process(input)begin
	case input is
	when "0000" => output <= not"0111111";   
	when "0001" => output <= not"0000110";   
	when "0010" => output <= not"1011011";   
	when "0011" => output <= not"1001111";   
	when "0100" => output <= not"1100110";   
	when "0101" => output <= not"1101101";   
	when "0110" => output <= not"1111101";   
	when "0111" => output <= not"0000111";   
	when "1000" => output <= not"1111111";   
	when "1001" => output <= not"1101111";   
	when "1010" => output <= not"1110111";   
	when "1011" => output <= not"1111100";   
	when "1100" => output <= not"0111001";   
	when "1101" => output <= not"1011110";   
	when "1110" => output <= not"1111001";   
	when "1111" => output <= not"1110001";
	when others => null;
	end case;
	end process;
end arch_decoder;