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
	procedure decimalToBinaryProcedure(decimal:in integer; numberOfBits:in integer; binary:out std_logic_vector);
	procedure fourCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic);
	procedure twoCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic;o: out std_logic);
   procedure eightCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic);
	procedure sixteenCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic);
	procedure sixteenCrossOneMuxUsing82Procedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic);
	
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
    
	 procedure fourCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic) is
	 variable ii: std_logic_vector(3 downto 0);
	 begin
			ii(0):= not(s(1)) and not(s(0)) and i(0);
			ii(1):= not(s(1)) and s(0) and i(1);
			ii(2):= s(1) and not(s(0)) and i(2);
			ii(3):= s(1) and s(0) and i(3);
			o:= ii(0) or ii(1) or ii(2) or ii(3); 
	 end procedure;
	 
	 procedure twoCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic;o: out std_logic) is
	 variable ii: std_logic_vector(1 downto 0);
	 begin
			ii(0):= not(s) and i(0);
			ii(1):= s and i(1);
			o:= ii(0) or ii(1); 
	 end procedure;
	 
	 procedure eightCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic) is
	 variable p:std_logic_vector(1 downto 0);
	 variable ii:std_logic_vector(3 downto 0);
	 variable ss:std_logic_vector(1 downto 0);
	 variable k:integer;
	 begin
		 for k in 0 to 1 loop
				ii(3 downto 0):= i(((4*k)+3) downto (4*k));
			   ss(1 downto 0):= s(1 downto 0);
				prock:fourCrossOneMuxProcedure(ii(3 downto 0),ss(1 downto 0),p(k));
		 end loop;
		 procc:twoCrossOneMuxProcedure(p(1 downto 0),s(2),o);
	 end procedure;
	
	 procedure sixteenCrossOneMuxProcedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic) is
	 variable ss:std_logic_vector(1 downto 0);
	 variable a,p:std_logic_vector(3 downto 0);
	 begin
			for k in 0 to 3 loop
				a:=i(4*k+3 downto 4*k);
				ss:=s(1 downto 0);
				fourCrossOneMuxProcedure(a,ss,p(k));
			end loop;
			ss:=s(3 downto 2);
			fourCrossOneMuxProcedure(p,ss,o);
	 end procedure;
	 
	 procedure sixteenCrossOneMuxUsing82Procedure(i: in std_logic_vector;s:in std_logic_vector;o: out std_logic) is
	 variable ss:std_logic_vector(2 downto 0);
	 variable p:std_logic_vector(1 downto 0);
	 variable a:std_logic_vector(7 downto 0);
	 variable k:integer;
	 begin
			for k in 0 to 1 loop
				a:=i(8*k+7 downto 8*k);
				ss:=s(2 downto 0);
				eightCrossOneMuxProcedure(a,ss,p(k));
			end loop;
			twoCrossOneMuxProcedure(p,s(3),o);
	 end procedure;
	 
end allHardwarePackage;