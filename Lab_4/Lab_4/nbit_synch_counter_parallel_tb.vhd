--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:28:44 11/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Yasmin/Documents/GitHub/DSD_group_6/Lab_4/Lab_4/nbit_synch_counter_parallel_tb.vhd
-- Project Name:  Lab_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nbit_synchronous_counter_parallel
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
 
ENTITY nbit_synch_counter_parallel_tb IS
END nbit_synch_counter_parallel_tb;
 
ARCHITECTURE behavior OF nbit_synch_counter_parallel_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_synchronous_counter_parallel
    PORT(
         D_inputs : IN  std_logic_vector(7 downto 0);
         load_count : IN  std_logic;
         count_enable : IN  std_logic;
         CLK : IN  std_logic;
         reset : IN  std_logic;
         Q_outputs : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D_inputs : std_logic_vector(7 downto 0) := (others => '0');
   signal load_count : std_logic := '0';
   signal count_enable : std_logic := '0';
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_synchronous_counter_parallel PORT MAP (
          D_inputs => D_inputs,
          load_count => load_count,
          count_enable => count_enable,
          CLK => CLK,
          reset => reset,
          Q_outputs => Q_outputs
        );

   -- SET THE CLOCK PERIOD:
	CLK <= not CLK after 50 ns; -- define clock period 100ns
 

   -- Stimulus process
   stim_proc: process
   begin		

      reset <= '1';
		wait for 50 ns;
		reset <= '0';   
		
		--TEST 1 (incrementing by 1)
			count_enable <= '1'; --increment by 1
			load_count <= '0';
			wait for 500 ns;
			
			--OUTPUT SHOULD BE
			--00000000
			--00000001
			--00000010
			--00000011
			--00000100
			
		
		--TEST 2 (loading values)
			load_count <='1'; --enable value to be loaded
			D_inputs <= "00001000"; --value that will be loaded
			wait for 200 ns;
			
		--TEST 3 (incrementing with newly loaded value)
		
			load_count <= '0'; --back to counting
			
			--OUTPUT SHOULD BE
			--00001000
			--00001001
			--00001010
			--00001011
			--00001100
			
      wait;
   end process;

END;
