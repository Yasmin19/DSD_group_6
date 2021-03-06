--------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Hemat Shah
--
-- Create Date:    11:04:52 10/29/08
-- Design Name:    335 labs
-- Module Name:    washer_controller - Behavioral
-- Project Name:   Lab 4
-- Target Device:  XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter  
-- Description: Washing Machine controller circuit 
--
-- Dependencies: nbitreg, two_input_mux, washer_next_state_logic, washer_output_logic 
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
--	See pages 14 and 15 of lab script 4
--
-- ENTITY 
-- the entity declaration defines the interface of "washer_controller"
--
-- ARCHITECTURE 
-- architecture describes the internal structure of the device 
--
-- COMPONENTS
-- This architecture requires four sub-components:
-- * "nbitreg"
-- * "two_input_mux"
-- * "washer_next_state_logic"
-- * "washer_output_logic" 
-- You will have to code the next-state and output logic units for this
-- device. You should already have the mux and the register from previous labs.
-- 
-- SIGNALS
--	This device uses four internal signals, three of which are bit vectors.  
--
-- INSTANCES
--	The four sub-components are instantiated in the main body of the 
-- architecture code and their ports are mapped appropriately according 
-- to the design. Note that the nbit register requires "generic map" to 
-- set the bit-width value "n".
--
-- NOTE: This device will NOT compile or pass a syntax check until code 
-- files for the sub-components are implemented. 
--
-- *********************************************************************


-- ENTITY
entity washer_controller is
    Port ( CLK : in std_logic;
           spin_dry : in std_logic;
           start_wash : in std_logic;
           door_open : in std_logic;
           reset : in std_logic;
           door_lock : out std_logic;
           water_pump : out std_logic;
           soap : out std_logic;
           rotate_drum : out std_logic;
           drain : out std_logic);
end washer_controller;

--ARCHITECTURE
architecture Behavioral of washer_controller is

-- SUB-COMPONENTS
component two_input_multiplexer is
	Port (a : in  STD_LOGIC;
         b : in  STD_LOGIC;
			s : in  STD_LOGIC;
         output : out  STD_LOGIC);
end component;

component washer_next_state_logic
	Port (state : in std_logic_vector (2 downto 0);
			control : in std_logic;
			door_open : in std_logic;
			next_state : out std_logic_vector (2 downto 0));
end component;

component n_bit_register 
		Generic (n:positive:=3);
    Port ( D_inputs : in std_logic_vector(n-1 downto 0);
           CLK : in std_logic;
           reset : in std_logic;
           preset : in std_logic;
           Q_outputs : inout std_logic_vector(n-1 downto 0);
           Q_bar_outputs : inout std_logic_vector(n-1 downto 0));
end component;

component washer_output_logic
	  Port (state : in std_logic_vector (2 downto 0);
			  door_lock : out std_logic;
           water_pump : out std_logic;
           soap : out std_logic;
           rotate_drum : out std_logic;
           drain : out std_logic);
end component;

-- SIGNALS
signal state, next_state, dummy : std_logic_vector (2 downto 0);
signal mux_out : std_logic;

begin

-- DEVICE INSTANCES
 mux : two_input_multiplexer port map (start_wash, spin_dry, state(2), mux_out);
 ns_logic : washer_next_state_logic port map (state, mux_out, door_open, next_state);
 reg :  n_bit_register generic map (3) port map (next_state, CLK, reset, '0', state, dummy);
 op_logic : washer_output_logic port map (state, door_lock, water_pump, soap, rotate_drum, drain);  

end Behavioral;