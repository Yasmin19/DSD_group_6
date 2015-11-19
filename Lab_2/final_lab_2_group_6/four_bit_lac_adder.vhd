----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Michael
-- 
-- Create Date:    14:24:31 11/02/2015 
-- Design Name: 
-- Module Name:    four_bit_lac_adder - Behavioral 
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
 entity four_bit_lac_adder is  
 generic(n:positive:=4);  
   Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
			 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
			 cin : in STD_LOGIC;  
			 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
			 cout : out STD_LOGIC);  
 end four_bit_lac_adder;  
 
 architecture four_bit_lac_adder_behavioral of four_bit_lac_adder is  
 
	 component four_bit_LAC   
			Port ( InA : in std_logic_vector(3 downto 0);  
					 InB : in std_logic_vector(3 downto 0);  
					 C_In : in std_logic;  
					 C_terms : out std_logic_vector(3 downto 0));  
	 end component;  
	 
	 component n_bit_adder   
		 generic(n:positive:=4);  
				Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
						 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
						 C_terms : in STD_LOGIC_VECTOR (n-1 downto 0);  
						 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
						 c_out : out STD_LOGIC);  
	 end component;
	 
 signal LAC_Adder:std_logic_vector(n-1 downto 0); 
 
 begin  
	 G1: four_bit_LAC port map (InA, InB, cin, LAC_Adder);
	 G2: n_bit_adder port map (InA, InB, LAC_Adder, sum, cout);
	 
 end four_bit_lac_adder_behavioral;