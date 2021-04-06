----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:46 04/06/2021 
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
    Port ( eeee : in  STD_LOGIC;
           iiii : in  STD_LOGIC_VECTOR (2 downto 0);
           oooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionFour;

architecture Behavioral of QuestionFour is

component QuestionTwo_PartB_one is
    Port ( ee : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component QuestionOne_PartB_One is
    Port ( e : in  STD_LOGIC;
           i : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

signal p: STD_LOGIC_VECTOR(1 downto 0);

begin
c1: QuestionTwo_PartB_one port map(p(0), iiii(1 downto 0), oooo(3 downto 0));
c2: QuestionTwo_PartB_one port map(p(1), iiii(1 downto 0), oooo(7 downto 4));
c3: QuestionOne_PartB_One port map(eeee, iiii(2), p);

end Behavioral;

