library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    Port ( innot : in  STD_LOGIC;    
           snot   : out STD_LOGIC);    
end not_gate;

architecture Behavioral of not_gate is
begin
    snot <= not innot;    
end Behavioral;