--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:37:51 04/01/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/Annexure2_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Annexure2
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
 
ENTITY Annexure2_TestBench IS
END Annexure2_TestBench;
 
ARCHITECTURE behavior OF Annexure2_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Annexure2
    PORT(
         input : IN  std_logic_vector(15 downto 0);
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Annexure2 PORT MAP (
          input => input,
          output => output
        );

   -- Stimulus process
   stim_proc: process
	variable j: integer;
   begin		
		--input<="0000000000000000";
		--j:=0;
		--while j<16 loop
		for j in 0 to 15 loop
			if j=0 then
				input(j)<='1';
				input(15)<='0';
				wait for 1 ps;
			else
				input(j-1)<='0';
				input(j)<='1';
				wait for 1 ps;
			end if;
		--j:=j+1;
		end loop;
   end process;
	
END;