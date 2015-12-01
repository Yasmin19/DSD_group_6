--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:16:32 11/25/2015
-- Design Name:   
-- Module Name:   C:/Users/hs304/Desktop/Lab_5/Lab_5_prep/register_file_cell + n_bit_rfc_reg/n_bit_rfc_reg_tb.vhd
-- Project Name:  register_file_cell
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_rfc_register
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
 
ENTITY n_bit_rfc_reg_tb IS
END n_bit_rfc_reg_tb;
 
ARCHITECTURE behavior OF n_bit_rfc_reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_bit_rfc_register
    PORT(
         Data_in : IN  std_logic_vector(3 downto 0);
         REA : IN  std_logic;
         REB : IN  std_logic;
         WE : IN  std_logic;
         Clock : IN  std_logic;
         OA : OUT  std_logic_vector(3 downto 0);
         OB : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal REA : std_logic := '0';
   signal REB : std_logic := '0';
   signal WE : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal OA : std_logic_vector(3 downto 0);
   signal OB : std_logic_vector(3 downto 0);

	
BEGIN
 
 -- SET THE CLOCK PERIOD:
	Clock <= not Clock after 50 ns; -- define clock period 100ns
	
	
	-- Instantiate the Unit Under Test (UUT)
   uut: n_bit_rfc_register PORT MAP (
          Data_in => Data_in,
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		--TEST 1
			Data_in <= "1111";
			WE <= '1';
			REA <= '1';
			

      -- insert stimulus here 

      wait;
   end process;

END;
