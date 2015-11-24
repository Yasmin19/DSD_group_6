--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:17:56 11/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Hemat/Desktop/DSD LABS/LAB5/Seven_Segment_display_TestBench.vhd
-- Project Name:  LAB5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_Seven_Segement_display_Decoder
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
 
ENTITY Seven_Segment_display_TestBench IS
END Seven_Segment_display_TestBench;
 
ARCHITECTURE behavior OF Seven_Segment_display_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_Seven_Segement_display_Decoder
    PORT(
         Address : IN  std_logic_vector(3 downto 0);
         Data_Outputs : OUT  std_logic_vector(6 downto 0)
         
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Data_Outputs : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_Seven_Segement_display_Decoder PORT MAP (
          Address => Address,
          Data_Outputs => Data_Outputs
        );

   -- Stimulus process
   stim_proc: process
   begin		

      -- insert stimulus here
        
	Address <= "1111";
   wait for 50 ns;	
   Address <= "1110";
   wait for 50 ns; 		
   Address <= "1101";
   wait for 50 ns;
	Address <= "1100";
   wait for 50 ns;
	Address <= "1011";
   wait for 50 ns;
	Address <= "1010";
   wait for 50 ns;
	Address <= "1001";
   wait for 50 ns;
	Address <= "1000";
   wait for 50 ns;
	Address <= "0111";
   wait for 50 ns;
	Address <= "0110";
   wait for 50 ns;
	Address <= "0101";
   wait for 50 ns;
	Address <= "0100";
   wait for 50 ns;
	Address <= "0011";
   wait for 50 ns;
	Address <= "0010";
   wait for 50 ns;
	Address <= "0001";
   wait for 50 ns;
	Address <= "0000";
  -- wait for 20 ns;
	
	
	
	
      wait;
   end process;

END;
