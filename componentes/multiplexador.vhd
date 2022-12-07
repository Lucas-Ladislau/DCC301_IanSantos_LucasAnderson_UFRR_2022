library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexador is
    Port ( SEL : in  STD_LOGIC ;     -- select input
           A   : in  STD_LOGIC_VECTOR (7 downto 0);     -- inputA
			  B   : in  STD_LOGIC_VECTOR (7 downto 0);     -- inputB
           X   : out STD_LOGIC_VECTOR (7 downto 0));                        -- output
end multiplexador;

architecture Behavioral of multiplexador is
begin
with SEL select
    X <= A when '0',
         B when '1';
        
end Behavioral;