----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:34 05/01/2021 
-- Design Name: 
-- Module Name:    twoCrossOneMux - Behavioral 
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

entity twoCrossOneMux is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC);
end twoCrossOneMux;

architecture Behavioral of twoCrossOneMux is

begin
p1:process(i,s)
	variable oo:std_logic;
	begin
		proc: twoCrossOneMuxProcedure(i(1 downto 0),s,oo);
		o<=oo;
	end process;

end Behavioral;

