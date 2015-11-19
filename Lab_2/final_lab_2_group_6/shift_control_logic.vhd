----------------------------------------------------------------------------------
-- Company: Queen Mary
-- Engineer: Hemat Shah 
-- 
-- Create Date:    20:46:24 10/28/2015 
-- Design Name: 
-- Module Name:    Shif_Control_Logic - Behavioral 
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_control_logic is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           X : out  STD_LOGIC_VECTOR (1 downto 0));
end shift_control_logic;

architecture Behavioral of shift_control_logic is

begin

X(0)<= (not A(2)) and (A(1) or A(0));
X(1)<= ( A(2)) and (A(1) or A(0));


end Behavioral;

 -- A2 |  A1 |  A0 |  X1 |  X0 |
 ------|-----|-----|-----|-----|
 -- 0  |  0  |  0  |  0  |  0  |
 -- 0  |  0  |  1  |  0  |  1  |
 -- 0  |  1  |  0  |  0  |  1  |
 -- 0  |  1  |  1  |  0  |  1  |
 -- 1  |  0  |  0  |  0  |  0  |
 -- 1  |  0  |  1  |  1  |  0  |
 -- 1  |  1  |  0  |  1  |  0  |
 -- 1  |  1  |  1  |  1  |  0  |