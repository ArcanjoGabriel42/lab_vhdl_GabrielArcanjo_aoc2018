library ieee;
use ieee.STD_LOGIC_1164.all;

ENTITY FLIPFLOPJK IS
	PORT
	(
		Clock: IN STD_LOGIC;
		J,K: IN STD_LOGIC;
		Q,NQ: OUT STD_LOGIC
	);
END FLIPFLOPJK;

ARCHITECTURE behavior OF FLIPFLOPJK IS

	Signal entry : STD_LOGIC_VECTOR(1 DOWNTO 0);
	Signal state : Std_logic;
	
	BEGIN
		entry <= J & K;
		PROCESS (ClocK)
		BEGIN
			if (Rising_Edge(Clock)) then
				Case entry is
					when "00" => state <= not(state);
					when "01" => state <= '1';
					when "10" => state <= '0';
					when Others => NULL;
				End Case;
			End IF;
		End Process;
		Q <= state;
		NQ <= Not state;
End behavior;
			
