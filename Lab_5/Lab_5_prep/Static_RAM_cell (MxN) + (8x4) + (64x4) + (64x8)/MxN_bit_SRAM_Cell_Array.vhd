----------------------------------------------------------------------------------
-- Company: Queen Mary - University of London
-- Engineer: Eduardo de Souza Valencia
-- 
-- Create Date:    10:52:04 11/23/2015 
-- Design Name: 
-- Module Name:    MxN_bit_SRAM_Cell_Array - Behavioral 
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

entity MxN_bit_SRAM_Cell_Array is
Generic(m,n:positive:=4);
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Select_lines : in  STD_LOGIC_VECTOR (m-1 downto 0);
           Write_enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MxN_bit_SRAM_Cell_Array;

architecture Behavioral of MxN_bit_SRAM_Cell_Array is

Component SRAM_Cell is
    Port ( Data_in : in  STD_LOGIC;
           Cell_select : in  STD_LOGIC;
           Write_enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC);
end Component;

begin
Lines : for i in m-1 downto 0 generate
			Columns: for j in n-1 downto 0 generate
			SRAM	: SRAM_Cell port map (Data_in(j),Select_lines(i),Write_enable, Data_out(j));
			end generate;
end generate;

end Behavioral;

