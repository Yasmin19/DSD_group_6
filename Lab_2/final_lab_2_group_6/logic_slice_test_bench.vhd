--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Eduardo
--
-- Create Date:   10:24:05 10/29/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/Logicslice/Logic_slicer_tb.vhd
-- Project Name:  Logicslice
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LogicSlice
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
 
ENTITY logic_slicer_tb IS
END logic_slicer_tb;
 
ARCHITECTURE behavior OF logic_slicer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LogicSlice
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         Ctrl : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal Ctrl : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LogicSlice PORT MAP (
          I0 => I0,
          I1 => I1,
          Ctrl => Ctrl,
          O => O
        );

   -- Clock process definitions
   
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      

     
		Ctrl <= "00";		  -- test NOT A
		I0 <= '0';
		
		wait for 100 ns;

		Ctrl <= "01";		  -- test A and B
		I0 <= '0';
		I1 <= '1';

		wait for 100 ns;

		Ctrl <= "10";		  -- test A xor B
		I0 <= '0';
		I1 <= '1';


		wait for 100 ns;

		Ctrl <= "11";		  -- test A or B
		I0 <= '1';
		I1 <= '0';
      wait;
   end process;

END;