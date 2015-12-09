----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    07:09:40 10/28/2015 
-- Design Name: 
-- Module Name:    four_input_or_gate - Behavioral 
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

entity four_input_or_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           f : out  STD_LOGIC);
end four_input_or_gate;

architecture Behavioral of four_input_or_gate is

begin
	f <= (a OR b OR c OR d);

end Behavioral;

