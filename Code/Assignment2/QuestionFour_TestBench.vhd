--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:25:42 03/16/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/QuestionFour_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionFour
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
 
ENTITY QuestionFour_TestBench IS
END QuestionFour_TestBench;
 
ARCHITECTURE behavior OF QuestionFour_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionFour
    PORT(
         iii : IN  std_logic_vector(7 downto 0);
         ooo : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal iii : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ooo : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionFour PORT MAP (
          iii => iii,
          ooo => ooo
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin
		iii<="00000001";
		wait for 1 ps;
		iii<="00000010";
		wait for 1 ps;
		iii<="00000100";
		wait for 1 ps;
		iii<="00001000";
		wait for 1 ps;
		iii<="00010000";
		wait for 1 ps;
		iii<="00100000";
		wait for 1 ps;
		iii<="01000000";
		wait for 1 ps;
		iii<="10000000";
		wait for 1 ps;
		iii<="10000010";
		wait for 1 ps;
   end process;
END;
