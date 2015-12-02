--------------------------------------------------------------------------------
-- Company: QMUL
-- Engineer: Michael Seltene
--
-- Create Date:   15:13:13 12/02/2015
-- Design Name:   tdm_display_circuit
-- Module Name:   tdm_display_circuit_test_bench.vhd
-- Project Name:  lab 5
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tdm_display_circuit
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
 
ENTITY tdm_display_circuit_test_bench IS
END tdm_display_circuit_test_bench;
 
ARCHITECTURE behavior OF tdm_display_circuit_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tdm_display_circuit
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic;
         InA : IN  std_logic_vector(3 downto 0);
         InB : IN  std_logic_vector(3 downto 0);
         Cathod_A : OUT  std_logic;
         Cathod_B : OUT  std_logic;
         Anode_outs : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal InB : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Cathod_A : std_logic;
   signal Cathod_B : std_logic;
   signal Anode_outs : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tdm_display_circuit PORT MAP (
          reset => reset,
          clock => clock,
          InA => InA,
          InB => InB,
          Cathod_A => Cathod_A,
          Cathod_B => Cathod_B,
          Anode_outs => Anode_outs
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

		reset<='1';
		InA <= "0000";
		InB <= "0000";
		
		wait for 50 ns;
		
		reset<='0';
		InA <= "0000";
		InB <= "0001";
		
		wait for 50 ns;
		
		reset<='0';
		InA <= "0001";
		InB <= "0010";
		
		wait for 50 ns;
		
		reset<='1';
		InA <= "0001";
		InB <= "0010";
		
		
      wait;
   end process;

END;
