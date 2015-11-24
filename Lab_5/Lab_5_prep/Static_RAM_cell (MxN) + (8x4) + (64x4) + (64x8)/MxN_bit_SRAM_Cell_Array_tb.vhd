--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:32 11/23/2015
-- Design Name:   
-- Module Name:   H:/Documents/Lab_4_prep/Lab4_edu/MxN_bit_SRAM_Cell_Array_tb.vhd
-- Project Name:  Lab4_edu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MxN_bit_SRAM_Cell_Array
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
 
ENTITY MxN_bit_SRAM_Cell_Array_tb IS
END MxN_bit_SRAM_Cell_Array_tb;
 
ARCHITECTURE behavior OF MxN_bit_SRAM_Cell_Array_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MxN_bit_SRAM_Cell_Array
    PORT(
         Data_in : IN  std_logic_vector(3 downto 0);
         Select_lines : IN  std_logic_vector(3 downto 0);
         Write_enable : IN  std_logic;
         Data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal Select_lines : std_logic_vector(3 downto 0) := (others => '0');
   signal Write_enable : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MxN_bit_SRAM_Cell_Array PORT MAP (
          Data_in => Data_in,
          Select_lines => Select_lines,
          Write_enable => Write_enable,
          Data_out => Data_out
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	--write 1001 in first line
		Data_in<="1001";
		Select_lines<="0001";
		Write_enable<='1';
		wait for 10 ns;
		Write_enable<='0';
		wait for 10 ns;
		Data_in<="1110";--write 1001 in third line
		Select_lines<="0100";
		Write_enable<='1';
		wait for 10 ns;
		Write_enable<='0';
		wait for 20 ns;
		Select_lines<="0001";
		wait for 20 ns;
		Select_lines<="0100";
		wait for 20 ns;     

      -- insert stimulus here 

      wait;
   end process;

END;
