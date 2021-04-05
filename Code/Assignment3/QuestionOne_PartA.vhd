----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:43 04/01/2021 
-- Design Name: 
-- Module Name:    QuestionOne_PartA - Behavioral 
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

entity QuestionOne_PartA is
    Port ( e : in  STD_LOGIC;
           i : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (1 downto 0));
end QuestionOne_PartA;

architecture Behavioral of QuestionOne_PartA is

begin
o(0) <= e and not(i);
o(1) <= e and i;
end Behavioral;

