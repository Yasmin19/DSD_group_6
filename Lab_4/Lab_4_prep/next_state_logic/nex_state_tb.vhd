--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:47:15 11/15/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/next_state_logic/nex_state_tb.vhd
-- Project Name:  next_state_logic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: next_state_logic
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
 
ENTITY nex_state_tb IS
END nex_state_tb;
 
ARCHITECTURE behavior OF nex_state_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT next_state_logic
    PORT(
         Input : IN  std_logic_vector(3 downto 0);
         Output : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal Output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: next_state_logic PORT MAP (
          Input => Input,
          Output => Output
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Input<="1110";
		wait for 100 ns;
		Input<="0011";
		wait for 100 ns;
		Input<="0001";


      -- insert stimulus here 

      wait;
   end process;

END;
