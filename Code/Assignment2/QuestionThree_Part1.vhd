----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:55 03/16/2021 
-- Design Name: 
-- Module Name:    QuestionThree_Part1 - Behavioral 
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

entity QuestionThree_Part1 is
    Port ( i : in  STD_LOGIC_VECTOR (7 downto 0);
           o : out  STD_LOGIC_VECTOR (2 downto 0));
end QuestionThree_Part1;

architecture Behavioral of QuestionThree_Part1 is

begin
o(2)<=i(7) or i(6) or i(5) or i(4);
o(1)<=i(7) or i(6) or i(3) or i(2);
o(0)<=i(7) or i(5) or i(3) or i(1);
end Behavioral;

