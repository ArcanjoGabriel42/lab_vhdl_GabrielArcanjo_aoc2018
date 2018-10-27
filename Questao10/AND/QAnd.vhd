library ieee;
use ieee.std_logic_1164.all;

ENTITY QAnd is
PORT(
	pa, pb: in std_logic_vector(15 downto 0);
	pout: out std_logic_vector(15 downto 0)
);
END QAnd;

ARCHITECTURE behavior of QAnd is
BEGIN

	pout <= pa and pb;

END behavior;