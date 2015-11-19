----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    xor_gate - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 xor_gate
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
entity xor_gate is
	port( a, b : in std_logic;
            f : out std_logic);
end xor_gate;

-- ARCHITECTURE
architecture xor_gate_behaviour of xor_gate is 
begin
   f <= a xor b; 
end xor_gate_behaviour;

