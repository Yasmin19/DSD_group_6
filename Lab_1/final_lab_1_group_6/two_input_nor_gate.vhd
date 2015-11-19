----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Eduardo De Souza Valencia
-- 
-- Create Date:    14:52:33 10/15/2015 
-- Design Name: 	 two_input_nor_gate
-- Module Name:    two_input_nor_gate_behavioral
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description:   two_input_nor_gate
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
entity two_input_nor_gate is
	port (a, b : in std_logic;
			f : out std_logic);
end two_input_nor_gate;

-- ARCHITECTURE
architecture two_input_nor_gate_behavioral of two_input_nor_gate is
begin
	f <= a nor b;
end two_input_nor_gate_behavioral;

