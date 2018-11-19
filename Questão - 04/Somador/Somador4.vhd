library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

Entity Somador4 is 
	Port
	(
		Input: in std_logic_vector(7 downto 0);
		saida: out std_logic_vector(7 downto 0)
	);
end Somador4;

architecture behavior of Somador4 is
begin

	saida <= Input + "00000100";
	
end behavior;