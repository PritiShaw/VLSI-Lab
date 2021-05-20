--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:40 05/18/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment7/SRFlipFlopCounterUsingProcedureTestBench.vhd
-- Project Name:  Assignment7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRFlipFlopCounterUsingProcedure
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
 
ENTITY SRFlipFlopCounterUsingProcedureTestBench IS
END SRFlipFlopCounterUsingProcedureTestBench;
 
ARCHITECTURE behavior OF SRFlipFlopCounterUsingProcedureTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRFlipFlopCounterUsingProcedure
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         qqq : INOUT  std_logic_vector(2 downto 0);
         qqqbar : INOUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal qqq : std_logic_vector(2 downto 0);
   signal qqqbar : std_logic_vector(2 downto 0);

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRFlipFlopCounterUsingProcedure PORT MAP (
          rst => rst,
          clk => clk,
          qqq => qqq,
          qqqbar => qqqbar
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
		wait for 1 ps;
		loop1:loop
			wait for 1 ps;
			wait for 1 ps;
		end loop;
   end process;

END;
