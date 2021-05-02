--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:16 05/01/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment6/twoCrossOneMuxTestBench.vhd
-- Project Name:  Assignment6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: twoCrossOneMux
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
 
ENTITY twoCrossOneMuxTestBench IS
END twoCrossOneMuxTestBench;
 
ARCHITECTURE behavior OF twoCrossOneMuxTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT twoCrossOneMux
    PORT(
         i : IN  std_logic_vector(1 downto 0);
         s : IN  std_logic;
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(1 downto 0) := (others => '0');
   signal s : std_logic := '0';

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: twoCrossOneMux PORT MAP (
          i => i,
          s => s,
          o => o
        );
   -- Stimulus process
   stim_proc: process
   begin		
		--i = 01 s=0
		--i = 00 s=0 
		--i = 10 s=1
   end process;
END;
