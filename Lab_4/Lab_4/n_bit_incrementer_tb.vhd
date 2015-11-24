--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:06 11/15/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/n_bit_incrementer/n_bit_incrementer_tb.vhd
-- Project Name:  n_bit_incrementer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_incrementer
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
 
ENTITY n_bit_incrementer_tb IS
END n_bit_incrementer_tb;
 
ARCHITECTURE behavior OF n_bit_incrementer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_incrementer
    PORT(
         InA : IN  std_logic_vector(7 downto 0);
         C_In : IN  std_logic;
         Sum : OUT  std_logic_vector(7 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(7 downto 0) := (others => '0');
   signal C_In : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(7 downto 0);
   signal C_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_incrementer PORT MAP (
          InA => InA,
          C_In => C_In,
          Sum => Sum,
          C_out => C_out
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		InA<="00000111";
		C_In<='1';
		wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
