----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Hemat Shah
-- 
-- Create Date:    17:35:39 11/04/2015 
-- Design Name: 
-- Module Name:    Four_Bit_Linear_Feedback_Shift_Register - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_Bit_Linear_Feedback_Shift_Register is
generic (n : positive := 4); 
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
          O_outputs : inout  STD_LOGIC_vector(n-1 downto 0));
end Four_Bit_Linear_Feedback_Shift_Register;

architecture Behavioral of Four_Bit_Linear_Feedback_Shift_Register is

--------------------------components start------------------------------

component xor_gate  

 Port ( a : in STD_LOGIC;  
       b : in STD_LOGIC;  
       f : out STD_LOGIC);  
 end component;  -- END COMPONENT XORGATE
 
 
 component n_bit_shift_register_with_parallel_load
  generic (n : positive := 4);  
   Port ( shift_in : in std_logic;  
       CLK : in std_logic;  
       reset : in std_logic;  
       preset : in std_logic;  
       Q_shift : out std_logic_vector(n-1 downto 0));  
 end component; -- END COMPONENT n-bit serial to parallel shift register
 
  signal toreg: std_Logic;  

begin

 A: xor_gate port map(O_outputs(n-1),O_outputs(n-2),toreg);  
 B: n_bit_shift_register_with_parallel_load port map(toreg,CLK,reset,preset,O_outputs); 

end Behavioral;
