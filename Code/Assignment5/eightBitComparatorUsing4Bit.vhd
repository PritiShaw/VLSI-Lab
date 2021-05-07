----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:37 05/07/2021 
-- Design Name: 
-- Module Name:    eightBitComparatorUsing4Bit - Behavioral 
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

entity eightBitComparatorUsing4Bit is
    Port ( aaa : in  STD_LOGIC_VECTOR (7 downto 0);
           bbb : in  STD_LOGIC_VECTOR (7 downto 0);
           sss : out  STD_LOGIC_VECTOR (2 downto 0));
end eightBitComparatorUsing4Bit;

architecture Behavioral of eightBitComparatorUsing4Bit is

begin
	p1:process(aaa,bbb)
	variable s:std_logic_vector(2 downto 0);
	begin
		eightBitComparatorUsing4BitProcedure(aaa(7 downto 0),bbb(7 downto 0),s);
		sss<=s;
	end process;

end Behavioral;

