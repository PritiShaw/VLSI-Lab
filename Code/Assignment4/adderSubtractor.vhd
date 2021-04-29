----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:50 04/28/2021 
-- Design Name: 
-- Module Name:    adderSubtractor - Behavioral 
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
use work.all_hardware_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adderSubtractor is
    Port ( aa : in  STD_LOGIC_VECTOR (3 downto 0);
           bb : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end adderSubtractor;

architecture Behavioral of adderSubtractor is

begin
p1:process(aa,bb,cin)
variable ss:std_logic_vector(4 downto 0);
begin
		proc0:adderSubtractorProcedure(aa(3 downto 0),bb(3 downto 0),cin,ss(4 downto 0));
		s<=ss;
end process;
end Behavioral;

