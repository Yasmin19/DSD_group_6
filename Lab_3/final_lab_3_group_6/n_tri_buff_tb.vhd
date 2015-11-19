--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:18:03 11/01/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/DSD/n__bit_tri-stste_buffer/n_tri_buff_tb.vhd
-- Project Name:  n__bit_tri-stste_buffer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: n_tri_buffer
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
 
ENTITY n_tri_buff_tb IS
END n_tri_buff_tb;
 
ARCHITECTURE behavior OF n_tri_buff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT n_tri_buffer
    PORT(
         Data_in : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic;
         Data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: n_tri_buffer PORT MAP (
          Data_in => Data_in,
          enable => enable,
          Data_out => Data_out
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Data_in<="1001";
		enable<='0';
		
		wait for 100 ns;
		enable<='1';
      wait;
   end process;

END;