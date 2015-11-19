----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    eight_bit_comparator - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 eight_bit_comparator
--
-- Dependencies:  n/a
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY
entity eight_bit_comparator is
	generic(n:positive:=8);  
       Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				  InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
				  Output : out STD_LOGIC);  
end eight_bit_comparator;

-- ARCHITECTURE
architecture Behavioral of eight_bit_comparator is
begin
		-- PROCESS
			process (InA,InB)  
           begin  
				  if InA = InB then  
					Output<='1';  
				  else  
					Output<='0';  
				end if;  
         end process;  
end Behavioral;

