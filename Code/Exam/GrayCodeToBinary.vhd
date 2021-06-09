----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:13 06/08/2021 
-- Design Name: 
-- Module Name:    GrayCodeToBinary - Behavioral 
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

entity GrayCodeToBinary is
    Port ( g : in  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (3 downto 0));
end GrayCodeToBinary;

architecture Behavioral of GrayCodeToBinary is

begin
b(3)<= g(3);
b(2)<= g(3) xor g(2);
b(1)<=  g(3) xor g(2) xor g(1);
b(0) <= g(3) xor g(2) xor g(1) xor g(0);
end Behavioral;

