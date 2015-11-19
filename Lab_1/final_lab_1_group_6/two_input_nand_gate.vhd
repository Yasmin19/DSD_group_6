----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    13:56:22 10/15/2015 
-- Design Name: 	 two_input_nand_gate
-- Module Name:    two_input_nand_gate_behavioral 
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   two input nand gate
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
entity two_input_nand_gate is
	Port (a : in  STD_LOGIC;
         b : in  STD_LOGIC;
         f : out  STD_LOGIC);
end two_input_nand_gate;

-- ARCHITECTURE
architecture two_input_nand_gate_behavioral of two_input_nand_gate is
begin
	f<=a nand b after 7ns;
end two_input_nand_gate_behavioral;

