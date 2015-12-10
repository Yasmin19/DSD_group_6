----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Michael
-- 
-- Create Date:    14:01:44 11/02/2015 
-- Design Name: 
-- Module Name:    n_bit_adder - Behavioral 
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
 
 entity n_bit_adder is  
	 generic(n:positive:=4);  
		Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_terms : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
				 c_out : out STD_LOGIC);  
	 end n_bit_adder;  
	 
 architecture n_bit_adder_behavioral of n_bit_adder is  
	  component full_adder  
			  Port ( a : in  STD_LOGIC;
						b : in  STD_LOGIC;
						cin : in  STD_LOGIC;
						s : out  STD_LOGIC;
						cout : out  STD_LOGIC); 
	  end component;  
	  
 signal unconnected: STD_LOGIC_VECTOR(n-2 downto 0); 
 
 begin  
		instance: for i in n-1 downto 0 generate  
			
			final_bit: if i=n-1 generate  
				G1: full_adder port map (InA(i),InB(i),C_terms(i),sum(i),c_out);  
			end generate;  
			
			cont_bits: if i/=n-1 generate  
				G2: full_adder port map(InA(i),InB(i),C_terms(i),sum(i),unconnected(i));  
			end generate;  
			
		end generate;  
 end n_bit_adder_behavioral;