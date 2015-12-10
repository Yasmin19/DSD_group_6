----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:15 11/23/2015 
-- Design Name: 
-- Module Name:    n_bit_rfc_register - Behavioral 
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

entity n_bit_rfc_register is
	generic(n: positive := 4);
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
	
	--G_RFC_i : register_file_cell port map (Data_in(3), REA, REB, WE, Clock, OA(3), OB(3)); 
	
end generate;

end Behavioral;

