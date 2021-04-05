--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:40:34 04/01/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/QuestionOne_PartA_TestBench.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionOne_PartA
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
 
ENTITY QuestionOne_PartA_TestBench IS
END QuestionOne_PartA_TestBench;
 
ARCHITECTURE behavior OF QuestionOne_PartA_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionOne_PartA
    PORT(
         e : IN  std_logic;
         i : IN  std_logic;
         o : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic := '0';
   signal i : std_logic := '0';

 	--Outputs
   signal o : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionOne_PartA PORT MAP (
          e => e,
          i => i,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin
		e<="0";
		wait for 1 ps;
		e<="1" and i<="0";
		wait for 1 ps;
		e<="1" and i<="1";
		wait for 1 ps;
   end process;
END;
