----------------------------------------------------------------------------------
-- Company: 	Queen Mary University of London
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    11:12:29 11/04/2015 
-- Design Name: 	 n_bit_twisted_ring_counter
-- Module Name:    n_bit_twisted_ring_counter - Behavioral 
-- Project Name: 	 Lab 3
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: not_gate, nbit_shitreg 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity n_bit_twisted_ring_counter is
	generic ( n : positive := 4);
		 Port ( CLK : in std_logic;
				  reset : in std_logic;
				  preset : in std_logic;
				  Q_outputs : inout std_logic_vector(n-1 downto 0) );
end n_bit_twisted_ring_counter;

architecture n_bit_twisted_ring_counter_behavioral of n_bit_twisted_ring_counter is

	component not_gate is
		 Port (a : in  STD_LOGIC;
				 f : out  STD_LOGIC);
	end component;
	
	component nbit_shiftreg is
		 generic (n : positive := 4);
			 Port ( shift_in : in std_logic;
					  CLK : in std_logic;
					  reset : in std_logic;
					  preset : in std_logic;
					  Q_shift : out std_logic_vector(n-1 downto 0));
	end component;

signal sig : std_logic;

begin

	G1: not_gate port map (Q_outputs(n-1), sig);
	G2 : nbit_shiftreg port map (sig, CLK, reset, preset, Q_outputs);
	
end n_bit_twisted_ring_counter_behavioral;