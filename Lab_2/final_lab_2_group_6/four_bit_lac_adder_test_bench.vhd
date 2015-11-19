--------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Michael
--
-- Create Date:   16:14:27 11/02/2015
-- Design Name:   
-- Module Name:   C:/Users/MicSeltene/Desktop/ECS615_Lab2_SampleCodes/Lab_2_Michael/four_bit_adder_subtructor/four_bit_lac_adder_test_bench.vhd
-- Project Name:  four_bit_adder_subtructor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_lac_adder
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

ENTITY four_bit_lac_adder_test_bench IS  
END four_bit_lac_adder_test_bench;  

ARCHITECTURE behavior OF four_bit_lac_adder_test_bench IS   
   -- Component Declaration for the Unit Under Test (UUT)  
   COMPONENT four_bit_lac_adder  
   PORT( InA : IN std_logic_vector(3 downto 0);  
			InB : IN std_logic_vector(3 downto 0);  
			cin : IN std_logic;  
			sum : OUT std_logic_vector(3 downto 0);  
			cout : OUT std_logic );  
   END COMPONENT; 
	
   --Inputs  
   signal InA : std_logic_vector(3 downto 0) := (others => '0');  
   signal InB : std_logic_vector(3 downto 0) := (others => '0');  
   signal cin : std_logic := '0';  
   --Outputs  
   signal sum : std_logic_vector(3 downto 0);  
   signal cout : std_logic;  

 BEGIN  
   uut: four_bit_lac_adder PORT MAP (  
      InA => InA,  
      InB => InB,  
      cin => cin,  
      sum => sum,  
      cout => cout );  
   
   -- Stimulus process  
   proc: process  
				begin            
					 wait for 100 ns;  
					 InA <= "0000";  
					 InB <= "0000";  
					 cin <= '0';  
					
					 wait for 100 ns;  
					 InA <= "0000";  
					 InB <= "0001";  
					 cin <= '0';  
					 
					 wait for 100 ns;  
					 InA <= "0001";  
					 InB <= "0001";  
					 cin <= '0';  
					 
					 wait for 100 ns;  
					 InA <= "0010";  
					 InB <= "0001";  
					 cin<= '0';  
					 
					 wait for 100 ns;  
					 InA <= "0010";  
					 InB <= "0011";  
					 cin <= '1';  
					 
					 wait for 100 ns;  
					 InA <= "0011";  
					 InB <= "0011";  
					 cin <= '1';  
					 
					 wait for 100 ns;  
					 InA <= "1111";   
					 InB <= "0001";  
					 cin <= '1'; 

					 wait;  -- will wait forever 
   end process;  
 end;  