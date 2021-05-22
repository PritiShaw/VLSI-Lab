--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:32 05/22/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment4/fourBitAdderSubtractorUsingStructural_TestBench.vhd
-- Project Name:  Assignment4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourBitAdderSubtractorusingStructural
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
use work.all_Hardware_Package.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fourBitAdderSubtractorUsingStructural_TestBench IS
END fourBitAdderSubtractorUsingStructural_TestBench;
 
ARCHITECTURE behavior OF fourBitAdderSubtractorUsingStructural_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitAdderSubtractorusingStructural
    PORT(
         ain : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ain : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitAdderSubtractorusingStructural PORT MAP (
          ain => ain,
          bin => bin,
          cin => cin,
          s => s
        );

   -- Stimulus process
   stim_proc: process
   variable j,k:integer;
	variable binA,binB:std_logic_vector(3 downto 0);
   begin		
		for k in 0 to 15 loop
			procA:decimalToBinaryProcedure(k,4,binA);
			ain<=binA;
			for j in 0 to 15 loop
				procB:decimalToBinaryProcedure(j,4,binB);
				bin<=binB;
				cin<='0';
				wait for 1 ps;
				cin<='1';
				wait for 1 ps;
			end loop;
		end loop;		
      
   end process;

END;
