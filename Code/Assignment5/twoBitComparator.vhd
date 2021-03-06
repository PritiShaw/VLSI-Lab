----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:30 05/07/2021 
-- Design Name: 
-- Module Name:    twoBitComparator - Behavioral 
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

entity twoBitComparator is
    Port ( a : in b STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           s : out  STD_LOGIC_VECTOR (2 downto 0));
end twoBitComparator;

architecture Behavioral of twoBitComparator is

begin
	process(a,b)
	variable ss:std_logic_vector(2 downto 0);
	begin
			twoBitComparatorProcedure(a(1 downto 0),b(1 downto 0),ss(2 downto 0));
			s(2 downto 0)<=ss(2 downto 0);
	end process;
end Behavioral;