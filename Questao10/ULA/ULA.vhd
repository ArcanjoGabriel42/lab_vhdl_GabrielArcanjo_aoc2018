library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ULA is 
	Port
	(
		Register_1: in std_logic_vector(15 downto 0);
		Register_2: in std_logic_vector(15 downto 0);
		Se: in std_logic_vector(3 downto 0);
		Output: out std_logic_vector(15 downto 0)
	);
End ULA;

Architecture behavior of ULA is

Component Shift2R is
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Output: out std_logic_vector(15 downto 0)
	);
End Component;

Component Shifter2L is 
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Output: out std_logic_vector(15 downto 0)
	);
End Component;

Component Somador16 is
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Input_b: in std_logic_vector(15 downto 0);
		saida: out std_logic_vector(15 downto 0)
	);
End Component;

Component Mux_12 is
	Port
	(
		A,B,C,D,E,F,G,H,I,J,K,L : in std_logic_vector(15 downto 0);
		Output: out std_logic_vector(15 downto 0);
		Se: in std_logic_vector(3 downto 0)
	);
End Component;
Component PortXor is
	Port
	(
		Input_a: In std_logic_vector(15 downto 0);
		Input_b: In std_logic_vector(15 downto 0);
		Output: Out std_logic_vector(15 downto 0)
	);
End Component;

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
End Component;
Component NotAnd IS
	PORT
	(
	Input_a: IN std_logic_vector(15 downto 0);
	Input_b: IN std_logic_vector(15 downto 0);
	Output: OUT std_logic_vector(15 downto 0)
	);
END Component;
Component PortNOR is
	PORT
	(
	Input_a: IN std_logic_vector(15 downto 0);
	Input_b: IN std_logic_vector(15 downto 0);
	Output: OUT std_logic_vector(15 downto 0)
	);
END Component;
Component Sub16 is
	Port
	(
		Input_a: in std_logic_vector(15 downto 0);
		Input_b: in std_logic_vector(15 downto 0);
		saida: out std_logic_vector(15 downto 0)
	);
End Component;

Signal BAnd, BOr, BNot, BNand, BNor, BXor, BShiftR1, BShiftR2, BShiftL1, BShiftL2, BSum, BSub, BOut: std_logic_vector(15 downto 0);
Begin
	G1:QAnd       port map(Register_1,Register_2,BAnd);
	G2:PortOr     port map(Register_1,Register_2,BOr);
	G3:PortNot    port map(Register_1,BNot);
	G4:NotAnd     port map(Register_1,Register_2,BNand);
	G5:PortNor    port map(Register_1,Register_2,BNor);
	G6:PortXor    port map(Register_1,Register_2,BXor);
	G7:Shift2R    port map(Register_1,BShiftR1);
	G8:Shifter2L  port map(Register_1,BShiftL1);
	G9:Shift2R    port map(Register_2,BShiftR2);
	G10:Shifter2L port map(Register_2,BShiftL2);
	G11:Somador16 port map(Register_1,Register_2,BSum);
	G12:Sub16     port map(Register_1,Register_2,BSub);
	G13:Mux_12    port map(BAnd, BOr, BNot, BNand, BNor, BXor, BShiftR1, BShiftR2, BShiftL1, BShiftL2, BSum, BSub,BOut,Se);

	Output <= BOut;
End behavior;
