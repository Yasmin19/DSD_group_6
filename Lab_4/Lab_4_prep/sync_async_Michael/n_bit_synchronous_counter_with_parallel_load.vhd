----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    n_bit_synchronous_counter_with_parallel_load - Behavioral 
-- Project Name: 	 modulo_m_counter_with_synchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 n_bit_synchronous_counter_with_parallel_load
--
-- Dependencies:  n_bit_incrementer, n_bit_two_input_mux, n_bit_register
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all; 

entity n_bit_synchronous_counter_with_parallel_load is
	generic(n:positive:=8);  
   Port ( D_inputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
       load_count : in STD_LOGIC;  
       count_enable : in STD_LOGIC;  
       CLK : in STD_LOGIC;  
       reset : in STD_LOGIC;  
       Q_outputs : inout STD_LOGIC_VECTOR (n-1 downto 0)  ); 
end n_bit_synchronous_counter_with_parallel_load;

architecture Behavioral of n_bit_synchronous_counter_with_parallel_load is
	-- COMPONENTS
	component n_bit_register
		generic ( n : positive:=8);
		Port ( D_inputs : in std_logic_vector(n-1 downto 0);
				 CLK : in std_logic;
				 reset : in std_logic;
				 preset : in std_logic;
				 Q_outputs : out std_logic_vector(n-1 downto 0);
				 Q_bar_outputs : out std_logic_vector(n-1 downto 0));
	end component;

	component n_bit_incrementer
		generic(n:positive:=8);
		Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_in : in STD_LOGIC;  
				 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_out : out STD_LOGIC);  
	end component;

	component n_bit_two_input_mux   
	  generic(n:positive:=8);  
	  Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
		  	   InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
			   control : in STD_LOGIC;  
			   Output : out STD_LOGIC_VECTOR (n-1 downto 0));  
	end component; 
-- SIGNAL 
signal unconnected_0: std_logic;  
signal unconnected_1, register_TO_incrementer, incrementer_TO_mux, mux_TO_register: std_logic_vector(n-1 downto 0);  

begin
	-- INSTANCES
	 ins_0: n_bit_incrementer port map(register_TO_incrementer,count_enable,incrementer_TO_mux,unconnected_0);  
	 ins_1: n_bit_two_input_mux port map(incrementer_TO_mux,D_inputs,load_count,mux_TO_register);  
	 ins_2: n_bit_register port map(mux_TO_register,CLK,reset,'0',register_TO_incrementer,unconnected_1); 
	 Q_outputs <= register_TO_incrementer;
	 
end Behavioral;

