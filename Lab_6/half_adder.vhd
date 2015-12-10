----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:06 10/15/2015 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
	Port ( a, b : in  STD_LOGIC;
          s, cout : out  STD_LOGIC);
end half_adder;

architecture half_adder_behavioral of half_adder is
	component and_gate is -- to import and_gate
	port( a, b : in std_logic;
         f : out std_logic);
	end component;
	
	component xor_gate is -- to import xor_gate
     port( a, b : in std_logic;
           f : out std_logic);
   end component;

--instances of components
begin
	G1 : xor_gate port map(a, b, s);
	G2 : and_gate port map(a, b, cout);
end half_adder_behavioral;
