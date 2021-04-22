--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:16:56 04/22/2021
-- Design Name:   
-- Module Name:   /mnt/e/JU/8/VLSI/Lab/Code/Assignment3/Function_4X16_Decoder_TestBench.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Function_4X16_Decoder
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
 
ENTITY Function_4X16_Decoder_TestBench IS
END Function_4X16_Decoder_TestBench;
 
ARCHITECTURE behavior OF Function_4X16_Decoder_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Function_4X16_Decoder
    PORT(
         ii : IN  std_logic_vector(3 downto 0);
         oo : OUT  std_logic_vector(15 downto 0);
         ee : IN  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal ii : std_logic_vector(3 downto 0) := (others => '0');
   signal ee : std_logic := '0';
   --Outputs
   signal oo : std_logic_vector(15 downto 0);
   
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Function_4X16_Decoder PORT MAP (
          ii => ii,
          oo => oo,
          ee => ee
        );
   -- Stimulus process
   stim_proc: process
		variable k,j,a:integer;
		begin
			if ee='0' then
				ee<='1';
			elsif ee='1' then
				ee<='0';
			end if;
			for k in 0 to 15 loop
				j:=k;
				a:=0;
				while a<4 loop
					if (j rem 2)=0 then
						ii(a)<='0';
					elsif (j rem 2)=1 then
						ii(a)<='1';
					end if;
					j:=j/2;
					a:=a+1;
				end loop;
				wait for 1 ps;
			end loop;
	end process;
END;