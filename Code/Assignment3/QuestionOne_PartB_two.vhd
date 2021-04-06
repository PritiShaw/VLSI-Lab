----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:52 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionOne_PartB_two - Behavioral 
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

entity QuestionOne_PartB_two is
    Port ( e : in  STD_LOGIC;
           i : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionOne_PartB_two;

architecture Behavioral of QuestionOne_PartB_two is

begin
p2:process(e,i)
	begin
		case e is 
			when '0' => o<="00";
			when '1' => 
			case i is
				when '0' => o<="01";
				when '1' => o<="10";
				when others =>o<="ZZ";
			end case;
			when others =>o<="ZZ";
		end case;
	end process;
end Behavioral;