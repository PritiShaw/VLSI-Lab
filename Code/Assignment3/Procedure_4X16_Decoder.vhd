----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:46 04/22/2021 
-- Design Name: 
-- Module Name:    Procedure_4X16_Decoder - Behavioral 
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

entity Procedure_4X16_Decoder is
    Port ( ii : in  STD_LOGIC_VECTOR (3 downto 0);
           ee : in  STD_LOGIC;
           oo : out  STD_LOGIC_VECTOR (15 downto 0));
end Procedure_4X16_Decoder;

architecture Behavioral of Procedure_4X16_Decoder is

procedure Decoder_2X4_procedure(i:in std_logic_vector;e:in std_logic;o:out std_logic_vector);

procedure Decoder_2X4_procedure(i:in std_logic_vector;e:in std_logic;o:out std_logic_vector) is
	begin
	if e='0' then
		o:="0000";
	elsif e='1' then
		if i="00" then
			o:="0001";
		elsif i="01" then
			o:="0010";
		elsif i="10" then
			o:="0100";
		elsif i="11" then
			o:="1000";
		end if;
	end if;
end procedure;

begin
process(ii,ee)
variable p:std_logic_vector(3 downto 0);
variable k:integer;
variable y:std_logic_vector(15 downto 0);
	begin
		Decoder_2X4_procedure(ii(3 downto 2),ee,p);
		for k in 0 to 3 loop
			Decoder_2X4_procedure(ii(1 downto 0),p(k),y(4*k+3 downto 4*k));
		end loop;
		oo<=y;
	end process;
end Behavioral;