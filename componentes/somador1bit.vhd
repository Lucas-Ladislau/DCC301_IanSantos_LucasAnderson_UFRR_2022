LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY somador1bit IS 
PORT	(X : IN STD_LOGIC;
		 Y : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC);
END somador1bit;

ARCHITECTURE Behavioral OF somador1bit IS
BEGIN 
	S <= (X XOR Y XOR Cin);
	Cout <= (X AND Y) OR (X AND Cin) OR (Y AND Cin);
END Behavioral;