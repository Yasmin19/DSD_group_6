----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:47 11/03/2015 
-- Design Name: 
-- Module Name:    n_bit_shift_register_with_parallel_load - Behavioral 
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

entity n_bit_shift_register_with_parallel_load is
Generic(n:positive:=4);
    Port ( shift_in : in  STD_LOGIC;
           D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Load_shift : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           Q_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_shift_register_with_parallel_load;

architecture Behavioral of n_bit_shift_register_with_parallel_load is

component n_bit_register 

	Port ( D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component nbit_two_input_mux

    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal sig1, sig2: STD_LOGIC_VECTOR (n downto 0);
begin
	sig1(0) <= shift_in;
	TwoInMux: nbit_two_input_mux port map  (sig1(n-1 downto 0), D_inputs, Load_shift, sig2(n-1 downto 0)); 
	ShiftRegister: n_bit_register port map (sig2(n-1 downto 0), CLK, preset, reset, sig1(n downto 1), open); 
	Q_out <= sig1(n downto 1);
end Behavioral;
