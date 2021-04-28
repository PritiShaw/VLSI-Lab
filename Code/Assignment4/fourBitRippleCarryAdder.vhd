----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:03 04/28/2021 
-- Design Name: 
-- Module Name:    fourBitRippleCarryAdder - Behavioral 
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

entity fourBitRippleCarryAdder is
    Port ( ain : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           sout : out  STD_LOGIC_VECTOR (4 downto 0));
end fourBitRippleCarryAdder;

architecture Behavioral of fourBitRippleCarryAdder is

begin
	p1:process(ain,bin,cin)
	variable ss:std_logic_vector(4 downto 0);
	begin 
			proc1: fourBitRippleCarryAdderProcedure(ain(3 downto 0),bin(3 downto 0),cin,ss);
			sout<=ss;
	end process;
end Behavioral;