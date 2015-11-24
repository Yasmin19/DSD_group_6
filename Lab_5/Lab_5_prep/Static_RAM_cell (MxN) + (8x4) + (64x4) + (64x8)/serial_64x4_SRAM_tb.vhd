--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:31:31 11/23/2015
-- Design Name:   
-- Module Name:   H:/Documents/Lab_4_prep/Lab4_edu/serial_64x4_SRAM_tb.vhd
-- Project Name:  Lab4_edu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Serial_64x4_SRAM
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
 
ENTITY serial_64x4_SRAM_tb IS
END serial_64x4_SRAM_tb;
 
ARCHITECTURE behavior OF serial_64x4_SRAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Serial_64x4_SRAM
    PORT(
         Address : IN  std_logic_vector(5 downto 0);
         Read_write : IN  std_logic;
         OE : IN  std_logic;
         Data_inout : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(5 downto 0) := (others => '0');
   signal Read_write : std_logic := '0';
   signal OE : std_logic := '0';

	--BiDirs
   signal Data_inout : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Serial_64x4_SRAM PORT MAP (
          Address => Address,
          Read_write => Read_write,
          OE => OE,
          Data_inout => Data_inout
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		Read_write<='0';	
		Address<="000000";
		Data_inout<="1101";
		wait for 20 ns;	
		OE<='1';
		wait for 20 ns;
		OE<='0';
		wait for 100 ns;
		
		Address<="011001";
		Data_inout<="1001";
		wait for 20 ns;	
		OE<='1';
		wait for 20 ns;
		OE<='0';
		wait for 20 ns;
		Data_inout<="ZZZZ";
		wait for 20 ns;
		Read_write<='1';
		Address<="000000";
		wait for 100 ns;
		Address<="011001";
		
      -- insert stimulus here 

      wait;
   end process;

END;
