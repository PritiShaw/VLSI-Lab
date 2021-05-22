----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:10:55 05/22/2021 
-- Design Name: 
-- Module Name:    fourBitAdderSubtractorusingStructural - Behavioral 
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

entity fourBitAdderSubtractorusingStructural is
    Port ( ain : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end fourBitAdderSubtractorusingStructural;

architecture Behavioral of fourBitAdderSubtractorusingStructural is

component fourBitRippleCarryUsingStructural is
    Port ( a_in : in  STD_LOGIC_VECTOR (3 downto 0);
           b_in : in  STD_LOGIC_VECTOR (3 downto 0);
           c_in : in  STD_LOGIC;
           s_out : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

	signal p:std_logic_vector(3 downto 0);
	signal ss:std_logic_vector(4 downto 0);
	
begin
		genk: for k in 0 to 3 generate
			p(k) <= bin(k) xor cin;
		end generate;
		
		gen: fourBitRippleCarryUsingStructural port map (ain, p, cin, ss);
		s(3 downto 0) <= ss(3 downto 0);
		s(4) <= ss(4) xor cin;
		
end Behavioral;