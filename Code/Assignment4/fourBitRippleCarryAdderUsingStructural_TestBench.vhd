--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:50 05/22/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment4/fourBitRippleCarryAdderUsingStructural_TestBench.vhd
-- Project Name:  Assignment4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourBitRippleCarryUsingStructural
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
 
ENTITY fourBitRippleCarryAdderUsingStructural_TestBench IS
END fourBitRippleCarryAdderUsingStructural_TestBench;
 
ARCHITECTURE behavior OF fourBitRippleCarryAdderUsingStructural_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitRippleCarryUsingStructural
    PORT(
         a_in : IN  std_logic_vector(3 downto 0);
         b_in : IN  std_logic_vector(3 downto 0);
         c_in : IN  std_logic;
         s_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(3 downto 0) := (others => '0');
   signal b_in : std_logic_vector(3 downto 0) := (others => '0');
   signal c_in : std_logic := '0';

 	--Outputs
   signal s_out : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitRippleCarryUsingStructural PORT MAP (
          a_in => a_in,
          b_in => b_in,
          c_in => c_in,
          s_out => s_out
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
