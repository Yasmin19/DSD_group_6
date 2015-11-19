----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    two_input_multiplexer - Behavioral 
-- Project Name: 	 modulo_m_counter_with_synchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 two_input_multiplexer
--
-- Dependencies:  N/A
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity two_input_multiplexer is
	Port ( a : in STD_LOGIC;  
			 b : in STD_LOGIC;  
			 s : in STD_LOGIC;  
          output : out STD_LOGIC); 
end two_input_multiplexer;

-- ARCHITECTURE
architecture Behavioral of two_input_multiplexer is
begin
	process(a,b,s)  
		begin  
			 case s is  
				  when '0' => output <= a;  
				  when '1' => output <= b;  
				  when others => output <= b;  
			 end case;  
	end process;  
end Behavioral;

