--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:20:55 04/06/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/QuestionTwo_PartA_TestBench.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionTwo_PartA
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
 
ENTITY QuestionTwo_PartA_TestBench IS
END QuestionTwo_PartA_TestBench;
 
ARCHITECTURE behavior OF QuestionTwo_PartA_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionTwo_PartA
    PORT(
         e : IN  std_logic;
         ii : IN  std_logic_vector(1 downto 0);
         oo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic := '0';
   signal ii : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal oo : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionTwo_PartA PORT MAP (
          e => e,
          ii => ii,
          oo => oo
        );

   -- Clock process definitions
      -- Stimulus process
   stim_proc: process
   begin
		e<='0';
		ii<="00";
		wait for 1 ps;
		e<='1';
		ii<="00";
		wait for 1 ps;
		ii<="01";
		wait for 1 ps;
		ii<="10";
		wait for 1 ps;
		ii<="11";
		wait for 1 ps;
   end process;
END;