----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:16 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_PartB_Four - Behavioral 
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

entity QuestionTwo_PartB_Four is
    Port ( e : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionTwo_PartB_Four;

architecture Behavioral of QuestionTwo_PartB_Four is

begin
with (e&ii) select 
		oo <= "0001" when "100",
				"0010" when "101",
				"0100" when "110",
				"1000" when "111",
			   "0000" when others;	
end Behavioral;