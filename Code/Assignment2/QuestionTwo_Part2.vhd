----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:04 03/16/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_Part2 - Behavioral 
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

entity QuestionTwo_Part2 is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           oo : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionTwo_Part2;

architecture Behavioral of QuestionTwo_Part2 is

begin
p1:process(ii)
		begin
		if ii="0001" then
			oo<="00";
		elsif ii="0010" then
			oo<="01";
		elsif ii="0100" then
			oo<="10";
		elsif ii="1000" then
			oo<="11";
		else
			oo<="ZZ";
		end if;
		end process;
end Behavioral;