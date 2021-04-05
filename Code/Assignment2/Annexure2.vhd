----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:58 04/01/2021 
-- Design Name: 
-- Module Name:    Annexure2 - Behavioral 
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

entity Annexure2 is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end Annexure2;

architecture Behavioral of Annexure2 is
component QuestionTwo_Part2 is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           oo : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
signal p: std_logic_vector(3 downto 0);

begin
p(0) <= input(0) or input(1) or input(2) or input(3);
p(1) <= input(4) or input(5) or input(6) or input(7);
p(2) <= input(8) or input(9) or input(10) or input(11);
p(3) <= input(12) or input(13) or input(14) or input(15);
c5: QuestionTwo_Part2 port map(p, output(3 downto 2));

gen1: for k in 0 to 3 generate
	cc: QuestionTwo_Part2 port map(input(((4*k)+3) downto (4*k)), output(1 downto 0));
end generate;
end Behavioral;