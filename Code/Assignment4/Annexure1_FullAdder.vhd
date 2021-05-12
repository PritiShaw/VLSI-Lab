----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:23:12 05/08/2021 
-- Design Name: 
-- Module Name:    Annexure1_FullAdder - Behavioral 
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

entity Annexure1_FullAdder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end Annexure1_FullAdder;

architecture Behavioral of Annexure1_FullAdder is

component halfAdder is
	Port (  aa : in  STD_LOGIC;
           bb : in  STD_LOGIC;
           ss : out  STD_LOGIC;
           cc : out  STD_LOGIC);
end component;

signal c1,s1,c2,s2:std_logic;

begin
comp1:halfAdder port map(b,c,c1,s1);
comp2:halfAdder port map(a,s1,c2,s2);
p1:process(c1, c2)
	begin
			sum<=s2;
			carry<=c1 or c2;
	end process;
end Behavioral;

