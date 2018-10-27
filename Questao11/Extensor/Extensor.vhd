library ieee;
use ieee.std_logic_1164.all;

Entity Extensor is
	Port
	(
		Input_a: in  std_logic_vector (7  downto 0);
		Output:  out std_logic_vector (15 downto 0)
	);
End Extensor;

Architecture behavior of Extensor is
Begin

	Output <= "00000000" & Input_a (7 downto 0);
	
End behavior;