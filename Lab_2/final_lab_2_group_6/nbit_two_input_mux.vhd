----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    16:04:07 10/28/2015 
-- Design Name: 
-- Module Name:    nbit_two_input_mux
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

entity nbit_two_input_mux is

	 -- GENERIC VALUE:
	 Generic ( n : positive := 4 ); --Will loop 4 times in this case


    Port ( InA : in std_logic_vector(n-1 downto 0);
	   InB : in std_logic_vector(n-1 downto 0);
           control : in std_logic;
           Output : out std_logic_vector(n-1 downto 0));

end nbit_two_input_mux;


architecture nbit_two_input_mux_architecture of nbit_two_input_mux is


    --import 2-1 Mux  entinty
	component two_input_multiplexer is
		Port ( I0 : in  STD_LOGIC;
		   I1 : in  STD_LOGIC;
		   SEL : in  STD_LOGIC;
		   OUT1 : out  STD_LOGIC);
	end component;




begin
	--FOR LOOP
--create an instance of a for loop called "inst"
inst : for i in n-1 downto 0 generate

	--generate n instances of the device "two_input_multiplexer"
	GMUX_i : two_input_multiplexer port map (InA(i), InB(i), control, Output(i));

end generate;

end nbit_two_input_mux_architecture;


-----END-

