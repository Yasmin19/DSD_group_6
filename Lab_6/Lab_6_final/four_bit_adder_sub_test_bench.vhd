--------------------------------------------------------------------------------
-- Company: Queen Mary University		
-- Engineer: Michael
--
-- Create Date:   16:27:01 11/02/2015
-- Design Name:   
-- Module Name:   C:/Users/MicSeltene/Desktop/ECS615_Lab2_SampleCodes/Lab_2_Michael/four_bit_adder_subtructor/four_bit_adder_sub_test_bench.vhd
-- Project Name:  four_bit_adder_subtructor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder_subtructor
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
 
 ENTITY four_bit_adder_sub_test_bench IS  
 END four_bit_adder_sub_test_bench;  
 
 ARCHITECTURE behavior OF four_bit_adder_sub_test_bench IS   
   -- Component Declaration for the Unit Under Test (UUT)  
   COMPONENT four_bit_adder_subtractor  
   PORT( InA : IN std_logic_vector(3 downto 0);  
			InB : IN std_logic_vector(3 downto 0);  
			control : IN std_logic;  
			sum : OUT std_logic_vector(3 downto 0);  
			c_out : OUT std_logic );  
   END COMPONENT; 
	
   --Inputs  
   signal InA : std_logic_vector(3 downto 0) := (others => '0');  
   signal InB : std_logic_vector(3 downto 0) := (others => '0');  
   signal control : std_logic := '0';  
       --Outputs  
   signal sum : std_logic_vector(3 downto 0);  
   signal C_out : std_logic;  
  
 BEGIN  
      -- Instantiate the Unit Under Test (UUT)  
   uut: four_bit_adder_subtractor PORT MAP (  
				InA => InA,  
				InB => InB,  
				control => control,  
				sum => sum,  
				C_out => C_out );  
	proc: process
		begin            
		 wait for 100 ns;       
		 InA <= "0010";  -- Add 
		 InB <= "0011";  
		 control <= '0';  
		
		 wait for 100 ns;       
		 InA <= "0011";   -- Sub  
		 InB <= "0010";  
		 control <= '1';  
		 
		 -- insert stimulus here   
		 wait;  
   end process;  
 END;  
