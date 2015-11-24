----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:13 11/23/2015 
-- Design Name: 
-- Module Name:    ROM_Seven_Segement_display_Decoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_Seven_Segement_display_Decoder is
    Port ( Address : in  STD_LOGIC_VECTOR (3 downto 0);
           Data_Outputs : out  STD_LOGIC_VECTOR (6 downto 0));
end ROM_Seven_Segement_display_Decoder;

architecture Behavioral of ROM_Seven_Segement_display_Decoder is

begin
  
    with Address select
Data_Outputs <= "1111110" when "0000" , -- digit 0
                "0110000" when "0001" , -- digit 1
                "1101101" when "0010" , -- digit 2
                "1111001" when "0011" , -- digit 3	 				 
	             "0110011" when "0100" , -- digit 4
					 "1011011" when "0101" , -- digit 5
					 "1011111" when "0110" , -- digit 6
					 "1110000" when "0111" , -- digit 7
                "1111111" when "1000" , -- digit 8
                "1111011" when "1001" , -- digit 9
                "1101111" when "1010" , -- Letter A
					 "0011111" when "1011" , -- Letter B
					 "1001110" when "1100" , -- Letter C
					 "0111101" when "1101" , -- Letter D
					 "1001111" when "1110" , -- Letter E
					 "1000111" when "1111" , -- Letter F
					 
					 "0000000" when others;
					 
					 
end Behavioral;

