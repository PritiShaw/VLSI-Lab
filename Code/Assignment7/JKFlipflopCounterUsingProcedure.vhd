----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:59 05/18/2021 
-- Design Name: 
-- Module Name:    JKFlipflopCounterUsingProcedure - Behavioral 
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
use work.allHardwarePackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JKFlipflopCounterUsingProcedure is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qqq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end JKFlipflopCounterUsingProcedure;

architecture Behavioral of JKFlipflopCounterUsingProcedure is

shared variable qqq1, qqq1bar:std_logic_vector(2 downto 0);

begin
p1:process(clk,rst)
variable q4,q4bar:std_logic_vector(2 downto 0);
begin
	if rst='1' then
		qqq<="000";
		qqqbar<="111";
		qqq1:="000";
		qqq1bar:="111";
	elsif (clk'event and clk='1') then
		procc:JKFlipFlopUpCounterProcedure(rst,clk,q4(2 downto 0),q4bar(2 downto 0),qqq1(2 downto 0),qqq1bar(2 downto 0));
		qqq(2 downto 0)<=q4(2 downto 0);
		qqqbar(2 downto 0)<=q4bar(2 downto 0);
		qqq1(2 downto 0) := q4(2 downto 0);
		qqq1bar(2 downto 0):=q4bar(2 downto 0);
	end if;
end process;
end Behavioral;

