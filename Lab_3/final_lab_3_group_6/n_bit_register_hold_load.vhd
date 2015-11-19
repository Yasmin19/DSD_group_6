----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:30:36 11/01/2015 
-- Design Name: 
-- Module Name:    n_bit_register_hold-load - Behavioral 
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

entity n_bit_register_hold_load is
	 Generic (n:positive:=4);
    Port ( InputB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  test: inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Q_out : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_out : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_register_hold_load;

architecture Behavioral of n_bit_register_hold_load is

component n_bit_register 

	Port ( D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Q_bar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component nbit_two_input_mux

    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal MultToReg: STD_LOGIC_VECTOR (n-1 downto 0);
begin

	TwoInMux: nbit_two_input_mux port map  (Q_out, inputB, control, MultToReg); 
	NRegister: n_bit_register port map (MultToReg, clk,reset, preset,Q_out,Qbar_out); 
	test<=MultToReg;
end Behavioral;
