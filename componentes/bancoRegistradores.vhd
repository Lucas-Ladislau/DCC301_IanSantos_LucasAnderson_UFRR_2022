library Ieee;
Use Ieee.std_logic_1164.all;
Use Ieee.numeric_std.all;

Entity bancoRegistradores is port (
	clock			: in std_logic;
	escreveReg		:in std_logic;
	addressReg1		:in std_logic_vector(1 downto 0);
	addressReg2		:in std_logic_vector(1 downto 0);
	escreveDado		:in std_logic_vector(7 downto 0);
	out_Reg1		:out std_logic_vector(7 downto 0);
	out_Reg2		:out std_logic_vector(7 downto 0)
);
End bancoRegistradores;

Architecture main of bancoRegistradores is 

	Type bancoRegistradores is Array (0 to 3)of std_logic_vector (7 downto 0);
	Signal registradores : bancoRegistradores;

Begin
		Process (clock)
		Begin
				if rising_edge(clock) then
					if (escreveReg = '1') then
						registradores(to_integer(unsigned(addressReg1))) <= escreveDado; 
					End if;
				End if;
				out_Reg1 <= registradores(to_integer(unsigned(addressReg1)));
				out_Reg2 <= registradores(to_integer(unsigned(addressReg2)));
		End Process;
End main;