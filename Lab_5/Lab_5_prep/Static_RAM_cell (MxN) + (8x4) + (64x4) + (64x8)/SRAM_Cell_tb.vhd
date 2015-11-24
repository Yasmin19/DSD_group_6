--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:39:46 11/23/2015
-- Design Name:   
-- Module Name:   H:/Documents/Lab_4_prep/Lab4_edu/SRAM_Cell_tb.vhd
-- Project Name:  Lab4_edu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRAM_Cell
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
 
ENTITY SRAM_Cell_tb IS
END SRAM_Cell_tb;
 
ARCHITECTURE behavior OF SRAM_Cell_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRAM_Cell
    PORT(
         Data_in : IN  std_logic;
         Cell_select : IN  std_logic;
         Write_enable : IN  std_logic;
         Data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Data_in : std_logic := '0';
   signal Cell_select : std_logic := '0';
   signal Write_enable : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
     
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRAM_Cell PORT MAP (
          Data_in => Data_in,
          Cell_select => Cell_select,
          Write_enable => Write_enable,
          Data_out => Data_out
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		Data_in<='1';
		wait for 20 ns;
		Cell_select<='1';
		wait for 20 ns;
		Write_enable<='1';
		wait for 100 ns;
		Cell_select<='0';
      wait;
   end process;

END;
