----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    n_bit_incrementer - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 n_bit_incrementer
--
-- Dependencies:  half_adder
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity n_bit_incrementer is
generic(n:positive:=8);  
   Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
			 C_in : in STD_LOGIC;  
			 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
			 C_out : out STD_LOGIC);  
end n_bit_incrementer;

-- ARCHITECTURE
architecture Behavioral of n_bit_incrementer is
	 component half_adder   
		Port ( a : in STD_LOGIC;  
				 b : in STD_LOGIC;  
				 s : out STD_LOGIC;  
				 cout : out STD_LOGIC);  
 end component; 

-- SIGNAL
signal cont: std_logic_vector(n-2 downto 0);
 
begin
	-- INSTANCES
	 inst:for i in n-1 downto 0 generate  
		 if0:if i=0 generate  
			A: half_adder port map(InA(i),C_in,sum(i),cont(i));  
		 end generate;  
		 if1:if i/=0 and i/=n-1 generate  
			A: half_adder port map(InA(i),cont(i-1),sum(i),cont(i));  
		 end generate;  
		 if2:if i=n-1 generate  
			A: half_adder port map(InA(i),cont(i-1),sum(i),C_out);  
		 end generate;  
	 end generate;  

end Behavioral;

