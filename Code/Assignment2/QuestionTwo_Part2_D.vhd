----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:03 03/29/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_Part2_D - Behavioral 
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

entity QuestionTwo_Part2_D is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           oo : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionTwo_Part2_D;

architecture Behavioral of QuestionTwo_Part2_D is

begin
with ii select
	oo<="00" when "0001",
		 "01" when "0010",
		 "10" when "0100",
		 "11" when "1000",
		 "ZZ" when others;
end Behavioral;
