----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:57:32 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionThree_PartA - Behavioral 
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

entity QuestionThree_PartA is
    Port ( e : in  STD_LOGIC;
           iii : in  STD_LOGIC_VECTOR (2 downto 0);
           ooo : out  STD_LOGIC_VECTOR (7 downto 0));
end QuestionThree_PartA;

architecture Behavioral of QuestionThree_PartA is

begin
ooo(7)<= e and iii(2) and iii(1) and iii(0); 
ooo(6)<= e and iii(2) and iii(1) and (not(iii(0))); 
ooo(5)<= e and iii(2) and iii(0) and not(iii(1)); 
ooo(4)<= e and iii(2) and (iii(1) nor iii(0)); 
ooo(3)<= e and iii(1) and iii(0) and (not iii(2)); 
ooo(2)<= e and iii(1) and (iii(2) nor iii(0)); 
ooo(1)<= e and iii(0) and (iii(2) nor iii(1)); 
ooo(0)<= e and not(iii(0) or iii(1) or iii(2));
end Behavioral;

