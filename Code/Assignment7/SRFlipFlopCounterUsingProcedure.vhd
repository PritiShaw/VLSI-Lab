----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:30 05/18/2021 
-- Design Name: 
-- Module Name:    SRFlipFlopCounterUsingProcedure - Behavioral 
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

entity SRFlipFlopCounterUsingProcedure is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qqq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end SRFlipFlopCounterUsingProcedure;

architecture Behavioral of SRFlipFlopCounterUsingProcedure is
shared variable qqqqq1, qqqqq1bar:std_logic_vector(2 downto 0);
begin
p1:process(clk, rst)
variable q6,q6bar:std_logic_vector(2 downto 0);
begin
		if rst='1' then
		qqq<="000";
		qqqbar<="111";
		qqqqq1:="000";
		qqqqq1bar:="111";
	elsif (clk'event and clk='1') then
		procc:SRFlipFlopUpCounterProcedure(rst,clk,q6(2 downto 0),q6bar(2 downto 0),qqqqq1(2 downto 0),qqqqq1bar(2 downto 0));
		qqq(2 downto 0)<=q6(2 downto 0);
		qqqbar(2 downto 0)<=q6bar(2 downto 0);
		qqqqq1(2 downto 0) := q6(2 downto 0);
		qqqqq1bar(2 downto 0):=q6bar(2 downto 0);
	end if;
end process;
end Behavioral;

