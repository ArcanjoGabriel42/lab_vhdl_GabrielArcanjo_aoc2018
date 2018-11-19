library ieee;
use ieee.std_logic_1164.all;

ENTITY NotAnd IS
	PORT
	(
	Input_a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Input_b: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Output: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END NotAnd;

ARCHITECTURE behavior OF NotAnd IS 
BEGIN
	
	Output <= not(Input_a and Input_b);

END behavior;