----------------------------------------------------------------------------------
-- Company: Queen Mary University				
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    13:24:29 11/17/2015 
-- Design Name: 
-- Module Name:    nbit_synchronous_counter_parallel - Behavioral 
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

entity nbit_synchronous_counter_parallel is
	generic(n: positive := 8); 
    Port ( D_inputs : in  STD_LOGIC_VECTOR(n-1 downto 0);
           load_count : in  STD_LOGIC;
           count_enable : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR(n-1 downto 0));
end nbit_synchronous_counter_parallel;

architecture Behavioral of nbit_synchronous_counter_parallel is

--COMPONENTS
component n_bit_incrementer
	generic(n: positive := 8); 
		Port (InA : in std_logic_vector(n-1 downto 0);
				C_in : in std_logic;
				Sum : out std_logic_vector(n-1 downto 0);
				C_out : out std_logic);
end component;

component n_bit_two_input_mux
	generic(n: positive := 8); 
		Port (InA : in std_logic_vector(n-1 downto 0);
				InB : in std_logic_vector(n-1 downto 0);
				Control : in std_logic;
				Output : out std_logic_vector(n-1 downto 0));
end component;

component n_bit_register
	generic(n: positive := 8);
		Port (D_inputs : in std_logic_vector(n-1 downto 0);
				CLK : in  std_logic;
				reset : in std_logic;
				preset : in std_logic;
				Q_outputs : out std_logic_vector(n-1 downto 0));
end component;


--INTERNAL SIGNALS
signal n_bit_inc_out : std_logic_vector(7 downto 0);
signal dummy : std_logic;
signal n_bit_two_mux_out : std_logic_vector(7 downto 0);

	
begin

G1_nbit_incrementer: n_bit_incrementer port map (Q_outputs, count_enable, n_bit_inc_out, dummy);

G2_nbit_two_mux: n_bit_two_input_mux port map (n_bit_inc_out, D_inputs, load_count, n_bit_two_mux_out);

G3_nbit_register: n_bit_register port map (n_bit_two_mux_out, CLK, reset, '0', Q_outputs);


end Behavioral;
