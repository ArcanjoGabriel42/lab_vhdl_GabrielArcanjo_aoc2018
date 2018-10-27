library ieee;
use ieee.std_logic_1164.all;

Entity Mux_12 is
	Port
	(
		A,B,C,D,E,F,G,H,I,J,K,L : in std_logic_vector(15 downto 0);
		Output: out std_logic_vector(15 downto 0);
		Se: in std_logic_vector(3 downto 0)
	);
End Mux_12;

Architecture behavior of Mux_12 is 
Begin
	Process(A,B,C,D,E,F,G,H,I,J,K,L,Se)
	Begin
		Case Se is
			when "0000" => Output <= A;
			when "0001" => Output <= B;
			when "0010" => Output <= C;
			when "0011" => Output <= D;
			when "0100" => Output <= E;
			when "0101" => Output <= F;
			when "0110" => Output <= G;
			when "0111" => Output <= H;
			when "1000" => Output <= I;
			when "1001" => Output <= J;
			when "1010" => Output <= K;
			when "1011" => Output <= L;
			when others => Output <= "ZZZZZZZZZZZZZZZZ";
		End Case;
	End Process;
End behavior;