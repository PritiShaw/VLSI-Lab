----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:54 05/19/2021 
-- Design Name: 
-- Module Name:    TFlipflopCounterUsingComponent - Behavioral 
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

entity TFlipflopCounterUsingComponent is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           qq : inout  STD_LOGIC_VECTOR (2 downto 0);
           qqbar : inout  STD_LOGIC_VECTOR (2 downto 0));
end TFlipflopCounterUsingComponent;

architecture Behavioral of TFlipflopCounterUsingComponent is
component TFlipflop is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end component;
signal tt:std_logic_vector(2 downto 0);
begin
		tt(0)<='1';
		tt(1)<=qq(0);
		tt(2)<=qq(1) and qq(0);
		gen2: for k in 0 to 2 generate
				comm: TFlipflop port map(rst, clk, tt(k), qqbar(k), qq(k));
		end generate;
end Behavioral;

