----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:48:20 04/22/2021 
-- Design Name: 
-- Module Name:    Procedure_16X4_Encoder - Behavioral 
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

entity Procedure_16X4_Encoder is
    Port ( ii : in  STD_LOGIC_VECTOR (15 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end Procedure_16X4_Encoder;

architecture Behavioral of Procedure_16X4_Encoder is

procedure Encoder_4X2_procedure(i:in std_logic_vector;o:out std_logic_vector);

procedure Encoder_4X2_procedure(i:in std_logic_vector;o:out std_logic_vector) is
begin
	if i="0001" then
		o:="00";
	elsif i="0010" then
		o:="01";
	elsif i="0100" then
		o:="10";
	elsif i="1000" then
		o:="11";
	else
		o:="ZZ";
	end if;
end procedure;

begin
	process(ii)
	variable p:std_logic_vector(3 downto 0);
	variable k,j:integer;
	variable y:std_logic_vector(9 downto 0);
	begin
	for k in 0 to 3 loop
		p(k):='0';
		for j in 0 to 3 loop
			p(k):=p(k) or ii(4*k+j);
		end loop;
		Encoder_4X2_procedure(ii(4*k+3 downto 4*k),y(2*k+1 downto 2*k));
	end loop;
	Encoder_4X2_procedure(p,y(9 downto 8));
	if y(9 downto 8)="ZZ" then
		oo<="ZZZZ";
	else
		for k in 0 to 3 loop
			if p(k)='1' then
				if y(2*k+1 downto 2*k)="ZZ" then
					oo<="ZZZZ";
				else
					oo<=y(9 downto 8) & y(2*k+1 downto 2*k);
				end if;
			end if;
		end loop;
	end if;
end process;
end Behavioral; 