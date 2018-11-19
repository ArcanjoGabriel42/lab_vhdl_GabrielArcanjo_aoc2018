library ieee;
use ieee.std_logic_1164.all;

ENTITY PortNOR is
	PORT
	(
	Input_a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Input_b: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Output: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END PortNOR;

ARCHITECTURE behavior OF PortNOR IS
BEGIN
	
	Output <= not (Input_a or Input_b);

END behavior;