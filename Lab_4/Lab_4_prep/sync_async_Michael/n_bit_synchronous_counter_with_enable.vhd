--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Chris Harte
--
-- Create Date:    08:55:43 10/23/08
-- Design Name:    335labs
-- Module Name:    n_bit_count_enable - Behavioral
-- Project Name:   modulo_m_counter_with_asynchronous_reset
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description:	 An n-bit counter with enable input
--
-- Dependencies:	nbit_reg, nbit_incrementer
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

-- ********* COMMENTS ON HOW THIS DEVICE DESIGN WORKS ******************
--
--	See page 8 of lab script 4
--
-- ENTITY 
-- the entity declaration defines the interface of "four_bit_alu"
--
-- ARCHITECTURE 
-- architecture describes the internal structure of the device 
--
-- COMPONENTS
-- This architecture requires two sub-components that your group 
-- will program for this lab: 
-- * "nbit_reg"
-- * "nbit_incrementer" 
-- 
-- The nbit components have a generic value "n" which must appear in the 
-- component declaration. No default value is needed in the component 
-- declaration but they will be necessary in your entity code for these 
-- devices.
-- 
-- SIGNALS
--	This device uses two internal signals which are both bit vectors 
-- (i.e. they are buses). Note that "dummy" is only used to catch the 
-- output of the Q_bar outputs of the register.
--
-- INSTANCES
--	The two sub-components are instantiated in the main body of the 
-- architecture code and their ports are mapped appropriately according 
-- to the design. Note that the nbit devices require "generic map" to 
-- set the bit-width value "n".
--
-- NOTE: This device will NOT compile or pass a syntax check until code 
-- files for the three sub-compontents are implemented. 
--
-- *********************************************************************


-- ENTITY
entity n_bit_synchronous_counter_with_enable is
	 Generic (n : positive := 8);
    Port ( enable : in std_logic;
           CLK : in std_logic;
           reset : in std_logic;
           Q_outputs : inout std_logic_vector(n-1 downto 0);
			  ripple_carry_out : out std_logic);
end n_bit_synchronous_counter_with_enable;

-- ARCHITECTURE
architecture Behavioral of n_bit_synchronous_counter_with_enable is

	-- COMPONENTS
	component n_bit_register
		generic ( n : positive:=8);
		Port ( D_inputs : in std_logic_vector(n-1 downto 0);
				  CLK : in std_logic;
				  reset : in std_logic;
				  preset : in std_logic;
				  Q_outputs : out std_logic_vector(n-1 downto 0);
				  Q_bar_outputs : out std_logic_vector(n-1 downto 0));
	end component;

	component n_bit_incrementer
		generic(n:positive:=8);
		Port ( InA : in STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_in : in STD_LOGIC;  
				 sum : out STD_LOGIC_VECTOR (n-1 downto 0);  
				 C_out : out STD_LOGIC);  
	end component;

--SIGNALS
signal next_state : std_logic_vector (n-1 downto 0);
signal dummy : std_logic_vector (n-1 downto 0);
 
begin

-- INSTANCES
inc : n_bit_incrementer generic map (n) port map (Q_outputs, enable, next_state, ripple_carry_out);
reg : n_bit_register generic map (n) port map (next_state, CLK, reset, '0', Q_outputs, dummy); 

end Behavioral;




























































































