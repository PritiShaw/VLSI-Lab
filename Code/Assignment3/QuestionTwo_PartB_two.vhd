----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:00 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_PartB_two - Behavioral 
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

entity QuestionTwo_PartB_two is
    Port ( e : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionTwo_PartB_two;

architecture Behavioral of QuestionTwo_PartB_two is

begin
p2:process(e,ii)
	begin
		case e is 
			when '0' => oo<="0000";
			when '1' => 
			case ii is
				when "00" => oo<="0001";
				when "01" => oo<="0010";
				when "10" => oo<="0100";
				when "11" => oo<="1000";
				when others =>oo<="ZZZZ";
			end case;
			when others =>oo<="ZZZZ";
		end case;
	end process;
end Behavioral;

