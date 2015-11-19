--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:39:11 11/04/2015
-- Design Name:   
-- Module Name:   C:/Users/Yasmin/Documents/Lab_3/nbit_universal_shift_register_tb.vhd
-- Project Name:  Lab_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nbit_universal_shift_register
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
 
ENTITY nbit_universal_shift_register_tb IS
END nbit_universal_shift_register_tb;
 
ARCHITECTURE behavior OF nbit_universal_shift_register_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_universal_shift_register
    PORT(
         D_inputs : IN  std_logic_vector(3 downto 0);
         Shift_in : IN  std_logic;
         Shift_Rotate : IN  std_logic;
         F : IN  std_logic_vector(1 downto 0);
         CLK : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         Q_outputs : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D_inputs : std_logic_vector(3 downto 0) := (others => '0');
   signal Shift_in : std_logic := '0';
   signal Shift_Rotate : std_logic := '0';
   signal F : std_logic_vector(1 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';

	--BiDirs
   signal Q_outputs : std_logic_vector(3 downto 0);


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_universal_shift_register PORT MAP (
          D_inputs => D_inputs,
          Shift_in => Shift_in,
          Shift_Rotate => Shift_Rotate,
          F => F,
          CLK => CLK,
          reset => reset,
          preset => preset,
          Q_outputs => Q_outputs
        );

	-- SET THE CLOCK PERIOD:
	CLK <= not CLK after 50 ns; -- define clock period 100ns
 

   -- Stimulus process
   tb: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		--TEST 1 (SHIFTING RIGHT)
		
			-- apply asynchronous reset signal:
			reset <= '1';	--register contains: 0000

			wait for 50 ns;
			
			-- disable reset
			reset <= '0';
			wait for 25 ns;
			
			--after wait time we have 25 ns left before register
			--will shift data on. Now we set shift_in to 1.
			
			F <= "10";
			Shift_Rotate <= '1';--option to shift
			shift_in <= '1';
			
			wait for 400 ns; -- wait 4 clock periods
			--1000
			--1100
			--1110
			--1111
	
		
		
		--TEST 2 (SHIFTING LEFT)
		
			reset <= '1'; --register contains: 0000
			wait for 50 ns;
			reset <= '0';
			
			F <= "01";
			Shift_Rotate <= '1';--option to shift
			shift_in <= '1';
			wait for 400 ns; -- wait 4 clock periods
			--0001
			--0011
			--0111
			--1111
			
			
			
	  --TEST 3 (ROTATING RIGHT)
	  
			reset <= '1'; --register contains: 0000
			wait for 50 ns;
			reset <= '0';
			
			F <= "10";
			Shift_Rotate <= '0'; --option to rotate
			shift_in <= '1';
			wait for 400 ns; -- wait 4 clock periods
			--
			--
			--
			--
	
      wait; -- will wait forever
   end process;

END;
