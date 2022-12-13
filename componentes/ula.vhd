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
		s_zero: out std_logic	
	);
END ula;

ARCHITECTURE Behavior OF ula IS
	
	COMPONENT zero IS
		port(
			in_port : in std_logic;
			out_port : out std_logic
		);
	END COMPONENT;
	
	 -- if para o beq e bne
    SIGNAL in_temp_zero : std_logic;
    SIGNAL out_temp_zero : std_logic;
	 SIGNAL multi : std_logic_vector(15 DOWNTO 0);

BEGIN
		
		port_map_temp_zero : zero PORT MAP(in_temp_zero, out_temp_zero);
	
		process(inA,inB,selec,out_temp_zero)
		begin
			case selec is  
			when "0000" => Sout <= inA + inB; --add
			when "0001" => Sout <= inA + inB; --addi
			when "0010" => Sout <= inA - inB; --subb
			when "0011" => Sout <= inA - inB; --subbi
			when "0100" =>  --mult
				multi <= inA * inB;
				Sout <= multi(7 downto 0);
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