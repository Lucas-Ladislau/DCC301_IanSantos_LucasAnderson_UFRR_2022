LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY ram_memory IS
    port(
        clock : in std_logic;       -- clock
        in_A      : in std_logic_vector(7 downto 0); -- valor
        mem_write : in std_logic;   -- flag de escrita
        mem_read  : in std_logic;   -- flag de leitura
        addr      : in std_logic_vector(7 downto 0); -- endereço
        Sout     : out std_logic_vector(7 downto 0) -- saida
    );
END ram_memory;

ARCHITECTURE Behavioral OF ram_memory is
    -- array de 8 posições contendo vetores lógicos de 8bits
    type mem_t is array (0 to 7) of std_logic_vector(7 downto 0);
    signal mem : mem_t := (others => "00000000");    
BEGIN

    PROCESS(clock)
    BEGIN

        IF rising_edge(clock) THEN
				
            -- Flag de escrita 
            IF(mem_write = '1') THEN
                mem(to_integer(unsigned(addr))) <= in_A;
            END IF;            
            -- Flag de leitura 
            IF(mem_read = '1') THEN
               Sout <= mem(to_integer(unsigned(addr)));
            END IF;
								
        END IF;

    END PROCESS;

END;