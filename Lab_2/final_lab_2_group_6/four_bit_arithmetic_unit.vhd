----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    21:22:34 11/01/2015 
-- Design Name: 
-- Module Name:    four_bit_arithmetic_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity four_bit_arithmetic_unit is
    Port ( InA : in  std_logic_vector(3 downto 0);
           InB : in  std_logic_vector(3 downto 0);
           Control : in  std_logic_vector(1 downto 0);
           Sum : out std_logic_vector(3 downto 0);
           C_out : out  STD_LOGIC);
end four_bit_arithmetic_unit;

architecture Behavioral of four_bit_arithmetic_unit is

	--import nbit 2 input Mux
	component nbit_two_input_mux is
		  Generic (n: positive); --generic value
		  Port (InA : in std_logic_vector(n-1 downto 0);
				  InB : in std_logic_vector(n-1 downto 0);
				  control : in std_logic;
				  Output : out std_logic_vector(n-1 downto 0));
	end component;

		--import 4-bit Adder/Subtractor
	component four_bit_adder_subtractor is
		  Generic (n: positive); --generic value
		  Port (InA : in std_logic_vector(n-1 downto 0);
				  InB : in std_logic_vector(n-1 downto 0);
				  control : in std_logic;
				  sum : out std_logic_vector(n-1 downto 0);
				  C_out : out std_logic);
	end component;

	signal muxOut : std_logic_vector (3 downto 0);
	
begin

	--instantiate the nbit 2 input Mux with bit-width of 4
	nbitMux : nbit_two_input_mux generic map (4) port map ("0001", InB, Control(0), muxOut);
	
	--instantiate the 4 bit adder/subtractor with bit-width of 4
	adder_sub : four_bit_adder_subtractor generic map (4) port map (InA, muxOut, Control(1), sum, C_out);
	
end Behavioral;

