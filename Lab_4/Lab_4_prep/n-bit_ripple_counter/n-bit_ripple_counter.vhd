----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:45 11/15/2015 
-- Design Name: 
-- Module Name:    n-bit_ripple_counter - Behavioral 
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

entity n_bit_ripple_counter is
Generic(n:positive:=8);
    Port ( reset : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_ripple_counter;

architecture Behavioral of n_bit_ripple_counter is

Component T_flipflop
    Port ( reset : in std_logic;
	 		  Clk : in std_logic;
           Q : inout std_logic;
           Q_bar : inout std_logic);
end component;

signal sig : std_logic_vector (n downto 0);

begin
sig(0)<=clk;
inst : for i in 0 to n-1 generate

	-- generate n instances of the device "LogicSlice"
	T_flipflop_i: T_flipflop port map (reset, sig(i), Q_outputs(i), sig(i+1));
	Qbar_outputs<=sig(n downto 1);

end generate;

end Behavioral;

