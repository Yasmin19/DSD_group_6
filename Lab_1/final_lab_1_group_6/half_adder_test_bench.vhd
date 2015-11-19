--------------------------------------------------------------------------------
-- Company:    Queen Mary University
-- Engineer: 	Michael Seltene : 120099030
-- 				Group : 7
-- Create Date:   12:46:51 10/14/2015
-- Design Name:   half_adder
-- Module Name:   half_adder_test_bench.vhd
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   half adder test bench
-- 
-- VHDL Test Bench Created by ISE for module: half_adder
-- 
-- Dependencies: half_adder.vhd
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
ENTITY half_adder_test_bench IS
END half_adder_test_bench;

-- ARCHITECTURE
ARCHITECTURE behavior OF half_adder_test_bench IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT half_adder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          a => a,
          b => b,
          s => s,
          cout => cout
        );

		-- TRUTH TABLE --
-- ********************** --
	--  a  b  : s  cout
	---------------:--------
	--  0	 0	 : 0  0
	--	 0	 1	 : 1  0
	--	 1	 0	 : 1  0
	--	 1	 1	 : 0  1

-- ********************** --

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 100 ns;	-- Wait 100 ns for global reset to finish
		
      a<='0'; b<='0';   -- check that 0+0 => s = '0' and cout = '0'
      wait for 100 ns;	
		a<='0'; b<='1';	-- check that 0+1 => s = 1 and cout = '0'
		wait for 100 ns;	
		a<='1'; b<='0';   -- check that 1+0 => s = 1 and cout = '0'
		wait for 100 ns;	   
		a<='1'; b<='1';   -- check that 1+1 => s = 0 and cout = '1'

      wait; -- will wait forever
   end process;

END;
