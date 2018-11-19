library ieee;
use ieee.std_logic_1164.all;

Entity Mux4 is
	Port
	(
		A,B,C,D,Se: in  std_logic_vector(1 downto 0);
		Output:     out std_logic_vector(1 downto 0)
	);
End Mux4;

Architecture behavior of Mux4 is 
Begin
	Process(A,B,C,D,Se)
	Begin
		Case Se is
			
			when "00" => Output <= A;
			when "01" => Output <= B;
			when "10" => Output <= C;
			when "11" => Output <= D;

		End Case;
	End Process;
End behavior;