----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:46 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionOne_PartB_One - Behavioral 
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

entity QuestionOne_PartB_One is
    Port ( e : in  STD_LOGIC;
           i : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionOne_PartB_One;

architecture Behavioral of QuestionOne_PartB_One is

begin
p1:process(e, i)
			begin
				if e='0' then
					o<="00";
				elsif i='0' then
					o<="01";
				elsif i='1' then
					o<="10";
				end if;
			end process;
end Behavioral;