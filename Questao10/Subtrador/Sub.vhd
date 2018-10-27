library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Sub16 is
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Input_b: in std_logic_vector(15 downto 0);
		saida: out std_logic_vector(15 downto 0)
	);
End Sub16;

Architecture behavior of Sub16 is
Begin

	saida <= Input_a - Input_b;
	
End behavior;