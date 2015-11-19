----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    D_flip_flop - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 D_flip_flop
--
-- Dependencies:  n/a
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity D_flipflop is
    Port ( D, reset, preset, clk : in  STD_LOGIC;
           Q, Q_bar : out  STD_LOGIC);
end D_flipflop;

-- ARCHITECTURE
architecture Behavioral of D_flipflop is

begin
	-- PROCESS
		process (clk, reset, preset) begin  
		  if (reset = '1') then  
			Q <= '0';  
			Q_bar<='1';  
		  elsif (preset = '1') then  
			Q <= '1';  
			Q_bar<='0';  
		  elsif (clk'event and clk = '1') then  
			Q <= D;  
			Q_bar<= not D;  
		  end if;  
		 end process; 
end Behavioral;

