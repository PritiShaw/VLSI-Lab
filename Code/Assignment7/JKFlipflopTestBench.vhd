--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:05:51 05/17/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment7/JKFlipflopTestBench.vhd
-- Project Name:  Assignment7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JKFlipflop
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
 
ENTITY JKFlipflopTestBench IS
END JKFlipflopTestBench;
 
ARCHITECTURE behavior OF JKFlipflopTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JKFlipflop
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic;
         q : INOUT  std_logic;
         qbar : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';

	--BiDirs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JKFlipflop PORT MAP (
          rst => rst,
          clk => clk,
          j => j,
          k => k,
          q => q,
          qbar => qbar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 1 ps;
		clk <= '1';
		wait for 1 ps;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			rst<='0';
			wait for 1 ps;
		
			rst<='1';
			wait for 1 ps;
		
			rst<='0';
			loop1:loop
				j<='0';
				k<='0';
				wait for 1 ps;
				wait for 1 ps;
				j<='0';
				k<='1';
				wait for 1 ps;
				wait for 1 ps;
				j<='1';
				k<='0';
				wait for 1 ps;
				wait for 1 ps;
				j<='1';
				k<='1';
				wait for 1 ps;
				wait for 1 ps;
			end loop;
   end process;

END;