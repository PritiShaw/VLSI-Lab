----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:24 05/07/2021 
-- Design Name: 
-- Module Name:    fourBitComparator - Behavioral 
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

entity fourBitComparator is
    Port ( aa : in  STD_LOGIC_VECTOR (3 downto 0);
           bb : in  STD_LOGIC_VECTOR (3 downto 0);
           ss : out  STD_LOGIC_VECTOR (2 downto 0));
end fourBitComparator;

architecture Behavioral of fourBitComparator is

begin
p1:process(aa,bb)
variable sss:std_logic_vector(2 downto 0);
begin
		fourBitComparatorProcedure(aa,bb,sss);
		ss<=sss;
end process;
end Behavioral;