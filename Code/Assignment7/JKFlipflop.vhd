----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:36 05/17/2021 
-- Design Name: 
-- Module Name:    JKFlipflop - Behavioral 
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

entity JKFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end JKFlipflop;

architecture Behavioral of JKFlipflop is
shared variable qjk,qjkbar:std_logic;
begin
p1:process(clk,rst)

begin
		if rst='1' then
				q<='0';
				qbar<='1';
				qjk:='0';
				qjkbar:='1';
		elsif (clk'event) then
			if (j='0' and k='0') then
					q<=qjk;
					qbar<=qjkbar;
			elsif (j='0' and k='1') then
					q<='0';
					qbar<='1';
					qjk:='0';
					qjkbar:='1';
			elsif (j='1' and k='0') then
					q<='1';
					qbar<='0';
					qjk:='1';
					qjkbar:='0';
			elsif (j='1' and k='1') then
					q<=qjkbar;
					qbar<=qjk;
					qjk:=q;
					qjkbar:=qbar;
			end if;
		end if;
end process;

end Behavioral;