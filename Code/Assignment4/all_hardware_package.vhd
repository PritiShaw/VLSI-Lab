--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package all_hardware_package is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
	procedure halfAdderProcedure(a:in std_logic; b:in std_logic; c:out std_logic; s:out std_logic);
	procedure decimalToBinaryProcedure(decimal:in integer; numberOfBits:in integer; binary:out std_logic_vector);
	procedure fullAdderProcedure(a:in std_logic; b:in std_logic; c:in std_logic; cout:out std_logic; sum:out std_logic);
	procedure fourBitRippleCarryAdderProcedure(a:in std_logic_vector;b:in std_logic_vector;cin:in std_logic;s:out std_logic_vector);
	procedure adderSubtractorProcedure(a:in std_logic_vector;b:in std_logic_vector;c:in std_logic;s:out std_logic_vector);
	procedure bcdAdderProcedure(a:in std_logic_vector;b:in std_logic_vector;s:out std_logic_vector);

end all_hardware_package;

package body all_hardware_package is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;

	procedure halfAdderProcedure(a:in std_logic; b:in std_logic; c:out std_logic; s:out std_logic) is
	begin
			s:= a xor b;
			c:= a and b;
	end procedure;
	
	procedure decimalToBinaryProcedure(decimal:in integer; numberOfBits:in integer; binary:out std_logic_vector) is
	variable deci:integer;
	variable bitPosition:integer;
	begin
			deci:=decimal;
			bitPosition:=0;
			while(bitPosition<numberOfBits) loop
				if (deci rem 2)=0 then
					binary(bitPosition):='0';
				elsif (deci rem 2)=1 then
					binary(bitPosition):='1';
				end if;
				deci:=deci/2;
				bitPosition:=bitPosition+1;
			end loop;
	end procedure;
	
	procedure fullAdderProcedure(a:in std_logic; b:in std_logic; c:in std_logic; cout:out std_logic; sum:out std_logic) is
	variable cc,ss,ccc,sss:std_logic;
	begin
			proc1:halfAdderProcedure(b,c,cc,ss);
			proc2:halfAdderProcedure(a,ss,ccc,sss);
			cout:=cc or ccc;
			sum:=sss;
	end procedure;
	
	procedure fourBitRippleCarryAdderProcedure(a:in std_logic_vector;b:in std_logic_vector;cin:in std_logic;s:out std_logic_vector) is
	variable c:std_logic_vector(4 downto 0);
	variable k:integer;
	begin
			c(0):=cin;
			for k in 0 to 3 loop
					prock:fullAdderProcedure(a(k),b(k),c(k),c(k+1),s(k));
			end loop;
			s(4):=c(4);
	end procedure;
	
	procedure adderSubtractorProcedure(a:in std_logic_vector;b:in std_logic_vector;c:in std_logic;s:out std_logic_vector) is
	variable p:std_logic_vector(3 downto 0);
	variable ss:std_logic_vector(4 downto 0);
	begin
			p(3 downto 0):=b(3 downto 0) xor (c & c & c & c);
			proc3:fourBitRippleCarryAdderProcedure(a(3 downto 0),p(3 downto 0),c,ss(4 downto 0));
			if c='1' then
					if ss(4)='1' then
							ss(4):='0';
					elsif ss(4)='0' then 
							ss(4):='1';
					end if;
			end if;
			s:=ss;
	end procedure;
	
	procedure bcdAdderProcedure(a:in std_logic_vector;b:in std_logic_vector;s:out std_logic_vector) is
	variable p:std_logic_vector(4 downto 0);
	variable q:std_logic_vector(3 downto 0);
	variable c,z:std_logic;
	begin
			c:='0';
			proc4:fourBitRippleCarryAdderProcedure(a(3 downto 0),b(3 downto 0),c,p(4 downto 0));
			z:=p(4) or (p(3) and p(2)) or (p(3) and p(1));
			q:=c & z & z & c;
			proc5:fourBitRippleCarryAdderProcedure(p(3 downto 0),q(3 downto 0),c,s(4 downto 0));
			s(4):=z;
	end procedure;
end all_hardware_package;