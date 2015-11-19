--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Yasmin Sahraoui
--
-- Create Date:   14:01:13 10/14/2015
-- Design Name:   two_input_multiplexer_test_bench
-- Module Name:   Mux_2_1_test_bench.vhd
-- Project Name:  Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:   two input multiplexer test bench
-- 
-- VHDL Test Bench Created by ISE for module: Mux_2_1
-- 
-- Dependencies:  two_input_multiplexer.vhd
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
ENTITY Mux_2_1_test_bench IS
END Mux_2_1_test_bench;
 
-- ARCHITECTURE
ARCHITECTURE behavior OF Mux_2_1_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT two_input_multiplexer 
	 PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         SEL : IN  std_logic;
         OUT1 : OUT  std_logic
        );
    END COMPONENT;   

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal SEL : std_logic := '0';

 	--Outputs
   signal OUT1 : std_logic;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: two_input_multiplexer PORT MAP (
          I0 => I0,
          I1 => I1,
          SEL => SEL,
          OUT1 => OUT1
        );


--** TRUTH TABLE FOR 2-1 MUX **--

	--    I0    I1    SEL  :  OUT
	--------------------------------
	--	   0      0     0   :   0
	--	   0      0     1   :   0
	--	   0      1     0   :   0
	--	   0      1     1   :   1
	--	   1      0     0   :   1
	--	   1      0     1   :   0
	--	   1      1     0   :   1
	--	   1      1     1   :   1
	
--*******************************--

   -- Stimulus process
   stim_proc: process
   begin	
	
	wait for 100 ns; -- Wait 100 ns for global reset to finish
	
		--TEST 1
      I0 <= '0'; I1 <= '0'; SEL <= '0';    -- check that 0 + 0 + 0 => OUT = 0 
		
		--TEST 2
      wait for 100 ns;	
      I0 <= '0'; I1 <= '0'; SEL <= '1';	 -- check that 0 + 0 + 1 => OUT = 0 
		
		--TEST 3
      wait for 100 ns;
      I0 <= '0'; I1 <= '1'; SEL <= '0'; 	-- check that 0 + 1 + 0 => OUT = 0 
		
		--TEST 4
      wait for 100 ns;
      I0 <= '0'; I1 <= '1'; SEL <= '1'; 	-- check that 0 + 1 + 1 => OUT = 1 
		
		--TEST 5
      wait for 100 ns;
		I0 <= '1'; I1 <= '0'; SEL <= '0'; 	-- check that 1 + 0 + 0 => OUT = 1 
		
		--TEST 6
		wait for 100 ns;
		I0 <= '1'; I1 <= '0'; SEL <= '1'; 	-- check that 1 + 0 + 1 => OUT = 0 
		
		--TEST 7
		wait for 100 ns;
		I0 <= '1'; I1 <= '1'; SEL <= '0'; 	-- check that 1 + 1 + 0 => OUT = 1 
		
		--TEST 8
		wait for 100 ns;
		I0 <= '1'; I1 <= '1'; SEL <= '1'; 	-- check that 1 + 1 + 1 => OUT = 1 
	
      wait; --will wait forever
   end process;

END;
