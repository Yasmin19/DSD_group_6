--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Eduardo
--
-- Create Date:   15:02:00 11/01/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/N Bit Logic Unit/NbitLogicUnity/n_bit_logic_unity_tb.vhd
-- Project Name:  NbitLogicUnity
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_bit_logic_unity
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
 
ENTITY n_bit_logic_unit_tb IS
END n_bit_logic_unit_tb;
 
ARCHITECTURE behavior OF n_bit_logic_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_logic_unit
    PORT(
         inA : IN  std_logic_vector(3 downto 0);
         inB : IN  std_logic_vector(3 downto 0);
         control : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inA : std_logic_vector(3 downto 0) := (others => '0');
   signal inB : std_logic_vector(3 downto 0) := (others => '0');
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_logic_unit PORT MAP (
          inA => inA,
          inB => inB,
          control => control,
          output => output
        );

      

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      control<="00";--not A
		inA<="1010";
		
		wait for 100 ns;
		control<="01";-- A and B
		inA<="1010";
		inB<="1100";
		
		wait for 100 ns;
		control<="10";-- A xor B
		inA<="1010";
		inB<="1100";
		
		wait for 100 ns;
		control<="11";-- A or B
		inA<="1010";
		inB<="1100";
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;