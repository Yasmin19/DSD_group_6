--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:10:54 10/28/2015
-- Design Name:   
-- Module Name:   C:/Users/hs304/Desktop/Lab2_group7/Sift_Control_Logic_Test.vhd
-- Project Name:  Lab2_group7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shif_Control_Logic
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
 
ENTITY shift_control_logic_test_bench IS
END shift_control_logic_test_bench;
 
ARCHITECTURE behavior OF Sift_Control_Logic_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_Control_Logic
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         X : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal X : std_logic_vector(1 downto 0);
  
 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shif_Control_Logic PORT MAP (
          A => A,
          X => X
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
   wait for 100 ns;	
   A <= "000";  
   wait for 100 ns;  
   A <= "001";  
   wait for 100 ns;  
   A <= "010";  
   wait for 100 ns;  
   A <= "011";  
   wait for 100 ns;  
   A <= "100";  
   wait for 100 ns;  
   A <= "101";  
   wait for 100 ns;  
   A <= "110";  
   wait for 100 ns;  
   A <= "111";   

      wait;
   end process;

END;