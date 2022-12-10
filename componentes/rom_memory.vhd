
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY rom_memory IS
    PORT(
        in_data     : IN std_logic_vector(7 DOWNTO 0);
        clock       : IN std_logic;
        out_data    : OUT std_logic_vector(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE main OF rom_memory IS
    TYPE ROM IS ARRAY(0 TO 255) OF std_logic_vector(7 DOWNTO 0);
    SIGNAL rom_memory : ROM := (

	 -- load immediate 0101
        0 => "01010000", -- li $s0 valor0
        1 => "01010101", -- li $s1 valor1
        2 => "01011010", -- li $s2 valor2
        3 => "01011111", -- li $s3 valor3

        -- aritmética
        4 => "00000001", -- add = $s0 + $s1
        5 => "00010001", -- sub $s0 $s1
        6 => "00100001", -- mult $s0 $s1
OTHERS => "00000000"
    );
    BEGIN
        PROCESS (clock)
		  BEGIN
            out_data <= rom_memory(to_integer(unsigned(in_data)));
        END PROCESS;
END main;  