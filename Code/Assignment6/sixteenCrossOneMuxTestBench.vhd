--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:43:57 05/02/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment6/sixteenCrossOneMuxTestBench.vhd
-- Project Name:  Assignment6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sixteenCrossOneMux
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
 
ENTITY sixteenCrossOneMuxTestBench IS
END sixteenCrossOneMuxTestBench;
 
ARCHITECTURE behavior OF sixteenCrossOneMuxTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sixteenCrossOneMux
    PORT(
         ii : IN  std_logic_vector(15 downto 0);
         ss : IN  std_logic_vector(3 downto 0);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ii : std_logic_vector(15 downto 0) := (others => '0');
   signal ss : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sixteenCrossOneMux PORT MAP (
          ii => ii,
          ss => ss,
          o => o
        );

   -- Stimulus process
   stim_proc: process	
   variable k:integer;
	variable binary:std_logic_vector(3 downto 0);
   begin		
			for k in 0 to 15 loop
				prock: decimalToBinaryProcedure(k,4,binary(3 downto 0));
				ss(3 downto 0)<=binary(3 downto 0);
			
				ii(15 downto 0)<=(others=>'0');
				ii(k)<='1';
				wait for 1 ps;
				
				ii(15 downto 0)<=(others=>'1');
				ii(k)<='0';
				wait for 1 ps;
			end loop;
   end process;

END;
