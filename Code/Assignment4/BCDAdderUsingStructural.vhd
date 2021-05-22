----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:09 05/22/2021 
-- Design Name: 
-- Module Name:    BCDAdderUsingStructural - Behavioral 
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

entity BCDAdderUsingStructural is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end BCDAdderUsingStructural;

architecture Behavioral of BCDAdderUsingStructural is

component fourBitRippleCarryUsingStructural is
    Port ( a_in : in  STD_LOGIC_VECTOR (3 downto 0);
           b_in : in  STD_LOGIC_VECTOR (3 downto 0);
           c_in : in  STD_LOGIC;
           s_out : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

signal p,q:std_logic_vector(4 downto 0);
signal c:std_logic_vector(3 downto 0);
signal z:std_logic;

begin
			c1: fourBitRippleCarryUsingStructural port map (a,b,'0',p);
			z <= p(4) or (p(3) and p(2)) or (p(3) and p(1));
			c <= '0' & z & z & '0';
			c2: fourBitRippleCarryUsingStructural port map(p(3 downto 0),c,'0',q);
			s(3 downto 0) <= q(3 downto 0);
			s(4) <= z;
end Behavioral;