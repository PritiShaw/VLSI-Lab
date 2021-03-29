----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:17 03/10/2021 
-- Design Name: 
-- Module Name:    Logic_Gates - Behavioral 
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

entity Logic_Gates is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC_VECTOR (7 downto 0));
end Logic_Gates;

architecture Behavioral of Logic_Gates is

begin
	c(7) <= a and b;
	c(6) <= a or b;
	c(5) <= not a;
	c(4) <= not b;
	c(3) <= a nand b;
	c(2) <= a nor b;
	c(1) <= a xor b;
	c(0) <= a xnor b;
end Behavioral;