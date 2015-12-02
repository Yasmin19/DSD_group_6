----------------------------------------------------------------------------------
-- Company: 		 QMUL
-- Engineer: 		 Michael Seltene		
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 and gate
-- Module Name:    and_gate - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 and gate
--
-- Dependencies: 	n/a
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

entity and_gate is
	port( a, b : in std_logic;
            f : out std_logic);
end and_gate;

architecture and_gate_behavioral of and_gate is

begin
	f <= a and b;
end and_gate_behavioral;