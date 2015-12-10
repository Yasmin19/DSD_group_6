----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:49 11/15/2015 
-- Design Name: 
-- Module Name:    n_bit_incrementer - Behavioral 
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

entity n_bit_incrementer is
Generic(n:positive:=8);
    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           C_In : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (n-1 downto 0);
           C_out : out  STD_LOGIC);
end n_bit_incrementer;

architecture Behavioral of n_bit_incrementer is
component half_adder is
	Port ( a, b : in  STD_LOGIC;
          s, cout : out  STD_LOGIC);
end component;

signal sig : std_logic_vector (n downto 0);
begin
sig(0)<=C_In;
inst : for i in 0 to n-1 generate
	-- generate n instances of the device "HalfAdder"
	Half_adder_i: half_adder port map (InA(i),sig(i), Sum(i),sig(i+1));
	C_out<=sig(n);
end generate;

end Behavioral;