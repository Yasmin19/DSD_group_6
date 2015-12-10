--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:41 11/30/2015
-- Design Name:   
-- Module Name:   H:/Documents/Lab6/Lab6/Data_path_tb.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Data_path
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
 
ENTITY Data_path_tb IS
END Data_path_tb;
 
ARCHITECTURE behavior OF Data_path_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Data_path
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         Clock : IN  std_logic;
			Control : IN  std_logic_vector(19 downto 0);
			data: OUT STD_LOGIC;
         output : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal Control : std_logic_vector(19 downto 0) := (others => '0');

	--BiDirs
   signal output : std_logic_vector(3 downto 0);
	signal data : std_logic;


 
BEGIN
 
 
  -- SET THE CLOCK PERIOD:
	Clock <= not Clock after 50 ns; -- define clock period 100ns
	
	-- Instantiate the Unit Under Test (UUT)
   uut: Data_path PORT MAP (
          input => input,
          Clock => Clock,
          Control => Control,
          output => output,
			 data => data
        );


   -- Stimulus process
   stim_proc: process
   begin	
		
		--Load 0010 into Reg0
		input <= "0010";
		Control<="10001XXXXXXXXXXXXXX0";
		
		--Load 0010 into Reg1
		wait for 80 ns;
		input <= "0010";
		Control<="10011XXXXXXXXXXXXXX0";
		
		--Add together contents of Reg0 and Reg1 (0010 + 0010) and store in Reg2
		wait for 80 ns;
		Control<="00101000100110010001"; --Output should be 0100
		
		
      wait;
   end process;

END;
