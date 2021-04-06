----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:49 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_PartB_three - Behavioral 
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

entity QuestionTwo_PartB_three is
    Port ( e : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionTwo_PartB_three;

architecture Behavioral of QuestionTwo_PartB_three is

begin
oo<="0000" when e<='0' else
	 "0001" when ii<="00" else
	 "0010" when ii<="01" else
	 "0100" when ii<="10" else
	 "1000" when ii<="11" else
	 "ZZZZ";
end Behavioral;

