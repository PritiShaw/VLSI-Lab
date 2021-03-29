--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:58:18 03/18/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/QuestionFive_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionFive
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
 
ENTITY QuestionFive_TestBench IS
END QuestionFive_TestBench;
 
ARCHITECTURE behavior OF QuestionFive_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionFive
    PORT(
         i : IN  std_logic_vector(15 downto 0);
         o : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionFive PORT MAP (
          i => i,
          o => o
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin
		i<="0000000000000001";
		wait for 1 ps;
		i<="0000000000000010";
		wait for 1 ps;
		i<="0000000000000100";
		wait for 1 ps;
		i<="0000000000001000";
		wait for 1 ps;
		i<="0000000000010000";
		wait for 1 ps;
		i<="0000000000100000";
		wait for 1 ps;
		i<="0000000001000000";
		wait for 1 ps;
		i<="0000000010000000";
		wait for 1 ps;
		i<="0000000100000000";
		wait for 1 ps;
		i<="0000001000000000";
		wait for 1 ps;
		i<="0000010000000000";
		wait for 1 ps;
		i<="0000100000000000";
		wait for 1 ps;
		i<="0001000000000000";
		wait for 1 ps;
		i<="0010000000000000";
		wait for 1 ps;
		i<="0100000000000000";
		wait for 1 ps;
		i<="1000000000000000";
		wait for 1 ps;
		i<="1000000010000010";
		wait for 1 ps;
	end process;
END;
