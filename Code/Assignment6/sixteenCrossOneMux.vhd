----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:20 05/07/2021 
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
    Port ( i : in  STD_LOGIC_VECTOR (15 downto 0);
			  s : in  STD_LOGIC_VECTOR(3 downto 0);
           o : out STD_LOGIC);
end sixteenCrossOneMux;

architecture Behavioral of sixteenCrossOneMux is

begin
	process(i, s)
		variable oo: STD_LOGIC;
		begin
			sixteenCrossOneMuxProcedure(i,s,oo);
			o<=oo;
		end process;
end Behavioral;