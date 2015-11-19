--------------------------------------------------------------------------------
-- Company: 	Queen Mary University
-- Engineer:	Hemat Shah
--
-- Create Date:   14:58:26 10/15/2015
-- Design Name:   four_input_nor_gate
-- Module Name:   four_input_nor_gate_test_bench.vhd
-- Project Name:  Group_7_Lab_1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   four_input_nor_gate_test_bench
-- 
-- VHDL Test Bench Created by ISE for module: four_input_nor_gate
-- 
-- Dependencies:  four_input_nor_gate.vhd
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
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- ENTITY
ENTITY four_input_nor_gate_test_bench IS
END four_input_nor_gate_test_bench;
 
-- ARCHITECTURE
ARCHITECTURE behavior OF four_input_nor_gate_test_bench IS 

-- Component Declaration for the Unit Under Test (UUT)

-- COMPONENT
    COMPONENT four_input_nor_gate
    PORT(
         a : IN  std_logic; -- a as input
         b : IN  std_logic; -- b as input
         c : IN  std_logic; -- c as input
         d : IN  std_logic; -- d as input
         f : OUT  std_logic -- f as output
        );
    END COMPONENT;
    

-- SIGNALS INPUT
   signal a : std_logic := '0'; -- initial to '0'
   signal b : std_logic := '0'; -- initial to '0'
   signal c : std_logic := '0'; -- initial to '0'
   signal d : std_logic := '0'; -- initial to '0'

-- SIGNALS OUTPUT
   signal f : std_logic; -- output signal
 
BEGIN
-- Instantiate the Unit Under Test (UUT)
   uut: four_input_nor_gate PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          f => f
        ); 
		  
	-- TRUTH TABLE
-- *********************** --
	--  a  b  c  d  :  f  
	----------------:---
	--	 0	 0	 0  0  :	 1  
	--	 0	 0	 0  1  :	 0  
	--	 0	 0	 1  0  :	 0  
	--	 0	 0	 1  1  :	 0 
	--	 0	 1	 0  0  :	 0  
	--	 0	 1	 0  1  :	 0 
	--	 0	 1	 1  0  :	 0  
	--	 0	 1	 1  1  :	 0 
	--	 1	 0	 0  0  :	 0  
	--	 1	 0	 0  1  :	 0 
	--	 1	 0	 1  0  :	 0 
	--	 1	 0	 1  1  :	 0 
	--	 1	 1	 0  0  :	 0 
	--	 1	 1	 0  1  :	 0 
	--	 1	 1	 1  0  :	 0 
 	--	 1	 1	 1  1  :	 0 

-- *********************** --

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;						-- Wait 100 ns for global reset to finish
		a<='0'; b<='0'; c<='0'; d<='0';  -- check that (0 or 0 or 0 or 0) = 1
      wait for 100 ns;										
		a<='0'; b<='0'; c<='0'; d<='1';  -- check that not(0 or 0 or 0 or 1) = 0
      wait for 100 ns;										
		a<='0'; b<='0'; c<='1'; d<='0';	-- check that not(0 or 0 or 1 or 0) = 0
      wait for 100 ns;
		a<='0'; b<='0'; c<='1'; d<='1';  -- check that not(0 or 0 or 1 or 1) = 0
      wait for 100 ns;
		a<='0'; b<='1'; c<='0'; d<='0';  -- check that not(0 or 1 or 0 or 0) = 0
      wait for 100 ns;
		a<='0'; b<='1'; c<='0'; d<='1';  -- check that not(0 or 1 or 0 or 1) = 0
      wait for 100 ns;
		a<='0'; b<='1'; c<='1'; d<='0';  -- check that not(0 or 1 or 1 or 0) = 0
      wait for 100 ns;
		a<='0'; b<='1'; c<='1'; d<='1';  -- check that not(0 or 1 or 1 or 1) = 0
      wait for 100 ns;
		a<='1'; b<='0'; c<='0'; d<='0';  -- check that not(1 or 0 or 0 or 0) = 0
      wait for 100 ns;
		a<='1'; b<='0'; c<='0'; d<='1';  -- check that not(1 or 0 or 0 or 1) = 0
      wait for 100 ns;
		a<='1'; b<='0'; c<='1'; d<='0';  -- check that not(1 or 0 or 1 or 0) = 0
      wait for 100 ns;
		a<='1'; b<='0'; c<='1'; d<='1';  -- check that not(1 or 0 or 1 or 1) = 0
      wait for 100 ns;
		a<='1'; b<='1'; c<='0'; d<='0';  -- check that not(1 or 1 or 0 or 0) = 0
      wait for 100 ns;
		a<='1'; b<='1'; c<='0'; d<='1';  -- check that not(1 or 1 or 0 or 1) = 0
      wait for 100 ns;
		a<='1'; b<='1'; c<='1'; d<='0';  -- check that not(1 or 1 or 1 or 0) = 0
      wait for 100 ns;
		a<='1'; b<='1'; c<='1'; d<='1';  -- check that not(1 or 1 or 1 or 1) = 0
		
      wait; -- will wait forever
   end process;

END;
