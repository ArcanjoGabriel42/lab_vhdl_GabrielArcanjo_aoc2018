LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RAM is
	Port
	(
		WriteEnable, Enable: in std_logic;
		data_out:          out unsigned (15 downto 0);
		data_in:           in  unsigned (15 downto 0);
		adress:            in  unsigned (7 downto 0)
	);
end RAM;

Architecture behavior of RAM is 

	Type pattern is array (0 to 65535) of unsigned(15 downto 0);
	signal data: pattern;
	
	Begin
		Process(Enable, adress)
		Begin
		
			if rising_edge(Enable) then
			
				if WriteEnable = '0' then data(to_integer(adress)) <= data_in;
				
				end if;
				
			end if;
			
		end process;
		
	data_out <= data(to_integer(adress));

end behavior;
			
	