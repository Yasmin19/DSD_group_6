--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    13:59:49 10/15/2015 
-- Design Name:    two_input_multiplexer
-- Module Name:    two_input_multiplexer_behavioral
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   two input multiplexer
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
entity two_input_multiplexer is
	Port (I0 : in  STD_LOGIC;
         I1 : in  STD_LOGIC;
			SEL : in  STD_LOGIC;
         OUT1 : out  STD_LOGIC);
end two_input_multiplexer;

-- ARCHITECTURE
architecture two_input_multiplexer_behavioral of two_input_multiplexer is
	component and_gate is -- import and_gate
		Port ( a : in  STD_LOGIC;
				 b : in  STD_LOGIC;
				 f : out  STD_LOGIC);	
	end component;
	 
	component or_gate is --import or_gate
		Port ( a : in  STD_LOGIC;
		       b : in  STD_LOGIC;
		       f : out  STD_LOGIC);	
	end component;
	
	component not_gate is -- import not_gate
		Port ( a : in  STD_LOGIC;
				 f : out  STD_LOGIC);	
	end component;
	
	--declaring internal connections between components
	signal F0, F1, invOut: std_logic;
	
begin
	Gate1: not_gate port map(SEL, invOut);
	Gate2: and_gate port map(I0, invOut, F0);
	Gate3: and_gate port map(SEL, I1, F1);	
	Gate4: or_gate port map(F0, F1, OUT1);

end two_input_multiplexer_behavioral;

