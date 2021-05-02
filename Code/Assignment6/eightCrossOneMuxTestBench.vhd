--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:10:07 05/01/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment6/eightCrossOneMuxTestBench.vhd
-- Project Name:  Assignment6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: eightCrossOneMux
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
 
ENTITY eightCrossOneMuxTestBench IS
END eightCrossOneMuxTestBench;
 
ARCHITECTURE behavior OF eightCrossOneMuxTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eightCrossOneMux
    PORT(
         ii : IN  std_logic_vector(7 downto 0);
         ss : IN  std_logic_vector(2 downto 0);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ii : std_logic_vector(7 downto 0) := (others => '0');
   signal ss : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eightCrossOneMux PORT MAP (
          ii => ii,
          ss => ss,
          o => o
        );
   -- Stimulus process
   stim_proc: process		
	variable k:integer;
	variable binary:std_logic_vector(2 downto 0);
   begin		
			for k in 0 to 7 loop
				prock: decimalToBinaryProcedure(k,3,binary(2 downto 0));
				ss(2 downto 0)<=binary(2 downto 0);
				
				ii(7 downto 0)<=(others=>'0');
				ii(k)<='1';
				wait for 1 ps;
				
				ii(7 downto 0)<=(others=>'1');
				ii(k)<='0';
				wait for 1 ps;
			end loop;
   end process;
END;
