----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:13 11/02/2015 
-- Design Name: 
-- Module Name:    n_bit_2_input_mux - Behavioral 
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

entity n_bit_2_input_mux is
Generic (n:positive:=4);
    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_2_input_mux;

architecture Behavioral of n_bit_2_input_mux is

--Components
Component two_input_multiplexer 
	Port (I0 : in  STD_LOGIC;
         I1 : in  STD_LOGIC;
			SEL : in  STD_LOGIC;
         OUT1 : out  STD_LOGIC);
end component;


begin
inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "LogicSlice"
	one_bit_mux_i : two_input_multiplexer port map (InA(i),InB(i),control, Output(i));

end generate;

end Behavioral;

