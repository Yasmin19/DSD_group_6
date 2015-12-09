--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:55:23 12/03/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/Lab6/Lab6/Controller_tb.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Control
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
 
ENTITY Controller_tb IS
END Controller_tb;
 
ARCHITECTURE behavior OF Controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control
    PORT(
         one : IN  std_logic;
         start : IN  std_logic;
         data_not_zero : IN  std_logic;
         clock : IN  std_logic;
         alt : IN  std_logic;
         Data_contol : OUT  std_logic_vector(19 downto 0);
         Done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal one : std_logic := '0';
   signal start : std_logic := '0';
   signal data_not_zero : std_logic := '0';
   signal clock : std_logic := '0';
   signal alt : std_logic := '0';

 	--Outputs
   signal Data_contol : std_logic_vector(19 downto 0);
   signal Done : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control PORT MAP (
          one => one,
          start => start,
          data_not_zero => data_not_zero,
          clock => clock,
          alt => alt,
          Data_contol => Data_contol,
          Done => Done
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
