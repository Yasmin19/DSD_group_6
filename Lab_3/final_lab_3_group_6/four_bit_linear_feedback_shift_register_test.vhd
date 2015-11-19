
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_linear_feedback_shift_register_test IS
END four_bit_linear_feedback_shift_register_test;
 
ARCHITECTURE behavior OF four_bit_linear_feedback_shift_register_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit_Linear_Feedback_Shift_Register
    PORT(
         CLK : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         O_outputs : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';

	--BiDirs
   signal O_outputs : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit_Linear_Feedback_Shift_Register PORT MAP (
          CLK => CLK,
          reset => reset,
          preset => preset,
          O_outputs => O_outputs
        );

   
 

	CLK <= not CLK after 50 ns; -- define clock period 100ns

   -- Stimulus process
   stim_proc: process
begin

        preset <= '1';

        wait for 100 ns;      
        preset <= '0';
		  wait for 100 ns; 
         reset <= '1';
        wait for 100 ns; 
         reset <= '0';
		  preset <= '1';
		  wait for 100 ns; 
         reset <= '1';
		  preset <= '1';
        wait for 100 ns; 
         reset <= '0';
        preset <= '1';
        wait for 100 ns; 
         reset <= '1';
		  preset <= '0';
        wait for 100 ns; 
         reset <= '0';
		  preset <= '1';
		  wait for 100 ns; 
         reset <= '1';
		  preset <= '1';
        wait for 100 ns; 
         reset <= '0';
		  preset <= '0';
		  wait for 100 ns; 
         reset <= '0';
		  preset <= '1';
       
      wait;
   end process;


END;