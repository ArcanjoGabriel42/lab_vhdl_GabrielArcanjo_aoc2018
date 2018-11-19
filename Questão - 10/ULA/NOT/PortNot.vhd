library ieee;
use ieee.std_logic_1164.all;

ENTITY PortNot IS
PORT
	(
	Input: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Output: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END PortNot;

ARCHITECTURE behavior OF PortNot IS
BEGIN
	
	Output <= not Input;

END behavior;