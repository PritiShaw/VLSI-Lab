--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:30:39 05/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment5/twoBitComparatorTestBench.vhd
-- Project Name:  Assignment5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: twoBitComparator
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
use work.allHardwarePackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY twoBitComparatorTestBench IS
END twoBitComparatorTestBench;
 
ARCHITECTURE behavior OF twoBitComparatorTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT twoBitComparator
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         s : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: twoBitComparator PORT MAP (
          a => a,
          b => b,
          s => s
        );

   -- Stimulus process
   stim_proc: process
   variable j,k:integer;
	variable binA,binB:std_logic_vector(1 downto 0);
   begin		
		for k in 0 to 3 loop
			proca:decimalToBinaryProcedure(k,2,binA);
			a<=binA;
			for j in 0 to 3 loop
				procb:decimalToBinaryProcedure(j,2,binB);
				b<=binB;
				wait for 1 ps;
			end loop;
		end loop;		
   end process;
END;
