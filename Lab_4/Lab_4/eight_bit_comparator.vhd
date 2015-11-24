----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:51 11/17/2015 
-- Design Name: 
-- Module Name:    eight_bit_registr - Behavioral 
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

entity eight_bit_comparator is
Generic(n:positive:=8);
    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Output : out  STD_LOGIC);
end eight_bit_comparator;

architecture Behavioral of eight_bit_comparator is

begin
process(InA, InB)
	begin
		if InA=InB then
		Output <='1';
		else
		Output<='0';
		end if;
end process;
end Behavioral;

