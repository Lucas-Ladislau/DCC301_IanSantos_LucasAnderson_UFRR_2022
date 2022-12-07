library Ieee;
use Ieee.std_logic_1164.All;

entity bitExtensor4_8 is 
	Port (
		in_data  : in Std_Logic_Vector (3 downto 0);
		s : out Std_Logic_Vector (7 downto 0)
	);

end bitExtensor4_8;

architecture Behavior of bitExtensor4_8 is 
begin
	Process (in_data)
	Begin 
		s <= ("0000") & in_data;	
	End Process;
end Behavior;