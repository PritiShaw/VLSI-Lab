----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:06 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_PartB_one - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity QuestionTwo_PartB_one is
    Port ( ee : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionTwo_PartB_one;

architecture Behavioral of QuestionTwo_PartB_one is

begin
p1:process(ee, ii)
			begin
				if ee='0' then
					oo<="0000";
				elsif ii="00" then
					oo<="0001";
				elsif ii="01" then
					oo<="0010";
				elsif ii="10" then
					oo<="0100";
				elsif ii="11" then
					oo<="1000";
				else 
					oo<="ZZZZ";
				end if;
			end process;
end Behavioral;

