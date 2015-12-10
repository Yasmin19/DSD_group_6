----------------------------------------------------------------------------------
-- Company: Queen Mary - University of London
-- Engineer: Eduardo de Souza Valencia 
-- 
-- Create Date:    18:17:29 11/29/2015 
-- Design Name: 
-- Module Name:    Data_path - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_path is
Generic(n:positive:=4);
    Port ( input : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  Clock: in  STD_LOGIC;
           Control : in  STD_LOGIC_VECTOR (19 downto 0);
			  data: out STD_LOGIC;
           output : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end Data_path;

architecture Behavioral of Data_path is

Component nbit_two_input_mux --N bit 2 input MUX
Port ( InA : in std_logic_vector(n-1 downto 0);
	   InB : in std_logic_vector(n-1 downto 0);
           control : in std_logic;
           Output : out std_logic_vector(n-1 downto 0));

end component;

Component four_bit_shifter is --4 bit shifter 
    Port ( Data_In : in std_logic_vector(n-1 downto 0);
           G : in std_logic_vector(2 downto 0);
           Output : out std_logic_vector(n-1 downto 0));
end Component;

Component eight_n_bit_register_file is -- 8xN bit Register file
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
end Component;

Component four_bit_alu is -- 8 bit ALU
    Port ( InA : in std_logic_vector(3 downto 0);
           InB : in std_logic_vector(3 downto 0);
           F : in std_logic_vector(2 downto 0);
           Output : out std_logic_vector(3 downto 0);
           C_out : out std_logic);
end Component;

Component n_bit_register_hold_load is -- N bit Register with Hold/Load Control
    Port ( InputB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_out : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_out : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end Component;

signal MuxToRF: std_logic_vector(n-1 downto 0);
signal BusA: std_logic_vector(n-1 downto 0);
signal BusB: std_logic_vector(n-1 downto 0);
signal ALUtoShifter: std_logic_vector(n-1 downto 0);
signal ShifterToOutregister: std_logic_vector(n-1 downto 0);
signal ShifterToMux: std_logic_vector(n-1 downto 0);

begin

		two_input_mux: nbit_two_input_mux port map (ShifterToOutregister,input,control(19),MuxToRF);
		Register_file: eight_n_bit_register_file port map(MuxToRF,--input
																		  control(14 downto 12),--Read Address A
																		  control(10 downto 8),--Read Address B
																		  control(18 downto 16), --write Address
																		  control(11),--Read Enable A
																		  control(7), --Read Enable b
																		  control(15), --WE
																		  Clock,
																		  BusA,
																		  BusB);
		ALU: four_bit_alu port map(BusA, BusB, control(6 downto 4), ALUtoShifter, open);
		Shifter: four_bit_shifter port map (ALUtoShifter, control(3 downto 1), ShifterToOutregister);
		Outregister: n_bit_register_hold_load port map (ShifterToOutregister,control(0), Clock, '0', '0',output,open);
		data <= ShifterToOutregister(0) or ShifterToOutregister(1) or ShifterToOutregister(2) or ShifterToOutregister(3);
		
																		  
		

end Behavioral;
