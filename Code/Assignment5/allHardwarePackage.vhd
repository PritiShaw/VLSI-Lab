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

package allHardwarePackage is

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
	procedure decimalToBinaryProcedure(decimal:in integer;numberOfBits:in integer;binary:out std_logic_vector);
	procedure twoBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s: out std_logic_vector);
	procedure fourBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s: out std_logic_vector);
	procedure eightBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s: out std_logic_vector);
	procedure eightBitComparatorUsing4BitProcedure(a:in std_logic_vector;b:in std_logic_vector;s: out std_logic_vector);

end allHardwarePackage;

package body allHardwarePackage is

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

	procedure decimalToBinaryProcedure(decimal:in integer;numberOfBits:in integer;binary:out std_logic_vector) is
	variable deci:integer;
	variable bitPosition:integer;
	begin
		deci:=decimal;
		bitPosition:=0;
		while (bitPosition<numberOfBits) loop
			if (deci rem 2)=0 then
				binary(bitPosition):='0';
			elsif (deci rem 2)=1 then
				binary(bitPosition):='1';
			end if;
			deci:=deci/2;
			bitPosition:=bitPosition+1;
		end loop;
	end procedure;
	
	procedure twoBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s:out std_logic_vector) is
	begin
		s(2):=(a(1) and not(b(1))) or ((a(1) xnor b(1)) and (a(0) and not(b(0))));
		s(1):=(a(1) xnor b(1)) and (a(0) xnor b(0));
		s(0):=(not(a(1)) and b(1)) or ((a(1) xnor b(1)) and (not(a(0)) and b(0)));
	end procedure;
	
	procedure logicComparatorProcedure(t:in std_logic_vector; r:in std_logic_vector; s:out std_logic_vector) is
	begin
		s(2):=t(2) or (t(1) and r(2));
		s(1):=t(1) and r(1);
		s(0):=t(0) or (t(1) and r(0));
	end procedure;
	
	procedure fourBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s:out std_logic_vector) is
	variable p,q,c,d:std_logic_vector(1 downto 0);
	variable t,r,ss:std_logic_vector(2 downto 0);
	begin
		p(1 downto 0):= a(3 downto 2);
		q(1 downto 0):= b(3 downto 2);
		
		proc1:twoBitComparatorProcedure(p(1 downto 0),q(1 downto 0),t(2 downto 0));
		c(1 downto 0):=a(1 downto 0);
		d(1 downto 0):=b(1 downto 0);
		
		proc2:twoBitComparatorProcedure(c(1 downto 0),d(1 downto 0),r(2 downto 0));
		
		proc3:logicComparatorProcedure(t(2 downto 0),r(2 downto 0),ss(2 downto 0));
		s(2 downto 0):=ss(2 downto 0);
	end procedure;
	
	procedure eightBitComparatorProcedure(a:in std_logic_vector;b:in std_logic_vector;s:out std_logic_vector) is
	variable j,k:integer;
	variable aa,bb:std_logic_vector(1 downto 0);
	variable ss,gg,ee,ff,t,e,f:std_logic_vector(2 downto 0);
	variable g:std_logic_vector(5 downto 0);
	variable tt:std_logic_vector(11 downto 0);
	begin
		for k in 0 to 3 loop
			aa(1 downto 0):=a(((2*k)+1) downto (2*k));
			bb(1 downto 0):=b(((2*k)+1) downto (2*k));
			prock:twoBitComparatorProcedure(aa(1 downto 0),bb(1 downto 0),t(2 downto 0));
			tt(((3*k)+2) downto (3*k)):=t(2 downto 0);			
		end loop;
		for j in 0 to 1 loop
			e(2 downto 0):=tt(((6*j)+5) downto ((6*j)+3));
			f(2 downto 0):=tt(((6*j)+2) downto (6*j));
			procj:logicComparatorProcedure(e(2 downto 0),f(2 downto 0),gg(2 downto 0));
			g(((3*j)+2) downto (3*j)):=gg(2 downto 0);
		end loop;
		
		ee(2 downto 0):=g(5 downto 3);
		ff(2 downto 0):=g(2 downto 0);
		proco:logicComparatorProcedure(ee(2 downto 0),ff(2 downto 0),ss(2 downto 0));
		s:=ss;
	end procedure;
	
	procedure eightBitComparatorUsing4BitProcedure(a:in std_logic_vector;b:in std_logic_vector;s: out std_logic_vector) is
	variable p,q,c,d:std_logic_vector(3 downto 0);
	variable t,r,ss:std_logic_vector(2 downto 0);
	begin
		p(3 downto 0):= a(3 downto 0);
		q(3 downto 0):= b(3 downto 0);
		proc1:fourBitComparatorProcedure(p(3 downto 0),q(3 downto 0),t(2 downto 0));
		
		c(3 downto 0):=a(7 downto 4);
		d(3 downto 0):=b(7 downto 4);
		proc2:fourBitComparatorProcedure(c(3 downto 0),d(3 downto 0),r(2 downto 0));
		
		proc3:logicComparatorProcedure(r(2 downto 0),t(2 downto 0),ss(2 downto 0));
		
		s(2 downto 0):=ss(2 downto 0);
	end procedure;

end allHardwarePackage;