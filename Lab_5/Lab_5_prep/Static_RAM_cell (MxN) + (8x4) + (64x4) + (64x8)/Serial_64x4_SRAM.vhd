----------------------------------------------------------------------------------
-- Company: Queen Mary - University of London
-- Engineer: Eduardo de Souza Valencia
-- 
-- Create Date:    17:43:40 11/23/2015 
-- Design Name: 
-- Module Name:    Serial_64x4_SRAM - Behavioral 
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

entity Serial_64x4_SRAM is
Generic(n:positive:=8);
    Port ( Address : in  STD_LOGIC_VECTOR (5 downto 0);
           Read_write : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           Data_inout : inout  STD_LOGIC_VECTOR (3 downto 0));
end Serial_64x4_SRAM;

architecture Behavioral of Serial_64x4_SRAM is
--components
Component three_to_eight_decoder is
    Port ( 	OE : in std_logic;
	 			address : in std_logic_vector(2 downto 0);
            O_outputs : out std_logic_vector(n-1 downto 0));
end Component;

Component eight_by_four_sram is
    Port ( address : in std_logic_vector(2 downto 0);
           read_notwrite : in std_logic;
           chip_select : in std_logic;
           data_inout : inout std_logic_vector(3 downto 0));
end Component;

--signals
signal DecoderToRam: std_logic_vector(7 downto 0);

begin
--instances
Decoder: three_to_eight_decoder port map (OE,Address(5 downto 3), DecoderToRam);

inst: for i in n-1 downto 0 generate	
		SRAM: eight_by_four_sram port map(Address(2 downto 0),Read_write,DecoderToRam(i),Data_inout);
end generate;
end Behavioral;

