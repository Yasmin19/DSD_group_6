----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:48:36 11/16/2015 
-- Design Name: 
-- Module Name:    N_bit_sync_counter_with_enable - Behavioral 
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

entity N_bit_sync_counter_with_enable is

Generic (n:positive:=8);
    Port ( count_enable : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end N_bit_sync_counter_with_enable;

architecture Behavioral of N_bit_sync_counter_with_enable is

component n_bit_register is
	
    Port ( D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_outputs : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
Component n_bit_incrementer is
    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           C_In : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (n-1 downto 0);
           C_out : out  STD_LOGIC);
end component;

signal IncToReg:STD_LOGIC_VECTOR (n-1 downto 0);
signal RegToInc:STD_LOGIC_VECTOR (n-1 downto 0);
begin
NIncrementer: n_bit_incrementer  port map (RegToInc, count_enable, IncToReg, open);
nBitRegister: n_bit_register port map (IncToReg,clk,'0',reset,RegToInc,Qbar_outputs);
Q_outputs<=RegToInc;
end Behavioral;

