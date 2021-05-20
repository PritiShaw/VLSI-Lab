--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:36 05/15/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment7/SRFlipflopTestBench.vhd
-- Project Name:  Assignment7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFlipflop
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
 
ENTITY SRFlipflopTestBench IS
END SRFlipflopTestBench;
 
ARCHITECTURE behavior OF SRFlipflopTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRFlipflop
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         s : IN  std_logic;
         r : IN  std_logic;
         q : INOUT  std_logic;
         qbar : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal s : std_logic := '0';
   signal r : std_logic := '0';

	--BiDirs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRFlipflop PORT MAP (
          rst => rst,
          clk => clk,
          s => s,
          r => r,
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
					s<='0';
					r<='0';
					wait for 1 ps;
					wait for 1 ps;
					s<='0';
					r<='1';
					wait for 1 ps;
					wait for 1 ps;
					s<='1';
					r<='0';
					wait for 1 ps;
					wait for 1 ps;
					s<='1';
					r<='1';
					wait for 1 ps;
					wait for 1 ps;
			end loop;
   end process;
END;