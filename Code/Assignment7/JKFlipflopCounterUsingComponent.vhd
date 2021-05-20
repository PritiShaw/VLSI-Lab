----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:14 05/18/2021 
-- Design Name: 
-- Module Name:    JKFlipflopCounterUsingComponent - Behavioral 
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

entity JKFlipflopCounterUsingComponent is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end JKFlipflopCounterUsingComponent;

architecture Behavioral of JKFlipflopCounterUsingComponent is
component JKFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end component;
signal jj,kk:std_logic_vector(2 downto 0);
begin
	jj(2)<=qq(1) and qq(0);
	kk(2)<=qq(1) and qq(0);
	
	jj(1)<=qq(0);
	kk(1)<=qq(0);
	
	jj(0)<='1';
	kk(0)<='1';
	
	gen1: for k in 0 to 2 generate
		comm:JKFlipflop port map(rst,clk,jj(k),kk(k),qq(k),qqbar(k));
	end generate;
end Behavioral;