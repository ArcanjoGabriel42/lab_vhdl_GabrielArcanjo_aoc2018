library ieee;
use ieee.std_logic_1164.all;

Entity PortXor is
	Port
	(
		Input_a: In std_logic_vector(15 downto 0);
		Input_b: In std_logic_vector(15 downto 0);
		Output: Out std_logic_vector(15 downto 0)
	);
End PortXor;

Architecture behavior of PortXor is
component PortNot IS
PORT
	(
		Input: IN std_logic_vector(15 downto 0);
		Output: OUT std_logic_vector(15 downto 0)
	);
END component;

component PortOr IS
	PORT
	(
		Input_a: IN std_logic_vector(15 downto 0);
		Input_b:	IN std_logic_vector(15 downto 0);
		Output: OUT std_logic_vector(15 downto 0)
	);
END component;

component QAnd is
	PORT
	(
		pa, pb: in std_logic_vector(15 downto 0);
		pout: out std_logic_vector(15 downto 0)
		
	);
END component;

Signal a : std_logic_vector(15 downto 0);
Signal b : std_logic_vector(15 downto 0);
Signal c : std_logic_vector(15 downto 0);

Begin
	G1: QAnd port map (Input_a,Input_b,a);
	G2: PortOr port map(Input_a,Input_b,b);
	G3: PortNot port map(a,c);
	G4: QAnd port map(b,c,Output);
End behavior;