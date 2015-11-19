----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Michael Seltene
-- 
-- Create Date:    14:14:30 10/15/2015 
-- Design Name:    nor_gate
-- Module Name:    nor_gate_behavioral 
-- Project Name:   Lab 1
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:    nor gate
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
entity nor_gate is
	Port (a : in  STD_LOGIC;
         b : in  STD_LOGIC;
			f : out  STD_LOGIC);
end nor_gate;

-- ARCHITECTURE
architecture nor_gate_behavioral of nor_gate is
begin
	f<= not(a or b);
end nor_gate_behavioral;

