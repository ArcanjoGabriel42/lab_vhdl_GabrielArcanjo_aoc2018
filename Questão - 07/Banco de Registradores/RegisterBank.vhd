library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity RegisterBank is
	Port
	(
		Instr2,Instr3, Instrd: in std_logic_vector(3 downto 0);
		Writeflag: in std_logic;
		WriteBack: In std_logic_vector(15 downto 0);
		outreg1,outreg2: out std_logic_vector(15 downto 0)
	);
end RegisterBank;

Architecture behavior of RegisterBank is 
	type bank is array(0 to 15) of std_logic_vector(15 downto 0);
	signal bankreg: bank;
	begin
		outreg1<= bankreg(to_integer(unsigned(instr2)));
		outreg2<= bankreg(to_integer(unsigned(instr3)));
		process(writeflag)
			begin
				if writeflag = '1' then
					bankreg(to_integer(unsigned(instrd))) <= writeback;
				end if;
			end process;
			
	End behavior;