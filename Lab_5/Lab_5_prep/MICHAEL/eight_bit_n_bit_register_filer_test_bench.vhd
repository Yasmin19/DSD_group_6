--------------------------------------------------------------------------------
-- Company: QMUL
-- Engineer:	Michael Seltene
--
-- Create Date:   14:13:34 12/02/2015
-- Design Name:   eight_bit_n_bit_register_filer_test_bench
-- Module Name:   eight_bit_n_bit_register_filer_test_bench.vhd
-- Project Name:  LAB 5
-- Project Name: 	 eight_bit_n_bit_register_filer
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description:   eight_bit_n_bit_register_filer_test_bench
-- 
-- VHDL Test Bench Created by ISE for module: eight_n_bit_register_file
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
 
ENTITY eight_bit_n_bit_register_filer_test_bench IS
END eight_bit_n_bit_register_filer_test_bench;
 
ARCHITECTURE behavior OF eight_bit_n_bit_register_filer_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_n_bit_register_file
    PORT(
         Data_in : IN  std_logic_vector(7 downto 0);
         Read_Address_A : IN  std_logic_vector(2 downto 0);
         Read_Address_B : IN  std_logic_vector(2 downto 0);
         Write_Address : IN  std_logic_vector(2 downto 0);
         REA : IN  std_logic;
         REB : IN  std_logic;
         WE : IN  std_logic;
         Clock : IN  std_logic;
         OutA : OUT  std_logic_vector(7 downto 0);
         OutB : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal Read_Address_A : std_logic_vector(2 downto 0) := (others => '0');
   signal Read_Address_B : std_logic_vector(2 downto 0) := (others => '0');
   signal Write_Address : std_logic_vector(2 downto 0) := (others => '0');
   signal REA : std_logic := '0';
   signal REB : std_logic := '0';
   signal WE : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal OutA : std_logic_vector(7 downto 0);
   signal OutB : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_n_bit_register_file PORT MAP (
          Data_in => Data_in,
          Read_Address_A => Read_Address_A,
          Read_Address_B => Read_Address_B,
          Write_Address => Write_Address,
          REA => REA,
          REB => REB,
          WE => WE,
          Clock => Clock,
          OutA => OutA,
          OutB => OutB
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

      wait for Clock_period*10;

		REA<='0';
		REB<='0';
		WE<='0';
		Write_Address<="000";
		Data_in <= "00000000";
		Read_Address_A<= "000";
		Read_Address_B<= "000";
		
		wait for 50 ns;	
		REA<='0';
		REB<='0';
		WE<='1';
		Write_Address<="001";
		Data_in <= "00000001";
		Read_Address_A<= "001";
		Read_Address_B<= "010";
		
		wait for 50 ns;	
		REA<='0';
		REB<='0';
		WE<='1';
		Write_Address<="010";
		Data_in <= "00000010";
		Read_Address_A<= "000";
		Read_Address_B<= "010";
		
		wait for 50 ns;	
		REA<='1';
		REB<='0';
		WE<='0';
		Write_Address<="000";
		Data_in <= "00000000";
		Read_Address_A<= "001";
		Read_Address_B<= "000";
		
		wait for 50 ns;	
		REA<='0';
		REB<='1';
		WE<='0';
		Write_Address<="000";
		Data_in <= "00000000";
		Read_Address_A<= "000";
		Read_Address_B<= "010";
		
      wait;
   end process;

END;
