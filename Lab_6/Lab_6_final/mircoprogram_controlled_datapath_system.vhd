----------------------------------------------------------------------------------
-- Company: Queen Mary University	
-- Engineer: Yasmin Sahraoui
-- 
-- Create Date:    17:25:04 12/02/2015 
-- Design Name: 
-- Module Name:    mircoprogram_controlled_datapath_system - Behavioral 
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


entity mircoprogram_controlled_datapath_system is
    Port ( Start : in  STD_LOGIC;
           Alt : in  STD_LOGIC;
			  Clock: in  STD_LOGIC;
           Data_In : in  STD_LOGIC_VECTOR(3 downto 0);
           Done : out  STD_LOGIC;
           Data_Out : inout  STD_LOGIC_VECTOR(3 downto 0));
end mircoprogram_controlled_datapath_system;

architecture Behavioral of mircoprogram_controlled_datapath_system is

component Control
    Port ( one : in  STD_LOGIC;
           start : in  STD_LOGIC;
           data_not_zero : in  STD_LOGIC;
			  clock : in  STD_LOGIC;
           alt : in  STD_LOGIC;
			  Data_contol: out STD_LOGIC_VECTOR (19 downto 0);
			  Done: out STD_LOGIC);
end component;


component Data_path
Generic(n:positive:=4);
    Port ( input : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  Clock: in  STD_LOGIC;
           Control : in  STD_LOGIC_VECTOR (19 downto 0);
			  data: out STD_LOGIC;
           output : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

signal Control_words: STD_LOGIC_VECTOR (19 downto 0);
signal Data_not_0: std_logic;


begin
Controller: Control port map ('1',Start,Data_not_0, Clock, alt, Control_words,Done);
DataPath: Data_path port map (Data_In,Clock, Control_words, Data_not_0, Data_Out);
end Behavioral;

