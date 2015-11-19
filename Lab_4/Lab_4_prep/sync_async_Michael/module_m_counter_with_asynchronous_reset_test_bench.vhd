--------------------------------------------------------------------------------
-- Company: 		QMUL
-- Engineer:		Michael Seltene
--
-- Create Date:   15:32:58 11/18/2015
-- Design Name:   module_m_counter_with_asynchronous_reset_test_bench
-- Module Name:   module_m_counter_with_asynchronous_reset_test_bench.vhd
-- Project Name:  Lab_4
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description:   module_m_counter_with_asynchronous_reset_test_bench
-- 
-- VHDL Test Bench Created by ISE for module: modulo_m_counter_with_synchronous_reset
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
use ieee.numeric_std.all;

ENTITY module_m_counter_with_asynchronous_reset_test_bench IS
END module_m_counter_with_asynchronous_reset_test_bench;
 
ARCHITECTURE behavior OF module_m_counter_with_asynchronous_reset_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulo_m_counter_with_asynchronous_reset
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         count_enable : IN  std_logic;
         CLK : IN  std_logic;
         reset : IN  std_logic;
         Q_outputs : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
   signal count_enable : std_logic := '0';
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';
	
	signal temp : std_logic_vector(7 downto 0) := (others => '0');
 	--Outputs
   signal Q_outputs : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulo_m_counter_with_asynchronous_reset PORT MAP (
          input => input,
          count_enable => count_enable,
          CLK => CLK,
          reset => reset,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;
---------------------------------------------Count disabled & ResetON
		wait for 25 ns;
		reset <= '1';
		count_enable <= '0';	
---------------------------------------------Count enabled & ResetOFF
	wait for 25 ns;
	reset <= '0';	
	count_enable <= '1';	
---------------------------------Start
	wait for 100 ns;
	input <= "00000000";
---------------------------------
	wait for 100 ns;
	input <= "00000001";
---------------------------------	
	wait for 100 ns;
	input <= "00000010";
---------------------------------
	wait for 100 ns;
	input <= "00000011";
---------------------------------
	wait for 100 ns;
	input <= "00000100";
---------------------------------
	wait for 100 ns;
	input <= "00000101";
---------------------------------
	wait for 100 ns;
	input <= "00000110";
---------------------------------
	wait for 100 ns;
	input <= "00000111";
---------------------------------


      wait;
   end process;

END;
