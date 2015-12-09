 LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  
 ENTITY nbitregloadholdtestbench IS  
 END nbitregloadholdtestbench;  
 ARCHITECTURE behavior OF nbitregloadholdtestbench IS   
   -- Component Declaration for the Unit Under Test (UUT)  
   COMPONENT n_bit_register_hold_load  
	 Generic (n:positive:=4);
    Port ( InputB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           control : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           preset : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q_out : inout  STD_LOGIC_VECTOR (n-1 downto 0);
           Qbar_out : inout  STD_LOGIC_VECTOR (n-1 downto 0)); 
   END COMPONENT;  
   --Inputs  
   signal InputB : std_logic_vector(3 downto 0) := (others => '0');  
   signal control : std_logic := '0';  
   signal clk : std_logic := '0';  
   signal preset : std_logic := '0';  
   signal reset : std_logic := '0';  
      --BiDirs  
   signal Q_out : std_logic_vector(3 downto 0);  
   -- Clock period definitions  
   constant CLK_period : time := 10 ns;  
 BEGIN  
      -- Instantiate the Unit Under Test (UUT)  
   uut: n_bit_register_hold_load PORT MAP (  
      InputB => InputB,  
      control => control,  
      clk => clk,  
      preset => preset,  
      reset => reset,  
      Q_out => Q_out  
     );  
  clk_process :process  
   begin  
           clk <= '0';  
           wait for clk_period/2;  
           clk <= '1';  
           wait for clk_period/2;  
   end process;  
   -- Stimulus process  
   stim_proc: process  
   begin            
    -- hold reset state for 100 ns.  
    wait for 100 ns;       
            wait for 100 ns;       
    InputB <= "1001" ;  
              wait for 100 ns;       
                control <= '1';  
                             wait for 100 ns;       
              wait for 100 ns;        
                control <= '0';  
              wait for 100 ns;       
                     reset <= '1';  
                     wait for 100 ns;        
                          reset <= '0';  
                     preset <= '1';  
              wait for 100 ns;       
                     preset <= '0';  
    wait for clk_period*10;  
    -- insert stimulus here   
    wait;  
   end process;  
 END;  