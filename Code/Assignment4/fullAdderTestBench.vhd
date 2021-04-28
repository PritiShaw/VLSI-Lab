--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:23:47 04/24/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment4/fullAdderTestBench.vhd
-- Project Name:  Assignment4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
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
use work.all_hardware_package.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fullAdderTestBench IS
END fullAdderTestBench;
 
ARCHITECTURE behavior OF fullAdderTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         ain : IN  std_logic;
         bin : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         sout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ain : std_logic := '0';
   signal bin : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          ain => ain,
          bin => bin,
          cin => cin,
          cout => cout,
          sout => sout
        );

   -- Stimulus process
   stim_proc: process
   variable k:integer;
	variable bitPos:integer;
	variable binVal:std_logic_vector(2 downto 0);
	begin		
		for k in 0 to 7 loop
			proc2:decimalToBinaryProcedure(k,3,binVal);
			ain<=binVal(2);
			bin<=binVal(1);
			cin<=binVal(0);
			wait for 1ps;
		end loop;
	end process;

END;
