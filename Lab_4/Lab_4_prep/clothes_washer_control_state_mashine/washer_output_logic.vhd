----------------------------------------------------------------------------------
-- Company: Queen Mary University
-- Engineer: Hemat Shah
-- 
-- Create Date:    21:12:11 11/18/2015 
-- Design Name: 
-- Module Name:    washer_output_logic - Behavioral 
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

entity washer_output_logic is
 generic(n:positive:=3);
    Port ( state : in  STD_LOGIC_VECTOR (n-1 downto 0);
           door_lock : out  STD_LOGIC;
           water_pump : out  STD_LOGIC;
           soap : out  STD_LOGIC;
           rotate_drum : out  STD_LOGIC;
           drain : out  STD_LOGIC);
end washer_output_logic;

architecture Behavioral of washer_output_logic is
--variable PreviousState : std_logic_vector (n-1 downto 0);

begin

process(state)
 variable PreviousState: integer range 0 to 10;
 variable CheckState: integer range 0 to 10;

  
 begin

--if the state is 0 or 1 all outputs are 0 unless the previous state is 6 to 7  

           if state = "000" and CheckState = 0 then
			   door_lock <= '0';
				water_pump <= '0';
				soap <= '0';
				rotate_drum <= '0';
				drain  <= '0';
				
			 end if;

--currentstate is 0 and previous state equals to 6

          if state = "001" then 
           door_lock <= '0';
           water_pump <= '0';
           soap <= '0';
           rotate_drum <= '0';
           drain <= '0';
         
         end if;



--currentstate is 0 and previous state equals to 7
        
          if state = "010" then 
           door_lock <= '1';
           water_pump <= '1';
           soap <= '1';
           rotate_drum <= '0';
           drain <= '0';
         
         end if;			 
            
			  if state = "011" then 
           door_lock <= '1';
           water_pump <= '0';
           soap <= '0';
           rotate_drum <= '1';
           drain <= '0';
         
         end if;

           if state = "100" then 
           door_lock <= '1';
           water_pump <= '0';
           soap <= '0';
           rotate_drum <= '0';
           drain <= '1';
         
         end if;			 
			
           if state = "101" then 
           door_lock <= '1';
           water_pump <= '1';
           soap <= '0';
           rotate_drum <= '0';
           drain <= '0';
         
         end if;	
			
           CheckState:=6;
			  if state = "110" then 
           door_lock <= '1';
           water_pump <= '0';
           soap <= '0';
           rotate_drum <= '1';
           drain <= '0';
           
			          if state = "000" and CheckState = 6 then 
                   door_lock <= '1';
                   water_pump <= '0';
                   soap <= '0';
                   rotate_drum <= '0';
                   drain <= '1';
                   end if;		  			
            end if;			 

            CheckState:=7;
			  if state = "111" then 
           door_lock <= '1';
           water_pump <= '0';
           soap <= '0';
           rotate_drum <= '0';
           drain <= '1';
			  end if;
			   
				      
			         if state = "000" and CheckState = 7 then 
                  door_lock <= '1';
                  water_pump <= '0';
                  soap <= '0';
                  rotate_drum <= '1';
                  drain <= '1';
          end if;
          CheckState:=0;

end process;
end Behavioral;

