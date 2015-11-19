----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Hemat Shah
-- 
-- Create Date:    14:12:15 10/15/2015 
-- Design Name: 	 four_input_nor_gate
-- Module Name:    four_input_nor_gate_behavioral 
-- Project Name: 	 Lab 1
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:  	 four_input_nor_gate
--
-- Dependencies:   
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
-- Library IEEE standard
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- provides enhanced signal types
use IEEE.STD_LOGIC_ARITH.ALL; -- provides numerical computation
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- provides unsigned numerical computation

-- ENTITY -- declares the interface of four input nor gate
entity four_input_nor_gate is
	Port (a : in  std_logic; -- a as input
         b : in  std_logic; -- b as input
         c : in  std_logic; -- c as input
         d : in  STD_LOGIC; -- d as input
         f : out  std_logic); -- f as output
end four_input_nor_gate; 

-- ARCHITECTURE -- describes how the four input nor gate should work
architecture four_input_nor_gate_behavioral of four_input_nor_gate is
begin
	F <=  not (a or b or c or d ) after 7ns; -- architecture for four input nand gate, 7ns delay to simulate a real circuit behaviour (such as propagation delay)
end four_input_nor_gate_behavioral;				
