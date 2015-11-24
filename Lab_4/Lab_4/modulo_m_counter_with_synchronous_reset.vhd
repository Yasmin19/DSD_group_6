----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    modulo_m_counter_with_synchronous_reset - Behavioral 
-- Project Name: 	 modulo_m_counter_with_synchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 modulo_m_counter_with_synchronous_reset
--
-- Dependencies:  eight_bit_comparator, n_bit_synchronous_counter_with_parallel_load, or_gate
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

-- ENTITY
entity modulo_m_counter_with_synchronous_reset is
	Generic (n: positive:= 8);  
		Port ( M_value : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 count_enable : in STD_LOGIC;  
				 CLK : in STD_LOGIC;  
				 reset : in STD_LOGIC;  
				 Q_outputs : out STD_LOGIC_VECTOR (n-1 downto 0)); 
end modulo_m_counter_with_synchronous_reset;

-- ARCHITECTURE
architecture Behavioral of modulo_m_counter_with_synchronous_reset is

	 -- COMPONENT: eight_bit_comparator  
	 component eight_bit_comparator is  
		generic(n:positive:=8);  
			 Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
					  InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
					  Output : out STD_LOGIC );  
	 end component; 
	 
	 -- COMPONENT: n_bit_synchronous_counter_with_parallel_load  
	 component n_bit_synchronous_counter_with_parallel_load is  
		Generic (n : positive := 8);  
			Port ( D_inputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
					 load_count : in STD_LOGIC;  
					 count_enable : in STD_LOGIC;  
					 clk : in STD_LOGIC;  
					 reset : in STD_LOGIC;  
					 Q_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0)  );   
	 end component;   
 
 --SIGNALS  
 signal counter_parallel_TO_comparator: std_logic_vector(n-1 downto 0);  
 signal comparator_TO_counter_parallel: std_logic;  
 
begin
		comp: eight_bit_comparator port map (counter_parallel_TO_comparator, M_value, comparator_TO_counter_parallel);  
      count: n_bit_synchronous_counter_with_parallel_load port map ("00000000", comparator_TO_counter_parallel, count_enable, CLK, reset, counter_parallel_TO_comparator);  
      Q_outputs <= counter_parallel_TO_comparator;  

end Behavioral;

