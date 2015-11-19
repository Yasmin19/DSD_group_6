----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    15:41:20 11/17/2015 
-- Design Name: 	 Lab_4
-- Module Name:    n_bit_register - Behavioral 
-- Project Name: 	 modulo_m_counter_with_asynchronous_reset
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter
-- Description: 	 n_nit_register
--
-- Dependencies:  D_flip_flop
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ENITITY
entity n_bit_register is
	Generic (n:positive:=8);
    Port ( D_inputs : in std_logic_vector(n-1 downto 0);
           CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           Q_outputs : out std_logic_vector(n-1 downto 0);
           Q_bar_outputs : out std_logic_vector(n-1 downto 0));
end n_bit_register;

-- ARCHITECTURE
architecture Behavioral of n_bit_register is
	-- COMPONENT D_flip_flop
	component D_flipflop is
		 Port ( D, reset, preset, clk : in  STD_LOGIC;
				  Q, Q_bar : out  STD_LOGIC);
	end component;
	
begin
	-- INSTANCES
	inst : for i in n-1 downto 0 generate
		D_flipflop_i : D_flipflop port map (D_inputs(i),reset, preset, clk, Q_outputs(i), Q_bar_outputs(i));
	end generate;
end Behavioral;

