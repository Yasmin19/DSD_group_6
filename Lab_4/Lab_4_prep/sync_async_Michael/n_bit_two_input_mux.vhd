----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    n_bit_two_input_mux - Behavioral 
-- Project Name: 	 modulo_m_counter_with_synchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 n_bit_two_input_mux
--
-- Dependencies:  two_input_multiplexer
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity n_bit_two_input_mux is
	generic(n:positive:=8);  
		Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 control : in STD_LOGIC;  
				 Output : out STD_LOGIC_VECTOR (n-1 downto 0)); 
end n_bit_two_input_mux;

-- ARCHITECTURE
architecture Behavioral of n_bit_two_input_mux is
	-- COMPONENT
	component two_input_multiplexer  
   Port ( a : in STD_LOGIC;  
			 b : in STD_LOGIC;  
			 s : in STD_LOGIC;  
          output : out STD_LOGIC);  
 end component;  
begin
	 -- INSTANCES
		-- loop n-1 to 0
	 inst_0: for i in n-1 downto 0 generate  
		inst_1: two_input_multiplexer port map(InA(i),InB(i),control,Output(i));  
	end generate;  
	
end Behavioral;

