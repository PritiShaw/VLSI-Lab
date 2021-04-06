----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:21 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionThree_PartB_one - Behavioral 
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

entity QuestionThree_PartB_one is
    Port ( e : in  STD_LOGIC;
           iii : in  STD_LOGIC_VECTOR (2 downto 0);
           ooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionThree_PartB_one;

architecture Behavioral of QuestionThree_PartB_one is

begin
p1:process(e, iii)
			begin
				if e='0' then
					ooo<="00000000";
				elsif iii="000" then
					ooo<="00000001";
				elsif iii="001" then
					ooo<="00000010"; 
				elsif iii="010" then 
					ooo<="00000100";
				elsif iii="011" then 
					ooo<="00001000";
				elsif iii="100" then 
					ooo<="00010000";
				elsif iii="101" then 
					ooo<="00100000";
				elsif iii="110" then 
					ooo<="01000000";
				elsif iii="111" then
					ooo<="10000000";
				end if;
			end process;

end Behavioral;

