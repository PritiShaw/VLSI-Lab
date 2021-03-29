--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:44 03/10/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment1/Logic_Gates_Test_Bench.vhd
-- Project Name:  Assignment1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Logic_Gates
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
 
ENTITY Logic_Gates_Test_Bench IS
END Logic_Gates_Test_Bench;
 
ARCHITECTURE behavior OF Logic_Gates_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Logic_Gates
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal aa : std_logic := '0';
   signal bb : std_logic := '0';

 	--Outputs
   signal cc : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Logic_Gates PORT MAP (
          a => aa,
          b => bb,
          c => cc
        );

   -- Stimulus process
   stim_proc: process
   begin	
		aa <= '0';
		bb <= '0';
		wait for 1 ps;
		
		aa <= '0';
		bb <= '1';
		wait for 1 ps;
		
		aa <= '1';
		bb <= '0';
		wait for 1 ps;
		
		aa <= '1';
		bb <= '1';
		wait for 1 ps;	
   end process;

END;
