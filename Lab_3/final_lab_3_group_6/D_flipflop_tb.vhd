--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Eduardo
--
-- Create Date:   16:10:53 11/01/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/N Bit Logic Unit/D_Flipflop/D_flipflop_tb.vhd
-- Project Name:  D_Flipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_flipflop
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
 
ENTITY D_flipflop_tb IS
END D_flipflop_tb;
 
ARCHITECTURE behavior OF D_flipflop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_flipflop
    PORT(
         D : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         clk : IN  std_logic;
         Q : INOUT  std_logic;
         Q_bar : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal Q_bar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_flipflop PORT MAP (
          D => D,
          reset => reset,
          preset => preset,
          clk => clk,
          Q => Q,
          Q_bar => Q_bar
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
			reset<='1';
			preset<='0';
			D<='1';
			
		wait for 100 ns;
			reset<='0';
			preset<='1';
			
		wait for 100 ns;
			reset<='0';
			preset<='0';

		
		wait for 100 ns;
			D<='0';
			
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;