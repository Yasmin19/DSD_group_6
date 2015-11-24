--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:17:19 11/16/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/n_bit_synchronous_counter_with_enable/N_bit_synchronous_counter_enable_tb.vhd
-- Project Name:  n_bit_synchronous_counter_with_enable
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: N_bit_sync_counter_with_enable
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
 
ENTITY N_bit_synchronous_counter_enable_tb IS
END N_bit_synchronous_counter_enable_tb;
 
ARCHITECTURE behavior OF N_bit_synchronous_counter_enable_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT N_bit_sync_counter_with_enable
    PORT(
         count_enable : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         Q_outputs : INOUT  std_logic_vector(7 downto 0);
         Qbar_outputs : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal count_enable : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(7 downto 0);
   signal Qbar_outputs : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: N_bit_sync_counter_with_enable PORT MAP (
          count_enable => count_enable,
          clk => clk,
          reset => reset,
          Q_outputs => Q_outputs,
          Qbar_outputs => Qbar_outputs
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';
		count_enable<='1';
		wait for 100 ns;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
