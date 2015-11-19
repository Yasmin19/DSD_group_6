--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Yasmin Sahraoui
--
-- Create Date:   23:14:57 10/28/2015
-- Design Name:   
-- Module Name:   C:/Users/Yasmin/Documents/final_lab_1_group_7_project/Lab_2_v2/four_input_multiplexer_test_bench.vhd
-- Project Name:  Lab_2_v2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_input_multiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 

 
ENTITY four_input_multiplexer_test_bench IS
END four_input_multiplexer_test_bench;
 
ARCHITECTURE behavior OF four_input_multiplexer_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_input_multiplexer
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         I3 : IN  std_logic;
         control : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal I3 : std_logic := '0';
   signal control : std_logic_vector(1 downto 0) := (others=>'0');

 	--Outputs
   signal O : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_input_multiplexer PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          control => control,
          O => O
        );

--** TRUTH TABLE FOR 4-1 MUX **--

	--    Con0   Con1   :  OUT
	--------------------------------------------
	--     0      0     :   I0
	--     0      1     :   I1
	--     1      0     :   I2
	--     1      1     :   I3
		  
	
--*******************************--


   -- Stimulus process
   stim_proc: process
   begin	
	
	wait for 100 ns; -- Wait 100 ns for global reset to finish
	
		--TEST 1
      control <= "00";
      I0 <= '1';
      I1 <= '0';
      I2 <= '0';
      I3 <= '0';
	
	wait for 100 ns; 
	
		--TEST 2
      control <= "01";
      I0 <= '0';
      I1 <= '1';
      I2 <= '0';
      I3 <= '0';
	
	wait for 100 ns; 	
		--TEST 3
      control <= "10";
      I0 <= '0';
      I1 <= '0';
      I2 <= '1';
      I3 <= '0';
	
	wait for 100 ns; 
		--TEST 4
      control <= "11";
      I0 <= '0';
      I1 <= '0';
      I2 <= '0';
      I3 <= '1';

      wait;
   end process;

END;