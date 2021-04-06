----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:39 04/06/2021 
-- Design Name: 
-- Module Name:    QuestionTwo_PartA - Behavioral 
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

entity QuestionTwo_PartA is
    Port ( e : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end QuestionTwo_PartA;

architecture Behavioral of QuestionTwo_PartA is

begin
	oo(0)<= e and not(ii(1)) and not(ii(0)); 
	oo(1)<= e and not(ii(1)) and ii(0); 
	oo(2)<= e and (ii(1)) and not(ii(0)); 
	oo(3)<= e and (ii(1)) and ii(0);
end Behavioral;

