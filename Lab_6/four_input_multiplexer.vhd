----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    19:15:38 10/28/2015 
-- Design Name: 
-- Module Name:    four_input_multiplexer - Behavioral 
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


entity four_input_multiplexer is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
	   control : in std_logic_vector(1 downto 0);
           O : out  STD_LOGIC);
end four_input_multiplexer;

architecture Behavioral of four_input_multiplexer is

    --import 2-1 Mux  entinty
	component two_input_multiplexer is
		Port ( I0 : in  STD_LOGIC;
		   I1 : in  STD_LOGIC;
		   SEL : in  STD_LOGIC;
		   OUT1 : out  STD_LOGIC);
	end component;

	--declaring internal connections between components
	signal A0, A1: std_logic;
	
begin


	GMUX1: two_input_multiplexer port map(I0, I1, control(0), A0);
	GMUX2: two_input_multiplexer port map(I2, I3, control(0), A1);
	GMUX3: two_input_multiplexer port map(A0, A1, control(1), O);

end Behavioral;
