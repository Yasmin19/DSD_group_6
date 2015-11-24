----------------------------------------------------------------------------------
-- Company: Queen Mary - University of London
-- Engineer: Eduardo de Souza Valencia
-- 
-- Create Date:    10:16:23 11/23/2015 
-- Design Name: 
-- Module Name:    SRAM_Cell - Behavioral 
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

entity SRAM_Cell is
    Port ( Data_in : in  STD_LOGIC;
           Cell_select : in  STD_LOGIC;
           Write_enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC);
end SRAM_Cell;

architecture Behavioral of SRAM_Cell is

Component D_latch is --Component D latch
    Port ( D : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end Component;

Component tri_buff is --Component tri State buffer
    Port ( Input : in std_logic;
           enable : in std_logic;
           Output : out std_logic);
end Component;

signal LatchToBuff: STD_LOGIC;
signal CellAndBuff: STD_LOGIC;
begin
CellAndBuff<=Cell_select and Write_enable;
Latch1: D_latch port map (Data_in, CellAndBuff , LatchToBuff);
Buff: tri_buff port map (LatchToBuff,Cell_select,Data_out);
end Behavioral;

