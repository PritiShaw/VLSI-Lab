----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:13 05/22/2021 
-- Design Name: 
-- Module Name:    fourBitRippleCarryUsingStructural - Behavioral 
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

entity fourBitRippleCarryUsingStructural is
    Port ( a_in : in  STD_LOGIC_VECTOR (3 downto 0);
           b_in : in  STD_LOGIC_VECTOR (3 downto 0);
           c_in : in  STD_LOGIC;
           s_out : out  STD_LOGIC_VECTOR (4 downto 0));
end fourBitRippleCarryUsingStructural;

architecture Behavioral of fourBitRippleCarryUsingStructural is

component fullAdder is
    Port ( ain : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sout : out  STD_LOGIC);
end component;

signal c:std_logic_vector(4 downto 0);
begin
		c(0)<=c_in;
		gen: for k in 0 to 3 generate
					prock:fullAdder port map (a_in(k),b_in(k),c(k),c(k+1),s_out(k));
		end generate;
		s_out(4)<=c(4);

end Behavioral;