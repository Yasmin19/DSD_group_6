----------------------------------------------------------------------------------
-- Company: 		QMUL
-- Engineer: 		Michael Seltene
-- 
-- Create Date:    12:55:41 11/24/2015 
-- Design Name: 	 eight_n_bit_register_file
-- Module Name:    eight_n_bit_register_file - Behavioral 
-- Project Name: 	 Lab 5
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter    
-- Description: 	 eight_n_bit_register_file
--
-- Dependencies:   three_to_eight_decoder, n_bit_rfc_register
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENTITY
entity eight_n_bit_register_file is
generic(n: positive := 8);
		Port (Data_in : in  STD_LOGIC_VECTOR(n-1 downto 0);
				Read_Address_A : in  STD_LOGIC_VECTOR(2 downto 0);
				Read_Address_B : in  STD_LOGIC_VECTOR(2 downto 0);
				Write_Address : in  STD_LOGIC_VECTOR(2 downto 0);
				REA : in  STD_LOGIC;
				REB : in  STD_LOGIC;
				WE : in STD_LOGIC;
				Clock : in STD_LOGIC;
				OutA : out STD_LOGIC_VECTOR(n-1 downto 0);
				OutB : out STD_LOGIC_VECTOR(n-1 downto 0));
end eight_n_bit_register_file;

-- ARCHITECTURE
architecture Behavioral of eight_n_bit_register_file is
	-- COMPONENT
	component three_to_eight_decoder
		Port ( 	OE : in std_logic;
					address : in std_logic_vector(2 downto 0);
					O_outputs : out std_logic_vector(7 downto 0));
	end component;
	
	-- COMPONENT 
	component n_bit_rfc_register
		generic(n: positive := 8);
	Port (Data_in : in  STD_LOGIC_VECTOR(n-1 downto 0);
         REA : in  STD_LOGIC;
			REB : in  STD_LOGIC;
         WE : in STD_LOGIC;
			Clock : in STD_LOGIC;
			OA : out STD_LOGIC_VECTOR(n-1 downto 0);
			OB : out STD_LOGIC_VECTOR(n-1 downto 0));
	end component;
	
-- SIGNALS
signal Read_Address_A_TO_RFC_REA : STD_LOGIC_VECTOR(n-1 downto 0);
signal Read_Address_B_TO_RFC_REB : STD_LOGIC_VECTOR(n-1 downto 0);
signal Write_Address_TO_RFC_WE : STD_LOGIC_VECTOR(n-1 downto 0);

begin
	-- INSTANCES
	ins_0: three_to_eight_decoder port map(REA, Read_Address_A, Read_Address_A_TO_RFC_REA);
	ins_1: three_to_eight_decoder port map(REB, Read_Address_B, Read_Address_B_TO_RFC_REB);
	ins_2: three_to_eight_decoder port map(WE, Write_Address, Write_Address_TO_RFC_WE);
	
	-- LOOP INSTANCES
	inst_3: for i in n-1 downto 0 generate
		ins_4: n_bit_rfc_register port map(Data_in, Read_Address_A_TO_RFC_REA(i), Read_Address_B_TO_RFC_REB(i), Write_Address_TO_RFC_WE(i), Clock, OutA, OutB);
	end generate;

end Behavioral;

