----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:14 03/16/2021 
-- Design Name: 
-- Module Name:    QuestionThree_Part2 - Behavioral 
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

entity QuestionThree_Part2 is
    Port ( i : in  STD_LOGIC_VECTOR (7 downto 0);
           o : out  STD_LOGIC_VECTOR (2 downto 0));
end QuestionThree_Part2;

architecture Behavioral of QuestionThree_Part2 is

begin
p1:process(i)
		begin
		if i="00000001" then
			o<="000";
		elsif i="00000010" then
			o<="001";
		elsif i="00000100" then
			o<="010";
		elsif i="00001000" then
			o<="011";
		elsif i="00010000" then
			o<="100";
		elsif i="00100000" then
			o<="101";
		elsif i="01000000" then
			o<="110";
		elsif i="10000000" then
			o<="111";
		else
			o<="ZZZ";
		end if;
		end process;
end Behavioral;

