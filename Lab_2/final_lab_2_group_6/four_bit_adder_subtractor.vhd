----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Michael
-- 
-- Create Date:    14:22:15 11/02/2015 
-- Design Name: 
-- Module Name:    four_bit_adder_subtructor - Behavioral 
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

entity four_bit_adder_subtractor is
	generic(n:positive:=4); 
		Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 control : in STD_LOGIC;  
				 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_out : out STD_LOGIC); 
end four_bit_adder_subtractor;

architecture four_bit_adder_subtractor_behavioral of four_bit_adder_subtructor is
	
	 component four_bit_lac_adder
		 generic(n:positive:=4); 
				Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
						 InB : in STD_LOGIC_VECTOR (n-1 downto 0);  
						 cin : in STD_LOGIC;  
						 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
						 cout : out STD_LOGIC);  
	 end component;  
	 
	 component nbit_xor_control
		 Generic ( n : positive := 4 );
			  Port ( Input : in std_logic_vector(n-1 downto 0);
						control : in std_logic;
						Output : out std_logic_vector(n-1 downto 0));
	 end component; 

signal Output_InB : std_logic_vector(n-1 downto 0);

begin
	

G1 : nbit_xor_control port map(InB, control, Output_InB);
G2: four_bit_lac_adder port map(InA, Output_InB, control, sum, C_out);

end four_bit_adder_subtractor_behavioral;
