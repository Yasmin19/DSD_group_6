----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    08:24:43 11/04/2015 
-- Design Name: 
-- Module Name:    nbit_universal_shift_register - Behavioral 
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


entity nbit_universal_shift_register is

	 -- GENERIC VALUE:
	 Generic ( n : positive := 4 );
	 
	 --PORTS
		Port ( D_inputs :in std_logic_vector(n-1 downto 0);
				 Shift_in : in std_logic;
				 Shift_Rotate : in std_logic;
				 F : in std_logic_vector(1 downto 0);
				 CLK : in std_logic;
				 reset : in std_logic;
				 preset : in std_logic;
				 Q_outputs : inout std_logic_vector(n-1 downto 0));
				 
end nbit_universal_shift_register;

architecture Behavioral of nbit_universal_shift_register is

--COMPONENTS
component n_bit_shifter_rotator_unit
	generic(n: positive := 4); 
		 Port ( DATA_IN1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
				  DATA_IN2 : in  STD_LOGIC_VECTOR(n-1 downto 0);
				  RIGHT_IN : in  STD_LOGIC;
				  RIGHT_SELECT : in  STD_LOGIC;
				  LEFT_IN : in  STD_LOGIC;
				  LEFT_SELECT : in  STD_LOGIC;
				  CONTROL : in  STD_LOGIC_VECTOR(1 downto 0);
				  OUTPUT : out  STD_LOGIC_VECTOR(n-1 downto 0));
end component;


component n_bit_register
	generic(n: positive := 4); 
		 Port ( CLK : in std_logic;
				  D_inputs : in std_logic_vector(n-1 downto 0);
				  reset : in std_logic;
              preset : in std_logic;
				  Q_outputs : out std_logic_vector(n-1 downto 0);
				  Q_bar_outputs : out std_logic_vector(n-1 downto 0));
end component;

--INTERNAL SIGNALS
signal shift_rotate_out : std_logic_vector (3 downto 0);
signal dummy : std_logic_vector(3 downto 0);

begin

G1_shift_rotate: n_bit_shifter_rotator_unit port map 
				(Q_outputs, D_inputs, Shift_in, shift_rotate, Shift_in, shift_rotate, F, shift_rotate_out);

G2_n_bit_reg: n_bit_register port map 
				(CLK, shift_rotate_out, reset, preset, Q_outputs, dummy);

end Behavioral;

