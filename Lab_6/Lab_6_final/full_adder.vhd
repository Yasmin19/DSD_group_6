----------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Michael Seltene
-- 
-- Create Date:    13:31:37 10/15/2015 
-- Design Name: 	 full_adder
-- Module Name:    full_adder_behavioral 
-- Project Name:   Lab 1
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:    full adder
--
-- Dependencies:   half_adder.vhd, or_gate.vhd
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

--ENTITY -- declares the interface of full adder
entity full_adder is
	Port ( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          cin : in  STD_LOGIC;
          s : out  STD_LOGIC;
          cout : out  STD_LOGIC);
end full_adder;

-- ARCHITECTURE -- describes how the full adder should work
architecture full_adder_behavioral of full_adder is

	-- architecure requires half_adder and or_gate sum-components
	component half_adder is --import half_adder_construct
		port (a, b : in std_logic;
				s, cout : out std_logic);
	end component;
	component or_gate is --import two input or_gate
		port(a, b : in std_logic;
			  f : out std_logic);
	end component;

--SIGNAL -- defines the internal signals that connect the above components together
signal half_adder_TO_half_adder,
			 half_adder_TO_or_gate_1,
			 half_adder_TO_or_gate_2 : std_logic;
	
begin
	X1: half_adder port map(a, b, half_adder_TO_half_adder, half_adder_TO_or_gate_1);
	X2: half_adder port map(half_adder_TO_half_adder, cin, s, half_adder_TO_or_gate_2);
	X3: or_gate port map(half_adder_TO_or_gate_1, half_adder_TO_or_gate_2, cout);
end full_adder_behavioral;
