----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Eduardo 
-- 
-- Create Date:    16:30:01 10/28/2015 
-- Design Name: 
-- Module Name:    LogicSlice - Behavioral 
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

entity LogicSlice is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Ctrl: in STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end LogicSlice;

architecture Behavioral of LogicSlice is
-- COMPONENTS

component not_gate
    Port ( a : in std_logic;
           f : out std_logic);
end component;

component or_gate
    Port ( a : in std_logic;
           b : in std_logic;
           f : out std_logic);
end component;

component and_gate
    Port ( a : in std_logic;
           b : in std_logic;
           f : out std_logic);
end component;

component xor_gate
    Port ( a : in std_logic;
           b : in std_logic;
           f : out std_logic);
end component;

component four_input_multiplexer 
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           control : in std_logic_vector(1 downto 0);
           O : out  STD_LOGIC);
end component;

	signal invA, andAB, xorAB, orAB: std_logic;


begin
   B0: not_gate port map(I0, invA);
	B1: and_gate port map(I0,I1, andAB);
	B2: xor_gate	port map(I0, I1, xorAB);
	B3: or_gate port map(I0, I1, orAB);

	MUX: four_input_multiplexer port map(invA, andAB, xorAB, orAB, Ctrl, O);

end Behavioral;