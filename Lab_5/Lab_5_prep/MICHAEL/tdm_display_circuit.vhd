----------------------------------------------------------------------------------
-- Company: 	QMUL
-- Engineer: 	Michael Seltene
-- 
-- Create Date:    12:55:57 11/24/2015 
-- Design Name: 	 tdm_display_circuit
-- Module Name:    tdm_display_circuit - Behavioral 
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

entity tdm_display_circuit is
	port(	reset : in std_logic;
			clock : in std_logic;
			InA : in std_logic_vector (3 downto 0);
			InB : in std_logic_vector (3 downto 0);
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
	inst_0: T_flipflop port map(reset, clock, Q_T_flipflop_TO_enable_buffer, Q_BAR_T_flipflop_TO_enable_buffer);
	Cathod_A <= Q_T_flipflop_TO_enable_buffer;
	Cathod_B <= Q_BAR_T_flipflop_TO_enable_buffer;
	
	-- LOOP INSTANCES
	inst_loop: for i in 3 downto 0 generate
		inst_1: nbit_tristate_buffer port map(InA(i), Q_T_flipflop_TO_enable_buffer, buffer_TO_decoder(i));
		--inst_2: nbit_tristate_buffer port map(Q_BAR_T_flipflop_TO_enable_buffer, InB(i), buffer_TO_decoder);
	end generate;
	
	inst_3: sixteen_x_7_decoder_rom port map(buffer_TO_decoder, Anode_outs);

end Behavioral;

