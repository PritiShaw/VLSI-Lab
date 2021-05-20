----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:05 05/19/2021 
-- Design Name: 
-- Module Name:    TFlipflopDownCounter - Behavioral 
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

entity TFlipflopDownCounter is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qqqq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqqqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end TFlipflopDownCounter;

architecture Behavioral of TFlipflopDownCounter is
shared variable qqqq1, qqqq1bar:std_logic_vector(2 downto 0);
begin
p1:process(clk,rst)
variable q5,q5bar:std_logic_vector(2 downto 0);
begin
	if rst='1' then
		qqqq<="111";
		qqqqbar<="000";
		qqqq1:="111";
		qqqq1bar:="000";
	elsif (clk'event and clk='1') then
		procc:tFlipFlopDownCounterProcedure(rst,clk,q5(2 downto 0),q5bar(2 downto 0),qqqq1(2 downto 0),qqqq1bar(2 downto 0));
		qqqq(2 downto 0)<=q5(2 downto 0);
		qqqqbar(2 downto 0)<=q5bar(2 downto 0);
		qqqq1(2 downto 0) := q5(2 downto 0);
		qqqq1bar(2 downto 0):=q5bar(2 downto 0);
	end if;
end process;
end Behavioral;