----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:02 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionThree_PartB_four - Behavioral 
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

entity QuestionThree_PartB_four is
    Port ( e : in  STD_LOGIC;
           iii : in  STD_LOGIC_VECTOR (2 downto 0);
           ooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionThree_PartB_four;

architecture Behavioral of QuestionThree_PartB_four is

begin
with (e&iii) select 
		ooo <= "00000001" when "1000",
				"00000010" when "1001",
				"00000100" when "1010",
				"00001000" when "1011",
				"00010000" when "1100",
				"00100000" when "1101",
				"01000000" when "1110",
				"10000000" when "1111",
			   "00000000" when others;	

end Behavioral;
