--------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
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

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
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
 
  -- SET THE CLOCK PERIOD:
	Clock <= not Clock after 50 ns; -- define clock period 100ns
	
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
		  

	   -- Stimulus process
   stim_proc: process
   begin		
	
		--TEST 1 (Write data and output to OA)
			DIN <= '1';
			WE <= '1';
			REA <= '1'; --enable OA
			wait for 100 ns;
			
		--TEST 2 (Write data and output to OB)
			DIN <= '1';
			WE <= '1';
			REA <= '0'; --disable OA
			REB <= '1'; --enable OB
			wait for 100 ns;
			
		--TEST 3 (Wrtie data and output to both OA and OB)
			DIN <= '1';
			WE <= '1';
			REA <= '1';
			REB <= '1';
			wait for 100 ns;
			
		--TEST 4 (Disable write, previous data should be outputted)
			DIN <= '0'; --even if we change data, it will not affect output
			WE <= '0';

      wait;
   end process;

END;
