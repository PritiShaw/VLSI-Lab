--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:12:24 04/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/QuestionFive_TestBench.vhd
-- Project Name:  Assignment3
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
         eeeee : IN  std_logic;
         iiiii : IN  std_logic_vector(3 downto 0);
         oooo : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal eeeee : std_logic := '0';
   signal iiiii : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal oooo : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionFive PORT MAP (
          eeeee => eeeee,
          iiiii => iiiii,
          oooo => oooo
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
		eeeee<='0';
		iiiii<="0000";
		wait for 1 ps;
		eeeee<='1';
		iiiii<="0000";
		wait for 1 ps;
		iiiii<="0001";
		wait for 1 ps;
		iiiii<="0010";
		wait for 1 ps;
		iiiii<="0011";
		wait for 1 ps;
		iiiii<="0100";
		wait for 1 ps;
		iiiii<="0101";
		wait for 1 ps;
		iiiii<="0110";
		wait for 1 ps;
		iiiii<="0111";
		wait for 1 ps;
		eeeee<='1';
		iiiii<="1000";
		wait for 1 ps;
		iiiii<="1001";
		wait for 1 ps;
		iiiii<="1010";
		wait for 1 ps;
		iiiii<="1011";
		wait for 1 ps;
		iiiii<="1100";
		wait for 1 ps;
		iiiii<="1101";
		wait for 1 ps;
		iiiii<="1110";
		wait for 1 ps;
		iiiii<="1111";
		wait for 1 ps;
	end process;
END;
