--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:05:55 05/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment5/fourBitComparatorTestBench.vhd
-- Project Name:  Assignment5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourBitComparator
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
 
ENTITY fourBitComparatorTestBench IS
END fourBitComparatorTestBench;
 
ARCHITECTURE behavior OF fourBitComparatorTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitComparator
    PORT(
         aa : IN  std_logic_vector(3 downto 0);
         bb : IN  std_logic_vector(3 downto 0);
         ss : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aa : std_logic_vector(3 downto 0) := (others => '0');
   signal bb : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ss : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitComparator PORT MAP (
          aa => aa,
          bb => bb,
          ss => ss
        );

   -- Stimulus process
   stim_proc: process	
		variable j,k:integer;
		variable binA,binB:std_logic_vector(3 downto 0);
		begin		
			for k in 0 to 15 loop
				procA:decimalToBinaryProcedure(k,4,binA);
				aa<=binA;
				for j in 0 to 15 loop
					procB:decimalToBinaryProcedure(j,4,binB);
					bb<=binB;
					wait for 1 ps;
				end loop;
			end loop;
		end process;
END;
