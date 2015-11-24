--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:08:54 11/24/2015
-- Design Name:   
-- Module Name:   C:/Users/Yasmin/Documents/GitHub/DSD_group_6/Lab_5/Lab_5_prep/Static_RAM_cell (MxN) + (8x4) + (64x4) + (64x8)/sixtyfour_by_eight_bit_sram_tb.vhd
-- Project Name:  Lab4_edu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sixtyfour_by_eight_bit_static_ram
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
 
ENTITY sixtyfour_by_eight_bit_sram_tb IS
END sixtyfour_by_eight_bit_sram_tb;
 
ARCHITECTURE behavior OF sixtyfour_by_eight_bit_sram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sixtyfour_by_eight_bit_static_ram
    PORT(
         Address : IN  std_logic_vector(5 downto 0);
         Read_write : IN  std_logic;
         Chip_select : IN  std_logic;
         Data_inout : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(5 downto 0) := (others => '0');
   signal Read_write : std_logic := '0';
   signal Chip_select : std_logic := '0';

	--BiDirs
   signal Data_inout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sixtyfour_by_eight_bit_static_ram PORT MAP (
          Address => Address,
          Read_write => Read_write,
          Chip_select => Chip_select,
          Data_inout => Data_inout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 

		--TEST 1
		Read_write <= '1'; --read
		Address <= "000001";
		Chip_select <= '0';
		
      wait;
   end process;

END;
