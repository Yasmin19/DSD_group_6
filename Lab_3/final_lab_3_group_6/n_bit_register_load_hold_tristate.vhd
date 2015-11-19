----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:38 11/03/2015 
-- Design Name: 
-- Module Name:    N_bit_register_tri_state - Behavioral 
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

entity n_bit_register_load_hold_tristate is
		Generic(n:positive:=4);
    Port ( D_inputs : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Hold_load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           Output_enable : in  STD_LOGIC;
           Outputs : out  STD_LOGIC_VECTOR (n-1 downto 0));
end n_bit_register_load_hold_tristate;

architecture Behavioral of n_bit_register_load_hold_tristate is

component n_bit_register_hold_load
    PORT(
         InputB : IN  std_logic_vector(n-1 downto 0);
         control : IN  std_logic;
         clk : IN  std_logic;
         preset : IN  std_logic;
         reset : IN  std_logic;
         Q_out : INOUT  std_logic_vector(n-1 downto 0);
         Qbar_out : INOUT  std_logic_vector(n-1 downto 0)
        );
    end component;
	 
Component n_tri_buffer is
    Port ( Data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           enable : in  STD_LOGIC;
           Data_out : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Component;

	 
signal RegtoTri: STD_LOGIC_VECTOR (n-1 downto 0);
begin

n_bit_register_hold_load_i: n_bit_register_hold_load port map  (D_inputs, Hold_load, clk, '0', reset,RegtoTri); 
n_tri_buffer_i: n_tri_buffer port map  (RegtoTri, Output_enable,Outputs); 

end Behavioral;
