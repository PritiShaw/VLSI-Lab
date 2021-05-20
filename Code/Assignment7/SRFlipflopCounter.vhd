----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:40 05/16/2021 
-- Design Name: 
-- Module Name:    SRFlipflopCounter - Behavioral 
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

entity SRFlipflopCounter is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end SRFlipflopCounter;

architecture Behavioral of SRFlipflopCounter is

component SRFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           s : in  STD_LOGIC;
           r : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end component;

signal ss,rr: std_logic_vector(2 downto 0);
begin
		ss(2)<=qqbar(2) and qq(1) and qq(0);
		rr(2)<=qq(2) and qq(1) and qq(0);
	
		ss(1)<=qqbar(1) and qq(0);
		rr(1)<=qq(1) and qq(0);
	
		ss(0)<=qqbar(0);
		rr(0)<=qq(0);
		
		gen1: for k in 0 to 2 generate
					comm:SRFlipflop port map(rst,clk,ss(k),rr(k),qq(k),qqbar(k));
		end generate;
end Behavioral;