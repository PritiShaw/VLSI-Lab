----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:36:41 05/02/2021 
-- Design Name: 
-- Module Name:    sixteenCrossOneMux - Behavioral 
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

entity sixteenCrossOneMux is
    Port ( ii : in  STD_LOGIC_VECTOR (15 downto 0);
           ss : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end sixteenCrossOneMux;

architecture Behavioral of sixteenCrossOneMux is

begin
p1:process(ii,ss)
variable oo:std_logic;
begin
	procc:sixteenCrossOneMuxProcedure(ii(15 downto 0),ss(3 downto 0),oo);
	o<=oo;
end process;

end Behavioral;

