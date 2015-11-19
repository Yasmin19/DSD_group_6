----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:11 11/15/2015 
-- Design Name: 
-- Module Name:    next_state_logic - Behavioral 
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

entity next_state_logic is
    Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : inout STD_LOGIC_VECTOR (3 downto 0));
			  
end next_state_logic;

architecture Behavioral of next_state_logic is
signal sig : std_logic_vector (3 downto 0);

begin
process(Input, Output)
begin
		
			
		if Input(2 downto 0)="111" then
		Output(3)<=not Input(3);
		else
		Output(3)<= Input(3);
		end if;
		
		if Input(1 downto 0)="11" then
		Output(2)<=not Input(2);
		else
		Output(2)<= Input(2);
		end if;
		
		if Input(0)= '1' then
		Output(1)<=not Input(1);
		else
		Output(1)<= Input(1);
		end if;
		
		Output(0)<=not Input(0);
		
end process;
end Behavioral;

