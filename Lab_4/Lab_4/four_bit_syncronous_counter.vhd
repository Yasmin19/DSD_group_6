----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:46 11/15/2015 
-- Design Name: 
-- Module Name:    four_bit_syncronous_counter - Behavioral 
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

entity four_bit_syncronous_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (3 downto 0));
end four_bit_syncronous_counter;

architecture Behavioral of four_bit_syncronous_counter is

component n_bit_register --4 bit register
	Port ( D_inputs : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (3  downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (3 downto 0));
end component;

component next_state_logic --next state
    Port ( Input : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : inout STD_LOGIC_VECTOR (3 downto 0));
			  
end component;


signal NextToReg: STD_LOGIC_VECTOR (3 downto 0);
begin
	NextState: next_state_logic port map  (Q_outputs, NextToReg); 
	NRegister: n_bit_register port map (NextToReg, clk,reset, '0',Q_outputs,open); 

end Behavioral;

