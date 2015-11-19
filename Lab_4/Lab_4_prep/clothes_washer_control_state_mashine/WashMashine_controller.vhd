----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:23 11/18/2015 
-- Design Name: 
-- Module Name:    WashMashine_controller - Behavioral 
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

entity WashMashine_controller is
    Port ( CLK : in  STD_LOGIC;
           Spin_Dry : in  STD_LOGIC;
           Start_wash : in  STD_LOGIC;
           Door_Open : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Door_lock : out  STD_LOGIC;
           Water_Pump : out  STD_LOGIC;
           Soap : out  STD_LOGIC;
           Rotate_Drum : out  STD_LOGIC;
           Drain : out  STD_LOGIC);
end WashMashine_controller;

architecture Behavioral of WashMashine_controller is

begin


end Behavioral;

