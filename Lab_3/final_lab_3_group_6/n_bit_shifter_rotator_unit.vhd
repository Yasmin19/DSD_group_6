----------------------------------------------------------------------------------
-- Company: Queen Mary 
-- Engineer: Hemat Shah
-- 
-- Create Date:    22:19:17 10/28/2015 
-- Design Name: 
-- Module Name:    n-bit_Shifter_Rotator_Unit - Behavioral 
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
 

entity n_bit_shifter_rotator_unit is
generic(n: positive:=4); -- by default its been set to 4 bits value
    Port ( DATA_IN1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           DATA_IN2 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           RIGHT_IN : in  STD_LOGIC;
           RIGHT_SELECT : in  STD_LOGIC;
           LEFT_IN : in  STD_LOGIC;
           LEFT_SELECT : in  STD_LOGIC;
           CONTROL : in  STD_LOGIC_VECTOR(1 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR(n-1 downto 0));
end n_bit_shifter_rotator_unit;

architecture Behavioral of n_bit_shifter_rotator_unit is

 --COMPONENT: two_input_muxplexer  
 component two_input_multiplexer   
   Port ( I0 : in  STD_LOGIC;
          I1 : in  STD_LOGIC;
			SEL : in  STD_LOGIC;
        OUT1 : out  STD_LOGIC); 
 end component;
 --END COMPONENT: two_input_muxplexer  
 
 --COMPONENT: fourInputMux  
 component four_input_multiplexer  
 port ( 
            I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
	   control : in std_logic_vector(1 downto 0);
           O : out  STD_LOGIC);
				
 end component;  
 --END COMPONENT: four_input_multiplexer 
  --SIGNALS  
 signal muxToFour, muxToFourZero: std_logic;  

begin
  inst: for i in n-1 downto 0 generate  
                          if1: if i = n-1 generate  
                               twoMux: two_input_multiplexer port map (DATA_IN1(0),Left_In, Left_Select, muxToFour);  
                               fourMuxTwo: four_input_multiplexer port map (DATA_IN1(i), Data_In1(i-1), muxToFour, Data_In2(i), Control, Output(i));  
                          end generate;  
                          --When i is 0  
                          if2: if i = 0 generate  
                               twoMuxZero: two_input_multiplexer port map (DATA_IN1(n-1),Right_In, Right_Select, muxToFourZero);  
                               fourMuxZero: four_input_multiplexer port map (DATA_IN1(0),muxToFourZero, Data_In1(1), Data_In2(0), Control, Output(0));  
                          end generate;  
                          --Else generate  
                          if3: if ((i/=0) and (i/=n-1)) generate  
                               fourMuxMid: four_input_multiplexer port map (DATA_IN1(i),DATA_IN1(i-1),DATA_IN1(i+1), Data_In2(i), Control, Output(i));  
                          end generate;  

                end generate;
end Behavioral;