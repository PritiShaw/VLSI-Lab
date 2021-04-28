----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:00 04/24/2021 
-- Design Name: 
-- Module Name:    fullAdder - Behavioral 
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

entity fullAdder is
    Port ( ain : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is

begin
		p1:process(ain,bin,cin)
		variable ccout,ssum:std_logic;
		begin
				proc1:fullAdderProcedure(ain,bin,cin,ccout,ssum);
				cout<=ccout;
				sout<=ssum;
		end process;
end Behavioral;

