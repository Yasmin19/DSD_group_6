----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 register file cell
-- Module Name:    register_file_cell - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 register file cell
--
-- Dependencies: 	D_flipflop, two_input_multiplexer, tri_buff
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_file_cell is
	Port (DIN : in  STD_LOGIC;
         REA : in  STD_LOGIC;
			REB : in  STD_LOGIC;
         WE : in STD_LOGIC;
			Clock : in STD_LOGIC;
			OA : out STD_LOGIC;
			OB : out STD_LOGIC);
end register_file_cell;

architecture Behavioral of register_file_cell is

--COMPONENTS
component D_flipflop
    Port ( D : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Q_bar : out  STD_LOGIC);
end component;

component two_input_multiplexer
	Port (I0 : in  STD_LOGIC;
         I1 : in  STD_LOGIC;
			SEL : in  STD_LOGIC;
         OUT1 : out  STD_LOGIC);
end component;

component tri_buff
    Port ( Input : in std_logic;
           enable : in std_logic;
           Output : out std_logic);
end component;

--INTERNAL SIGNALS
signal mux_out : std_logic;
signal Q : std_logic;
signal dummy : std_logic;

begin

G1_two_mux: two_input_multiplexer port map (Q, DIN, WE, mux_out);
G2_D_flipflop : D_flipflop port map (mux_out, '0', '0', Clock, Q, dummy);
G3_tri_buff : tri_buff port map (Q, REA, OA);
G4_tri_buff: tri_buff port map (Q, REB, OB);

end Behavioral;

