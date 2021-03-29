--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:54:22 03/16/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/QuestionThree_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionThree
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY QuestionThree_TestBench IS
END QuestionThree_TestBench;
 
ARCHITECTURE behavior OF QuestionThree_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionThree
    PORT(
         i : IN  std_logic_vector(7 downto 0);
         o : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionThree PORT MAP (
          i => i,
          o => o
        );

   -- Clock process definitions
	
   -- Stimulus process
   stim_proc: process
   begin		
     i<="00000001";
	  wait for 1 ps;
	  i<="00000010";
	  wait for 1 ps;
	  i<="00000100";
	  wait for 1 ps;
	  i<="00001000";
	  wait for 1 ps;
	  i<="00010000";
	  wait for 1 ps;
	  i<="00100000";
	  wait for 1 ps;
	  i<="01000000";
	  wait for 1 ps;
	  i<="10000000";
	  wait for 1 ps;
   end process;
END;
