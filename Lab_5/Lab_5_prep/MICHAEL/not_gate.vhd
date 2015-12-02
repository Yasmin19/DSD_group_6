----------------------------------------------------------------------------------
-- Company: 		 QMUL
-- Engineer: 		 Michael Seltene		
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 not gate
-- Module Name:    not_gate - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 not gate
--
-- Dependencies: 	n/a
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
	Port (a : in  STD_LOGIC;
         f : out  STD_LOGIC);
end not_gate;

architecture Behavioral of not_gate is
begin
	f<= not a after 7ns;
end Behavioral;