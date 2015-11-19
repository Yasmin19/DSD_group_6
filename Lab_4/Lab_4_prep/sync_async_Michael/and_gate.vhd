----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    and_gate - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 and_gate
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

-- ENTITY
entity and_gate is
	port( a, b : in std_logic;
            f : out std_logic);
end and_gate;

-- ARCHITECTURE
architecture and_gate_behavioral of and_gate is
begin
	f <= a and b after 7 ns;
end and_gate_behavioral;

