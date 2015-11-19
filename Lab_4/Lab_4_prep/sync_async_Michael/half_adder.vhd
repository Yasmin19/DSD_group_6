----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    half_adder - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 half_adder
--
-- Dependencies:  and_gate, xor_gate
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity half_adder is
	Port ( a, b : in  STD_LOGIC;
          s, cout : out  STD_LOGIC);
end half_adder;

-- ARCHITECTURE
architecture half_adder_behavioral of half_adder is

	-- COMPONENT and_gate
	component and_gate is -- to import and_gate
	port( a, b : in std_logic;
         f : out std_logic);
	end component;
	
	-- COMPONENT xor_gate
	component xor_gate is -- to import xor_gate
     port( a, b : in std_logic;
           f : out std_logic);
   end component;

begin
-- INSTANCES
	G1 : xor_gate port map(a, b, s);
	G2 : and_gate port map(a, b, cout);
end half_adder_behavioral;

