LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY ula IS 
	port(
		selec : in std_logic_vector(3 downto 0);
		inA 	: in  std_logic_vector(7 downto 0);
		inB  	: in  std_logic_vector(7 downto 0);
		Sout  : out std_logic_vector(7 downto 0);
		s_zero: out std_logic;
		overflow: out std_logic);
END ula;

ARCHITECTURE Behavior OF ula IS
	
	COMPONENT zero IS
		port(
			in_port : in std_logic;
			out_port : out std_logic
		);
	END COMPONENT;
	
	COMPONENT multiplicador IS
        Port ( a,b  : in Std_logic_vector (7 downto 0);
            Produto    : Out Std_Logic_Vector (15 downto 0)
              );
	END COMPONENT;
	
	COMPONENT somador8bit IS
		PORT ( busX : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			 busY : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			 Cin : IN STD_LOGIC;
			 busS : out STD_LOGIC_VECTOR (7 DOWNTO 0);
			 overflow : out STD_LOGIC);
	END COMPONENT;

	
	 -- if para o beq e bne
    SIGNAL in_temp_zero : std_logic;
    SIGNAL out_temp_zero : std_logic;
	 signal somadorOut : std_logic_vector(7 downto 0);
	 SIGNAL multi : std_logic_vector(15 DOWNTO 0);
	 signal overflowSoma : std_logic;

BEGIN
		
		port_map_temp_zero : zero PORT MAP(in_temp_zero, out_temp_zero);
		pot_map_multi   : multiplicador port map(inA, inB, multi);
		soma    : somador8bit port map(inA, inB,'0', somadorOut, overflowSoma);
		
		process(inA,inB,selec,out_temp_zero)
		begin
			case selec is  
			when "0000" => --add
					 Sout <= somadorOut;
                overflow <= overflowSoma;
			when "0001" => Sout <= inA + inB; --addi
			when "0010" => Sout <= inA - inB; --subb
			when "0011" => Sout <= inA - inB; --subbi
			when "0100" =>  --mult
				Sout <= multi(7 downto 0);
                if multi(15 downto 8) = "00000000" then
                    overflow <= '0';
                else
                    overflow <= '1';
                end if;
			when "0101" => Sout <= inA; --lw	
			when "0110" => Sout <= inA; --sw
			when "0111" => Sout <= inB; --move
			when "1000" => Sout <= inB; --li
			when "1001" => --beq
				if out_temp_zero = '1' then
					s_zero <= '1';
				else
					s_zero <= '0';
				end if;
				Sout <= "00000000";
			when "1010" => --bne
				if out_temp_zero = '0' then
					s_zero <= '1';
				else
					s_zero <= '0';
				end if;
				Sout <= "00000000";
			when "1011" => -- If beq e bne
				if inA = inB then
					in_temp_zero <= '1';
				else
					in_temp_zero <= '0';
				end if;
				Sout <= "00000000";
			when others => Sout <= "00000000";
		end case;
	end process;
END Behavior;	