----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    13:57:16 11/17/2015 
-- Design Name: 
-- Module Name:    four_bit_synchronous_up_down_counter - Behavioral 
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


entity four_bit_synchronous_up_down_counter is
	generic(n: positive := 4); 
    Port ( N_count : in  STD_LOGIC_VECTOR(n-1 downto 0);
           down_up : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR(n-1 downto 0));
end four_bit_synchronous_up_down_counter;

architecture Behavioral of four_bit_synchronous_up_down_counter is

--COMPONENTS
component four_bit_adder_subtractor
	Port (InA : in std_logic_vector(3 downto 0);
			InB : in std_logic_vector(3 downto 0);
			Control : std_logic;
			Sum : out std_logic_vector(3 downto 0);
			C_out : out std_logic);
end component;

component n_bit_register
		Port (D_inputs : in std_logic_vector(3 downto 0);
				CLK : in  std_logic;
				reset : in std_logic;
				preset : in std_logic;
				Q_outputs : inout std_logic_vector(3 downto 0);
				Q_bar_outputs : inout std_logic_vector(3 downto 0));
end component;

--INTERNAL SIGNALS
signal add_sub_out : std_logic_vector(3 downto 0);
signal dummy0 : std_logic;
signal dummy1 : std_logic_vector(3 downto 0);

begin

G1_adder_sub: four_bit_adder_subtractor port map (Q_outputs, N_count, down_up, add_sub_out, dummy0);

G2_nbit_reg: n_bit_register port map (add_sub_out, CLK, reset, '0', Q_outputs, dummy1);

end Behavioral;