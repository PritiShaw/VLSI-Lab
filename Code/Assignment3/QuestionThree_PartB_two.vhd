----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:18 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionThree_PartB_two - Behavioral 
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

entity QuestionThree_PartB_two is
    Port ( e : in  STD_LOGIC;
           iii : in  STD_LOGIC_VECTOR (2 downto 0);
           ooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionThree_PartB_two;

architecture Behavioral of QuestionThree_PartB_two is

begin
p2:process(e,iii)
	begin
		case e is 
			when '0' => ooo<="00000000";
			when '1' => 
			case iii is
				when "000" => ooo<="00000001";
				when "001" => ooo<="00000010";
				when "010" => ooo<="00000100";
				when "011" => ooo<="00001000";
				when "100" => ooo<="00010000";
				when "101" => ooo<="00100000";
				when "110" => ooo<="01000000";
				when "111" => ooo<="10000000";
				when others =>ooo<="ZZZZZZZZ";
			end case;
			when others =>ooo<="ZZZZZZZZ";
		end case;
	end process;

end Behavioral;

