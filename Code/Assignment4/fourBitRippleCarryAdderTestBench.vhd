--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:35 04/28/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment4/fourBitRippleCarryAdderTestBench.vhd
-- Project Name:  Assignment4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourBitRippleCarryAdder
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
 
ENTITY fourBitRippleCarryAdderTestBench IS
END fourBitRippleCarryAdderTestBench;
 
ARCHITECTURE behavior OF fourBitRippleCarryAdderTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitRippleCarryAdder
    PORT(
         ain : IN  std_logic_vector(3 downto 0);
         bin : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         sout : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ain : std_logic_vector(3 downto 0) := (others => '0');
   signal bin : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal sout : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitRippleCarryAdder PORT MAP (
          ain => ain,
          bin => bin,
          cin => cin,
          sout => sout
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
			end loop;
		end loop;
   end process;
END;
