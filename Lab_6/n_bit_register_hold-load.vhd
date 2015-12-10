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

entity n_bit_register_hold_load is
	 Generic (n:positive:=4);
    Port ( InputB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_out : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_out : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_register_hold_load;

architecture Behavioral of n_bit_register_hold_load is

component n_bit_register 
generic(n:positive:=4);  
   Port ( Dinputs : in STD_LOGIC_VECTOR (n-1 downto 0);  
       clk : in STD_LOGIC;  
       reset : in STD_LOGIC;  
       preset : in STD_LOGIC;  
       q : inout STD_LOGIC_VECTOR (n-1 downto 0);  
       qnot : inout STD_LOGIC_VECTOR (n-1 downto 0)); 
end component;

component n_bit_2_input_mux

    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal MultToReg: STD_LOGIC_VECTOR (n-1 downto 0);
begin

	TwoInMux: n_bit_2_input_mux port map (Q_out, InputB, control, MultToReg); 
	NRegister: n_bit_register port map (MultToReg, clk, preset, reset, Q_out, Qbar_out); 
end Behavioral;

