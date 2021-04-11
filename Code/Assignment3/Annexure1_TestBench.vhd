--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:21:49 04/07/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/Annexure1_TestBench.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Annexure1
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
 
ENTITY Annexure1_TestBench IS
END Annexure1_TestBench;
 
ARCHITECTURE behavior OF Annexure1_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Annexure1
    PORT(
         enable : IN  std_logic;
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal enable : std_logic := '0';
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Annexure1 PORT MAP (
          enable => enable,
          input => input,
          output => output
        );
   -- Stimulus process
   stim_proc: process
	variable k,j,a:integer;
   begin		
		if enable='0' then
			enable<='1';
		elsif enable='1' then
			enable<='0';
		end if;
		for k in 0 to 15 loop
			j:=k;
			a:=0;
			while a<4 loop
				if (j rem 2)=0 then
					input(a)<='0';
				elsif (j rem 2)=1 then
					input(a)<='1';
				end if;
				j:=j/2;
				a:=a+1;
			end loop;
		wait for 1 ps;
		end loop;
   end process;
END;
