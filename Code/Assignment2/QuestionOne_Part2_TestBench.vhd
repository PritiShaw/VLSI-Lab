--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:59:39 03/28/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/QuestionOne_Part2_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionOne_Part2
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
 
ENTITY QuestionOne_Part2_TestBench IS
END QuestionOne_Part2_TestBench;
 
ARCHITECTURE behavior OF QuestionOne_Part2_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionOne_Part2
    PORT(
         i : IN  std_logic_vector(1 downto 0);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionOne_Part2 PORT MAP (
          i => i,
          o => o
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin
		i<="01";
		wait for 1 ps;
		i<="10";
      wait for 1 ps;
		i<="11";
		wait for 1 ps;
   end process;
END;
