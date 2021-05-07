--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:52:48 05/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment5/eightBitComparatorUsing4BitTestBench.vhd
-- Project Name:  Assignment5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eightBitComparatorUsing4Bit
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
 
ENTITY eightBitComparatorUsing4BitTestBench IS
END eightBitComparatorUsing4BitTestBench;
 
ARCHITECTURE behavior OF eightBitComparatorUsing4BitTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eightBitComparatorUsing4Bit
    PORT(
         aaa : IN  std_logic_vector(7 downto 0);
         bbb : IN  std_logic_vector(7 downto 0);
         sss : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aaa : std_logic_vector(7 downto 0) := (others => '0');
   signal bbb : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal sss : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eightBitComparatorUsing4Bit PORT MAP (
          aaa => aaa,
          bbb => bbb,
          sss => sss
        );

   -- Stimulus process
   stim_proc: process	
   variable j,k:integer;
	variable binA,binB:std_logic_vector(7 downto 0);
   begin		
		j:=128;
		for k in 0 to 255 loop
			procA:decimalToBinaryProcedure(k,8,binA);
			aaa<=binA;
			procB:decimalToBinaryProcedure(j,8,binB);
			bbb<=binB;
			wait for 1 ps;
		end loop;
   end process;
END;
