library ieee;
use ieee.STD_LOGIC_1164.all;

ENTITY FLIPFLOPD IS
	PORT
	(
		Dados_in:IN STD_LOGIC;
		Clock: IN STD_LOGIC;
		Dados_out: OUT STD_LOGIC
	);
END FLIPFLOPD;

ARCHITECTURE behavior OF FLIPFLOPD IS
BEGIN
	PROCESS(Dados_in,Clock)
	BEGIN
		
		IF(Clock = '1') THEN
			
			Dados_out <= Dados_in;
		END IF;
	END PROCESS;
END behavior;
		