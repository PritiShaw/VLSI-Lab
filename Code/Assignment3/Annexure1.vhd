----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:07:53 04/07/2021 
-- Design Name: 
-- Module Name:    Annexure1 - Behavioral 
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

entity Annexure1 is
    Port ( enable : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end Annexure1;

architecture Behavioral of Annexure1 is

component QuestionTwo_PartB_one is
    Port ( ee : in  STD_LOGIC;
           ii : in  STD_LOGIC_VECTOR (1 downto 0);
           oo : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal p: STD_LOGIC_VECTOR(3 downto 0);

begin
c4: QuestionTwo_PartB_one port map(enable, input(3 downto 2), p);
gen1: for k in 0 to 3 generate
	cc: QuestionTwo_PartB_one port map(p(k), input(1 downto 0), output(((4*k)+3) downto (4*k)));
end generate;
end Behavioral;