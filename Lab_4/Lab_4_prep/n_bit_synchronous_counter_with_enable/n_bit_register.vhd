----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:39 11/01/2015 
-- Design Name: 
-- Module Name:    n_bit_register - Behavioral 
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

entity n_bit_register is
	Generic (n:positive:=8);
    Port ( D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_register;

architecture Behavioral of n_bit_register is
component D_flipflop is
    Port ( D : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Q_bar : inout  STD_LOGIC);
end component;
begin
inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "LogicSlice"
	D_flipflop_i : D_flipflop port map (D_inputs(i),reset, preset, clk, Q_outputs(i), Qbar_outputs(i));

end generate;

end Behavioral;

