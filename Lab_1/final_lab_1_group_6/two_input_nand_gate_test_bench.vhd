--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Yasmin Sahraoui
--
-- Create Date:   12:04:37 10/13/2015
-- Design Name:   nand_gate_test_bench
-- Module Name:   nand_gate_test_bench.vhd
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   two input nand gate test bench 
-- 
-- VHDL Test Bench Created by ISE for module: nand_gate
-- 
-- Dependencies:  two_input_nand_gate.vhd
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nand_gate_test_bench IS
END nand_gate_test_bench;
 
ARCHITECTURE behavior OF nand_gate_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT two_input_nand_gate
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
   uut: two_input_nand_gate PORT MAP (
          a => a,
          b => b,
          f => f
        );

--** TRUTH TABLE FOR NAND GATE **--

	--    a      b    :    f
	--------------------------------
	--	   0      0    :    1
	--	   0      1    :    1
	--	   1      0    :    1
	--	   1      1    :    0
	
--*******************************--
		
   -- Stimulus process
   stim_proc: process
   begin	
	
	wait for 100 ns;  -- Wait 100 ns for global reset to finish 
	
		--TEST 1
      a <= '0'; b <= '0';   -- check that 0 + 0 => f = 1 	
      wait for 100 ns;

		--TEST 2
		a <= '0'; b <= '1'; 	 -- check that 0 + 1 => f = 1
      wait for 100 ns;
		
		--TEST 3
		a <= '1'; b <= '0';   -- check that 1 + 0 => f = 1
      wait for 100 ns;
		
		--TEST 4
		a <= '1'; b <= '1';   -- check that 1 + 1 => f = 0
		
      wait; -- will wait forever
   end process;
END;
