--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Eduardo De Souza Valencia
--
-- Create Date:   15:53:29 10/13/2015
-- Design Name:   two_input_or_gate
-- Module Name:   or_test_bench.vhd
-- Project Name:  Lab 1
-- Target Devices:XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description:   two kinput or gate test bench
-- 
-- VHDL Test Bench Created by ISE for module: or_gate
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

-- ENTITY
ENTITY or_test_bench IS
END or_test_bench;

-- ARCHITECTURE
ARCHITECTURE behavior OF or_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT or_gate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal f : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: or_gate PORT MAP (
          a => a,
          b => b,
          f => f
        );

 	   -- TRUTH TABLE --
-- ********************** --

	--  a  b  : f 
	----------:---
	--  0	 0	 : 0 
	--	 0	 1	 : 1
	--	 1	 0	 : 1
	--	 1	 1	 : 1

-- ********************** --

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 100ns;       -- Wait 100 ns for global reset to finish

      a <= '0'; b <= '0';   -- check that 0 + 0 => f = 0
      wait for 100 ns;
		a <= '0'; b <= '1';   -- check that 0 + 1 => f = 1
      wait for 100 ns;
		a <= '1'; b <= '0';   -- check that 1 + 0 => f = 1
      wait for 100 ns;
		a <= '1'; b <= '1';   -- check that 1 + 1 => f = 1

      wait;  -- will wait forever
   end process;

END;

