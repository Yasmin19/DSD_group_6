--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Chris Harte
--
-- Create Date:    14:11:48 09/10/08
-- Design Name:    335labs
-- Module Name:    two_input_and - Behavioral
-- Project Name:   Lab 1
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 simple two input OR gate
--
-- Dependencies:	 none
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity xor_gate is
    Port ( a : in std_logic;
           b : in std_logic;
           f : out std_logic);
end xor_gate;

architecture Behavioral of xor_gate is

begin

f <= (not a and b) or (a and not b) after 7ns;			

end Behavioral;