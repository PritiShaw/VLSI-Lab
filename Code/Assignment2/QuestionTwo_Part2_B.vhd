----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:12 03/29/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_Part2_B - Behavioral 
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

entity QuestionTwo_Part2_B is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           oo : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionTwo_Part2_B;

architecture Behavioral of QuestionTwo_Part2_B is

begin
p2:process(ii)
	begin
	case ii is
		when "0001" => oo<="00";
		when "0010" => oo<="01";
		when "0010" => oo<="10";
		when "1000" => oo<="11";
		when others => oo<="ZZ";
	end case;
end process;
end Behavioral;