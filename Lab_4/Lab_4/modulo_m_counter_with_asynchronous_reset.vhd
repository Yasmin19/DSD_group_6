----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    modulo_m_counter_with_asynchronous_reset - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 modulo_m_counter_with_synchronous_reset
--
-- Dependencies:  eight_bit_comparator, n_bit_synchronous_counter_with_enable, or_gate
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity modulo_m_counter_with_asynchronous_reset is
	Generic (n: positive:= 8);  
		Port ( input : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 count_enable : in STD_LOGIC;  
				 CLK : in STD_LOGIC;  
				 reset : in STD_LOGIC;  
				 Q_outputs : out STD_LOGIC_VECTOR (n-1 downto 0)); 
end modulo_m_counter_with_asynchronous_reset;

-- ARCHITECTURE
architecture Behavioral of modulo_m_counter_with_asynchronous_reset is

	 -- COMPONENT: eight_bit_comparator  
	 component eight_bit_comparator is  
		generic(n:positive:=8);  
			 Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
					  InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
					  Output : out STD_LOGIC );  
	 end component; 
	 
	 -- COMPONENT: n_bit_synchronous_counter_with_enable  
	 component n_bit_synchronous_counter_with_enable is  
		Generic (n : positive := 8);  
			Port ( enable : in std_logic;  
					 CLK : in std_logic;  
					 reset : in std_logic;  
					 Q_outputs : inout std_logic_vector(n-1 downto 0)  );  
	 end component;  

	-- COMPONENT: or_gate  
	 component or_gate is  
			Port ( a : in std_logic;  
					 b : in std_logic;  
					 f : out std_logic );  
	 end component;  
 
 --SIGNALS  
 signal M_value: std_logic_vector(n-1 downto 0);  
 signal eight_bit_comparator_TO_or_gate, or_gate_TO_n_bit_synchronous_counter_with_enable: std_logic;  
 
begin
		comparator: eight_bit_comparator port map (M_value, input, eight_bit_comparator_TO_or_gate);  
      orgate: or_gate port map(eight_bit_comparator_TO_or_gate, reset, or_gate_TO_n_bit_synchronous_counter_with_enable);  
      syn_count: n_bit_synchronous_counter_with_enable port map (count_enable, CLK, or_gate_TO_n_bit_synchronous_counter_with_enable, M_value);  
      Q_outputs <= M_value;  

end Behavioral;

