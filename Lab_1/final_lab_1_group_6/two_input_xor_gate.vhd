----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Eduardo De Souza Valencia
-- 
-- Create Date:    14:51:46 10/15/2015 
-- Design Name: 	 two_input_xor_gate
-- Module Name:    two_input_xor_gate - Behavioral 
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	two_input_xor_gate
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY  
entity two_input_xor_gate is
	port (a, b : in std_logic; -- inputs a and b
			f : out std_logic); -- output f
end two_input_xor_gate;

-- ARCHITECTURE 
architecture two_input_xor_gate_behavioral of two_input_xor_gate is
begin
	f <= a and b after 7ns;
end two_input_xor_gate_behavioral;