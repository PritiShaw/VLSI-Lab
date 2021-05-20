----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:45 05/14/2021 
-- Design Name: 
-- Module Name:    SRFlipflop - Behavioral 
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

entity SRFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end SRFlipflop;

architecture Behavioral of SRFlipflop is

shared variable q1,q1bar:std_logic;

begin
p1:process(clk,rst)

begin
		if rst='1' then
			q<='0';
			qbar<='1';
			q1:='0';
			q1bar:='1';
		elsif (clk'event and clk='1') then
			if (s='0' and r='0') then
				q<=q1;
				qbar<=q1bar;
			elsif (s='0' and r='1') then
				q<='0';
				qbar<='1';
				q1:='0';
				q1bar:='1';
			elsif (s='1' and r='0') then
				q<='1';
				qbar<='0';
				q1:='1';
				q1bar:='0';
			elsif (s='1' and r='1') then
				q<='Z';
				qbar<='Z';
				q1:='Z';
				q1bar:='Z';
			end if;
		end if;
end process;
end Behavioral;