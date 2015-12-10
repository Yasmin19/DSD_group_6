--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:30:26 12/02/2015
-- Design Name:   
-- Module Name:   C:/Users/edsv3/Desktop/Lab6/Lab6/Microprogram_tb.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mircoprogram_controlled_datapath_system
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
 
ENTITY Microprogram_tb IS
END Microprogram_tb;
 
ARCHITECTURE behavior OF Microprogram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mircoprogram_controlled_datapath_system
    PORT(
         Start : IN  std_logic;
         Alt : IN  std_logic;
         Clock : IN  std_logic;
         Data_In : IN  std_logic_vector(3 downto 0);
         Done : OUT  std_logic;
         Data_Out : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal Alt : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Data_In : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal Data_Out : std_logic_vector(3 downto 0);

 	--Outputs
   signal Done : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mircoprogram_controlled_datapath_system PORT MAP (
          Start => Start,
          Alt => Alt,
          Clock => Clock,
          Data_In => Data_In,
          Done => Done,
          Data_Out => Data_Out
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Data_in<="0011";
		Start<='1';
      wait for Clock_period*10;

       

      wait;
   end process;

END;
