--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:26:01 11/25/2015
-- Design Name:   
-- Module Name:   C:/Users/hs304/Desktop/Lab_5/Lab_5_prep/register_file_cell + n_bit_rfc_reg/register_file_cell_tb.vhd
-- Project Name:  register_file_cell
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file_cell
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
 
ENTITY register_file_cell_tb IS
END register_file_cell_tb;
 
ARCHITECTURE behavior OF register_file_cell_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file_cell
    PORT(
         DIN : IN  std_logic;
         REA : IN  std_logic;
         REB : IN  std_logic;
         WE : IN  std_logic;
         Clock : IN  std_logic;
         OA : OUT  std_logic;
         OB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DIN : std_logic := '0';
   signal REA : std_logic := '0';
   signal REB : std_logic := '0';
   signal WE : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal OA : std_logic;
   signal OB : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file_cell PORT MAP (
          DIN => DIN,
          REA => REA,
          REB => REB,
          WE => WE,
          Clock => Clock,
          OA => OA,
          OB => OB
        );
		  
	-- SET THE CLOCK PERIOD:
	Clock <= not Clock after 50 ns; -- define clock period 100ns
	
	   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
	
      wait for 100 ns;	
		--TEST 1
			DIN <= '1';
			REA <='1';
			WE <= '1';
			
      -- insert stimulus here 

      wait;
   end process;

END;
