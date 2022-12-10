library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity contador_sincrono is
	port
	(
		clk		: in std_logic;
		reset	: in std_logic;
		enable 	: in std_logic;
		q		: out std_logic_vector(3 downto 0)
	);
end entity;

architecture behavior of contador_sincrono is
begin
	process (clk,reset)
		variable   cnt	: integer range 0 to 15;
	begin
			if reset = '1' then
				cnt := 0;
			elsif clk'event and clk = '1' then
				if enable='1' then
				cnt := cnt + 1;
				end if;
			end if;
		q <= conv_std_logic_vector(cnt,4);
	end process;
end behavior;