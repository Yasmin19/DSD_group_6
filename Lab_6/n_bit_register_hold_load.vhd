--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:50:00 11/02/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/N Bit Register Hold-Load/N_bit_register_hold-Load/n_bit_register_hold_load.vhd
-- Project Name:  N_bit_register_hold-Load
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_register_hold_load
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
 
ENTITY n_bit_register_hold_load IS
END n_bit_register_hold_load;
 
ARCHITECTURE behavior OF n_bit_register_hold_load IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_register_hold_load
    PORT(
         InputB : IN  std_logic_vector(3 downto 0);
         control : IN  std_logic;
         clk : IN  std_logic;
         preset : IN  std_logic;
         reset : IN  std_logic;
         Q_out : INOUT  std_logic_vector(3 downto 0);
         Qbar_out : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InputB : std_logic_vector(3 downto 0) := (others => '0');
   signal control : std_logic := '0';
   signal clk : std_logic := '0';
   signal preset : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal Q_out : std_logic_vector(3 downto 0);
   signal Qbar_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_register_hold_load PORT MAP (
          InputB => InputB,
          control => control,
          clk => clk,
          preset => preset,
          reset => reset,
          Q_out => Q_out,
          Qbar_out => Qbar_out
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
		InputB<="1001";
		Control<='0';
		preset <='0';
      reset <='1';
		
		wait for 20 ns;
		Control<='1';
		preset <='1';
		
		wait for 20 ns;
		Control<='0';
		
		wait for 20 ns;
		InputB<="1111";
		
		wait for 20 ns;
		Control<='1';
		
		wait for 100 ns;
		

      wait;
   end process;

END;
