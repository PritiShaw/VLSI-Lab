----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:11 03/18/2021 
-- Design Name: 
-- Module Name:    QuestionFive - Behavioral 
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

entity QuestionFive is
    Port ( i : in  STD_LOGIC_VECTOR (15 downto 0);
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionFive;

architecture Behavioral of QuestionFive is

component QuestionTwo_Part2 is
	Port ( ii : in STD_LOGIC_VECTOR (3 downto 0);
			 oo : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal p: STD_LOGIC_VECTOR(3 downto 0);
signal a,b,c,d,q: STD_LOGIC_VECTOR(1 downto 0);

begin
c1: QuestionTwo_Part2 port map(i(3 downto 0), a);
c2: QuestionTwo_Part2 port map(i(7 downto 4), b);
c3: QuestionTwo_Part2 port map(i(11 downto 8), c);
c4: QuestionTwo_Part2 port map(i(15 downto 12), d);
c5: QuestionTwo_Part2 port map(p, q);
p(0)<= i(3) or i(2) or i(1) or i(0);
p(1)<= i(7) or i(6) or i(5) or i(4);
p(2)<= i(11) or i(10) or i(9) or i(8);
p(3)<= i(15) or i(14) or i(13) or i(12);
p1:process(i,p,q,a,b,c,d)
	begin
	if i(7 downto 4)="0000" and i(11 downto 8)="0000" and i(15 downto 12)="0000" then
		o<= q & a;
	elsif i(3 downto 0)="0000" and i(11 downto 8)="0000" and i(15 downto 12)="0000" then
		o<= q & b;
	elsif i(3 downto 0)="0000" and i(7 downto 4)="0000" and i(15 downto 12)="0000" then
		o<= q & c;
	elsif i(3 downto 0)="0000" and i(7 downto 4)="0000" and i(11 downto 8)="0000" then
		o<= q & d;
	else
		o<="ZZZZ";
	end if;
	end process;
end Behavioral;