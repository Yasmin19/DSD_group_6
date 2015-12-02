----------------------------------------------------------------------------------
-- Company: 		 QMUL
-- Engineer: 		 Michael Seltene		
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 tdm_display_unit
-- Module Name:    tdm_display_unit - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 tdm_display_unit
--
-- Dependencies: 	sixteen_x_7_decoder_rom, nbit_tristate_buffer, T_flipflop
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tdm_display_circuit is
	generic(n: positive := 4);
	port(	reset : in std_logic;
			clock : in std_logic;
			InA : in std_logic_vector (n-1 downto 0);
			InB : in std_logic_vector (n-1 downto 0);
			Cathod_A : out std_logic;
			Cathod_B : out std_logic;
			Anode_outs : out std_logic_vector(6 downto 0)  );
end tdm_display_circuit;

architecture Behavioral of tdm_display_circuit is

	-- COMPONENT sixteen_x_7_decoder_rom
	component sixteen_x_7_decoder_rom
		port( address: in std_logic_vector(3 downto 0);
			data_outputs: out std_logic_vector(6 downto 0) );
	end component;
	
	-- COMPONENT nbit_tristate_buffer
	component nbit_tristate_buffer
	Generic (n:positive:=4);
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
	end component;
	
	-- COMPONENT T_flipflop
	component T_flipflop
    Port ( reset : in std_logic;
	 		  Clk : in std_logic;
           Q : inout std_logic;
           Q_bar : inout std_logic);
	end component;
-- SIGNALS
signal buffer_TO_decoder : std_logic_vector(3 downto 0);
signal Q_T_flipflop_TO_enable_buffer, Q_BAR_T_flipflop_TO_enable_buffer : std_logic;

begin
	
	-- INSTANCES
	inst_0: T_flipflop port map(reset, clock, Q_T_flipflop_TO_enable_buffer, Q_BAR_T_flipflop_TO_enable_buffer);
	
	inst_1: nbit_tristate_buffer port map(InA, Q_T_flipflop_TO_enable_buffer, buffer_TO_decoder);
	inst_2: nbit_tristate_buffer port map(InB, Q_BAR_T_flipflop_TO_enable_buffer, buffer_TO_decoder);
	
	inst_3: sixteen_x_7_decoder_rom port map(buffer_TO_decoder, Anode_outs);
	
	Cathod_A <= Q_T_flipflop_TO_enable_buffer;
	Cathod_B <= Q_BAR_T_flipflop_TO_enable_buffer;

end Behavioral;

