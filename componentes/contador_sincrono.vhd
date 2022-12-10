library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

ENTITY contador_sincrono IS
	PORT
	(
		clk		: IN std_logic;
		reset	: IN std_logic;
		enable 	: IN std_logic;
		q		: OUT std_logic_vector(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavior OF contador_sincrono IS
BEGIN
	PROCESS (clk,reset)
		VARIABLE   cnt	: integer RANGE 0 TO 15;
	BEGIN
			IF reset = '1' THEN
				cnt := 0;
			ELSIF clk'EVENT and clk = '1' THEN
				IF enable='1' THEN
				cnt := cnt + 1;
				END IF;
			END IF;
		q <= conv_std_logic_vector(cnt,4);
	END PROCESS;
END behavior;