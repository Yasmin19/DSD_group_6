----------------------------------------------------------------------------------
-- Company: Queen Mary
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    02:28:39 11/24/2015 
-- Design Name: 
-- Module Name:    sixtyfour_by_eight_bit_static_ram - Behavioral 
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


entity sixtyfour_by_eight_bit_static_ram is
    PORT(
         Address : IN  std_logic_vector(5 downto 0);
         Read_write : IN  std_logic;
         Chip_select : IN  std_logic;
         Data_inout : INOUT  std_logic_vector(7 downto 0));
end sixtyfour_by_eight_bit_static_ram;

architecture Behavioral of sixtyfour_by_eight_bit_static_ram is

--COMPONENTS
component Serial_64x4_SRAM
   Port ( Address : in  STD_LOGIC_VECTOR (5 downto 0);
           Read_write : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           Data_inout : inout  STD_LOGIC_VECTOR (3 downto 0));
end component;

--INTERNAL SIGNALS

signal MS4 : std_logic_vector(3 downto 0);
signal LS4 : std_logic_vector(3 downto 0);
 
begin

Data_inout <= MS4 & LS4; --Put together Most Sig. bits with Least Sig. bits

G1_64x4_SRAM : Serial_64x4_SRAM port map (Address, Read_write, Chip_select, MS4);

G2_64X4_SRAM : Serial_64x4_SRAM port map (Address, Read_write, Chip_select, LS4);

end Behavioral;

