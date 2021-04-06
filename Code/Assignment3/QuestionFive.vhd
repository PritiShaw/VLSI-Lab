----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:50 04/07/2021 
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
    Port ( eeeee : in  STD_LOGIC;
           iiiii : in  STD_LOGIC_VECTOR (3 downto 0);
           oooo : out  STD_LOGIC_VECTOR (15 downto 0));
end QuestionFive;

architecture Behavioral of QuestionFive is

component QuestionTwo_PartB_one is
    Port ( ee : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal p: STD_LOGIC_VECTOR(3 downto 0);

begin
c1: QuestionTwo_PartB_one port map(p(0), iiiii(1 downto 0), oooo(3 downto 0));
c2: QuestionTwo_PartB_one port map(p(1), iiiii(1 downto 0), oooo(7 downto 4));
c3: QuestionTwo_PartB_one port map(p(2), iiiii(1 downto 0), oooo(11 downto 8));
c4: QuestionTwo_PartB_one port map(p(3), iiiii(1 downto 0), oooo(15 downto 12));
c5: QuestionTwo_PartB_one port map(eeeee, iiiii(3 downto 2), p);

end Behavioral;