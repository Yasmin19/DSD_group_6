----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:59 11/30/2015 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
    Port ( one : in  STD_LOGIC;
           start : in  STD_LOGIC;
           data_not_zero : in  STD_LOGIC;
			  clock : in  STD_LOGIC;
           alt : in  STD_LOGIC;
			  Data_contol: out STD_LOGIC_VECTOR (19 downto 0);
			  Done: out  STD_LOGIC);
end Control;

architecture Behavioral of Control is

Component one_bit_four_input_mux is
    Port ( one : in  STD_LOGIC;
           start : in  STD_LOGIC;
           data : in  STD_LOGIC;
           alt : in  STD_LOGIC;
           ConditionSelect : in  STD_LOGIC_VECTOR (1 downto 0);
           output : out  STD_LOGIC);
end Component;

Component FunctionDecoder is
    Port ( input : in  STD_LOGIC;
           Funct : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out STD_LOGIC_VECTOR (1 downto 0));
end Component;

Component nbit_synchronous_counter_parallel is
	 
    Port ( D_inputs : in  STD_LOGIC_VECTOR(3 downto 0);
           load_count : in  STD_LOGIC;
           count_enable : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR(3 downto 0));
end Component;

Component Output_ROM_Generic is
    Port ( StateVariable : in  STD_LOGIC_VECTOR (3 downto 0);
           ConditionSelect : inout  STD_LOGIC_VECTOR (1 downto 0);
           Funct : inout  STD_LOGIC_VECTOR (1 downto 0);
           DatapathControl : out  STD_LOGIC_VECTOR (19 downto 0);
           BranchAddress : inout  STD_LOGIC_VECTOR (3 downto 0);
			  Done : out  STD_LOGIC);
end Component;

signal DecoderToCounter: STD_LOGIC_VECTOR (1 downto 0);
signal ConditionToDecoder: STD_LOGIC;
signal ROMtoCondition: STD_LOGIC_VECTOR (1 downto 0);
signal ROMtoFunction: STD_LOGIC_VECTOR (1 downto 0);
signal BranchAddress: STD_LOGIC_VECTOR (3 downto 0);
signal CountertoROM: STD_LOGIC_VECTOR (3 downto 0);

begin
Condition: one_bit_four_input_mux port map(one,start,data_not_zero,alt,ROMtoCondition,ConditionToDecoder);
Decoder: FunctionDecoder port map (ConditionToDecoder,ROMtoFunction,DecoderToCounter);
counter: nbit_synchronous_counter_parallel port map (BranchAddress,DecoderToCounter(0),DecoderToCounter(1),clock,'0',CountertoROM);
ROM: Output_ROM_Generic port map (CountertoROM,ROMtoCondition,ROMtoFunction,Data_contol,BranchAddress, Done);


end Behavioral;

