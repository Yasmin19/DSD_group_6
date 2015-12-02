----------------------------------------------------------------------------------
-- Company: 		 QMUL
-- Engineer: 		 Michael Seltene		
-- 
-- Create Date:    15:43:11 11/01/2015 
-- Design Name: 	 D flipflop
-- Module Name:    D_flipflop - Behavioral 
-- Project Name:   Lab 5
-- Target Devices: XCR3064xl-6pc44
-- Tool versions:  Xilinx ISE	   7.104i and ModelSim XE III 6.0a starter 
-- Description: 	 D flipflop
--
-- Dependencies: 	n/a
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
           Q_bar : out  STD_LOGIC);
end D_flipflop;

architecture Behavioral of D_flipflop is

begin
		process (clk, reset, preset) begin  
					  if (reset = '1') then  
					  Q <= '0';  
					  Q_bar<='1';  
					  elsif (preset = '1') then  
					  Q <= '1';  
					  Q_bar<='0';  
					  elsif (clk'event and clk = '1') then  
					  Q <= D;  
					  Q_bar<= not D;  
					  end if;  
		 end process; 

end Behavioral;