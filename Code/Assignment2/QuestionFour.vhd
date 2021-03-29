----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:10 03/16/2021 
-- Design Name: 
-- Module Name:    QuestionFour - Behavioral 
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

entity QuestionFour is
    Port ( iii : in  STD_LOGIC_VECTOR (7 downto 0);
           ooo : out  STD_LOGIC_VECTOR (2 downto 0));
end QuestionFour;

architecture Behavioral of QuestionFour is
component QuestionTwo_Part2 is
	Port ( ii : in STD_LOGIC_VECTOR (3 downto 0);
			 oo : out STD_LOGIC_VECTOR (1 downto 0));
end component;

component QuestionOne is
	Port ( i : in STD_LOGIC_VECTOR (1 downto 0);
			 o : out STD_LOGIC );
end component;

signal a,b,p: STD_LOGIC_VECTOR(1 downto 0);
signal q: STD_LOGIC;

begin
c1: QuestionTwo_Part2 port map(iii(3 downto 0), a);
c2: QuestionTwo_Part2 port map(iii(7 downto 4), b);
c3: QuestionOne port map(p, q);
p(0)<= iii(0) or iii(1) or iii(2) or iii(3);
p(1)<= iii(4) or iii(5) or iii(6) or iii(7);
p1:process(iii,p,q,a,b)
	begin
	if iii(7 downto 4)="0000" then
		ooo<= q & a;
	elsif iii(3 downto 0)="0000" then
		ooo<= q & b;
	else 
		ooo<= "ZZZ";
	end if;
	end process;
end Behavioral;