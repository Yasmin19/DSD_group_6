--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:51:58 11/17/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/eight_bit_comparator/eight_bit_comparator_tb.vhd
-- Project Name:  eight_bit_comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eight_bit_comparator
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY eight_bit_comparator_tb IS
END eight_bit_comparator_tb;
 
ARCHITECTURE behavior OF eight_bit_comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_bit_comparator
    PORT(
         InA : IN  std_logic_vector(7 downto 0);
         InB : IN  std_logic_vector(7 downto 0);
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(7 downto 0) := (others => '0');
   signal InB : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
    
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_bit_comparator PORT MAP (
          InA => InA,
          InB => InB,
          Output => Output
        );

   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		InA<="10010010";
		InB<="10010010";
		wait for 20 ns;
		InA<="10010010";
		InB<="10010011";
		wait for 20 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
