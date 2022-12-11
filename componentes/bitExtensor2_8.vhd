library Ieee;
use Ieee.std_logic_1164.All;

ENTITY bitExtensor2_8 IS 
	PORT (
		in_data  : IN Std_Logic_Vector (1 DOWNTO 0);
		s : OUT Std_Logic_Vector (7 DOWNTO 0)
	);

END bitExtensor2_8;

ARCHITECTURE Behavior OF bitExtensor2_8 IS 
BEGIN
	PROCESS (in_data)
	BEGIN 
		s <= ("000000") & in_data;	
	END PROCESS;
END Behavior;