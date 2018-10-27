library ieee;
use ieee.std_logic_1164.all;

Entity Shift2R is
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Output: out std_logic_vector(15 downto 0)
	);
End Shift2R;


Architecture behavior of Shift2R is
Begin
	Output <= "00" & Input_a(15 downto 2);
End behavior;