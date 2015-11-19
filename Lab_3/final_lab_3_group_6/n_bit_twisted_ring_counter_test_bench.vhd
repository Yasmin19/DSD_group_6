--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer:	Michael Seltene
--
-- Create Date:   13:36:56 11/04/2015
-- Design Name:   
-- Module Name:   n_bit_twisted_ring_counter/n_bit_twisted_ring_counter_test_bench.vhd
-- Project Name:  n_bit_twisted_ring_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_twisted_ring_counter
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
 
ENTITY n_bit_twisted_ring_counter_test_bench IS
END n_bit_twisted_ring_counter_test_bench;
 
ARCHITECTURE behavior OF n_bit_twisted_ring_counter_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_twisted_ring_counter
    PORT( CLK : IN  std_logic;
          reset : IN  std_logic;
          preset : IN  std_logic;
          Q_outputs : INOUT  std_logic_vector(3 downto 0) );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_twisted_ring_counter PORT MAP (
          CLK => CLK,
          reset => reset,
          preset => preset,
          Q_outputs => Q_outputs
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- wait for global reset  
							wait for 100 ns;       
    wait for CLK_period*10;  
			  wait for 100 ns;  
           reset <= '1';  
			  wait for 120ns;  
           reset <= '0';  
			
			  wait for 100 ns;  
           preset <= '1';  
			  wait for 120ns;  
           preset <= '0';  
							
			  wait for 100 ns;  
           reset <= '1';  
			  wait for 120ns;  
           reset <= '0';  
                     
			  wait for 100 ns;  
           preset <= '1';  
			  wait for 120ns;  
           preset <= '0';  
           
			  wait for 100 ns;  
           reset <= '1';  
			  wait for 120ns;  
           reset <= '0';  
                     
			  wait for 100 ns;  
           preset <= '1';  
			  wait for 120ns;  
           preset <= '0';  
                     
			  wait for 100 ns;  
           reset <= '1';  
			  wait for 120ns;  
           reset <= '0';  
    wait;  
   end process;

END;
