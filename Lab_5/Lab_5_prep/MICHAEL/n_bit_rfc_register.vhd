----------------------------------------------------------------------------------
-- Company: 		 QMUL
-- Engineer: 		 Michael Seltene		
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 n bit rfc register
-- Module Name:    n_bit_rfc_register - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 n bit rfc register
--
-- Dependencies: 	register_file_cell
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity n_bit_rfc_register is
	generic(n: positive := 8);
	Port (Data_in : in  STD_LOGIC_VECTOR(n-1 downto 0);
         REA : in  STD_LOGIC;
			REB : in  STD_LOGIC;
         WE : in STD_LOGIC;
			Clock : in STD_LOGIC;
			OA : out STD_LOGIC_VECTOR(n-1 downto 0);
			OB : out STD_LOGIC_VECTOR(n-1 downto 0));
end n_bit_rfc_register;

architecture Behavioral of n_bit_rfc_register is

component register_file_cell
	Port (DIN : in  STD_LOGIC;
         REA : in  STD_LOGIC;
			REB : in  STD_LOGIC;
         WE : in STD_LOGIC;
			Clock : in STD_LOGIC;
			OA : out STD_LOGIC;
			OB : out STD_LOGIC);
end component;

begin

--FOR LOOP
--create an instance of a for loop called "inst"
inst : for i in n-1 downto 0 generate

	--generate n instances of the device "two_input_multiplexer"
	G_RFC_i : register_file_cell port map (Data_in(i), REA, REB, WE, Clock, OA(i), OB(i)); 
	
end generate;

end Behavioral;

