--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:17:49 11/03/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/N_bit_register_tri_state/N_bit_registre_tri_state/N_bit_register_tri_state_tb.vhd
-- Project Name:  N_bit_registre_tri_state
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: N_bit_register_tri_state
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
 
ENTITY n_bit_register_load_hold_tristate_tb IS
END n_bit_register_load_hold_tristate_tb;
 
ARCHITECTURE behavior OF n_bit_register_load_hold_tristate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_register_load_hold_tristate
    PORT(
         D_inputs : IN  std_logic_vector(3 downto 0);
         Hold_load : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         Output_enable : IN  std_logic;
         Outputs : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D_inputs : std_logic_vector(3 downto 0) := (others => '0');
   signal Hold_load : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';
   signal Output_enable : std_logic := '0';

 	--Outputs
   signal Outputs : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_register_load_hold_tristate PORT MAP (
          D_inputs => D_inputs,
          Hold_load => Hold_load,
          clk => clk,
          reset => reset,
          preset => preset,
          Output_enable => Output_enable,
          Outputs => Outputs
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
      wait for 100 ns;	

      wait for clk_period*10;
wait for 100 ns;	
		
		reset<='0';
		D_inputs<="1001";
		
		wait for 100 ns;
		output_enable<='1';
		Hold_load<='1';
		wait for 100 ns;
		Hold_load<='0';
		wait for 100 ns;
		
		
      

      wait;
   end process;

END;