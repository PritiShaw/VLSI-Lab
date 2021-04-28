----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:54 04/24/2021 
-- Design Name: 
-- Module Name:    halfAdder - Behavioral 
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
use work.all_hardware_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity halfAdder is
    Port ( aa : in  STD_LOGIC;
           bb : in  STD_LOGIC;
           cc : out  STD_LOGIC;
           ss : out  STD_LOGIC);
end halfAdder;

architecture Behavioral of halfAdder is

begin
	p1:process(aa, bb)
	variable carry,sum:std_logic;
	begin
		proca: halfAdderProcedure(aa,bb,carry,sum);
		cc<=carry;
		ss<=sum;
	end process;
end Behavioral;

