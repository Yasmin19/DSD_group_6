----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Michael Seltene
-- 
-- Create Date:    13:37:28 10/15/2015 
-- Design Name: 	 three_input_or_gate
-- Module Name:    three_input_or_gate_behavioral
-- Project Name:   Lab 1
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:    three input or gate
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

--ENTITY
entity three_input_or_gate is
	port (a, b, c : in std_logic;
			f : out std_logic);
end three_input_or_gate;

-- ARCHITECTURE
architecture three_input_or_gate_behavioral of three_input_or_gate is
begin
	f <= (a or b or c) after 7ns;
end three_input_or_gate_behavioral;

