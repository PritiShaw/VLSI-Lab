----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:10:37 05/19/2021 
-- Design Name: 
-- Module Name:    TFlipflop - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end TFlipflop;

architecture Behavioral of TFlipflop is
shared variable qt1,qt1bar: std_logic;
begin
p1:process(clk, rst)
begin
		if rst='1' then
				q<='0';
				qbar<='1';
				qt1:='0';
				qt1bar:='1';
		elsif (clk'event) then
				if t='1' then
						q<=qt1bar;
						qbar<=qt1;
						qt1:=q;
						qt1bar:=qbar;
				end if;
		end if;
end process;

end Behavioral;