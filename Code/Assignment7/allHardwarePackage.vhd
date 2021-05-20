library IEEE;
use IEEE.STD_LOGIC_1164.all;

package allHardwarePackage is

procedure SRFlipFlopProcedure(rst: in std_logic; clk: in std_logic; s: in std_logic; r: in std_logic; q: inout std_logic; qbar: inout std_logic; q1: inout std_logic; q1bar: inout std_logic);
procedure SRFlipFlopUpCounterProcedure(rst: in std_logic; clk: in std_logic; qq: inout std_logic_vector; qqbar: inout std_logic_vector; qqq1: inout std_logic_vector; qqq1bar: inout std_logic_vector);

procedure JKFlipFlopProcedure(rst:in std_logic;clk:in std_logic;j:in std_logic;k:in std_logic;q:inout std_logic;qbar:inout std_logic; q1:inout std_logic;q1bar:inout std_logic);
procedure JKFlipFlopUpCounterProcedure(rst:in std_logic;clk:in std_logic;qq:inout std_logic_vector;qqbar:inout std_logic_vector; qqq1:inout std_logic_vector;qqq1bar:inout std_logic_vector);

procedure TFlipFlopProcedure(rst:in std_logic;clk:in std_logic;t:in std_logic;q:inout std_logic;qbar:inout std_logic;q1:inout std_logic;q1bar:inout std_logic);
procedure TFlipFlopDownCounterProcedure(rst:in std_logic;clk:in std_logic;qq:inout std_logic_vector;qqbar:inout std_logic_vector;qqqq1:inout std_logic_vector;qqqq1bar:inout std_logic_vector);

end allHardwarePackage;

package body allHardwarePackage is

procedure SRFlipFlopProcedure(rst: in std_logic; clk: in std_logic; s: in std_logic; r: in std_logic; q: inout std_logic; qbar: inout std_logic; q1: inout std_logic; q1bar: inout std_logic) is
begin
		if rst='1' then
		q:='0';
		qbar:='1';
		q1:='0';
		q1bar:='1';
	elsif (clk='1') then
		if (s='0' and r='0') then
			q:=q1;
			qbar:=q1bar;
		elsif (s='0' and r='1') then
			q:='0';
			qbar:='1';
			q1:='0';
			q1bar:='1';
		elsif (s='1' and r='0') then
			q:='1';
			qbar:='0';
			q1:='1';
			q1bar:='0';
		elsif (s='1' and r='1') then
			q:='Z';
			qbar:='Z';
			q1:='Z';
			q1bar:='Z';
		end if;
	end if;
end procedure;

procedure SRFlipFlopUpCounterProcedure(rst: in std_logic; clk: in std_logic; qq: inout std_logic_vector; qqbar: inout std_logic_vector; qqq1: inout std_logic_vector; qqq1bar: inout std_logic_vector) is 
variable ss,rr,qq1,qq1bar:std_logic_vector(2 downto 0);
variable i:integer;
begin
	if rst='1' then
		qq(2 downto 0):="000";
		qqbar(2 downto 0):="111";
		qq1:="000";
		qq1bar:="111";
		qqq1(2 downto 0):="000";
		qqq1bar(2 downto 0):="111";
	elsif (clk='1') then
		qq1(2 downto 0):=qqq1(2 downto 0);
		qq1bar(2 downto 0):=qqq1bar(2 downto 0);
	
		ss(2):= qq1bar(2) and qq1(1) and qq1(0);
		rr(2):= qq1(2) and qq1(1) and qq1(0);
		
		ss(1):= qq1bar(1) and qq1(0);
		rr(1):= qq1(1) and qq1(0);
	
		ss(0):=qq1bar(0);
		rr(0):=qq1(0);

		for i in 0 to 2 loop
			prock:SRFlipFlopProcedure(rst,clk,ss(i),rr(i),qq1(i),qq1bar(i),qqq1(i),qqq1bar(i));
		end loop;
		qq(2 downto 0) := qq1(2 downto 0);
		qqbar(2 downto 0) := qq1bar(2 downto 0);
		qqq1(2 downto 0):=qq1(2 downto 0);
		qqq1bar(2 downto 0):=qq1bar(2 downto 0);
	end if;
end procedure;

procedure JKFlipFlopProcedure(rst:in std_logic;clk:in std_logic;j:in std_logic;k:in std_logic;q:inout std_logic;qbar:inout std_logic; q1:inout std_logic;q1bar:inout std_logic) is
begin
		if rst='1' then
		q:='0';
		qbar:='1';
		q1:='0';
		q1bar:='1';
	elsif (clk='1') then
		if (j='0' and k='0') then
			q:=q1;
			qbar:=q1bar;
		elsif (j='0' and k='1') then
			q:='0';
			qbar:='1';
			q1:='0';
			q1bar:='1';
		elsif (j='1' and k='0') then
			q:='1';
			qbar:='0';
			q1:='1';
			q1bar:='0';
		elsif (j='1' and k='1') then
			q:=q1bar;
			qbar:=q1;
			q1:=q;
			q1bar:=qbar;
		end if;
	end if;
end procedure;

procedure JKFlipFlopUpCounterProcedure(rst:in std_logic;clk:in std_logic;qq:inout std_logic_vector;qqbar:inout std_logic_vector; qqq1:inout std_logic_vector;qqq1bar:inout std_logic_vector) is
variable jj,kk,qq1,qq1bar:std_logic_vector(2 downto 0);
variable i:integer;
begin
		if rst='1' then
			qq(2 downto 0):="000";
			qqbar(2 downto 0):="111";
			qq1:="000";
			qq1bar:="111";
			qqq1(2 downto 0):="000";
			qqq1bar(2 downto 0):="111";
		elsif (clk='1') then
			qq1(2 downto 0):=qqq1(2 downto 0);
			qq1bar(2 downto 0):=qqq1bar(2 downto 0);
			jj(2):= qq1(1) and qq1(0);
			kk(2):= qq1(1) and qq1(0);
			
			jj(1):= qq1(0);
			kk(1):= qq1(0);
		
			jj(0):='1';
			kk(0):='1';

			for i in 0 to 2 loop
				prock:JKFlipFlopProcedure(rst,clk,jj(i),kk(i),qq1(i),qq1bar(i),qqq1(i),qqq1bar(i));
			end loop;
			qq(2 downto 0) := qq1(2 downto 0);
			qqbar(2 downto 0) := qq1bar(2 downto 0);
			qqq1(2 downto 0):=qq1(2 downto 0);
			qqq1bar(2 downto 0):=qq1bar(2 downto 0);
		end if;
end procedure;

procedure TFlipFlopProcedure(rst:in std_logic;clk:in std_logic;t:in std_logic;q:inout std_logic;qbar:inout std_logic;q1:inout std_logic;q1bar:inout std_logic) is
begin
		if rst='1' then
			q:='0';
			qbar:='1';
		elsif (clk='1') then
			if t='0' then
				q:=q1;
				qbar:=q1bar;
			elsif t='1' then
				q:=q1bar;
				qbar:=q1;
				q1:=q;
				q1bar:=qbar;
			end if;
		end if;
end procedure;

procedure TFlipFlopDownCounterProcedure(rst:in std_logic;clk:in std_logic;qq:inout std_logic_vector;qqbar:inout std_logic_vector;qqqq1:inout std_logic_vector;qqqq1bar:inout std_logic_vector) is
variable t,qq1,qq1bar:std_logic_vector(2 downto 0);
variable i:integer;
begin
	if rst='1' then
		qq(2 downto 0):="111";
		qqbar(2 downto 0):="000";
		qq1:="111";
		qq1bar:="000";
		qqqq1(2 downto 0):="000";
		qqqq1bar(2 downto 0):="111";
	elsif (clk='1') then
		qq1(2 downto 0):=qqqq1(2 downto 0);
		qq1(2 downto 0):=qqqq1(2 downto 0);
		t(0) := '1';
		t(1) := not qq1(0);
		t(2) := (not qq1(1)) and (not qq1(0));
		for i in 0 to 2 loop
			prock:TFlipFlopProcedure(rst,clk,t(i),qq1(i),qq1bar(i),qqqq1(i),qqqq1bar(i));
		end loop;
		qq(2 downto 0):=qq1(2 downto 0);
		qqbar(2 downto 0):=qq1bar(2 downto 0);
		qqqq1(2 downto 0):=qq1(2 downto 0);
		qqqq1bar(2 downto 0):=qq1bar(2 downto 0);

	end if;
end procedure;

end allHardwarePackage;
