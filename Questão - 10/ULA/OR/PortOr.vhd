library ieee;
use ieee.std_LOGIC_1164.all;


ENTITY PortOr IS
	PORT
	(
		Input_a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Input_b:	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Output: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END PortOr;

ARCHITECTURE behavior of PortOr is
begin	
	Output <= Input_a or Input_b;
END behavior;