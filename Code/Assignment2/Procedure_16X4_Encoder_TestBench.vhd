--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:08:29 04/22/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment2/Procedure_16X4_Encoder_TestBench.vhd
-- Project Name:  Assignment2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Procedure_16X4_Encoder
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
 
ENTITY Procedure_16X4_Encoder_TestBench IS
END Procedure_16X4_Encoder_TestBench;
 
ARCHITECTURE behavior OF Procedure_16X4_Encoder_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Procedure_16X4_Encoder
    PORT(
         ii : IN  std_logic_vector(15 downto 0);
         oo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal ii : std_logic_vector(15 downto 0) := (others => '0');
 	--Outputs
   signal oo : std_logic_vector(3 downto 0);
   
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Procedure_16X4_Encoder PORT MAP (
          ii => ii,
          oo => oo
        );

   -- Stimulus process
   stim_proc: process
   variable a,k:integer;
   begin		
		for k in 0 to 15 loop
			for a in 0 to 15 loop
				ii(a)<='0';
			end loop;
			ii(k)<='1';
			wait for 1 ps;
		end loop;
		ii<=(others=>'0');
		ii(0)<='1';
		ii(1)<='1';
		wait for 1 ps;
		ii<=(others=>'0');
		ii(0)<='1';
		ii(15)<='1';
		wait for 1 ps;
   end process;
END;
