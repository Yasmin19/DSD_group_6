----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Eduardo
-- 
-- Create Date:    15:36:09 10/31/2015 
-- Design Name: 
-- Module Name:    n_bit_logic_unity - Behavioral 
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


entity nbit_logic_unit is
--generic n
	Generic (n:positive:=4);
    Port ( inA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           inB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end nbit_logic_unit;

architecture Behavioral of nbit_logic_unit is
component LogicSlice
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Ctrl: in STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end component;
begin
-- FOR LOOP
-- create an instance of a for loop called "inst"
inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "LogicSlice"
	Logic_Slice_i : LogicSlice port map (inA(i),inB(i), control, Output(i));

end generate;

end Behavioral;
