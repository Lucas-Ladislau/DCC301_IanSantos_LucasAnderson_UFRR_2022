library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( inor1 : in  STD_LOGIC;  
           inor2 : in  STD_LOGIC;    
           sor   : out STD_LOGIC);    
end or_gate;

architecture Behavioral of or_gate is
begin
    sor <= inor1 or inor2;    
end Behavioral;