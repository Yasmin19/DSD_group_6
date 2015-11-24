----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Hemat Shah
-- 
-- Create Date:    20:43:10 11/18/2015 
-- Design Name: 
-- Module Name:    washer_next_state_logic - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity washer_next_state_logic is
generic(n:positive:=3);
    Port ( state : in  STD_LOGIC_VECTOR(n-1 downto 0);
           control : in  STD_LOGIC;
           door_open : in  STD_LOGIC;
           next_state : out  STD_LOGIC_VECTOR (n-1 downto 0));
end washer_next_state_logic;

architecture Behavioral of washer_next_state_logic is

signal Conditions : STD_LOGIC_VECTOR (1 downto 0);

begin

 Conditions <= door_open & control;
 
  process(state, Conditions) 

begin

    case state(2 downto 0) is
	  when "000" =>
	     
		      if Conditions = "1-" then 
				next_state <= "000";
				elsif Conditions = "00" then
				next_state <= "000";
				elsif Conditions = "01" then
				next_state <= "001";
				end if;		
				
	 when "001" =>
            next_state <= "010";			  
    when "010" =>
	         next_state <= "011";
	 when "011" =>
            next_state <= "100";
    when "100" =>
            next_state <= "101";
    when "101" =>
            next_state <= "110";
    when "110" =>
            
            if Conditions = "-0" then
            next_state <= "000";
            elsif Conditions = "-1" then
            next_state <= "111";
            end if;

    when "111" =>
    next_state <= "000";
    when others => next_state <= "000";
    
 
      end case;
   end process;	 
end Behavioral;

