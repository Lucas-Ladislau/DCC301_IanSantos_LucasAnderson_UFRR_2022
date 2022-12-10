
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_memory is
    port(
        in_data     : in std_logic_vector(7 downto 0);
        clock       : in std_logic;
        out_data    : out std_logic_vector(7 downto 0)
    );
end entity;

architecture main of rom_memory is
    type ROM is array(0 to 255) of std_logic_vector(7 downto 0);
    signal rom_memory : ROM := (

	 -- load immediate 0101
        0 => "01010000", -- li $s0 valor0
        1 => "01010101", -- li $s1 valor1
        2 => "01011010", -- li $s2 valor2
        3 => "01011111", -- li $s3 valor3

        -- aritmética
        4 => "00000001", -- add = $s0 + $s1
        5 => "00010001", -- sub $s0 $s1
        6 => "00100001", -- mult $s0 $s1
others => "00000000"
    );
    begin
        process (clock)
		  begin
            out_data <= rom_memory(to_integer(unsigned(in_data)));
        end process;
end main;  