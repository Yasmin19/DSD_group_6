--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:25:42 11/04/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/N Bit shift register with paralel load/B_nit_shift_register_with_parallel_Load/N_bit_register_shift_with_parallel_load_tb.vhd
-- Project Name:  B_nit_shift_register_with_parallel_Load
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: N_bit_shift_register_with_parallel_load
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
 
ENTITY n_bit_shift_register_with_parallel_load_tb IS
END n_bit_shift_register_with_parallel_load_tb;
 
ARCHITECTURE behavior OF N_bit_register_shift_with_parallel_load_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_shift_register_with_parallel_load
    PORT(
         shift_in : IN  std_logic;
         D_inputs : IN  std_logic_vector(3 downto 0);
         Load_shift : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         Q_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal shift_in : std_logic := '0';
   signal D_inputs : std_logic_vector(3 downto 0) := (others => '0');
   signal Load_shift : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';

 	--Outputs
   signal Q_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: N_bit_shift_register_with_parallel_load PORT MAP (
          shift_in => shift_in,
          D_inputs => D_inputs,
          Load_shift => Load_shift,
          clk => clk,
          reset => reset,
          preset => preset,
          Q_out => Q_out
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
		D_inputs<="1111";
		load_shift<='1';
		shift_in<='0';
		wait for 100 ns;	
		
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;