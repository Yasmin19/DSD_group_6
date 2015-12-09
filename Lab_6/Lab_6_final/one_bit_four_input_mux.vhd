----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:13:22 11/30/2015 
-- Design Name: 
-- Module Name:    one_bit_four_input_mux - Behavioral 
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

entity one_bit_four_input_mux is
    Port ( one : in  STD_LOGIC;
           start : in  STD_LOGIC;
           data : in  STD_LOGIC;
           alt : in  STD_LOGIC;
           ConditionSelect : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC);
end one_bit_four_input_mux;

architecture Behavioral of one_bit_four_input_mux is

begin
with ConditionSelect select
		 output <= one when "00",
					  start when "01",
					  data when "10",
					  alt when "11",
					  '0' when others;

end Behavioral;

