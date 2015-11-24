----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:39 11/24/2015 
-- Design Name: 
-- Module Name:    sixteen_x_7_decoder_rom - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sixteen_x_7_decoder_rom is
	port( address: in std_logic_vector(3 downto 0);
			data_outputs: out std_logic_vector(6 downto 0) );
end sixteen_x_7_decoder_rom;

architecture Behavioral of sixteen_x_7_decoder_rom is

signal delay : std_logic_vector(6 downto 0) ;
signal choice : std_logic_vector (3 downto 0);

begin
choice(3 downto 0) <= address;
			
		with choice select
		 delay <= "1111110" when "0000",
					 "0110000" when "0001",
					 "1101101" when "0010",
					 "1111001" when "0011",
					 "0110011" when "0100",
					 "1011011" when "0101",
					 "1011111" when "0110",
					 "1110000" when "0111",
					 "1111111" when "1000",
					 "1111011" when "1001",
					 "1101111" when "1010",
					 "0011111" when "1011",
					 "1001110" when "1100",
					 "0111101" when "1101",
					 "1001111" when "1110",
					 "1000111" when "1111",
					 "0000000" when others;

data_outputs <= delay after 14 ns;

end Behavioral;

