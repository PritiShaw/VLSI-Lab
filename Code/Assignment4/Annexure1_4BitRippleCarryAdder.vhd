----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:53:08 05/08/2021 
-- Design Name: 
-- Module Name:    Annexure1_4BitRippleCarryAdder - Behavioral 
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

entity Annexure1_4BitRippleCarryAdder is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end Annexure1_4BitRippleCarryAdder;

architecture Behavioral of Annexure1_4BitRippleCarryAdder is

component fullAdder is
	Port (  ain : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;

variable cc:std_logic_vector(4 downto 0);
variable k:integer;

begin
p1:process(a,b,c)
	begin
		cc(0):=c;
		for k in 0 to 3 loop
				ck: fullAdder port map(a(k),b(k),cc(k),cc(k+1),s(k));
		end loop;
		s(4)<=cc(4);
	end process;
end Behavioral;

