--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:06:34 11/15/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/n-bit_ripple_counter/n_bit_ripple_counter_tb.vhd
-- Project Name:  n-bit_ripple_counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_ripple_counter
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
 
ENTITY n_bit_ripple_counter_tb IS
END n_bit_ripple_counter_tb;
 
ARCHITECTURE behavior OF n_bit_ripple_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_ripple_counter
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         Q_outputs : INOUT  std_logic_vector(7 downto 0);
         Qbar_outputs : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(7 downto 0);
   signal Qbar_outputs : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_ripple_counter PORT MAP (
          reset => reset,
          clk => clk,
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
      wait for 200 ns;	
		reset<='1';
		wait for 20 ns;	
		reset<='0';
		wait for 100 ns;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
