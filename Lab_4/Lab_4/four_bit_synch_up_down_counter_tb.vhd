--------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
--
-- Create Date:   05:25:10 11/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Yasmin/Documents/GitHub/DSD_group_6/Lab_4/Lab_4/four_bit_synch_up_down_counter_tb.vhd
-- Project Name:  Lab_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_synchronous_up_down_counter
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
USE ieee.numeric_std.ALL;
 
ENTITY four_bit_synch_up_down_counter_tb IS
END four_bit_synch_up_down_counter_tb;
 
ARCHITECTURE behavior OF four_bit_synch_up_down_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_synchronous_up_down_counter
    PORT(
         N_count : IN  std_logic_vector(3 downto 0);
         down_up : IN  std_logic;
         CLK : IN  std_logic;
         reset : IN  std_logic;
         Q_outputs : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal N_count : std_logic_vector(3 downto 0) := (others => '0');
   signal down_up : std_logic := '0';
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(3 downto 0);

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_synchronous_up_down_counter PORT MAP (
          N_count => N_count,
          down_up => down_up,
          CLK => CLK,
          reset => reset,
          Q_outputs => Q_outputs
        );

   -- SET THE CLOCK PERIOD:
	CLK <= not CLK after 50 ns; -- define clock period 100ns

   -- Stimulus process
   stim_proc: process
   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
      reset <= '1'; --set register to 0000
		wait for 50 ns;
		reset <= '0';       

	--TEST 1 (Adding in 1's)
			N_count <= "0001"; -- Count in 1's
			down_up <= '0'; --set to adding mode
			wait for 400 ns; -- wait 4 clock cycles
			--OUTPUT SHOULD BE:
			--0000   - 0
			--0001	- 1
			--0010	- 2
			--0011	- 3
			--0100	- 4


		--TEST 2 (Adding in 2's)
			reset <= '1'; --register contains: 0000
			wait for 50 ns;
			reset <= '0';
			
			N_count <= "0010"; -- Counting in 2's
			down_up <= '0'; --keep adding mode
			wait for 380 ns;
			
			--OUTPUT SHOULD BE:
			--0000   - 0
			--0010	- 2
			--0100	- 4
			--0110	- 6
			--1000	- 8


		 --TEST 3 (Subtracting in 1's)
			 N_count <= "0001"; -- Counting in 1's
			 down_up <= '1'; --subtracting mode
			 wait for 400ns;
			 
			--OUTPUT SHOULD BE:
			--1000  - 8
			--0111  - 7
			--0110  - 6
			--0101  - 5
			--0100  - 4
			 
      wait;
   end process;

END;
