--------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Michael
--
-- Create Date:   16:02:45 11/02/2015
-- Design Name:   
-- Module Name:   C:/Users/MicSeltene/Desktop/ECS615_Lab2_SampleCodes/Lab_2_Michael/four_bit_adder_subtructor/n_bit_adder_test_bench.vhd
-- Project Name:  four_bit_adder_subtructor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
 LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  
 
 ENTITY n_bit_adder_test_bench IS  
 END n_bit_adder_test_bench;
 
 ARCHITECTURE behavior OF n_bit_adder_test_bench IS   

   COMPONENT n_bit_adder  
   PORT ( InA : IN std_logic_vector(3 downto 0);  
			 InB : IN std_logic_vector(3 downto 0);  
			 C_terms : IN std_logic_vector(3 downto 0);  
			 sum : OUT std_logic_vector(3 downto 0);  
			 c_out : OUT std_logic);  
   END COMPONENT;  
	
   --Inputs  
   signal InA : std_logic_vector(3 downto 0) := (others => '0');  
   signal InB : std_logic_vector(3 downto 0) := (others => '0');  
   signal C_terms : std_logic_vector(3 downto 0) := (others => '0');  
   --Outputs  
   signal sum : std_logic_vector(3 downto 0);  
   signal C_out : std_logic;  
    
 BEGIN  
      -- Instantiate the Unit Under Test (UUT)  
   uut: n_bit_adder PORT MAP ( InA => InA,  
										 InB => InB,  
										 C_terms => C_terms,  
										 sum => sum,  
										 C_out => C_out );  

   -- Stimulus process  
   proc: process  
				begin            
					 wait for 100 ns;  
					 InA <= "0000";  
					 InB <= "0000";  
					 C_terms <= "0000";  
					 sum <= "0000";  
						
					 wait for 100 ns;  
					 InA <= "0000";  
					 InB <= "0001";  
					 C_terms <= "0000";  
					 sum <= "0001";  
					
  					 wait for 100 ns;  
					 InA <= "0001";  
					 InB <= "0001";  
					 C_terms <= "0000";  
					 sum <= "0000";  
					 
					 wait for 100 ns;  
					 InA <= "0010";  
					 InB <= "0001";  
					 C_terms <= "0000";  
					 sum <= "0001";  
					 
					 wait for 100 ns;  
					 InA <= "0010";  
					 InB <= "0011";  
					 C_terms <= "0000";  
					 sum <= "0001";  
					 
					 wait for 100 ns;  
					 InA <= "1111";  
					 InB <= "1111";  
					 C_terms <= "1111";  
					 sum <= "1111"; 
					 
					 wait;  -- will continue forever
			end process;  
	
 end;  