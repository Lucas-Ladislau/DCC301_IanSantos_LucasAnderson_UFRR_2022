library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( inxor1 : in  STD_LOGIC;  
           inxor2: in  STD_LOGIC;    
           sxor   : out STD_LOGIC);   
end xor_gate;

architecture Behavioral of xor_gate is

component not_gate is
port ( innot : in  STD_LOGIC;    
       snot   : out STD_LOGIC);
end component; 

component or_gate is
port ( inor1 : in  STD_LOGIC;  
       inor2 : in  STD_LOGIC;    
       sor   : out STD_LOGIC);
end component; 

component and_gate is
Port ( inand1 : in  STD_LOGIC;  
       inand2 : in  STD_LOGIC;    
       saida   : out STD_LOGIC); 
end component;
signal notA,notB,sand1,sand2: std_logic;
begin
    SNOTA: not_gate port map(inxor1, notA);
	 SNOTB: not_gate port map(inxor2, notB); 
	 AND1: and_gate port map(inxor1,notB, sand1);
	 AND2: and_gate port map(inxor2, notA,sand2);
	 ORF: or_gate port map(sand1,sand2, sxor );
end Behavioral;