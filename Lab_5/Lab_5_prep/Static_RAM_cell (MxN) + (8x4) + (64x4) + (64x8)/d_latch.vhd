----------------------------------------------------------------------------------
-- Company: Queen Mary - University of London
-- Engineer: Eduardo de Souza Valencia
-- 
-- Create Date:    10:03:43 11/23/2015 
-- Design Name: 
-- Module Name:    SRAM_Cell - Behavioral 
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

entity D_latch is
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end D_latch;

architecture Behavioral of D_latch is

begin
process(D,C,Q)
     begin
         if C = '0'   then
                Q <= Q after 7ns;
			else
					if C='1' then
						if D='1' then 
						Q<='1' after 7ns;
						else
						Q<='0' after 7ns;
						end if;
					end if;
			end if;  
end process;


end Behavioral;

