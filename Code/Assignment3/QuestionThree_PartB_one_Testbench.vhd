--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:02 04/06/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/QuestionThree_PartB_one_Testbench.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: QuestionThree_PartB_one
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
 
ENTITY QuestionThree_PartB_one_Testbench IS
END QuestionThree_PartB_one_Testbench;
 
ARCHITECTURE behavior OF QuestionThree_PartB_one_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuestionThree_PartB_one
    PORT(
         e : IN  std_logic;
         iii : IN  std_logic_vector(2 downto 0);
         ooo : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal e : std_logic := '0';
   signal iii : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ooo : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuestionThree_PartB_one PORT MAP (
          e => e,
          iii => iii,
          ooo => ooo
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
      e<='0';
		iii<="000";
		wait for 1 ps;
		e<='1';
		iii<="000";
		wait for 1 ps;
		iii<="001";
		wait for 1 ps;
		iii<="010";
		wait for 1 ps;
		iii<="011";
		wait for 1 ps;
		iii<="100";
		wait for 1 ps;
		iii<="101";
		wait for 1 ps;
		iii<="110";
		wait for 1 ps;
		iii<="111";
		wait for 1 ps;
   end process;

END;
