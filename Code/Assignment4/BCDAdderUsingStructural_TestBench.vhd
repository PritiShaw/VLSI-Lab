--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:32:34 05/22/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment4/BCDAdderUsingStructural_TestBench.vhd
-- Project Name:  Assignment4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: halfAdder
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
 
ENTITY BCDAdderUsingStructural_TestBench IS
END BCDAdderUsingStructural_TestBench;
 
ARCHITECTURE behavior OF BCDAdderUsingStructural_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT halfAdder
    PORT(
         aa : IN  std_logic;
         bb : IN  std_logic;
         cc : OUT  std_logic;
         ss : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal aa : std_logic := '0';
   signal bb : std_logic := '0';

 	--Outputs
   signal cc : std_logic;
   signal ss : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfAdder PORT MAP (
          aa => aa,
          bb => bb,
          cc => cc,
          ss => ss
        );

   -- Clock process definition
   -- Stimulus process
   stim_proc: process
   variable j,k:integer;
	variable binA,binB:std_logic_vector(3 downto 0);
	begin		
		for k in 0 to 9 loop
			procA:decimalToBinaryProcedure(k,4,binA);
			aa<=binA;
			for j in 0 to 9 loop
				procB:decimalToBinaryProcedure(j,4,binB);
				bb<=binB;
				wait for 1 ps;
			end loop;
		end loop;	
   end process;
END;
