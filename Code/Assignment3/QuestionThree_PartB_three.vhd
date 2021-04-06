----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:50 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionThree_PartB_three - Behavioral 
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

entity QuestionThree_PartB_three is
    Port ( e : in  STD_LOGIC;
           iii : in  STD_LOGIC_VECTOR (2 downto 0);
           ooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionThree_PartB_three;

architecture Behavioral of QuestionThree_PartB_three is

begin
ooo<="00000000" when e<='0' else
	  "00000001" when iii<="000" else
	  "00000010" when iii<="001" else
	  "00000100" when iii<="010" else
	  "00001000" when iii<="011" else
	  "00010000" when iii<="100" else
	  "00100000" when iii<="101" else
	  "01000000" when iii<="110" else
	  "10000000" when iii<="111" else
	  "ZZZZZZZZ";
end Behavioral;

