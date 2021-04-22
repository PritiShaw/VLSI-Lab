----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:50 04/22/2021 
-- Design Name: 
-- Module Name:    Function_4X16_Decoder - Behavioral 
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

entity Function_4X16_Decoder is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           oo : out  STD_LOGIC_VECTOR (15 downto 0);
           ee : in  STD_LOGIC);
end Function_4X16_Decoder;

architecture Behavioral of Function_4X16_Decoder is

function Decoder_2X4_function(i:in std_logic_vector;e:in std_logic)return std_logic_vector;

function Decoder_2X4_function(i:in std_logic_vector;e:in std_logic)return std_logic_vector is
	variable a:std_logic_vector(3 downto 0);
	begin
	if e='0' then
		a:="0000";
	elsif e='1' then
		if i="00" then
			a:="0001";
		elsif i="01" then
			a:="0010";
		elsif i="10" then
			a:="0100";
		elsif i="11" then
			a:="1000";
		end if;
	end if;
	return a;
end function;

begin
process(ii,ee)
variable p:std_logic_vector(3 downto 0);
variable k:integer;
variable y:std_logic_vector(15 downto 0);
	begin
	p:=Decoder_2X4_function(ii(3 downto 2),ee);
	for k in 0 to 3 loop
		y(4*k+3 downto 4*k):=Decoder_2X4_function(ii(1 downto 0),p(k));
	end loop;
	oo<=y;
	end process;
end Behavioral;