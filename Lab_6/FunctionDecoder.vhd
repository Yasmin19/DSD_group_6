----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:14 11/30/2015 
-- Design Name: 
-- Module Name:    FunctionDecoder - Behavioral 
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

entity FunctionDecoder is
    Port ( input : in  STD_LOGIC;
           Funct : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out STD_LOGIC_VECTOR (1 downto 0));
end FunctionDecoder;

architecture Behavioral of FunctionDecoder is

begin
with Funct select
		 Output <= "01" when "00",
					  '0'&input when "01",
					  "10" when "10",
					  '1'&input when "11",
						"00" when others;

end Behavioral;

