----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:11 11/30/2015 
-- Design Name: 
-- Module Name:    Output_ROM_Generic - Behavioral 
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

entity Output_ROM_Generic is
    Port ( StateVariable : in  STD_LOGIC_VECTOR (3 downto 0);
           ConditionSelect : inout  STD_LOGIC_VECTOR (1 downto 0);
           Funct : inout  STD_LOGIC_VECTOR (1 downto 0);
           DatapathControl : out  STD_LOGIC_VECTOR (19 downto 0);
           BranchAddress : inout  STD_LOGIC_VECTOR (3 downto 0);
			  Done: out  STD_LOGIC);
end Output_ROM_Generic;

architecture Behavioral of Output_ROM_Generic is
signal choice : std_logic_vector (3 downto 0);
begin
choice<=StateVariable;
		with choice select
		  DatapathControl<= "10001XXXXXXXXXXXXXX0" when "0000",
									"0001111111111010X000" when "0001",
									"000110011XXXX100X001" when "0010",
									"000110011XXXXXXX0101" when "0011",
									"000110011XXXXXXX0101" when "0100",
									"000110011XXXXXXX0101" when "0101",
									"000110011XXXXXXX1101" when "0110",
									"000110011XXXXXXX1101" when "0111",
									"000110011XXXXXXX1101" when "1000",
									"000110011XXXXXXX1101" when "1001",
									"0XXX00001XXXX1100000" when "1010",
									"00000000100001100000" when Others;
								 --create your conditions here
						
		with choice select
		 Funct <= "01" when "0000",
									"00" when "0001",
									"00" when "0010",
									"00" when "0011",
									"00" when "0100",
									"00" when "0101",
									"00" when "0110",
									"00" when "0111",
									"00" when "1000",
									"00" when "1001",
									"11" when "1010",
									"10" when "1011",
									"00" when others;
								 --create your conditions here
								 
		with choice select
		 ConditionSelect <= "01" when "0000",
									"00" when "0001",
									"00" when "0010",
									"00" when "0011",
									"00" when "0100",
									"00" when "0101",
									"00" when "0110",
									"00" when "0111",
									"00" when "1000",
									"00" when "1001",
									"10" when "1010",
									"00" when "1011",
									"00" when others;
								 --create your conditions here
						
		with choice select
		 BranchAddress <= "0011" when "1010",
								"0000" when others;
								 --create your conditions here
			

end Behavioral;

