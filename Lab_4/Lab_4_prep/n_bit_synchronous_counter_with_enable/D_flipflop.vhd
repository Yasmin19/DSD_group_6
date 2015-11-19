----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 
-- Module Name:    D_flipflop - Behavioral 
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

entity D_flipflop is
    Port ( D : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Q_bar : inout  STD_LOGIC);
end D_flipflop;

architecture Behavioral of D_flipflop is

begin
process(clk,reset, preset, D)
     begin
         if reset = '1'   then
                Q <= '0' after 7ns;
                Q_bar <= '1' after 7ns;
           else
                if reset='0' and preset='1' then
						Q <= '1' after 7ns;
						Q_bar <= '0' after 7ns;
					 else 
								if reset='0' and preset='0' then
									if clk='1' and clk'event then
											if D='1' then
											Q <= '1' after 7ns;
											Q_bar <= '0' after 7ns;
											else
											Q <= '0' after 7ns;
											Q_bar <= '1' after 7ns;
											end if;
									end if;
								end if;
                end if;
           end if;  
end process;

end Behavioral;

