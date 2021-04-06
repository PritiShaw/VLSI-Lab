--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:39:06 04/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/QuestionFour_TestBench.vhd
-- Project Name:  Assignment3
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
         eeee : IN  std_logic;
         iiii : IN  std_logic_vector(2 downto 0);
         oooo : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal eeee : std_logic := '0';
   signal iiii : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal oooo : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionFour PORT MAP (
          eeee => eeee,
          iiii => iiii,
          oooo => oooo
        );

     -- Stimulus process
   stim_proc: process
   begin		
      eeee<='0';
		iiii<="000";
		wait for 1 ps;
		eeee<='1';
		iiii<="000";
		wait for 1 ps;
		iiii<="001";
		wait for 1 ps;
		iiii<="010";
		wait for 1 ps;
		iiii<="011";
		wait for 1 ps;
		iiii<="100";
		wait for 1 ps;
		iiii<="101";
		wait for 1 ps;
		iiii<="110";
		wait for 1 ps;
		iiii<="111";
		wait for 1 ps;
   end process;
END;
