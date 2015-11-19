----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Hemat Shah
-- 
-- Create Date:    14:10:33 10/15/2015 
-- Design Name: 	 inverter_gate
-- Module Name:    inverter_gate_behavioral 
-- Project Name: 	 Lab 1
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:    inverter gate
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
entity inverter_gate is
	Port (a : in  STD_LOGIC;
         f : out  STD_LOGIC);
end inverter_gate;

-- ARCHITECTURE
architecture inverter_gate_behavioral of inverter_gate is
begin
	f <= not a after 7ns;  
end inverter_gate_behavioral;

