-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/13/2022 05:38:21"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Qualcom_LI IS
    PORT (
	clock : IN std_logic;
	outPc : BUFFER std_logic_vector(7 DOWNTO 0);
	outRam : BUFFER std_logic_vector(7 DOWNTO 0);
	outRom : BUFFER std_logic_vector(7 DOWNTO 0);
	outUla : BUFFER std_logic_vector(7 DOWNTO 0);
	out_br_regA : BUFFER std_logic_vector(7 DOWNTO 0);
	out_br_regB : BUFFER std_logic_vector(7 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(1 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(1 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(3 DOWNTO 0);
	overflow : BUFFER std_logic;
	out_out_mult4_2X1_ram_ula : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Qualcom_LI;

ARCHITECTURE structure OF Qualcom_LI IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_outPc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outRam : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outRom : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outUla : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_br_regA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_br_regB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_out_out_mult4_2X1_ram_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_ula|pot_map_multi|Mult0~mac_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|pot_map_multi|Mult0~mac_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \port_map_ula|pot_map_multi|Mult0~8\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~9\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~10\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~11\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~12\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~13\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~14\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~15\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~16\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~17\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~18\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~19\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~20\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~21\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~22\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~23\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~24\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~25\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~26\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~27\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~28\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~29\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~30\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~31\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~32\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~33\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~34\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~35\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~36\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~37\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~38\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~39\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~40\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~41\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~42\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~43\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~44\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~45\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~46\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~47\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~48\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~49\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~50\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~51\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~52\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~53\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~54\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Mult0~55\ : std_logic;
SIGNAL \outPc[0]~output_o\ : std_logic;
SIGNAL \outPc[1]~output_o\ : std_logic;
SIGNAL \outPc[2]~output_o\ : std_logic;
SIGNAL \outPc[3]~output_o\ : std_logic;
SIGNAL \outPc[4]~output_o\ : std_logic;
SIGNAL \outPc[5]~output_o\ : std_logic;
SIGNAL \outPc[6]~output_o\ : std_logic;
SIGNAL \outPc[7]~output_o\ : std_logic;
SIGNAL \outRam[0]~output_o\ : std_logic;
SIGNAL \outRam[1]~output_o\ : std_logic;
SIGNAL \outRam[2]~output_o\ : std_logic;
SIGNAL \outRam[3]~output_o\ : std_logic;
SIGNAL \outRam[4]~output_o\ : std_logic;
SIGNAL \outRam[5]~output_o\ : std_logic;
SIGNAL \outRam[6]~output_o\ : std_logic;
SIGNAL \outRam[7]~output_o\ : std_logic;
SIGNAL \outRom[0]~output_o\ : std_logic;
SIGNAL \outRom[1]~output_o\ : std_logic;
SIGNAL \outRom[2]~output_o\ : std_logic;
SIGNAL \outRom[3]~output_o\ : std_logic;
SIGNAL \outRom[4]~output_o\ : std_logic;
SIGNAL \outRom[5]~output_o\ : std_logic;
SIGNAL \outRom[6]~output_o\ : std_logic;
SIGNAL \outRom[7]~output_o\ : std_logic;
SIGNAL \outUla[0]~output_o\ : std_logic;
SIGNAL \outUla[1]~output_o\ : std_logic;
SIGNAL \outUla[2]~output_o\ : std_logic;
SIGNAL \outUla[3]~output_o\ : std_logic;
SIGNAL \outUla[4]~output_o\ : std_logic;
SIGNAL \outUla[5]~output_o\ : std_logic;
SIGNAL \outUla[6]~output_o\ : std_logic;
SIGNAL \outUla[7]~output_o\ : std_logic;
SIGNAL \out_br_regA[0]~output_o\ : std_logic;
SIGNAL \out_br_regA[1]~output_o\ : std_logic;
SIGNAL \out_br_regA[2]~output_o\ : std_logic;
SIGNAL \out_br_regA[3]~output_o\ : std_logic;
SIGNAL \out_br_regA[4]~output_o\ : std_logic;
SIGNAL \out_br_regA[5]~output_o\ : std_logic;
SIGNAL \out_br_regA[6]~output_o\ : std_logic;
SIGNAL \out_br_regA[7]~output_o\ : std_logic;
SIGNAL \out_br_regB[0]~output_o\ : std_logic;
SIGNAL \out_br_regB[1]~output_o\ : std_logic;
SIGNAL \out_br_regB[2]~output_o\ : std_logic;
SIGNAL \out_br_regB[3]~output_o\ : std_logic;
SIGNAL \out_br_regB[4]~output_o\ : std_logic;
SIGNAL \out_br_regB[5]~output_o\ : std_logic;
SIGNAL \out_br_regB[6]~output_o\ : std_logic;
SIGNAL \out_br_regB[7]~output_o\ : std_logic;
SIGNAL \out_opcode[0]~output_o\ : std_logic;
SIGNAL \out_opcode[1]~output_o\ : std_logic;
SIGNAL \out_opcode[2]~output_o\ : std_logic;
SIGNAL \out_opcode[3]~output_o\ : std_logic;
SIGNAL \out_rs[0]~output_o\ : std_logic;
SIGNAL \out_rs[1]~output_o\ : std_logic;
SIGNAL \out_rt[0]~output_o\ : std_logic;
SIGNAL \out_rt[1]~output_o\ : std_logic;
SIGNAL \out_endereco[0]~output_o\ : std_logic;
SIGNAL \out_endereco[1]~output_o\ : std_logic;
SIGNAL \out_endereco[2]~output_o\ : std_logic;
SIGNAL \out_endereco[3]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[0]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[1]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[2]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[3]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[4]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[5]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[6]~output_o\ : std_logic;
SIGNAL \out_out_mult4_2X1_ram_ula[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \port_map_addr|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~2\ : std_logic;
SIGNAL \port_map_addr|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~6\ : std_logic;
SIGNAL \port_map_addr|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~10\ : std_logic;
SIGNAL \port_map_addr|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~14\ : std_logic;
SIGNAL \port_map_addr|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~18\ : std_logic;
SIGNAL \port_map_addr|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~22\ : std_logic;
SIGNAL \port_map_addr|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_addr|Add0~26\ : std_logic;
SIGNAL \port_map_addr|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_unidade_de_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~59_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~11_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~60_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~19_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~61_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~62_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~35_q\ : std_logic;
SIGNAL \port_map_rom|rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~44_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~9_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~43_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~8_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~20_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~46_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b0|Cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~11_combout\ : std_logic;
SIGNAL \port_map_rom|rom_memory~10_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~34_cout\ : std_logic;
SIGNAL \port_map_ula|Add1~2\ : std_logic;
SIGNAL \port_map_ula|Add1~5_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~48_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~6\ : std_logic;
SIGNAL \port_map_ula|Add1~9_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~50_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~10\ : std_logic;
SIGNAL \port_map_ula|Add1~13_sumout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~52_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|Cout~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|Cout~1_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|Cout~2_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~54_combout\ : std_logic;
SIGNAL \port_map_ula|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b5|Cout~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~56_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~14\ : std_logic;
SIGNAL \port_map_ula|Add1~18\ : std_logic;
SIGNAL \port_map_ula|Add1~22\ : std_logic;
SIGNAL \port_map_ula|Add1~25_sumout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~58_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ : std_logic;
SIGNAL \port_map_ula|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~26\ : std_logic;
SIGNAL \port_map_ula|Add1~29_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~18_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~57_combout\ : std_logic;
SIGNAL \port_map_ula|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~17_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~55_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~21_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~16_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~53_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~17_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~15_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~51_combout\ : std_logic;
SIGNAL \port_map_ula|Mux8~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~14_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~49_combout\ : std_logic;
SIGNAL \port_map_ula|Mux9~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~13_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~47_combout\ : std_logic;
SIGNAL \port_map_ula|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~12_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|registradores~45_combout\ : std_logic;
SIGNAL \port_map_ula|Add1~1_sumout\ : std_logic;
SIGNAL \port_map_ula|Mux11~2_combout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \port_map_ula|Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|overflow~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ula|overflow~combout\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|Produto\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_pc|outPort\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_pc|ALT_INV_outPort\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \port_map_ula|pot_map_multi|ALT_INV_Produto\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_map_ula|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_overflow~combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|ALT_INV_overflow~0_combout\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~11_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~10_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~7_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~58_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~57_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~42_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~34_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~26_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~18_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~56_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~55_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~41_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~33_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~25_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~17_q\ : std_logic;
SIGNAL \port_map_ula|soma|b5|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~54_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~53_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~40_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~32_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~24_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~16_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~52_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~39_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~31_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~23_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~15_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~3_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~2_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~50_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~38_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~30_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~22_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~14_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~48_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~47_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~37_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~29_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~21_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~13_q\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~46_combout\ : std_logic;
SIGNAL \port_map_ula|soma|b0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~36_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~28_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~20_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~12_q\ : std_logic;
SIGNAL \port_map_ula|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~44_combout\ : std_logic;
SIGNAL \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~43_combout\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~35_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~27_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~19_q\ : std_logic;
SIGNAL \port_map_banco_de_registradores|ALT_INV_registradores~11_q\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~9_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~8_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~7_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~6_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~5_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~4_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~3_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~2_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~1_combout\ : std_logic;
SIGNAL \port_map_rom|ALT_INV_rom_memory~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
outPc <= ww_outPc;
outRam <= ww_outRam;
outRom <= ww_outRom;
outUla <= ww_outUla;
out_br_regA <= ww_out_br_regA;
out_br_regB <= ww_out_br_regB;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_endereco <= ww_out_endereco;
overflow <= ww_overflow;
out_out_mult4_2X1_ram_ula <= ww_out_out_mult4_2X1_ram_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \port_map_ula|Mux11~2_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \port_map_ula|Mux10~1_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \port_map_ula|Mux9~1_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \port_map_ula|Mux8~2_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \port_map_ula|Mux7~2_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \port_map_ula|Mux6~1_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \port_map_ula|Mux5~1_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \port_map_ula|Mux4~1_combout\;

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\port_map_rom|rom_memory~3_combout\ & \port_map_rom|rom_memory~1_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\port_map_ula|pot_map_multi|Mult0~mac_AX_bus\ <= (\port_map_banco_de_registradores|registradores~57_combout\ & \port_map_banco_de_registradores|registradores~55_combout\ & \port_map_banco_de_registradores|registradores~53_combout\ & 
\port_map_banco_de_registradores|registradores~51_combout\ & \port_map_banco_de_registradores|registradores~49_combout\ & \port_map_banco_de_registradores|registradores~47_combout\ & \port_map_banco_de_registradores|registradores~45_combout\ & 
\port_map_banco_de_registradores|registradores~44_combout\);

\port_map_ula|pot_map_multi|Mult0~mac_AY_bus\ <= (\port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & 
\port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ & \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ & \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\);

\port_map_ula|pot_map_multi|Produto\(0) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(0);
\port_map_ula|pot_map_multi|Produto\(1) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(1);
\port_map_ula|pot_map_multi|Produto\(2) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(2);
\port_map_ula|pot_map_multi|Produto\(3) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(3);
\port_map_ula|pot_map_multi|Produto\(4) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(4);
\port_map_ula|pot_map_multi|Produto\(5) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(5);
\port_map_ula|pot_map_multi|Produto\(6) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(6);
\port_map_ula|pot_map_multi|Produto\(7) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(7);
\port_map_ula|pot_map_multi|Produto\(8) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(8);
\port_map_ula|pot_map_multi|Produto\(9) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(9);
\port_map_ula|pot_map_multi|Produto\(10) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(10);
\port_map_ula|pot_map_multi|Produto\(11) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(11);
\port_map_ula|pot_map_multi|Produto\(12) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(12);
\port_map_ula|pot_map_multi|Produto\(13) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(13);
\port_map_ula|pot_map_multi|Produto\(14) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(14);
\port_map_ula|pot_map_multi|Produto\(15) <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(15);
\port_map_ula|pot_map_multi|Mult0~8\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(16);
\port_map_ula|pot_map_multi|Mult0~9\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(17);
\port_map_ula|pot_map_multi|Mult0~10\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(18);
\port_map_ula|pot_map_multi|Mult0~11\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(19);
\port_map_ula|pot_map_multi|Mult0~12\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(20);
\port_map_ula|pot_map_multi|Mult0~13\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(21);
\port_map_ula|pot_map_multi|Mult0~14\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(22);
\port_map_ula|pot_map_multi|Mult0~15\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(23);
\port_map_ula|pot_map_multi|Mult0~16\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(24);
\port_map_ula|pot_map_multi|Mult0~17\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(25);
\port_map_ula|pot_map_multi|Mult0~18\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(26);
\port_map_ula|pot_map_multi|Mult0~19\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(27);
\port_map_ula|pot_map_multi|Mult0~20\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(28);
\port_map_ula|pot_map_multi|Mult0~21\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(29);
\port_map_ula|pot_map_multi|Mult0~22\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(30);
\port_map_ula|pot_map_multi|Mult0~23\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(31);
\port_map_ula|pot_map_multi|Mult0~24\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(32);
\port_map_ula|pot_map_multi|Mult0~25\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(33);
\port_map_ula|pot_map_multi|Mult0~26\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(34);
\port_map_ula|pot_map_multi|Mult0~27\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(35);
\port_map_ula|pot_map_multi|Mult0~28\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(36);
\port_map_ula|pot_map_multi|Mult0~29\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(37);
\port_map_ula|pot_map_multi|Mult0~30\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(38);
\port_map_ula|pot_map_multi|Mult0~31\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(39);
\port_map_ula|pot_map_multi|Mult0~32\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(40);
\port_map_ula|pot_map_multi|Mult0~33\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(41);
\port_map_ula|pot_map_multi|Mult0~34\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(42);
\port_map_ula|pot_map_multi|Mult0~35\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(43);
\port_map_ula|pot_map_multi|Mult0~36\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(44);
\port_map_ula|pot_map_multi|Mult0~37\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(45);
\port_map_ula|pot_map_multi|Mult0~38\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(46);
\port_map_ula|pot_map_multi|Mult0~39\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(47);
\port_map_ula|pot_map_multi|Mult0~40\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(48);
\port_map_ula|pot_map_multi|Mult0~41\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(49);
\port_map_ula|pot_map_multi|Mult0~42\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(50);
\port_map_ula|pot_map_multi|Mult0~43\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(51);
\port_map_ula|pot_map_multi|Mult0~44\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(52);
\port_map_ula|pot_map_multi|Mult0~45\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(53);
\port_map_ula|pot_map_multi|Mult0~46\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(54);
\port_map_ula|pot_map_multi|Mult0~47\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(55);
\port_map_ula|pot_map_multi|Mult0~48\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(56);
\port_map_ula|pot_map_multi|Mult0~49\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(57);
\port_map_ula|pot_map_multi|Mult0~50\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(58);
\port_map_ula|pot_map_multi|Mult0~51\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(59);
\port_map_ula|pot_map_multi|Mult0~52\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(60);
\port_map_ula|pot_map_multi|Mult0~53\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(61);
\port_map_ula|pot_map_multi|Mult0~54\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(62);
\port_map_ula|pot_map_multi|Mult0~55\ <= \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\(63);
\port_map_pc|ALT_INV_outPort\(0) <= NOT \port_map_pc|outPort\(0);
\port_map_ula|ALT_INV_Add1~29_sumout\ <= NOT \port_map_ula|Add1~29_sumout\;
\port_map_ula|ALT_INV_Add1~25_sumout\ <= NOT \port_map_ula|Add1~25_sumout\;
\port_map_ula|ALT_INV_Add1~21_sumout\ <= NOT \port_map_ula|Add1~21_sumout\;
\port_map_ula|ALT_INV_Add1~17_sumout\ <= NOT \port_map_ula|Add1~17_sumout\;
\port_map_ula|ALT_INV_Add1~13_sumout\ <= NOT \port_map_ula|Add1~13_sumout\;
\port_map_ula|ALT_INV_Add1~9_sumout\ <= NOT \port_map_ula|Add1~9_sumout\;
\port_map_ula|ALT_INV_Add1~5_sumout\ <= NOT \port_map_ula|Add1~5_sumout\;
\port_map_ula|pot_map_multi|ALT_INV_Produto\(15) <= NOT \port_map_ula|pot_map_multi|Produto\(15);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(14) <= NOT \port_map_ula|pot_map_multi|Produto\(14);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(13) <= NOT \port_map_ula|pot_map_multi|Produto\(13);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(12) <= NOT \port_map_ula|pot_map_multi|Produto\(12);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(11) <= NOT \port_map_ula|pot_map_multi|Produto\(11);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(10) <= NOT \port_map_ula|pot_map_multi|Produto\(10);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(9) <= NOT \port_map_ula|pot_map_multi|Produto\(9);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(8) <= NOT \port_map_ula|pot_map_multi|Produto\(8);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(7) <= NOT \port_map_ula|pot_map_multi|Produto\(7);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(6) <= NOT \port_map_ula|pot_map_multi|Produto\(6);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(5) <= NOT \port_map_ula|pot_map_multi|Produto\(5);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(4) <= NOT \port_map_ula|pot_map_multi|Produto\(4);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(3) <= NOT \port_map_ula|pot_map_multi|Produto\(3);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(2) <= NOT \port_map_ula|pot_map_multi|Produto\(2);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(1) <= NOT \port_map_ula|pot_map_multi|Produto\(1);
\port_map_ula|pot_map_multi|ALT_INV_Produto\(0) <= NOT \port_map_ula|pot_map_multi|Produto\(0);
\port_map_ula|ALT_INV_Add1~1_sumout\ <= NOT \port_map_ula|Add1~1_sumout\;
\port_map_ula|ALT_INV_overflow~combout\ <= NOT \port_map_ula|overflow~combout\;
\port_map_ula|ALT_INV_Mux4~0_combout\ <= NOT \port_map_ula|Mux4~0_combout\;
\port_map_ula|ALT_INV_Mux5~0_combout\ <= NOT \port_map_ula|Mux5~0_combout\;
\port_map_ula|ALT_INV_Mux6~0_combout\ <= NOT \port_map_ula|Mux6~0_combout\;
\port_map_ula|ALT_INV_Mux7~1_combout\ <= NOT \port_map_ula|Mux7~1_combout\;
\port_map_ula|ALT_INV_Mux8~1_combout\ <= NOT \port_map_ula|Mux8~1_combout\;
\port_map_ula|ALT_INV_Mux8~0_combout\ <= NOT \port_map_ula|Mux8~0_combout\;
\port_map_ula|ALT_INV_Mux9~0_combout\ <= NOT \port_map_ula|Mux9~0_combout\;
\port_map_ula|ALT_INV_Mux10~0_combout\ <= NOT \port_map_ula|Mux10~0_combout\;
\port_map_ula|ALT_INV_Mux11~1_combout\ <= NOT \port_map_ula|Mux11~1_combout\;
\port_map_ula|ALT_INV_Mux12~0_combout\ <= NOT \port_map_ula|Mux12~0_combout\;
\port_map_ula|soma|ALT_INV_overflow~0_combout\ <= NOT \port_map_ula|soma|overflow~0_combout\;
\port_map_ula|ALT_INV_Equal0~0_combout\ <= NOT \port_map_ula|Equal0~0_combout\;
\port_map_rom|ALT_INV_rom_memory~11_combout\ <= NOT \port_map_rom|rom_memory~11_combout\;
\port_map_rom|ALT_INV_rom_memory~10_combout\ <= NOT \port_map_rom|rom_memory~10_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~7_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~58_combout\ <= NOT \port_map_banco_de_registradores|registradores~58_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~57_combout\ <= NOT \port_map_banco_de_registradores|registradores~57_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~42_q\ <= NOT \port_map_banco_de_registradores|registradores~42_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~34_q\ <= NOT \port_map_banco_de_registradores|registradores~34_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~26_q\ <= NOT \port_map_banco_de_registradores|registradores~26_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~18_q\ <= NOT \port_map_banco_de_registradores|registradores~18_q\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~56_combout\ <= NOT \port_map_banco_de_registradores|registradores~56_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~55_combout\ <= NOT \port_map_banco_de_registradores|registradores~55_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~41_q\ <= NOT \port_map_banco_de_registradores|registradores~41_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~33_q\ <= NOT \port_map_banco_de_registradores|registradores~33_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~25_q\ <= NOT \port_map_banco_de_registradores|registradores~25_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~17_q\ <= NOT \port_map_banco_de_registradores|registradores~17_q\;
\port_map_ula|soma|b5|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b5|Cout~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~54_combout\ <= NOT \port_map_banco_de_registradores|registradores~54_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~53_combout\ <= NOT \port_map_banco_de_registradores|registradores~53_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~40_q\ <= NOT \port_map_banco_de_registradores|registradores~40_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~32_q\ <= NOT \port_map_banco_de_registradores|registradores~32_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~24_q\ <= NOT \port_map_banco_de_registradores|registradores~24_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~16_q\ <= NOT \port_map_banco_de_registradores|registradores~16_q\;
\port_map_ula|ALT_INV_Mux7~0_combout\ <= NOT \port_map_ula|Mux7~0_combout\;
\port_map_ula|soma|b3|ALT_INV_Cout~2_combout\ <= NOT \port_map_ula|soma|b3|Cout~2_combout\;
\port_map_ula|soma|b3|ALT_INV_Cout~1_combout\ <= NOT \port_map_ula|soma|b3|Cout~1_combout\;
\port_map_ula|soma|b3|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b3|Cout~0_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~52_combout\ <= NOT \port_map_banco_de_registradores|registradores~52_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~51_combout\ <= NOT \port_map_banco_de_registradores|registradores~51_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~39_q\ <= NOT \port_map_banco_de_registradores|registradores~39_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~31_q\ <= NOT \port_map_banco_de_registradores|registradores~31_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~23_q\ <= NOT \port_map_banco_de_registradores|registradores~23_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~15_q\ <= NOT \port_map_banco_de_registradores|registradores~15_q\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~3_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~2_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~50_combout\ <= NOT \port_map_banco_de_registradores|registradores~50_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~49_combout\ <= NOT \port_map_banco_de_registradores|registradores~49_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~38_q\ <= NOT \port_map_banco_de_registradores|registradores~38_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~30_q\ <= NOT \port_map_banco_de_registradores|registradores~30_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~22_q\ <= NOT \port_map_banco_de_registradores|registradores~22_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~14_q\ <= NOT \port_map_banco_de_registradores|registradores~14_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~48_combout\ <= NOT \port_map_banco_de_registradores|registradores~48_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~47_combout\ <= NOT \port_map_banco_de_registradores|registradores~47_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~37_q\ <= NOT \port_map_banco_de_registradores|registradores~37_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~29_q\ <= NOT \port_map_banco_de_registradores|registradores~29_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~21_q\ <= NOT \port_map_banco_de_registradores|registradores~21_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~13_q\ <= NOT \port_map_banco_de_registradores|registradores~13_q\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~46_combout\ <= NOT \port_map_banco_de_registradores|registradores~46_combout\;
\port_map_ula|soma|b0|ALT_INV_Cout~0_combout\ <= NOT \port_map_ula|soma|b0|Cout~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~45_combout\ <= NOT \port_map_banco_de_registradores|registradores~45_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~36_q\ <= NOT \port_map_banco_de_registradores|registradores~36_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~28_q\ <= NOT \port_map_banco_de_registradores|registradores~28_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~20_q\ <= NOT \port_map_banco_de_registradores|registradores~20_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~12_q\ <= NOT \port_map_banco_de_registradores|registradores~12_q\;
\port_map_ula|ALT_INV_Mux11~0_combout\ <= NOT \port_map_ula|Mux11~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~44_combout\ <= NOT \port_map_banco_de_registradores|registradores~44_combout\;
\port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\ <= NOT \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~43_combout\ <= NOT \port_map_banco_de_registradores|registradores~43_combout\;
\port_map_banco_de_registradores|ALT_INV_registradores~35_q\ <= NOT \port_map_banco_de_registradores|registradores~35_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~27_q\ <= NOT \port_map_banco_de_registradores|registradores~27_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~19_q\ <= NOT \port_map_banco_de_registradores|registradores~19_q\;
\port_map_banco_de_registradores|ALT_INV_registradores~11_q\ <= NOT \port_map_banco_de_registradores|registradores~11_q\;
\port_map_rom|ALT_INV_rom_memory~9_combout\ <= NOT \port_map_rom|rom_memory~9_combout\;
\port_map_rom|ALT_INV_rom_memory~8_combout\ <= NOT \port_map_rom|rom_memory~8_combout\;
\port_map_rom|ALT_INV_rom_memory~7_combout\ <= NOT \port_map_rom|rom_memory~7_combout\;
\port_map_rom|ALT_INV_rom_memory~6_combout\ <= NOT \port_map_rom|rom_memory~6_combout\;
\port_map_rom|ALT_INV_rom_memory~5_combout\ <= NOT \port_map_rom|rom_memory~5_combout\;
\port_map_rom|ALT_INV_rom_memory~4_combout\ <= NOT \port_map_rom|rom_memory~4_combout\;
\port_map_rom|ALT_INV_rom_memory~3_combout\ <= NOT \port_map_rom|rom_memory~3_combout\;
\port_map_rom|ALT_INV_rom_memory~2_combout\ <= NOT \port_map_rom|rom_memory~2_combout\;
\port_map_rom|ALT_INV_rom_memory~1_combout\ <= NOT \port_map_rom|rom_memory~1_combout\;
\port_map_rom|ALT_INV_rom_memory~0_combout\ <= NOT \port_map_rom|rom_memory~0_combout\;
\port_map_pc|ALT_INV_outPort\(7) <= NOT \port_map_pc|outPort\(7);
\port_map_pc|ALT_INV_outPort\(6) <= NOT \port_map_pc|outPort\(6);
\port_map_pc|ALT_INV_outPort\(5) <= NOT \port_map_pc|outPort\(5);
\port_map_pc|ALT_INV_outPort\(4) <= NOT \port_map_pc|outPort\(4);
\port_map_pc|ALT_INV_outPort\(3) <= NOT \port_map_pc|outPort\(3);
\port_map_pc|ALT_INV_outPort\(2) <= NOT \port_map_pc|outPort\(2);
\port_map_pc|ALT_INV_outPort\(1) <= NOT \port_map_pc|outPort\(1);

\outPc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(0),
	devoe => ww_devoe,
	o => \outPc[0]~output_o\);

\outPc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(1),
	devoe => ww_devoe,
	o => \outPc[1]~output_o\);

\outPc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(2),
	devoe => ww_devoe,
	o => \outPc[2]~output_o\);

\outPc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(3),
	devoe => ww_devoe,
	o => \outPc[3]~output_o\);

\outPc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(4),
	devoe => ww_devoe,
	o => \outPc[4]~output_o\);

\outPc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(5),
	devoe => ww_devoe,
	o => \outPc[5]~output_o\);

\outPc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(6),
	devoe => ww_devoe,
	o => \outPc[6]~output_o\);

\outPc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|outPort\(7),
	devoe => ww_devoe,
	o => \outPc[7]~output_o\);

\outRam[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[0]~output_o\);

\outRam[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[1]~output_o\);

\outRam[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[2]~output_o\);

\outRam[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[3]~output_o\);

\outRam[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[4]~output_o\);

\outRam[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[5]~output_o\);

\outRam[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[6]~output_o\);

\outRam[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \outRam[7]~output_o\);

\outRom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => \outRom[0]~output_o\);

\outRom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => \outRom[1]~output_o\);

\outRom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => \outRom[2]~output_o\);

\outRom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => \outRom[3]~output_o\);

\outRom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outRom[4]~output_o\);

\outRom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => \outRom[5]~output_o\);

\outRom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~8_combout\,
	devoe => ww_devoe,
	o => \outRom[6]~output_o\);

\outRom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~9_combout\,
	devoe => ww_devoe,
	o => \outRom[7]~output_o\);

\outUla[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \outUla[0]~output_o\);

\outUla[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \outUla[1]~output_o\);

\outUla[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \outUla[2]~output_o\);

\outUla[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \outUla[3]~output_o\);

\outUla[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \outUla[4]~output_o\);

\outUla[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \outUla[5]~output_o\);

\outUla[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \outUla[6]~output_o\);

\outUla[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \outUla[7]~output_o\);

\out_br_regA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~44_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[0]~output_o\);

\out_br_regA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~45_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[1]~output_o\);

\out_br_regA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~47_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[2]~output_o\);

\out_br_regA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~49_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[3]~output_o\);

\out_br_regA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~51_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[4]~output_o\);

\out_br_regA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~53_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[5]~output_o\);

\out_br_regA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~55_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[6]~output_o\);

\out_br_regA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~57_combout\,
	devoe => ww_devoe,
	o => \out_br_regA[7]~output_o\);

\out_br_regB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~43_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[0]~output_o\);

\out_br_regB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~46_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[1]~output_o\);

\out_br_regB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~48_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[2]~output_o\);

\out_br_regB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~50_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[3]~output_o\);

\out_br_regB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~52_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[4]~output_o\);

\out_br_regB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~54_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[5]~output_o\);

\out_br_regB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~56_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[6]~output_o\);

\out_br_regB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_banco_de_registradores|registradores~58_combout\,
	devoe => ww_devoe,
	o => \out_br_regB[7]~output_o\);

\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_opcode[0]~output_o\);

\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~7_combout\,
	devoe => ww_devoe,
	o => \out_opcode[1]~output_o\);

\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~8_combout\,
	devoe => ww_devoe,
	o => \out_opcode[2]~output_o\);

\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~9_combout\,
	devoe => ww_devoe,
	o => \out_opcode[3]~output_o\);

\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => \out_rs[0]~output_o\);

\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => \out_rs[1]~output_o\);

\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => \out_rt[0]~output_o\);

\out_rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => \out_rt[1]~output_o\);

\out_endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[0]~output_o\);

\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~3_combout\,
	devoe => ww_devoe,
	o => \out_endereco[1]~output_o\);

\out_endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~5_combout\,
	devoe => ww_devoe,
	o => \out_endereco[2]~output_o\);

\out_endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_rom|rom_memory~6_combout\,
	devoe => ww_devoe,
	o => \out_endereco[3]~output_o\);

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|overflow~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\out_out_mult4_2X1_ram_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux11~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[0]~output_o\);

\out_out_mult4_2X1_ram_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[1]~output_o\);

\out_out_mult4_2X1_ram_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[2]~output_o\);

\out_out_mult4_2X1_ram_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[3]~output_o\);

\out_out_mult4_2X1_ram_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[4]~output_o\);

\out_out_mult4_2X1_ram_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[5]~output_o\);

\out_out_mult4_2X1_ram_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[6]~output_o\);

\out_out_mult4_2X1_ram_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ula|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mult4_2X1_ram_ula[7]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\port_map_addr|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~1_sumout\ = SUM(( \port_map_pc|outPort\(0) ) + ( VCC ) + ( !VCC ))
-- \port_map_addr|Add0~2\ = CARRY(( \port_map_pc|outPort\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(0),
	cin => GND,
	sumout => \port_map_addr|Add0~1_sumout\,
	cout => \port_map_addr|Add0~2\);

\port_map_pc|outPort[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(0));

\port_map_addr|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~5_sumout\ = SUM(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))
-- \port_map_addr|Add0~6\ = CARRY(( \port_map_pc|outPort\(1) ) + ( GND ) + ( \port_map_addr|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(1),
	cin => \port_map_addr|Add0~2\,
	sumout => \port_map_addr|Add0~5_sumout\,
	cout => \port_map_addr|Add0~6\);

\port_map_pc|outPort[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(1));

\port_map_addr|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~9_sumout\ = SUM(( \port_map_pc|outPort\(2) ) + ( GND ) + ( \port_map_addr|Add0~6\ ))
-- \port_map_addr|Add0~10\ = CARRY(( \port_map_pc|outPort\(2) ) + ( GND ) + ( \port_map_addr|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(2),
	cin => \port_map_addr|Add0~6\,
	sumout => \port_map_addr|Add0~9_sumout\,
	cout => \port_map_addr|Add0~10\);

\port_map_pc|outPort[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(2));

\port_map_addr|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~13_sumout\ = SUM(( \port_map_pc|outPort\(3) ) + ( GND ) + ( \port_map_addr|Add0~10\ ))
-- \port_map_addr|Add0~14\ = CARRY(( \port_map_pc|outPort\(3) ) + ( GND ) + ( \port_map_addr|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(3),
	cin => \port_map_addr|Add0~10\,
	sumout => \port_map_addr|Add0~13_sumout\,
	cout => \port_map_addr|Add0~14\);

\port_map_pc|outPort[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(3));

\port_map_addr|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~17_sumout\ = SUM(( \port_map_pc|outPort\(4) ) + ( GND ) + ( \port_map_addr|Add0~14\ ))
-- \port_map_addr|Add0~18\ = CARRY(( \port_map_pc|outPort\(4) ) + ( GND ) + ( \port_map_addr|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(4),
	cin => \port_map_addr|Add0~14\,
	sumout => \port_map_addr|Add0~17_sumout\,
	cout => \port_map_addr|Add0~18\);

\port_map_pc|outPort[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(4));

\port_map_addr|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~21_sumout\ = SUM(( \port_map_pc|outPort\(5) ) + ( GND ) + ( \port_map_addr|Add0~18\ ))
-- \port_map_addr|Add0~22\ = CARRY(( \port_map_pc|outPort\(5) ) + ( GND ) + ( \port_map_addr|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(5),
	cin => \port_map_addr|Add0~18\,
	sumout => \port_map_addr|Add0~21_sumout\,
	cout => \port_map_addr|Add0~22\);

\port_map_pc|outPort[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(5));

\port_map_addr|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~25_sumout\ = SUM(( \port_map_pc|outPort\(6) ) + ( GND ) + ( \port_map_addr|Add0~22\ ))
-- \port_map_addr|Add0~26\ = CARRY(( \port_map_pc|outPort\(6) ) + ( GND ) + ( \port_map_addr|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(6),
	cin => \port_map_addr|Add0~22\,
	sumout => \port_map_addr|Add0~25_sumout\,
	cout => \port_map_addr|Add0~26\);

\port_map_pc|outPort[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(6));

\port_map_addr|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addr|Add0~29_sumout\ = SUM(( \port_map_pc|outPort\(7) ) + ( GND ) + ( \port_map_addr|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_outPort\(7),
	cin => \port_map_addr|Add0~26\,
	sumout => \port_map_addr|Add0~29_sumout\);

\port_map_pc|outPort[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_addr|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|outPort\(7));

\port_map_rom|rom_memory~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~4_combout\ = ( !\port_map_pc|outPort\(7) & ( (!\port_map_pc|outPort\(3) & (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort\(5) & !\port_map_pc|outPort\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(3),
	datab => \port_map_pc|ALT_INV_outPort\(4),
	datac => \port_map_pc|ALT_INV_outPort\(5),
	datad => \port_map_pc|ALT_INV_outPort\(6),
	datae => \port_map_pc|ALT_INV_outPort\(7),
	combout => \port_map_rom|rom_memory~4_combout\);

\port_map_unidade_de_controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_unidade_de_controle|Mux7~0_combout\ = (\port_map_pc|outPort\(0) & (\port_map_pc|outPort\(1) & (\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_unidade_de_controle|Mux7~0_combout\);

\port_map_banco_de_registradores|registradores~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~59_combout\ = (!\port_map_rom|rom_memory~4_combout\) # ((!\port_map_pc|outPort\(0) & ((!\port_map_pc|outPort\(1)) # (\port_map_pc|outPort\(2)))) # (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(1) & 
-- \port_map_pc|outPort\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001110111111111000111011111111100011101111111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~59_combout\);

\port_map_banco_de_registradores|registradores~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~11_q\);

\port_map_banco_de_registradores|registradores~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~60_combout\ = (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~60_combout\);

\port_map_banco_de_registradores|registradores~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~19_q\);

\port_map_banco_de_registradores|registradores~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~61_combout\ = (!\port_map_pc|outPort\(0) & (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~61_combout\);

\port_map_banco_de_registradores|registradores~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~27_q\);

\port_map_banco_de_registradores|registradores~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~62_combout\ = (\port_map_pc|outPort\(0) & (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_banco_de_registradores|registradores~62_combout\);

\port_map_banco_de_registradores|registradores~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux11~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~35_q\);

\port_map_rom|rom_memory~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~5_combout\ = (\port_map_pc|outPort\(0) & (!\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~5_combout\);

\port_map_rom|rom_memory~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~6_combout\ = (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~6_combout\);

\port_map_banco_de_registradores|registradores~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~44_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~35_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~27_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~19_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~11_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~19_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~44_combout\);

\port_map_rom|rom_memory~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~0_combout\ = (!\port_map_pc|outPort\(3) & (!\port_map_pc|outPort\(4) & ((\port_map_pc|outPort\(0)) # (\port_map_pc|outPort\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000010000001100000001000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(4),
	datad => \port_map_pc|ALT_INV_outPort\(0),
	combout => \port_map_rom|rom_memory~0_combout\);

\port_map_rom|rom_memory~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~1_combout\ = (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & (!\port_map_pc|outPort\(7) & \port_map_rom|rom_memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(5),
	datab => \port_map_pc|ALT_INV_outPort\(6),
	datac => \port_map_pc|ALT_INV_outPort\(7),
	datad => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~1_combout\);

\port_map_rom|rom_memory~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~9_combout\ = ( !\port_map_pc|outPort\(6) & ( !\port_map_pc|outPort\(7) & ( (!\port_map_pc|outPort\(2) & (!\port_map_pc|outPort\(3) & (!\port_map_pc|outPort\(4) & !\port_map_pc|outPort\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(2),
	datab => \port_map_pc|ALT_INV_outPort\(3),
	datac => \port_map_pc|ALT_INV_outPort\(4),
	datad => \port_map_pc|ALT_INV_outPort\(5),
	datae => \port_map_pc|ALT_INV_outPort\(6),
	dataf => \port_map_pc|ALT_INV_outPort\(7),
	combout => \port_map_rom|rom_memory~9_combout\);

\port_map_rom|rom_memory~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~2_combout\ = (\port_map_pc|outPort\(1) & (!\port_map_pc|outPort\(3) & ((!\port_map_pc|outPort\(2)) # (\port_map_pc|outPort\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000001100010000000000110001000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(1),
	datac => \port_map_pc|ALT_INV_outPort\(2),
	datad => \port_map_pc|ALT_INV_outPort\(3),
	combout => \port_map_rom|rom_memory~2_combout\);

\port_map_rom|rom_memory~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~3_combout\ = ( \port_map_rom|rom_memory~2_combout\ & ( (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & !\port_map_pc|outPort\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(4),
	datab => \port_map_pc|ALT_INV_outPort\(5),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_pc|ALT_INV_outPort\(7),
	datae => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~3_combout\);

\port_map_banco_de_registradores|registradores~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~43_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~35_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~27_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~19_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~11_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~19_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~27_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~35_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~43_combout\);

\port_map_mult1_2x1_br_ula|Sout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ = (!\port_map_rom|rom_memory~9_combout\ & ((\port_map_banco_de_registradores|registradores~43_combout\))) # (\port_map_rom|rom_memory~9_combout\ & (\port_map_rom|rom_memory~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~43_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[0]~0_combout\);

\port_map_rom|rom_memory~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~8_combout\ = (\port_map_pc|outPort\(1) & (\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(1),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~8_combout\);

\port_map_rom|rom_memory~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~7_combout\ = (\port_map_pc|outPort\(0) & (\port_map_pc|outPort\(2) & \port_map_rom|rom_memory~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(0),
	datab => \port_map_pc|ALT_INV_outPort\(2),
	datac => \port_map_rom|ALT_INV_rom_memory~4_combout\,
	combout => \port_map_rom|rom_memory~7_combout\);

\port_map_ula|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~0_combout\ = (!\port_map_rom|rom_memory~7_combout\ & ((\port_map_rom|rom_memory~9_combout\) # (\port_map_rom|rom_memory~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	combout => \port_map_ula|Mux11~0_combout\);

\port_map_banco_de_registradores|registradores~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~20_q\);

\port_map_banco_de_registradores|registradores~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~28_q\);

\port_map_banco_de_registradores|registradores~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~36_q\);

\port_map_banco_de_registradores|registradores~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~46_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~36_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~28_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~20_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~12_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~20_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~46_combout\);

\port_map_mult1_2x1_br_ula|Sout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ = (!\port_map_rom|rom_memory~9_combout\ & ((\port_map_banco_de_registradores|registradores~46_combout\))) # (\port_map_rom|rom_memory~9_combout\ & (\port_map_rom|rom_memory~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~46_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\);

\port_map_ula|soma|b0|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b0|Cout~0_combout\ = (\port_map_banco_de_registradores|registradores~44_combout\ & ((!\port_map_rom|rom_memory~9_combout\ & ((\port_map_banco_de_registradores|registradores~43_combout\))) # (\port_map_rom|rom_memory~9_combout\ & 
-- (\port_map_rom|rom_memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110100000001000011010000000100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~44_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~43_combout\,
	combout => \port_map_ula|soma|b0|Cout~0_combout\);

\port_map_ula|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( \port_map_ula|soma|b0|Cout~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & (((!\port_map_rom|rom_memory~8_combout\ & \port_map_rom|rom_memory~7_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~45_combout\))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( \port_map_ula|soma|b0|Cout~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~8_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~45_combout\) # (\port_map_rom|rom_memory~7_combout\))) # (\port_map_rom|rom_memory~8_combout\ & (\port_map_banco_de_registradores|registradores~45_combout\)))) ) ) ) # ( 
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( !\port_map_ula|soma|b0|Cout~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~8_combout\ & ((!\port_map_banco_de_registradores|registradores~45_combout\) # 
-- (\port_map_rom|rom_memory~7_combout\))) # (\port_map_rom|rom_memory~8_combout\ & (\port_map_banco_de_registradores|registradores~45_combout\)))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( !\port_map_ula|soma|b0|Cout~0_combout\ & ( 
-- (!\port_map_ula|Mux11~0_combout\ & (((!\port_map_rom|rom_memory~8_combout\ & \port_map_rom|rom_memory~7_combout\)) # (\port_map_banco_de_registradores|registradores~45_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100100001001000110010000100100011000000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datab => \port_map_ula|ALT_INV_Mux11~0_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\,
	datad => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	dataf => \port_map_ula|soma|b0|ALT_INV_Cout~0_combout\,
	combout => \port_map_ula|Mux10~0_combout\);

\port_map_rom|rom_memory~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~11_combout\ = (!\port_map_pc|outPort\(4) & (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & \port_map_rom|rom_memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(4),
	datab => \port_map_pc|ALT_INV_outPort\(5),
	datac => \port_map_pc|ALT_INV_outPort\(6),
	datad => \port_map_rom|ALT_INV_rom_memory~2_combout\,
	combout => \port_map_rom|rom_memory~11_combout\);

\port_map_rom|rom_memory~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_rom|rom_memory~10_combout\ = (!\port_map_pc|outPort\(5) & (!\port_map_pc|outPort\(6) & \port_map_rom|rom_memory~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_outPort\(5),
	datab => \port_map_pc|ALT_INV_outPort\(6),
	datac => \port_map_rom|ALT_INV_rom_memory~0_combout\,
	combout => \port_map_rom|rom_memory~10_combout\);

\port_map_ula|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ula|Add1~34_cout\);

\port_map_ula|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~1_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~44_combout\ ) + ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~43_combout\)) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((!\port_map_rom|rom_memory~10_combout\) # (\port_map_pc|outPort\(7))))) ) + ( \port_map_ula|Add1~34_cout\ ))
-- \port_map_ula|Add1~2\ = CARRY(( \port_map_banco_de_registradores|registradores~44_combout\ ) + ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~43_combout\)) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((!\port_map_rom|rom_memory~10_combout\) # (\port_map_pc|outPort\(7))))) ) + ( \port_map_ula|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~43_combout\,
	datac => \port_map_pc|ALT_INV_outPort\(7),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~44_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~10_combout\,
	cin => \port_map_ula|Add1~34_cout\,
	sumout => \port_map_ula|Add1~1_sumout\,
	cout => \port_map_ula|Add1~2\);

\port_map_ula|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~5_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~45_combout\ ) + ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~46_combout\)) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((!\port_map_rom|rom_memory~11_combout\) # (\port_map_pc|outPort\(7))))) ) + ( \port_map_ula|Add1~2\ ))
-- \port_map_ula|Add1~6\ = CARRY(( \port_map_banco_de_registradores|registradores~45_combout\ ) + ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~46_combout\)) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((!\port_map_rom|rom_memory~11_combout\) # (\port_map_pc|outPort\(7))))) ) + ( \port_map_ula|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100111001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~46_combout\,
	datac => \port_map_pc|ALT_INV_outPort\(7),
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~11_combout\,
	cin => \port_map_ula|Add1~2\,
	sumout => \port_map_ula|Add1~5_sumout\,
	cout => \port_map_ula|Add1~6\);

\port_map_banco_de_registradores|registradores~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~21_q\);

\port_map_banco_de_registradores|registradores~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~29_q\);

\port_map_banco_de_registradores|registradores~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~37_q\);

\port_map_banco_de_registradores|registradores~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~48_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~37_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~21_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~13_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~48_combout\);

\port_map_ula|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~48_combout\ $ (((\port_map_ula|soma|b0|Cout~0_combout\) # 
-- (\port_map_banco_de_registradores|registradores~45_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & (((!\port_map_banco_de_registradores|registradores~45_combout\ & !\port_map_ula|soma|b0|Cout~0_combout\)))) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~48_combout\ $ (((\port_map_banco_de_registradores|registradores~45_combout\ & 
-- \port_map_ula|soma|b0|Cout~0_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & (((!\port_map_banco_de_registradores|registradores~45_combout\) # (!\port_map_ula|soma|b0|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010010110100100010001011011101110100101101001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~48_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\,
	datad => \port_map_ula|soma|b0|ALT_INV_Cout~0_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	combout => \port_map_ula|Mux9~0_combout\);

\port_map_ula|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~9_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~47_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~48_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~6\ ))
-- \port_map_ula|Add1~10\ = CARRY(( \port_map_banco_de_registradores|registradores~47_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~48_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~48_combout\,
	cin => \port_map_ula|Add1~6\,
	sumout => \port_map_ula|Add1~9_sumout\,
	cout => \port_map_ula|Add1~10\);

\port_map_banco_de_registradores|registradores~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~22_q\);

\port_map_banco_de_registradores|registradores~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~30_q\);

\port_map_banco_de_registradores|registradores~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~38_q\);

\port_map_banco_de_registradores|registradores~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~50_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~38_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~30_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~22_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~14_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~50_combout\);

\port_map_ula|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~13_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~49_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~50_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~10\ ))
-- \port_map_ula|Add1~14\ = CARRY(( \port_map_banco_de_registradores|registradores~49_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~50_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~50_combout\,
	cin => \port_map_ula|Add1~10\,
	sumout => \port_map_ula|Add1~13_sumout\,
	cout => \port_map_ula|Add1~14\);

\port_map_mult1_2x1_br_ula|Sout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~50_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~50_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\);

\port_map_mult1_2x1_br_ula|Sout[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~48_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~48_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\);

\port_map_ula|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ & ( ((!\port_map_banco_de_registradores|registradores~45_combout\ & (\port_map_ula|soma|b0|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) # 
-- (\port_map_banco_de_registradores|registradores~45_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (\port_map_ula|soma|b0|Cout~0_combout\)))) # (\port_map_banco_de_registradores|registradores~47_combout\) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ & ( (\port_map_banco_de_registradores|registradores~47_combout\ & ((!\port_map_banco_de_registradores|registradores~45_combout\ & (\port_map_ula|soma|b0|Cout~0_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) # (\port_map_banco_de_registradores|registradores~45_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (\port_map_ula|soma|b0|Cout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\,
	datab => \port_map_ula|soma|b0|ALT_INV_Cout~0_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~3_combout\,
	combout => \port_map_ula|Mux8~0_combout\);

\port_map_ula|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~1_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ & ( \port_map_ula|Mux8~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~7_combout\ & (\port_map_banco_de_registradores|registradores~49_combout\)) 
-- # (\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|Add1~13_sumout\))))) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ & ( \port_map_ula|Mux8~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~7_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~49_combout\)) # (\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|Add1~13_sumout\))))) ) ) ) # ( \port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ & ( !\port_map_ula|Mux8~0_combout\ & ( 
-- (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~7_combout\ & (!\port_map_banco_de_registradores|registradores~49_combout\)) # (\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|Add1~13_sumout\))))) ) ) ) # ( 
-- !\port_map_mult1_2x1_br_ula|Sout[3]~2_combout\ & ( !\port_map_ula|Mux8~0_combout\ & ( (!\port_map_ula|Mux11~0_combout\ & ((!\port_map_rom|rom_memory~7_combout\ & (\port_map_banco_de_registradores|registradores~49_combout\)) # 
-- (\port_map_rom|rom_memory~7_combout\ & ((\port_map_ula|Add1~13_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010100000001000101010000000100010100010000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux11~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datad => \port_map_ula|ALT_INV_Add1~13_sumout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[3]~2_combout\,
	dataf => \port_map_ula|ALT_INV_Mux8~0_combout\,
	combout => \port_map_ula|Mux8~1_combout\);

\port_map_banco_de_registradores|registradores~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~23_q\);

\port_map_banco_de_registradores|registradores~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~31_q\);

\port_map_banco_de_registradores|registradores~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~39_q\);

\port_map_banco_de_registradores|registradores~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~52_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~39_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~31_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~23_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~15_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~52_combout\);

\port_map_mult1_2x1_br_ula|Sout[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~52_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~52_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\);

\port_map_ula|soma|b3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b3|Cout~0_combout\ = (!\port_map_rom|rom_memory~9_combout\ & (\port_map_banco_de_registradores|registradores~49_combout\ & \port_map_banco_de_registradores|registradores~50_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~50_combout\,
	combout => \port_map_ula|soma|b3|Cout~0_combout\);

\port_map_ula|soma|b3|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b3|Cout~1_combout\ = (!\port_map_banco_de_registradores|registradores~49_combout\ & ((!\port_map_banco_de_registradores|registradores~50_combout\) # (\port_map_rom|rom_memory~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~50_combout\,
	combout => \port_map_ula|soma|b3|Cout~1_combout\);

\port_map_ula|soma|b3|Cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b3|Cout~2_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ & ( !\port_map_ula|soma|b3|Cout~1_combout\ & ( ((!\port_map_banco_de_registradores|registradores~45_combout\ & (\port_map_ula|soma|b0|Cout~0_combout\ & 
-- \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) # (\port_map_banco_de_registradores|registradores~45_combout\ & ((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (\port_map_ula|soma|b0|Cout~0_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~47_combout\) ) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[2]~3_combout\ & ( !\port_map_ula|soma|b3|Cout~1_combout\ & ( (\port_map_banco_de_registradores|registradores~47_combout\ & 
-- ((!\port_map_banco_de_registradores|registradores~45_combout\ & (\port_map_ula|soma|b0|Cout~0_combout\ & \port_map_mult1_2x1_br_ula|Sout[1]~1_combout\)) # (\port_map_banco_de_registradores|registradores~45_combout\ & 
-- ((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\) # (\port_map_ula|soma|b0|Cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~45_combout\,
	datab => \port_map_ula|soma|b0|ALT_INV_Cout~0_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[2]~3_combout\,
	dataf => \port_map_ula|soma|b3|ALT_INV_Cout~1_combout\,
	combout => \port_map_ula|soma|b3|Cout~2_combout\);

\port_map_ula|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~0_combout\ = (!\port_map_rom|rom_memory~7_combout\ & !\port_map_rom|rom_memory~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_ula|Mux7~0_combout\);

\port_map_ula|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~1_combout\ = ( \port_map_ula|Mux7~0_combout\ & ( !\port_map_banco_de_registradores|registradores~51_combout\ $ (!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ $ (((\port_map_ula|soma|b3|Cout~2_combout\) # 
-- (\port_map_ula|soma|b3|Cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011010011001100100000000000000000110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	datac => \port_map_ula|soma|b3|ALT_INV_Cout~0_combout\,
	datad => \port_map_ula|soma|b3|ALT_INV_Cout~2_combout\,
	datae => \port_map_ula|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ula|Mux7~1_combout\);

\port_map_banco_de_registradores|registradores~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~24_q\);

\port_map_banco_de_registradores|registradores~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~32_q\);

\port_map_banco_de_registradores|registradores~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~40_q\);

\port_map_banco_de_registradores|registradores~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~54_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~40_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~32_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~24_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~16_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~54_combout\);

\port_map_ula|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~0_combout\ = ( \port_map_ula|soma|b3|Cout~0_combout\ & ( \port_map_ula|soma|b3|Cout~2_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_banco_de_registradores|registradores~54_combout\ $ 
-- (((!\port_map_banco_de_registradores|registradores~51_combout\ & !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & (((\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\) # 
-- (\port_map_banco_de_registradores|registradores~51_combout\)))) ) ) ) # ( !\port_map_ula|soma|b3|Cout~0_combout\ & ( \port_map_ula|soma|b3|Cout~2_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~54_combout\ $ (((!\port_map_banco_de_registradores|registradores~51_combout\ & !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\) # (\port_map_banco_de_registradores|registradores~51_combout\)))) ) ) ) # ( \port_map_ula|soma|b3|Cout~0_combout\ & ( !\port_map_ula|soma|b3|Cout~2_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~54_combout\ $ (((!\port_map_banco_de_registradores|registradores~51_combout\ & !\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\) # (\port_map_banco_de_registradores|registradores~51_combout\)))) ) ) ) # ( !\port_map_ula|soma|b3|Cout~0_combout\ & ( !\port_map_ula|soma|b3|Cout~2_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & 
-- (!\port_map_banco_de_registradores|registradores~54_combout\ $ (((!\port_map_banco_de_registradores|registradores~51_combout\) # (!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\))))) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((\port_map_banco_de_registradores|registradores~51_combout\ & \port_map_mult1_2x1_br_ula|Sout[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101101001011011101110100101101110111010010110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~54_combout\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	datae => \port_map_ula|soma|b3|ALT_INV_Cout~0_combout\,
	dataf => \port_map_ula|soma|b3|ALT_INV_Cout~2_combout\,
	combout => \port_map_ula|Mux6~0_combout\);

\port_map_mult1_2x1_br_ula|Sout[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~54_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~54_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\);

\port_map_ula|soma|b5|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|b5|Cout~0_combout\ = ( !\port_map_banco_de_registradores|registradores~53_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ( (!\port_map_banco_de_registradores|registradores~51_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\) # ((!\port_map_ula|soma|b3|Cout~0_combout\ & !\port_map_ula|soma|b3|Cout~2_combout\)))) # (\port_map_banco_de_registradores|registradores~51_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & 
-- (!\port_map_ula|soma|b3|Cout~0_combout\ & !\port_map_ula|soma|b3|Cout~2_combout\))) ) ) ) # ( \port_map_banco_de_registradores|registradores~53_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~51_combout\ & ((!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\) # ((!\port_map_ula|soma|b3|Cout~0_combout\ & !\port_map_ula|soma|b3|Cout~2_combout\)))) # 
-- (\port_map_banco_de_registradores|registradores~51_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[4]~4_combout\ & (!\port_map_ula|soma|b3|Cout~0_combout\ & !\port_map_ula|soma|b3|Cout~2_combout\))) ) ) ) # ( 
-- !\port_map_banco_de_registradores|registradores~53_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[5]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001000100011101000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[4]~4_combout\,
	datac => \port_map_ula|soma|b3|ALT_INV_Cout~0_combout\,
	datad => \port_map_ula|soma|b3|ALT_INV_Cout~2_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~53_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[5]~5_combout\,
	combout => \port_map_ula|soma|b5|Cout~0_combout\);

\port_map_banco_de_registradores|registradores~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~25_q\);

\port_map_banco_de_registradores|registradores~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~33_q\);

\port_map_banco_de_registradores|registradores~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~41_q\);

\port_map_banco_de_registradores|registradores~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~56_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~41_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~33_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~17_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~56_combout\);

\port_map_mult1_2x1_br_ula|Sout[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~56_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~56_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\);

\port_map_ula|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( (!\port_map_banco_de_registradores|registradores~55_combout\ & (\port_map_ula|Mux7~0_combout\ & (\port_map_ula|soma|b5|Cout~0_combout\))) # 
-- (\port_map_banco_de_registradores|registradores~55_combout\ & (((\port_map_ula|Mux7~0_combout\ & !\port_map_ula|soma|b5|Cout~0_combout\)) # (\port_map_rom|rom_memory~8_combout\))) ) ) # ( !\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & ( 
-- (!\port_map_banco_de_registradores|registradores~55_combout\ & (\port_map_ula|Mux7~0_combout\ & (!\port_map_ula|soma|b5|Cout~0_combout\))) # (\port_map_banco_de_registradores|registradores~55_combout\ & (((\port_map_ula|Mux7~0_combout\ & 
-- \port_map_ula|soma|b5|Cout~0_combout\)) # (\port_map_rom|rom_memory~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000011111000100010100111101000100000111110001000101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datab => \port_map_ula|soma|b5|ALT_INV_Cout~0_combout\,
	datac => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~55_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	combout => \port_map_ula|Mux5~0_combout\);

\port_map_ula|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~17_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~51_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~52_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~14\ ))
-- \port_map_ula|Add1~18\ = CARRY(( \port_map_banco_de_registradores|registradores~51_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~52_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~52_combout\,
	cin => \port_map_ula|Add1~14\,
	sumout => \port_map_ula|Add1~17_sumout\,
	cout => \port_map_ula|Add1~18\);

\port_map_ula|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~21_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~53_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~54_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~18\ ))
-- \port_map_ula|Add1~22\ = CARRY(( \port_map_banco_de_registradores|registradores~53_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~54_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~53_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~54_combout\,
	cin => \port_map_ula|Add1~18\,
	sumout => \port_map_ula|Add1~21_sumout\,
	cout => \port_map_ula|Add1~22\);

\port_map_ula|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~25_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~55_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~56_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~22\ ))
-- \port_map_ula|Add1~26\ = CARRY(( \port_map_banco_de_registradores|registradores~55_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~56_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~55_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~56_combout\,
	cin => \port_map_ula|Add1~22\,
	sumout => \port_map_ula|Add1~25_sumout\,
	cout => \port_map_ula|Add1~26\);

\port_map_banco_de_registradores|registradores~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~26_q\);

\port_map_banco_de_registradores|registradores~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~34_q\);

\port_map_banco_de_registradores|registradores~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~42_q\);

\port_map_banco_de_registradores|registradores~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~58_combout\ = ( \port_map_rom|rom_memory~1_combout\ & ( \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~42_q\ ) ) ) # ( !\port_map_rom|rom_memory~1_combout\ & ( 
-- \port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~34_q\ ) ) ) # ( \port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~26_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~1_combout\ & ( !\port_map_rom|rom_memory~3_combout\ & ( \port_map_banco_de_registradores|registradores~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~18_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~1_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~3_combout\,
	combout => \port_map_banco_de_registradores|registradores~58_combout\);

\port_map_mult1_2x1_br_ula|Sout[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ = (!\port_map_rom|rom_memory~9_combout\ & \port_map_banco_de_registradores|registradores~58_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~58_combout\,
	combout => \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\);

\port_map_ula|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~0_combout\ = ( \port_map_banco_de_registradores|registradores~57_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (\port_map_ula|Mux7~0_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & !\port_map_ula|soma|b5|Cout~0_combout\)) # (\port_map_banco_de_registradores|registradores~55_combout\ & ((!\port_map_ula|soma|b5|Cout~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\))))) ) ) ) 
-- # ( !\port_map_banco_de_registradores|registradores~57_combout\ & ( \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (\port_map_ula|Mux7~0_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\) # (\port_map_ula|soma|b5|Cout~0_combout\))) # (\port_map_banco_de_registradores|registradores~55_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & \port_map_ula|soma|b5|Cout~0_combout\)))) ) ) ) 
-- # ( \port_map_banco_de_registradores|registradores~57_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (\port_map_ula|Mux7~0_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\) # (\port_map_ula|soma|b5|Cout~0_combout\))) # (\port_map_banco_de_registradores|registradores~55_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & \port_map_ula|soma|b5|Cout~0_combout\)))) ) ) ) 
-- # ( !\port_map_banco_de_registradores|registradores~57_combout\ & ( !\port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (\port_map_ula|Mux7~0_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & 
-- (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & !\port_map_ula|soma|b5|Cout~0_combout\)) # (\port_map_banco_de_registradores|registradores~55_combout\ & ((!\port_map_ula|soma|b5|Cout~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001010000000101010001000000010101000001010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~55_combout\,
	datac => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	datad => \port_map_ula|soma|b5|ALT_INV_Cout~0_combout\,
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~57_combout\,
	dataf => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~7_combout\,
	combout => \port_map_ula|Mux4~0_combout\);

\port_map_ula|pot_map_multi|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \port_map_ula|pot_map_multi|Mult0~mac_AX_bus\,
	ay => \port_map_ula|pot_map_multi|Mult0~mac_AY_bus\,
	resulta => \port_map_ula|pot_map_multi|Mult0~mac_RESULTA_bus\);

\port_map_ula|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Add1~29_sumout\ = SUM(( \port_map_banco_de_registradores|registradores~57_combout\ ) + ( (!\port_map_banco_de_registradores|registradores~58_combout\) # (\port_map_rom|rom_memory~9_combout\) ) + ( \port_map_ula|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~57_combout\,
	dataf => \port_map_banco_de_registradores|ALT_INV_registradores~58_combout\,
	cin => \port_map_ula|Add1~26\,
	sumout => \port_map_ula|Add1~29_sumout\);

\port_map_ula|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux4~1_combout\ = ( !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_ula|Mux4~0_combout\ & (((\port_map_ula|Add1~29_sumout\ & ((\port_map_rom|rom_memory~7_combout\)))))) # (\port_map_ula|Mux4~0_combout\ & 
-- ((((!\port_map_rom|rom_memory~9_combout\) # (\port_map_rom|rom_memory~7_combout\))))) ) ) # ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((((\port_map_ula|pot_map_multi|Produto\(7) & 
-- !\port_map_rom|rom_memory~9_combout\))))) # (\port_map_rom|rom_memory~7_combout\ & (((\port_map_banco_de_registradores|registradores~57_combout\)) # (\port_map_ula|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100000000000011110000000001011111010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux4~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~57_combout\,
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(7),
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datag => \port_map_ula|ALT_INV_Add1~29_sumout\,
	combout => \port_map_ula|Mux4~1_combout\);

\port_map_banco_de_registradores|registradores~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux4~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~18_q\);

\port_map_banco_de_registradores|registradores~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~57_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~42_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~34_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~26_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~18_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~26_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~34_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~42_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~57_combout\);

\port_map_ula|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux5~1_combout\ = ( \port_map_ula|pot_map_multi|Produto\(6) & ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~9_combout\)) # (\port_map_rom|rom_memory~7_combout\ & 
-- ((\port_map_ula|Mux5~0_combout\))) ) ) ) # ( !\port_map_ula|pot_map_multi|Produto\(6) & ( \port_map_rom|rom_memory~8_combout\ & ( (\port_map_rom|rom_memory~7_combout\ & \port_map_ula|Mux5~0_combout\) ) ) ) # ( \port_map_ula|pot_map_multi|Produto\(6) & ( 
-- !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~9_combout\ & (\port_map_ula|Mux5~0_combout\))) # (\port_map_rom|rom_memory~7_combout\ & (((\port_map_ula|Add1~25_sumout\) # 
-- (\port_map_ula|Mux5~0_combout\)))) ) ) ) # ( !\port_map_ula|pot_map_multi|Produto\(6) & ( !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_rom|rom_memory~9_combout\ & (\port_map_ula|Mux5~0_combout\))) # 
-- (\port_map_rom|rom_memory~7_combout\ & (((\port_map_ula|Add1~25_sumout\) # (\port_map_ula|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100111011000010110011101100000011000000111000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_ula|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ula|ALT_INV_Add1~25_sumout\,
	datae => \port_map_ula|pot_map_multi|ALT_INV_Produto\(6),
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_ula|Mux5~1_combout\);

\port_map_banco_de_registradores|registradores~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux5~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~17_q\);

\port_map_banco_de_registradores|registradores~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~55_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~41_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~33_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~25_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~17_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~25_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~33_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~41_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~55_combout\);

\port_map_ula|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux6~1_combout\ = ( !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (((!\port_map_rom|rom_memory~9_combout\ & (!\port_map_ula|Mux6~0_combout\ $ 
-- (!\port_map_banco_de_registradores|registradores~53_combout\)))))) # (\port_map_rom|rom_memory~7_combout\ & ((((\port_map_ula|Add1~21_sumout\))))) ) ) # ( \port_map_rom|rom_memory~8_combout\ & ( ((!\port_map_rom|rom_memory~7_combout\ & 
-- (((\port_map_ula|pot_map_multi|Produto\(5) & !\port_map_rom|rom_memory~9_combout\)))) # (\port_map_rom|rom_memory~7_combout\ & (\port_map_banco_de_registradores|registradores~53_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011000000000000011110000000000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux6~0_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~53_combout\,
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(5),
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datag => \port_map_ula|ALT_INV_Add1~21_sumout\,
	combout => \port_map_ula|Mux6~1_combout\);

\port_map_banco_de_registradores|registradores~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux6~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~16_q\);

\port_map_banco_de_registradores|registradores~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~53_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~40_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~32_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~24_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~16_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~24_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~32_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~40_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~53_combout\);

\port_map_ula|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux7~2_combout\ = ( !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_ula|Mux7~1_combout\ & (((\port_map_ula|Add1~17_sumout\ & ((\port_map_rom|rom_memory~7_combout\)))))) # (\port_map_ula|Mux7~1_combout\ & 
-- ((((!\port_map_rom|rom_memory~9_combout\) # (\port_map_rom|rom_memory~7_combout\))))) ) ) # ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & ((((\port_map_ula|pot_map_multi|Produto\(4) & 
-- !\port_map_rom|rom_memory~9_combout\))))) # (\port_map_rom|rom_memory~7_combout\ & (((\port_map_banco_de_registradores|registradores~51_combout\)) # (\port_map_ula|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100000000000011110000000001011111010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux7~1_combout\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~51_combout\,
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(4),
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datag => \port_map_ula|ALT_INV_Add1~17_sumout\,
	combout => \port_map_ula|Mux7~2_combout\);

\port_map_banco_de_registradores|registradores~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux7~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~15_q\);

\port_map_banco_de_registradores|registradores~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~51_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~39_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~31_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~23_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~15_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~23_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~31_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~39_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~51_combout\);

\port_map_ula|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux8~2_combout\ = ( \port_map_banco_de_registradores|registradores~49_combout\ & ( \port_map_rom|rom_memory~8_combout\ & ( ((!\port_map_rom|rom_memory~9_combout\ & \port_map_ula|pot_map_multi|Produto\(3))) # 
-- (\port_map_rom|rom_memory~7_combout\) ) ) ) # ( !\port_map_banco_de_registradores|registradores~49_combout\ & ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & (!\port_map_rom|rom_memory~7_combout\ & 
-- \port_map_ula|pot_map_multi|Produto\(3))) ) ) ) # ( \port_map_banco_de_registradores|registradores~49_combout\ & ( !\port_map_rom|rom_memory~8_combout\ & ( \port_map_ula|Mux8~1_combout\ ) ) ) # ( !\port_map_banco_de_registradores|registradores~49_combout\ 
-- & ( !\port_map_rom|rom_memory~8_combout\ & ( \port_map_ula|Mux8~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000100010000011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datac => \port_map_ula|ALT_INV_Mux8~1_combout\,
	datad => \port_map_ula|pot_map_multi|ALT_INV_Produto\(3),
	datae => \port_map_banco_de_registradores|ALT_INV_registradores~49_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	combout => \port_map_ula|Mux8~2_combout\);

\port_map_banco_de_registradores|registradores~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux8~2_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~14_q\);

\port_map_banco_de_registradores|registradores~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~49_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~38_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~30_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~22_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~14_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~22_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~30_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~38_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~49_combout\);

\port_map_ula|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux9~1_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( (!\port_map_rom|rom_memory~9_combout\ & ((!\port_map_rom|rom_memory~8_combout\ & (!\port_map_ula|Mux9~0_combout\ $ 
-- (((\port_map_banco_de_registradores|registradores~47_combout\))))) # (\port_map_rom|rom_memory~8_combout\ & (((\port_map_ula|pot_map_multi|Produto\(2))))))) ) ) # ( \port_map_rom|rom_memory~7_combout\ & ( (((!\port_map_rom|rom_memory~8_combout\ & 
-- (\port_map_ula|Add1~9_sumout\)) # (\port_map_rom|rom_memory~8_combout\ & ((\port_map_banco_de_registradores|registradores~47_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000100001000100000011110000111100001100000011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|ALT_INV_Mux9~0_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datac => \port_map_ula|ALT_INV_Add1~9_sumout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~47_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datag => \port_map_ula|pot_map_multi|ALT_INV_Produto\(2),
	combout => \port_map_ula|Mux9~1_combout\);

\port_map_banco_de_registradores|registradores~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux9~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~13_q\);

\port_map_banco_de_registradores|registradores~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~47_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~37_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~29_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~21_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~13_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~21_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~29_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~37_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~47_combout\);

\port_map_ula|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux10~1_combout\ = ( !\port_map_rom|rom_memory~7_combout\ & ( ((!\port_map_rom|rom_memory~9_combout\ & (\port_map_rom|rom_memory~8_combout\ & ((\port_map_ula|pot_map_multi|Produto\(1))))) # (\port_map_rom|rom_memory~9_combout\ & 
-- (((\port_map_mult1_2x1_br_ula|Sout[1]~1_combout\))))) # (\port_map_ula|Mux10~0_combout\) ) ) # ( \port_map_rom|rom_memory~7_combout\ & ( (\port_map_ula|Mux10~0_combout\ & (((\port_map_ula|Add1~5_sumout\)) # (\port_map_rom|rom_memory~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100111111000100110001001101110011011111110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datab => \port_map_ula|ALT_INV_Mux10~0_combout\,
	datac => \port_map_ula|ALT_INV_Add1~5_sumout\,
	datad => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[1]~1_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	dataf => \port_map_ula|pot_map_multi|ALT_INV_Produto\(1),
	datag => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	combout => \port_map_ula|Mux10~1_combout\);

\port_map_banco_de_registradores|registradores~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_ula|Mux10~1_combout\,
	ena => \port_map_banco_de_registradores|registradores~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_banco_de_registradores|registradores~12_q\);

\port_map_banco_de_registradores|registradores~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_banco_de_registradores|registradores~45_combout\ = ( \port_map_rom|rom_memory~5_combout\ & ( \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~36_q\ ) ) ) # ( !\port_map_rom|rom_memory~5_combout\ & ( 
-- \port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~28_q\ ) ) ) # ( \port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~20_q\ ) ) ) # ( 
-- !\port_map_rom|rom_memory~5_combout\ & ( !\port_map_rom|rom_memory~6_combout\ & ( \port_map_banco_de_registradores|registradores~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~12_q\,
	datab => \port_map_banco_de_registradores|ALT_INV_registradores~20_q\,
	datac => \port_map_banco_de_registradores|ALT_INV_registradores~28_q\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~36_q\,
	datae => \port_map_rom|ALT_INV_rom_memory~5_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~6_combout\,
	combout => \port_map_banco_de_registradores|registradores~45_combout\);

\port_map_ula|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~2_combout\ = ( !\port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\ $ (((!\port_map_banco_de_registradores|registradores~44_combout\) # 
-- ((\port_map_rom|rom_memory~9_combout\)))))) # (\port_map_rom|rom_memory~7_combout\ & ((((\port_map_ula|Add1~1_sumout\))))) ) ) # ( \port_map_rom|rom_memory~8_combout\ & ( (!\port_map_rom|rom_memory~7_combout\ & (((!\port_map_rom|rom_memory~9_combout\ & 
-- ((\port_map_ula|pot_map_multi|Produto\(0)))) # (\port_map_rom|rom_memory~9_combout\ & (\port_map_mult1_2x1_br_ula|Sout[0]~0_combout\))))) # (\port_map_rom|rom_memory~7_combout\ & (\port_map_banco_de_registradores|registradores~44_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110011000110011000011110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~44_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[0]~0_combout\,
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(0),
	datad => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	datae => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	dataf => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datag => \port_map_ula|ALT_INV_Add1~1_sumout\,
	combout => \port_map_ula|Mux11~2_combout\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\port_map_ram|mem_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador.ram0_ram_memory_1f6389dd.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "ram_memory:port_map_ram|altsyncram:mem_rtl_0|altsyncram_d6v1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_unidade_de_controle|Mux7~0_combout\,
	portbre => GND,
	clk0 => \clock~input_o\,
	portadatain => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_ram|mem_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\port_map_ula|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Equal0~0_combout\ = ( !\port_map_ula|pot_map_multi|Produto\(12) & ( (!\port_map_ula|pot_map_multi|Produto\(8) & (!\port_map_ula|pot_map_multi|Produto\(9) & (!\port_map_ula|pot_map_multi|Produto\(10) & 
-- !\port_map_ula|pot_map_multi|Produto\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ula|pot_map_multi|ALT_INV_Produto\(8),
	datab => \port_map_ula|pot_map_multi|ALT_INV_Produto\(9),
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(10),
	datad => \port_map_ula|pot_map_multi|ALT_INV_Produto\(11),
	datae => \port_map_ula|pot_map_multi|ALT_INV_Produto\(12),
	combout => \port_map_ula|Equal0~0_combout\);

\port_map_ula|soma|overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|soma|overflow~0_combout\ = ( \port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (\port_map_banco_de_registradores|registradores~57_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & 
-- ((!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\) # (\port_map_ula|soma|b5|Cout~0_combout\))) # (\port_map_banco_de_registradores|registradores~55_combout\ & (!\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & \port_map_ula|soma|b5|Cout~0_combout\)))) ) ) # 
-- ( !\port_map_mult1_2x1_br_ula|Sout[7]~7_combout\ & ( (!\port_map_banco_de_registradores|registradores~57_combout\ & ((!\port_map_banco_de_registradores|registradores~55_combout\ & (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\ & 
-- !\port_map_ula|soma|b5|Cout~0_combout\)) # (\port_map_banco_de_registradores|registradores~55_combout\ & ((!\port_map_ula|soma|b5|Cout~0_combout\) # (\port_map_mult1_2x1_br_ula|Sout[6]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000000000000001000111001110001000000000000000010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_banco_de_registradores|ALT_INV_registradores~55_combout\,
	datab => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[6]~6_combout\,
	datac => \port_map_ula|soma|b5|ALT_INV_Cout~0_combout\,
	datad => \port_map_banco_de_registradores|ALT_INV_registradores~57_combout\,
	datae => \port_map_mult1_2x1_br_ula|ALT_INV_Sout[7]~7_combout\,
	combout => \port_map_ula|soma|overflow~0_combout\);

\port_map_ula|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux12~0_combout\ = ( \port_map_ula|Equal0~0_combout\ & ( \port_map_ula|soma|overflow~0_combout\ & ( (!\port_map_rom|rom_memory~8_combout\) # (((\port_map_ula|pot_map_multi|Produto\(15)) # (\port_map_ula|pot_map_multi|Produto\(14))) # 
-- (\port_map_ula|pot_map_multi|Produto\(13))) ) ) ) # ( !\port_map_ula|Equal0~0_combout\ & ( \port_map_ula|soma|overflow~0_combout\ ) ) # ( \port_map_ula|Equal0~0_combout\ & ( !\port_map_ula|soma|overflow~0_combout\ & ( (\port_map_rom|rom_memory~8_combout\ 
-- & (((\port_map_ula|pot_map_multi|Produto\(15)) # (\port_map_ula|pot_map_multi|Produto\(14))) # (\port_map_ula|pot_map_multi|Produto\(13)))) ) ) ) # ( !\port_map_ula|Equal0~0_combout\ & ( !\port_map_ula|soma|overflow~0_combout\ & ( 
-- \port_map_rom|rom_memory~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000101010101010111111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~8_combout\,
	datab => \port_map_ula|pot_map_multi|ALT_INV_Produto\(13),
	datac => \port_map_ula|pot_map_multi|ALT_INV_Produto\(14),
	datad => \port_map_ula|pot_map_multi|ALT_INV_Produto\(15),
	datae => \port_map_ula|ALT_INV_Equal0~0_combout\,
	dataf => \port_map_ula|soma|ALT_INV_overflow~0_combout\,
	combout => \port_map_ula|Mux12~0_combout\);

\port_map_ula|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|Mux11~1_combout\ = (!\port_map_rom|rom_memory~7_combout\ & !\port_map_rom|rom_memory~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_rom|ALT_INV_rom_memory~7_combout\,
	datab => \port_map_rom|ALT_INV_rom_memory~9_combout\,
	combout => \port_map_ula|Mux11~1_combout\);

\port_map_ula|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ula|overflow~combout\ = ( \port_map_ula|overflow~combout\ & ( \port_map_ula|Mux11~1_combout\ & ( \port_map_ula|Mux12~0_combout\ ) ) ) # ( !\port_map_ula|overflow~combout\ & ( \port_map_ula|Mux11~1_combout\ & ( \port_map_ula|Mux12~0_combout\ ) ) 
-- ) # ( \port_map_ula|overflow~combout\ & ( !\port_map_ula|Mux11~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ula|ALT_INV_Mux12~0_combout\,
	datae => \port_map_ula|ALT_INV_overflow~combout\,
	dataf => \port_map_ula|ALT_INV_Mux11~1_combout\,
	combout => \port_map_ula|overflow~combout\);

ww_outPc(0) <= \outPc[0]~output_o\;

ww_outPc(1) <= \outPc[1]~output_o\;

ww_outPc(2) <= \outPc[2]~output_o\;

ww_outPc(3) <= \outPc[3]~output_o\;

ww_outPc(4) <= \outPc[4]~output_o\;

ww_outPc(5) <= \outPc[5]~output_o\;

ww_outPc(6) <= \outPc[6]~output_o\;

ww_outPc(7) <= \outPc[7]~output_o\;

ww_outRam(0) <= \outRam[0]~output_o\;

ww_outRam(1) <= \outRam[1]~output_o\;

ww_outRam(2) <= \outRam[2]~output_o\;

ww_outRam(3) <= \outRam[3]~output_o\;

ww_outRam(4) <= \outRam[4]~output_o\;

ww_outRam(5) <= \outRam[5]~output_o\;

ww_outRam(6) <= \outRam[6]~output_o\;

ww_outRam(7) <= \outRam[7]~output_o\;

ww_outRom(0) <= \outRom[0]~output_o\;

ww_outRom(1) <= \outRom[1]~output_o\;

ww_outRom(2) <= \outRom[2]~output_o\;

ww_outRom(3) <= \outRom[3]~output_o\;

ww_outRom(4) <= \outRom[4]~output_o\;

ww_outRom(5) <= \outRom[5]~output_o\;

ww_outRom(6) <= \outRom[6]~output_o\;

ww_outRom(7) <= \outRom[7]~output_o\;

ww_outUla(0) <= \outUla[0]~output_o\;

ww_outUla(1) <= \outUla[1]~output_o\;

ww_outUla(2) <= \outUla[2]~output_o\;

ww_outUla(3) <= \outUla[3]~output_o\;

ww_outUla(4) <= \outUla[4]~output_o\;

ww_outUla(5) <= \outUla[5]~output_o\;

ww_outUla(6) <= \outUla[6]~output_o\;

ww_outUla(7) <= \outUla[7]~output_o\;

ww_out_br_regA(0) <= \out_br_regA[0]~output_o\;

ww_out_br_regA(1) <= \out_br_regA[1]~output_o\;

ww_out_br_regA(2) <= \out_br_regA[2]~output_o\;

ww_out_br_regA(3) <= \out_br_regA[3]~output_o\;

ww_out_br_regA(4) <= \out_br_regA[4]~output_o\;

ww_out_br_regA(5) <= \out_br_regA[5]~output_o\;

ww_out_br_regA(6) <= \out_br_regA[6]~output_o\;

ww_out_br_regA(7) <= \out_br_regA[7]~output_o\;

ww_out_br_regB(0) <= \out_br_regB[0]~output_o\;

ww_out_br_regB(1) <= \out_br_regB[1]~output_o\;

ww_out_br_regB(2) <= \out_br_regB[2]~output_o\;

ww_out_br_regB(3) <= \out_br_regB[3]~output_o\;

ww_out_br_regB(4) <= \out_br_regB[4]~output_o\;

ww_out_br_regB(5) <= \out_br_regB[5]~output_o\;

ww_out_br_regB(6) <= \out_br_regB[6]~output_o\;

ww_out_br_regB(7) <= \out_br_regB[7]~output_o\;

ww_out_opcode(0) <= \out_opcode[0]~output_o\;

ww_out_opcode(1) <= \out_opcode[1]~output_o\;

ww_out_opcode(2) <= \out_opcode[2]~output_o\;

ww_out_opcode(3) <= \out_opcode[3]~output_o\;

ww_out_rs(0) <= \out_rs[0]~output_o\;

ww_out_rs(1) <= \out_rs[1]~output_o\;

ww_out_rt(0) <= \out_rt[0]~output_o\;

ww_out_rt(1) <= \out_rt[1]~output_o\;

ww_out_endereco(0) <= \out_endereco[0]~output_o\;

ww_out_endereco(1) <= \out_endereco[1]~output_o\;

ww_out_endereco(2) <= \out_endereco[2]~output_o\;

ww_out_endereco(3) <= \out_endereco[3]~output_o\;

ww_overflow <= \overflow~output_o\;

ww_out_out_mult4_2X1_ram_ula(0) <= \out_out_mult4_2X1_ram_ula[0]~output_o\;

ww_out_out_mult4_2X1_ram_ula(1) <= \out_out_mult4_2X1_ram_ula[1]~output_o\;

ww_out_out_mult4_2X1_ram_ula(2) <= \out_out_mult4_2X1_ram_ula[2]~output_o\;

ww_out_out_mult4_2X1_ram_ula(3) <= \out_out_mult4_2X1_ram_ula[3]~output_o\;

ww_out_out_mult4_2X1_ram_ula(4) <= \out_out_mult4_2X1_ram_ula[4]~output_o\;

ww_out_out_mult4_2X1_ram_ula(5) <= \out_out_mult4_2X1_ram_ula[5]~output_o\;

ww_out_out_mult4_2X1_ram_ula(6) <= \out_out_mult4_2X1_ram_ula[6]~output_o\;

ww_out_out_mult4_2X1_ram_ula(7) <= \out_out_mult4_2X1_ram_ula[7]~output_o\;
END structure;


