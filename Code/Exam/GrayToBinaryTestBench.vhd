--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:35:00 06/08/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Exam/GrayToBinaryTestBench.vhd
-- Project Name:  Exam
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GrayCodeToBinary
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
 
ENTITY GrayToBinaryTestBench IS
END GrayToBinaryTestBench;
 
ARCHITECTURE behavior OF GrayToBinaryTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GrayCodeToBinary
    PORT(
         g : IN  std_logic_vector(3 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal g : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GrayCodeToBinary PORT MAP (
          g => g,
          b => b
        );

   -- Stimulus process
   stim_proc: process
   begin		
		g<="0000";
		wait for 1 ps;
		g<="0001";
		wait for 1 ps;
		g<="0011";
		wait for 1 ps;
		g<="0010";
		wait for 1 ps;
		g<="0110";
		wait for 1 ps;
		g<="0111";
		wait for 1 ps;
		g<="0101";
		wait for 1 ps;
		g<="0100";
		wait for 1 ps;
		g<="1100";
		wait for 1 ps;
		g<="1101";
		wait for 1 ps;
		g<="1111";
		wait for 1 ps;
		g<="1110";
		wait for 1 ps;
		g<="1010";
		wait for 1 ps;
		g<="1011";
		wait for 1 ps;
		g<="1001";
		wait for 1 ps;
		g<="1000";
		wait for 1 ps;
   end process;
END;
