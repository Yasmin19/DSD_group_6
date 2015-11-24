----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:08 11/01/2015 
-- Design Name: 
-- Module Name:    n_tri_buffer - Behavioral 
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

entity nbit_tristate_buffer is
	Generic (n:positive:=4);
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
end nbit_tristate_buffer;

architecture Behavioral of nbit_tristate_buffer is
component tri_buff 
    Port ( Input : in std_logic;
           enable : in std_logic;
           Output : out std_logic);
end component;

begin

inst : for i in n-1 downto 0 generate

	-- generate n instances of the device "LogicSlice"
	n_tri_state	: tri_buff port map (Data_in(i),enable, Data_out(i));

end generate;

end Behavioral;