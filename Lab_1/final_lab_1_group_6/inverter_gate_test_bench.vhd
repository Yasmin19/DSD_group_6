--------------------------------------------------------------------------------
-- Company:  Queen Mary University
-- Engineer: Hemat Shah
--
-- Create Date:   16:57:20 10/13/2015
-- Design Name:   
-- Module Name:   intv_test.vhd
-- Project Name: 	Lab 1
-- Target Device: XCR3064xl-6pc44
-- Tool versions: Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description:   inverter gate test bench
-- 
-- VHDL Test Bench Created by ISE for module: inverter_gate
-- 
-- Dependencies:   inverter_gate.vhd
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
USE ieee.numeric_std.all; 

-- ENTITY
ENTITY intv_test IS
END intv_test;

-- ARCHITECTURE
ARCHITECTURE behavior OF intv_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT inverter_gate
    PORT(a : IN  std_logic;
         f : OUT  std_logic
    );
    END COMPONENT;
    
   --Inputs
   signal a : std_logic := '0';

 	--Outputs
   signal f : std_logic;
 
   -- An Inverter truth table;
	
	--|----------------------| 
	--|  input a :  output f |
   --|----------:-----------|
   --|       0  :	   1      | 
	--|----------:-----------|
	--|       1  :    0      | 
   --|----------------------| 	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inverter_gate PORT MAP (
          a => a,
          f => f
        );

   -- Stimulus process
   stim_proc: process
   begin		
	wait for 100 ns;  -- Wait 100 ns for global reset to finish
	
	 a<= '0';         -- check that a = '0' => f = '1'
    wait for 100 ns; 
    a<= '1';         -- check that a = '1' => f = '0'
    wait for 100 ns;	 
    a<= '0';			-- check that a = '0' => f = '1'
	 wait for 100 ns;
    a<= '1';			-- check that a = '1' => f = '0'
	 wait for 100 ns;
    a<= '0';			-- check that a = '0' => f = '1'
	 wait for 100 ns;
    a<= '1';			-- check that a = '1' => f = '0'

    wait;  -- will wait forever
   end process;

END;
