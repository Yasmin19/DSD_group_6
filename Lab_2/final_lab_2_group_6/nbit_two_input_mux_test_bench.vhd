--------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
--
-- Create Date:   21:17:10 11/01/2015
-- Design Name:   
-- Module Name:   H:/Documents/QM University Work/Year 3/Digital Systems Design/final_lab_1_group_7_project/Lab_2/nbit_two_input_mux_test_bench.vhd
-- Project Name:  Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nbit_two_input_mux
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
 
ENTITY nbit_two_input_mux_test_bench IS
END nbit_two_input_mux_test_bench;
 
ARCHITECTURE behavior OF nbit_two_input_mux_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_two_input_mux
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         control : IN  std_logic;
         Output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');
   signal control : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
 --** TRUTH TABLE FOR n-bit 2-input MUX **--

	--    InA   InB  Control   :  OUT
	--------------------------------------------
	--    0001   X      0	   :   0001
	--    0010   X      0      :   0010
	--    0100   X      0      :   0100
	--    1000   X      0      :   1000
	--     X  	0001    1	   :   0001
	--     X  	0010    1      :   0010
	--     X  	0100    1      :   0100
	--     X  	1000    1      :   1000
		  
	
--*******************************--
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_two_input_mux PORT MAP (
          InA => InA,
          InB => InB,
          control => control,
          Output => Output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		InA <= "0000";
		InB <= "0000";
		control <= '0';
		
		wait for 100 ns;
		InA <= "0010";
		InB <= "0000";
		control <= '0';
		
		wait for 100 ns;
		InA <= "0100";
		InB <= "0000";
		control <= '0';
		
		wait for 100 ns;
		InA <= "1000";
		InB <= "0000";
		control <= '0';

		
		wait for 100 ns;
		InA <= "0000";
		InB <= "0000";
		control <= '1';
		
		wait for 100 ns;
		InA <= "0000";
		InB <= "0001";
		control <= '1';
		
		wait for 100 ns;
		InA <= "0000";
		InB <= "0010";
		control <= '1';
		
		wait for 100 ns;
		InA <= "0000";
		InB <= "0100";
		control <= '1';
		
		wait for 100 ns;
		InA <= "0000";
		InB <= "1000";
		control <= '1';

      wait;
   end process;

END;
