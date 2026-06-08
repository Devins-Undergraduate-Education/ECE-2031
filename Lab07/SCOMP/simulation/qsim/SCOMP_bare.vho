-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "10/15/2025 12:09:28"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCOMP IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	IO_READ : OUT std_logic;
	IO_WRITE : OUT std_logic;
	IO_ADDR : OUT std_logic_vector(10 DOWNTO 0);
	IO_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	dbg_FETCH : OUT std_logic;
	dbg_AC : OUT std_logic_vector(15 DOWNTO 0);
	dbg_PC : OUT std_logic_vector(10 DOWNTO 0);
	dbg_NMA : OUT std_logic_vector(10 DOWNTO 0);
	dbg_MD : OUT std_logic_vector(15 DOWNTO 0);
	dbg_IR : OUT std_logic_vector(15 DOWNTO 0)
	);
END SCOMP;

-- Design Ports Information
-- IO_READ	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_WRITE	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[0]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[2]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[3]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[4]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[5]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[7]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[8]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[9]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_ADDR[10]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_FETCH	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[0]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[1]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[2]	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[3]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[4]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[5]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[7]	=>  Location: PIN_AK27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[8]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[9]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[10]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[11]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[12]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[13]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[14]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_AC[15]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[0]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[2]	=>  Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[4]	=>  Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[5]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[6]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[7]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[8]	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[9]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_PC[10]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[0]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[1]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[2]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[3]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[4]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[6]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[7]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[8]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[9]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_NMA[10]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[0]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[2]	=>  Location: PIN_AK18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[3]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[4]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[5]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[6]	=>  Location: PIN_AH24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[7]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[8]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[9]	=>  Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[10]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[11]	=>  Location: PIN_AK16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[12]	=>  Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[13]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[14]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_MD[15]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[0]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[1]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[2]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[3]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[4]	=>  Location: PIN_AK29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[6]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[7]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[8]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[9]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[10]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[11]	=>  Location: PIN_AK13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[12]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[13]	=>  Location: PIN_AH8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[14]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dbg_IR[15]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[0]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[1]	=>  Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[2]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[3]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[4]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[6]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[7]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[8]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[9]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[10]	=>  Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[11]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[12]	=>  Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[13]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[14]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_DATA[15]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clock	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SCOMP IS
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
SIGNAL ww_resetn : std_logic;
SIGNAL ww_IO_READ : std_logic;
SIGNAL ww_IO_WRITE : std_logic;
SIGNAL ww_IO_ADDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_FETCH : std_logic;
SIGNAL ww_dbg_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_PC : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_NMA : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dbg_MD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \state~52_combout\ : std_logic;
SIGNAL \state.ex_call~q\ : std_logic;
SIGNAL \PC_stack[10][0]~1_combout\ : std_logic;
SIGNAL \PC_stack[10][4]~q\ : std_logic;
SIGNAL \PC_stack[9][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][0]~0_combout\ : std_logic;
SIGNAL \PC_stack[9][4]~q\ : std_logic;
SIGNAL \PC_stack[8][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][4]~q\ : std_logic;
SIGNAL \PC_stack[7][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][4]~q\ : std_logic;
SIGNAL \PC_stack[6][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][4]~q\ : std_logic;
SIGNAL \PC_stack[5][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][4]~q\ : std_logic;
SIGNAL \PC_stack[4][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][4]~q\ : std_logic;
SIGNAL \PC_stack[3][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][4]~q\ : std_logic;
SIGNAL \PC_stack[2][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][4]~q\ : std_logic;
SIGNAL \PC_stack[1][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][4]~q\ : std_logic;
SIGNAL \PC_stack[0][4]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][4]~q\ : std_logic;
SIGNAL \PC_stack[10][1]~q\ : std_logic;
SIGNAL \PC_stack[9][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][1]~q\ : std_logic;
SIGNAL \PC_stack[8][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][1]~q\ : std_logic;
SIGNAL \PC_stack[7][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][1]~q\ : std_logic;
SIGNAL \PC_stack[6][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][1]~q\ : std_logic;
SIGNAL \PC_stack[5][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][1]~q\ : std_logic;
SIGNAL \PC_stack[4][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][1]~q\ : std_logic;
SIGNAL \PC_stack[3][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][1]~q\ : std_logic;
SIGNAL \PC_stack[2][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][1]~q\ : std_logic;
SIGNAL \PC_stack[1][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][1]~q\ : std_logic;
SIGNAL \PC_stack[0][1]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][1]~q\ : std_logic;
SIGNAL \PC_stack[10][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[10][0]~q\ : std_logic;
SIGNAL \PC_stack[9][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][0]~q\ : std_logic;
SIGNAL \PC_stack[8][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][0]~q\ : std_logic;
SIGNAL \PC_stack[7][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][0]~q\ : std_logic;
SIGNAL \PC_stack[6][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][0]~q\ : std_logic;
SIGNAL \PC_stack[5][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][0]~q\ : std_logic;
SIGNAL \PC_stack[4][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][0]~q\ : std_logic;
SIGNAL \PC_stack[3][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][0]~q\ : std_logic;
SIGNAL \PC_stack[2][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][0]~q\ : std_logic;
SIGNAL \PC_stack[1][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][0]~q\ : std_logic;
SIGNAL \PC_stack[0][0]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][0]~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \operand[4]~4_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.ex_addi~q\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.ex_add~DUPLICATE_q\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.ex_sub~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state.ex_in~q\ : std_logic;
SIGNAL \state.ex_in2~feeder_combout\ : std_logic;
SIGNAL \state.ex_in2~DUPLICATE_q\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state.ex_load~q\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state.ex_and~q\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state.ex_loadi~q\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state.ex_xor~q\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state.ex_or~DUPLICATE_q\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \state.ex_in2~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \PC_stack[10][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[10][6]~q\ : std_logic;
SIGNAL \PC_stack[9][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][6]~q\ : std_logic;
SIGNAL \PC_stack[8][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][6]~q\ : std_logic;
SIGNAL \PC_stack[7][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][6]~q\ : std_logic;
SIGNAL \PC_stack[6][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][6]~q\ : std_logic;
SIGNAL \PC_stack[5][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][6]~q\ : std_logic;
SIGNAL \PC_stack[4][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][6]~q\ : std_logic;
SIGNAL \PC_stack[3][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][6]~q\ : std_logic;
SIGNAL \PC_stack[2][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][6]~q\ : std_logic;
SIGNAL \PC_stack[1][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][6]~q\ : std_logic;
SIGNAL \PC_stack[0][6]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][6]~q\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \PC_stack[10][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[10][7]~q\ : std_logic;
SIGNAL \PC_stack[9][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][7]~q\ : std_logic;
SIGNAL \PC_stack[8][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][7]~q\ : std_logic;
SIGNAL \PC_stack[7][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][7]~q\ : std_logic;
SIGNAL \PC_stack[6][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][7]~q\ : std_logic;
SIGNAL \PC_stack[5][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][7]~q\ : std_logic;
SIGNAL \PC_stack[4][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][7]~q\ : std_logic;
SIGNAL \PC_stack[3][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][7]~q\ : std_logic;
SIGNAL \PC_stack[2][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][7]~q\ : std_logic;
SIGNAL \PC_stack[1][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][7]~q\ : std_logic;
SIGNAL \PC_stack[0][7]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][7]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \PC_stack[10][9]~q\ : std_logic;
SIGNAL \PC_stack[9][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][9]~q\ : std_logic;
SIGNAL \PC_stack[8][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][9]~q\ : std_logic;
SIGNAL \PC_stack[7][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][9]~q\ : std_logic;
SIGNAL \PC_stack[6][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][9]~q\ : std_logic;
SIGNAL \PC_stack[5][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][9]~q\ : std_logic;
SIGNAL \PC_stack[4][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][9]~q\ : std_logic;
SIGNAL \PC_stack[3][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][9]~q\ : std_logic;
SIGNAL \PC_stack[2][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][9]~q\ : std_logic;
SIGNAL \PC_stack[1][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][9]~q\ : std_logic;
SIGNAL \PC_stack[0][9]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][9]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \PC_stack[10][8]~q\ : std_logic;
SIGNAL \PC_stack[9][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][8]~q\ : std_logic;
SIGNAL \PC_stack[8][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][8]~q\ : std_logic;
SIGNAL \PC_stack[7][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][8]~q\ : std_logic;
SIGNAL \PC_stack[6][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][8]~q\ : std_logic;
SIGNAL \PC_stack[5][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][8]~q\ : std_logic;
SIGNAL \PC_stack[4][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][8]~q\ : std_logic;
SIGNAL \PC_stack[3][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][8]~q\ : std_logic;
SIGNAL \PC_stack[2][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][8]~q\ : std_logic;
SIGNAL \PC_stack[1][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][8]~q\ : std_logic;
SIGNAL \PC_stack[0][8]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][8]~q\ : std_logic;
SIGNAL \operand[8]~8_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \PC_stack[10][10]~q\ : std_logic;
SIGNAL \PC_stack[9][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][10]~q\ : std_logic;
SIGNAL \PC_stack[8][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][10]~q\ : std_logic;
SIGNAL \PC_stack[7][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][10]~q\ : std_logic;
SIGNAL \PC_stack[6][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][10]~q\ : std_logic;
SIGNAL \PC_stack[5][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][10]~q\ : std_logic;
SIGNAL \PC_stack[4][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][10]~q\ : std_logic;
SIGNAL \PC_stack[3][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][10]~q\ : std_logic;
SIGNAL \PC_stack[2][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][10]~q\ : std_logic;
SIGNAL \PC_stack[1][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][10]~q\ : std_logic;
SIGNAL \PC_stack[0][10]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][10]~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \next_mem_addr[10]~10_combout\ : std_logic;
SIGNAL \IO_DATA[7]~input_o\ : std_logic;
SIGNAL \shifter|sbit[1][3]~19_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \shifter|sbit[3][1]~23_combout\ : std_logic;
SIGNAL \IO_DATA[8]~input_o\ : std_logic;
SIGNAL \state.ex_or~q\ : std_logic;
SIGNAL \state.ex_xor~DUPLICATE_q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \shifter|sbit[3][0]~11_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \shifter|sbit[1][9]~12_combout\ : std_logic;
SIGNAL \shifter|sbit[2][9]~15_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \shifter|sbit[3][5]~35_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \IO_DATA[13]~input_o\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \state.ex_addi~DUPLICATE_q\ : std_logic;
SIGNAL \state.ex_sub~q\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79_combout\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \operand[5]~5_combout\ : std_logic;
SIGNAL \Add1~73_combout\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~67_cout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \shifter|sbit[1][14]~5_combout\ : std_logic;
SIGNAL \shifter|sbit[2][12]~6_combout\ : std_logic;
SIGNAL \shifter|sbit[3][8]~10_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \shifter|sbit[1][7]~14_combout\ : std_logic;
SIGNAL \shifter|sbit[2][5]~20_combout\ : std_logic;
SIGNAL \Selector26~3_combout\ : std_logic;
SIGNAL \IO_DATA[1]~input_o\ : std_logic;
SIGNAL \Selector26~4_combout\ : std_logic;
SIGNAL \Selector26~5_combout\ : std_logic;
SIGNAL \Selector26~6_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Selector26~7_combout\ : std_logic;
SIGNAL \shifter|sbit[1][1]~22_combout\ : std_logic;
SIGNAL \shifter|sbit[2][3]~32_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \shifter|sbit[1][13]~16_combout\ : std_logic;
SIGNAL \shifter|sbit[2][11]~29_combout\ : std_logic;
SIGNAL \shifter|sbit[3][11]~31_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \IO_DATA[3]~input_o\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \shifter|sbit[1][4]~7_combout\ : std_logic;
SIGNAL \shifter|sbit[1][8]~0_combout\ : std_logic;
SIGNAL \shifter|sbit[2][6]~26_combout\ : std_logic;
SIGNAL \shifter|sbit[3][10]~27_combout\ : std_logic;
SIGNAL \shifter|sbit[2][2]~28_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \IO_DATA[2]~input_o\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \shifter|sbit[1][2]~8_combout\ : std_logic;
SIGNAL \shifter|sbit[2][4]~9_combout\ : std_logic;
SIGNAL \shifter|sbit[2][0]~34_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \IO_DATA[4]~input_o\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \shifter|sbit[3][12]~33_combout\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \shifter|sbit[1][5]~18_combout\ : std_logic;
SIGNAL \shifter|sbit[2][7]~30_combout\ : std_logic;
SIGNAL \shifter|sbit[3][7]~38_combout\ : std_logic;
SIGNAL \shifter|sbit[3][7]~37_combout\ : std_logic;
SIGNAL \shifter|sbit[3][7]~39_combout\ : std_logic;
SIGNAL \Selector20~3_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \operand[9]~9_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \next_mem_addr[9]~9_combout\ : std_logic;
SIGNAL \next_mem_addr[8]~8_combout\ : std_logic;
SIGNAL \operand[7]~7_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \next_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \IO_DATA[5]~input_o\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \Selector22~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Selector22~5_combout\ : std_logic;
SIGNAL \operand[6]~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_mem_addr[6]~6_combout\ : std_logic;
SIGNAL \operand[10]~10_combout\ : std_logic;
SIGNAL \IO_DATA[11]~input_o\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \shifter|sbit[1][11]~13_combout\ : std_logic;
SIGNAL \shifter|sbit[2][13]~17_combout\ : std_logic;
SIGNAL \shifter|sbit[3][9]~21_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \IO_DATA[9]~input_o\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \shifter|sbit[1][10]~1_combout\ : std_logic;
SIGNAL \shifter|sbit[2][10]~24_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \IO_DATA[6]~input_o\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \shifter|sbit[3][14]~36_combout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Selector21~4_combout\ : std_logic;
SIGNAL \shifter|sbit[1][6]~2_combout\ : std_logic;
SIGNAL \shifter|sbit[2][8]~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \IO_DATA[12]~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \shifter|sbit[1][12]~4_combout\ : std_logic;
SIGNAL \shifter|sbit[2][14]~25_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \IO_DATA[14]~input_o\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Selector13~5_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \IO_DATA[15]~input_o\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector14~6_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \state.ex_add~q\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Selector12~7_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state~49_combout\ : std_logic;
SIGNAL \state.ex_jzero~q\ : std_logic;
SIGNAL \state~47_combout\ : std_logic;
SIGNAL \state.ex_jpos~q\ : std_logic;
SIGNAL \state~48_combout\ : std_logic;
SIGNAL \state.ex_jnz~q\ : std_logic;
SIGNAL \state~50_combout\ : std_logic;
SIGNAL \state.ex_jneg~q\ : std_logic;
SIGNAL \PC[2]~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \state~51_combout\ : std_logic;
SIGNAL \state.ex_jump~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \PC[0]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \PC[2]~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \PC[2]~2_combout\ : std_logic;
SIGNAL \PC[0]~4_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \PC_stack[10][3]~q\ : std_logic;
SIGNAL \PC_stack[9][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][3]~q\ : std_logic;
SIGNAL \PC_stack[8][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][3]~q\ : std_logic;
SIGNAL \PC_stack[7][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][3]~q\ : std_logic;
SIGNAL \PC_stack[6][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][3]~q\ : std_logic;
SIGNAL \PC_stack[5][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][3]~q\ : std_logic;
SIGNAL \PC_stack[4][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][3]~q\ : std_logic;
SIGNAL \PC_stack[3][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][3]~q\ : std_logic;
SIGNAL \PC_stack[2][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][3]~q\ : std_logic;
SIGNAL \PC_stack[1][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][3]~q\ : std_logic;
SIGNAL \PC_stack[0][3]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][3]~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \PC_stack[10][5]~q\ : std_logic;
SIGNAL \PC_stack[9][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][5]~q\ : std_logic;
SIGNAL \PC_stack[8][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][5]~q\ : std_logic;
SIGNAL \PC_stack[7][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][5]~q\ : std_logic;
SIGNAL \PC_stack[6][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][5]~q\ : std_logic;
SIGNAL \PC_stack[5][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][5]~q\ : std_logic;
SIGNAL \PC_stack[4][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][5]~q\ : std_logic;
SIGNAL \PC_stack[3][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][5]~q\ : std_logic;
SIGNAL \PC_stack[2][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][5]~q\ : std_logic;
SIGNAL \PC_stack[1][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][5]~q\ : std_logic;
SIGNAL \PC_stack[0][5]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][5]~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \next_mem_addr[5]~5_combout\ : std_logic;
SIGNAL \next_mem_addr[4]~4_combout\ : std_logic;
SIGNAL \operand[3]~3_combout\ : std_logic;
SIGNAL \next_mem_addr[3]~3_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state~46_combout\ : std_logic;
SIGNAL \state.ex_return~q\ : std_logic;
SIGNAL \PC_stack[10][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[10][2]~q\ : std_logic;
SIGNAL \PC_stack[9][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[9][2]~q\ : std_logic;
SIGNAL \PC_stack[8][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[8][2]~q\ : std_logic;
SIGNAL \PC_stack[7][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[7][2]~q\ : std_logic;
SIGNAL \PC_stack[6][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[6][2]~q\ : std_logic;
SIGNAL \PC_stack[5][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[5][2]~q\ : std_logic;
SIGNAL \PC_stack[4][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[4][2]~q\ : std_logic;
SIGNAL \PC_stack[3][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[3][2]~q\ : std_logic;
SIGNAL \PC_stack[2][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[2][2]~q\ : std_logic;
SIGNAL \PC_stack[1][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[1][2]~q\ : std_logic;
SIGNAL \PC_stack[0][2]~feeder_combout\ : std_logic;
SIGNAL \PC_stack[0][2]~q\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \next_mem_addr[2]~2_combout\ : std_logic;
SIGNAL \operand[1]~1_combout\ : std_logic;
SIGNAL \IR[1]~feeder_combout\ : std_logic;
SIGNAL \next_mem_addr[1]~1_combout\ : std_logic;
SIGNAL \operand[0]~0_combout\ : std_logic;
SIGNAL \next_mem_addr[0]~0_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state.ex_out~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \state.fetch~q\ : std_logic;
SIGNAL \state.decode~feeder_combout\ : std_logic;
SIGNAL \state.decode~q\ : std_logic;
SIGNAL \operand[2]~2_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \IO_DATA[10]~input_o\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \state~53_combout\ : std_logic;
SIGNAL \state.ex_store~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \MW~q\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.ex_shift~q\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector27~7_combout\ : std_logic;
SIGNAL \IO_DATA[0]~input_o\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \io_drive_en~q\ : std_logic;
SIGNAL \Selector139~0_combout\ : std_logic;
SIGNAL \IO_READ~reg0_q\ : std_logic;
SIGNAL \state.ex_out2~q\ : std_logic;
SIGNAL \Selector140~0_combout\ : std_logic;
SIGNAL \IO_WRITE~reg0_q\ : std_logic;
SIGNAL \IR[11]~feeder_combout\ : std_logic;
SIGNAL \IR[15]~0_combout\ : std_logic;
SIGNAL \IR[13]~feeder_combout\ : std_logic;
SIGNAL \IR[14]~feeder_combout\ : std_logic;
SIGNAL \IR[15]~feeder_combout\ : std_logic;
SIGNAL PC : std_logic_vector(10 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL AC : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL ALT_INV_PC : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][10]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[1][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[3][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][10]~q\ : std_logic;
SIGNAL \ALT_INV_Selector20~3_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][8]~q\ : std_logic;
SIGNAL \ALT_INV_Selector25~4_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][9]~q\ : std_logic;
SIGNAL \ALT_INV_Selector27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~7_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_IO_READ~reg0_q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[4][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][10]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][5]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][7]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][9]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[8][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[9][4]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[5][10]~q\ : std_logic;
SIGNAL ALT_INV_IR : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_AC : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_operand[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_operand[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_in2~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_out2~q\ : std_logic;
SIGNAL \ALT_INV_operand[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_operand[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_operand[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_operand[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_operand[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_operand[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_operand[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_operand[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_IO_WRITE~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_in~q\ : std_logic;
SIGNAL \ALT_INV_state.fetch~q\ : std_logic;
SIGNAL \ALT_INV_state.decode~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_out~q\ : std_logic;
SIGNAL \ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][5]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~4_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][11]~29_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][10]~27_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][7]~30_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][12]~4_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][7]~14_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][1]~23_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][10]~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_load~q\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][11]~31_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~6_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][3]~32_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_addi~q\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][8]~10_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][3]~19_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][4]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_add~q\ : std_logic;
SIGNAL \ALT_INV_operand[10]~10_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][12]~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_loadi~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_or~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_and~q\ : std_logic;
SIGNAL \ALT_INV_state.init~q\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][14]~5_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_xor~q\ : std_logic;
SIGNAL \ALT_INV_Selector26~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_sub~q\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][4]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][9]~12_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_shift~q\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][11]~13_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][6]~2_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][13]~16_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][5]~18_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][9]~21_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[1][1]~22_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][13]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][14]~25_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][9]~15_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][8]~3_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][0]~11_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][6]~26_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][10]~24_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][2]~28_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~2_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[2][0]~34_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][7]~38_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][7]~39_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][5]~35_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~3_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][12]~33_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~2_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][14]~36_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \shifter|ALT_INV_sbit[3][7]~37_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jpos~q\ : std_logic;
SIGNAL \ALT_INV_PC[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~74_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_call~q\ : std_logic;
SIGNAL \ALT_INV_state.ex_jzero~q\ : std_logic;
SIGNAL \ALT_INV_state~35_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_return~q\ : std_logic;
SIGNAL \ALT_INV_PC[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_state~32_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~64_combout\ : std_logic;
SIGNAL \ALT_INV_state~42_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~71_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \ALT_INV_PC[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jump~q\ : std_logic;
SIGNAL \ALT_INV_PC[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_state~30_combout\ : std_logic;
SIGNAL \ALT_INV_state~33_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jneg~q\ : std_logic;
SIGNAL \ALT_INV_state~36_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_jnz~q\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~70_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~72_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_MW~q\ : std_logic;
SIGNAL \ALT_INV_Add1~82_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][7]~q\ : std_logic;
SIGNAL \ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~79_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~75_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector19~4_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][8]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][2]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~77_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][6]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][0]~q\ : std_logic;
SIGNAL \ALT_INV_Selector20~2_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][5]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][9]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~81_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_store~q\ : std_logic;
SIGNAL \ALT_INV_io_drive_en~q\ : std_logic;
SIGNAL \ALT_INV_Add1~76_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector19~5_combout\ : std_logic;
SIGNAL \ALT_INV_state~53_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][4]~q\ : std_logic;
SIGNAL \ALT_INV_Add1~80_combout\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~83_combout\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][1]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][3]~q\ : std_logic;
SIGNAL \ALT_INV_PC_stack[10][10]~q\ : std_logic;
SIGNAL \ALT_INV_IO_DATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~78_combout\ : std_logic;
SIGNAL \ALT_INV_state.ex_addi~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_in2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_sub~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_xor~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_add~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.ex_or~DUPLICATE_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
IO_READ <= ww_IO_READ;
IO_WRITE <= ww_IO_WRITE;
IO_ADDR <= ww_IO_ADDR;
dbg_FETCH <= ww_dbg_FETCH;
dbg_AC <= ww_dbg_AC;
dbg_PC <= ww_dbg_PC;
dbg_NMA <= ww_dbg_NMA;
dbg_MD <= ww_dbg_MD;
dbg_IR <= ww_dbg_IR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (AC(4) & AC(3) & AC(2) & AC(1) & AC(0));

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(0) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(1) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(2) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(3) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(4) <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ <= (AC(9) & AC(8) & AC(7) & AC(6) & AC(5));

\altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(5) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(6) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(7) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(8) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(9) <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(4);

\altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (AC(14) & AC(13) & AC(12) & AC(11) & AC(10));

\altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(10) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\altsyncram_component|auto_generated|q_a\(11) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\altsyncram_component|auto_generated|q_a\(12) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\altsyncram_component|auto_generated|q_a\(13) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\altsyncram_component|auto_generated|q_a\(14) <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);

\altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & AC(15));

\altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\next_mem_addr[10]~10_combout\ & \next_mem_addr[9]~9_combout\ & \next_mem_addr[8]~8_combout\ & \next_mem_addr[7]~7_combout\ & \next_mem_addr[6]~6_combout\ & \next_mem_addr[5]~5_combout\
& \next_mem_addr[4]~4_combout\ & \next_mem_addr[3]~3_combout\ & \next_mem_addr[2]~2_combout\ & \next_mem_addr[1]~1_combout\ & \next_mem_addr[0]~0_combout\);

\altsyncram_component|auto_generated|q_a\(15) <= \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_PC_stack[0][2]~q\ <= NOT \PC_stack[0][2]~q\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_PC_stack[0][0]~q\ <= NOT \PC_stack[0][0]~q\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_PC_stack[0][1]~q\ <= NOT \PC_stack[0][1]~q\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \altsyncram_component|auto_generated|q_a\(11);
\altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \altsyncram_component|auto_generated|q_a\(15);
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
ALT_INV_PC(3) <= NOT PC(3);
ALT_INV_PC(9) <= NOT PC(9);
\altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \altsyncram_component|auto_generated|q_a\(4);
\altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \altsyncram_component|auto_generated|q_a\(3);
\altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \altsyncram_component|auto_generated|q_a\(9);
\altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \altsyncram_component|auto_generated|q_a\(8);
\altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \altsyncram_component|auto_generated|q_a\(7);
\altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \altsyncram_component|auto_generated|q_a\(10);
\altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \altsyncram_component|auto_generated|q_a\(6);
\altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \altsyncram_component|auto_generated|q_a\(14);
\altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \altsyncram_component|auto_generated|q_a\(13);
\altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \altsyncram_component|auto_generated|q_a\(12);
ALT_INV_PC(1) <= NOT PC(1);
ALT_INV_PC(8) <= NOT PC(8);
\altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \altsyncram_component|auto_generated|q_a\(1);
ALT_INV_PC(0) <= NOT PC(0);
ALT_INV_PC(5) <= NOT PC(5);
ALT_INV_PC(6) <= NOT PC(6);
ALT_INV_PC(7) <= NOT PC(7);
ALT_INV_PC(10) <= NOT PC(10);
\altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \altsyncram_component|auto_generated|q_a\(0);
\altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \altsyncram_component|auto_generated|q_a\(5);
ALT_INV_PC(4) <= NOT PC(4);
ALT_INV_PC(2) <= NOT PC(2);
\altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \altsyncram_component|auto_generated|q_a\(2);
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_PC_stack[3][9]~q\ <= NOT \PC_stack[3][9]~q\;
\ALT_INV_PC_stack[4][3]~q\ <= NOT \PC_stack[4][3]~q\;
\ALT_INV_PC_stack[2][1]~q\ <= NOT \PC_stack[2][1]~q\;
\ALT_INV_PC_stack[1][7]~q\ <= NOT \PC_stack[1][7]~q\;
\ALT_INV_PC_stack[1][5]~q\ <= NOT \PC_stack[1][5]~q\;
\ALT_INV_PC_stack[0][7]~q\ <= NOT \PC_stack[0][7]~q\;
\ALT_INV_PC_stack[0][10]~q\ <= NOT \PC_stack[0][10]~q\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_PC_stack[0][6]~q\ <= NOT \PC_stack[0][6]~q\;
\ALT_INV_PC_stack[2][7]~q\ <= NOT \PC_stack[2][7]~q\;
\ALT_INV_PC_stack[3][2]~q\ <= NOT \PC_stack[3][2]~q\;
\ALT_INV_PC_stack[3][4]~q\ <= NOT \PC_stack[3][4]~q\;
\ALT_INV_PC_stack[2][9]~q\ <= NOT \PC_stack[2][9]~q\;
\ALT_INV_PC_stack[1][10]~q\ <= NOT \PC_stack[1][10]~q\;
\ALT_INV_PC_stack[2][4]~q\ <= NOT \PC_stack[2][4]~q\;
\ALT_INV_PC_stack[3][1]~q\ <= NOT \PC_stack[3][1]~q\;
\ALT_INV_PC_stack[2][2]~q\ <= NOT \PC_stack[2][2]~q\;
\ALT_INV_PC_stack[4][5]~q\ <= NOT \PC_stack[4][5]~q\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_PC_stack[1][4]~q\ <= NOT \PC_stack[1][4]~q\;
\ALT_INV_PC_stack[1][8]~q\ <= NOT \PC_stack[1][8]~q\;
\ALT_INV_PC_stack[3][5]~q\ <= NOT \PC_stack[3][5]~q\;
\ALT_INV_PC_stack[1][6]~q\ <= NOT \PC_stack[1][6]~q\;
\ALT_INV_PC_stack[2][8]~q\ <= NOT \PC_stack[2][8]~q\;
\ALT_INV_PC_stack[0][8]~q\ <= NOT \PC_stack[0][8]~q\;
\ALT_INV_PC_stack[2][3]~q\ <= NOT \PC_stack[2][3]~q\;
\ALT_INV_PC_stack[3][8]~q\ <= NOT \PC_stack[3][8]~q\;
\ALT_INV_PC_stack[4][0]~q\ <= NOT \PC_stack[4][0]~q\;
\ALT_INV_PC_stack[4][4]~q\ <= NOT \PC_stack[4][4]~q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_PC_stack[0][4]~q\ <= NOT \PC_stack[0][4]~q\;
\ALT_INV_PC_stack[4][6]~q\ <= NOT \PC_stack[4][6]~q\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_PC_stack[1][1]~q\ <= NOT \PC_stack[1][1]~q\;
\ALT_INV_PC_stack[1][3]~q\ <= NOT \PC_stack[1][3]~q\;
\ALT_INV_PC_stack[2][0]~q\ <= NOT \PC_stack[2][0]~q\;
\ALT_INV_PC_stack[1][2]~q\ <= NOT \PC_stack[1][2]~q\;
\ALT_INV_PC_stack[0][5]~q\ <= NOT \PC_stack[0][5]~q\;
\ALT_INV_PC_stack[0][9]~q\ <= NOT \PC_stack[0][9]~q\;
\ALT_INV_PC_stack[2][10]~q\ <= NOT \PC_stack[2][10]~q\;
\ALT_INV_PC_stack[3][7]~q\ <= NOT \PC_stack[3][7]~q\;
\ALT_INV_PC_stack[0][3]~q\ <= NOT \PC_stack[0][3]~q\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_PC_stack[1][0]~q\ <= NOT \PC_stack[1][0]~q\;
\ALT_INV_PC_stack[2][6]~q\ <= NOT \PC_stack[2][6]~q\;
\ALT_INV_PC_stack[2][5]~q\ <= NOT \PC_stack[2][5]~q\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_PC_stack[3][0]~q\ <= NOT \PC_stack[3][0]~q\;
\ALT_INV_PC_stack[3][3]~q\ <= NOT \PC_stack[3][3]~q\;
\ALT_INV_PC_stack[1][9]~q\ <= NOT \PC_stack[1][9]~q\;
\ALT_INV_PC_stack[3][6]~q\ <= NOT \PC_stack[3][6]~q\;
\ALT_INV_PC_stack[3][10]~q\ <= NOT \PC_stack[3][10]~q\;
\ALT_INV_PC_stack[4][1]~q\ <= NOT \PC_stack[4][1]~q\;
\ALT_INV_PC_stack[4][2]~q\ <= NOT \PC_stack[4][2]~q\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_PC_stack[7][8]~q\ <= NOT \PC_stack[7][8]~q\;
\ALT_INV_PC_stack[9][8]~q\ <= NOT \PC_stack[9][8]~q\;
\ALT_INV_PC_stack[4][10]~q\ <= NOT \PC_stack[4][10]~q\;
\ALT_INV_PC_stack[6][5]~q\ <= NOT \PC_stack[6][5]~q\;
\ALT_INV_PC_stack[9][10]~q\ <= NOT \PC_stack[9][10]~q\;
\ALT_INV_Selector20~3_combout\ <= NOT \Selector20~3_combout\;
\ALT_INV_PC_stack[5][1]~q\ <= NOT \PC_stack[5][1]~q\;
\ALT_INV_PC_stack[8][3]~q\ <= NOT \PC_stack[8][3]~q\;
\ALT_INV_PC_stack[8][2]~q\ <= NOT \PC_stack[8][2]~q\;
\ALT_INV_PC_stack[8][8]~q\ <= NOT \PC_stack[8][8]~q\;
\ALT_INV_PC_stack[9][6]~q\ <= NOT \PC_stack[9][6]~q\;
\ALT_INV_PC_stack[4][8]~q\ <= NOT \PC_stack[4][8]~q\;
\ALT_INV_Selector25~4_combout\ <= NOT \Selector25~4_combout\;
\ALT_INV_PC_stack[5][9]~q\ <= NOT \PC_stack[5][9]~q\;
\ALT_INV_Selector27~3_combout\ <= NOT \Selector27~3_combout\;
\ALT_INV_Selector27~7_combout\ <= NOT \Selector27~7_combout\;
\ALT_INV_PC_stack[9][2]~q\ <= NOT \PC_stack[9][2]~q\;
\ALT_INV_PC_stack[6][3]~q\ <= NOT \PC_stack[6][3]~q\;
\ALT_INV_PC_stack[7][2]~q\ <= NOT \PC_stack[7][2]~q\;
\ALT_INV_IO_READ~reg0_q\ <= NOT \IO_READ~reg0_q\;
\ALT_INV_PC_stack[6][6]~q\ <= NOT \PC_stack[6][6]~q\;
\ALT_INV_PC_stack[7][3]~q\ <= NOT \PC_stack[7][3]~q\;
\ALT_INV_PC_stack[7][5]~q\ <= NOT \PC_stack[7][5]~q\;
\ALT_INV_PC_stack[6][1]~q\ <= NOT \PC_stack[6][1]~q\;
\ALT_INV_PC_stack[7][7]~q\ <= NOT \PC_stack[7][7]~q\;
\ALT_INV_PC_stack[7][1]~q\ <= NOT \PC_stack[7][1]~q\;
\ALT_INV_PC_stack[5][0]~q\ <= NOT \PC_stack[5][0]~q\;
\ALT_INV_PC_stack[6][10]~q\ <= NOT \PC_stack[6][10]~q\;
\ALT_INV_PC_stack[4][7]~q\ <= NOT \PC_stack[4][7]~q\;
\ALT_INV_PC_stack[7][10]~q\ <= NOT \PC_stack[7][10]~q\;
\ALT_INV_PC_stack[6][7]~q\ <= NOT \PC_stack[6][7]~q\;
\ALT_INV_PC_stack[8][5]~q\ <= NOT \PC_stack[8][5]~q\;
\ALT_INV_PC_stack[8][6]~q\ <= NOT \PC_stack[8][6]~q\;
\ALT_INV_PC_stack[5][7]~q\ <= NOT \PC_stack[5][7]~q\;
\ALT_INV_PC_stack[6][8]~q\ <= NOT \PC_stack[6][8]~q\;
\ALT_INV_PC_stack[5][5]~q\ <= NOT \PC_stack[5][5]~q\;
\ALT_INV_PC_stack[7][9]~q\ <= NOT \PC_stack[7][9]~q\;
\ALT_INV_PC_stack[8][9]~q\ <= NOT \PC_stack[8][9]~q\;
\ALT_INV_PC_stack[8][0]~q\ <= NOT \PC_stack[8][0]~q\;
\ALT_INV_PC_stack[5][3]~q\ <= NOT \PC_stack[5][3]~q\;
\ALT_INV_PC_stack[4][9]~q\ <= NOT \PC_stack[4][9]~q\;
\ALT_INV_PC_stack[5][2]~q\ <= NOT \PC_stack[5][2]~q\;
\ALT_INV_PC_stack[6][4]~q\ <= NOT \PC_stack[6][4]~q\;
\ALT_INV_PC_stack[8][1]~q\ <= NOT \PC_stack[8][1]~q\;
\ALT_INV_PC_stack[8][10]~q\ <= NOT \PC_stack[8][10]~q\;
\ALT_INV_PC_stack[5][4]~q\ <= NOT \PC_stack[5][4]~q\;
\ALT_INV_PC_stack[9][0]~q\ <= NOT \PC_stack[9][0]~q\;
\ALT_INV_PC_stack[9][1]~q\ <= NOT \PC_stack[9][1]~q\;
\ALT_INV_PC_stack[7][0]~q\ <= NOT \PC_stack[7][0]~q\;
\ALT_INV_PC_stack[8][7]~q\ <= NOT \PC_stack[8][7]~q\;
\ALT_INV_PC_stack[9][5]~q\ <= NOT \PC_stack[9][5]~q\;
\ALT_INV_PC_stack[9][7]~q\ <= NOT \PC_stack[9][7]~q\;
\ALT_INV_PC_stack[9][9]~q\ <= NOT \PC_stack[9][9]~q\;
\ALT_INV_PC_stack[5][6]~q\ <= NOT \PC_stack[5][6]~q\;
\ALT_INV_PC_stack[5][8]~q\ <= NOT \PC_stack[5][8]~q\;
\ALT_INV_PC_stack[6][0]~q\ <= NOT \PC_stack[6][0]~q\;
\ALT_INV_PC_stack[9][3]~q\ <= NOT \PC_stack[9][3]~q\;
\ALT_INV_PC_stack[6][9]~q\ <= NOT \PC_stack[6][9]~q\;
\ALT_INV_PC_stack[6][2]~q\ <= NOT \PC_stack[6][2]~q\;
\ALT_INV_PC_stack[7][4]~q\ <= NOT \PC_stack[7][4]~q\;
\ALT_INV_PC_stack[8][4]~q\ <= NOT \PC_stack[8][4]~q\;
\ALT_INV_PC_stack[9][4]~q\ <= NOT \PC_stack[9][4]~q\;
\ALT_INV_PC_stack[7][6]~q\ <= NOT \PC_stack[7][6]~q\;
\ALT_INV_PC_stack[5][10]~q\ <= NOT \PC_stack[5][10]~q\;
ALT_INV_IR(1) <= NOT IR(1);
ALT_INV_AC(8) <= NOT AC(8);
\ALT_INV_operand[0]~0_combout\ <= NOT \operand[0]~0_combout\;
\ALT_INV_operand[2]~2_combout\ <= NOT \operand[2]~2_combout\;
ALT_INV_AC(10) <= NOT AC(10);
ALT_INV_IR(4) <= NOT IR(4);
ALT_INV_AC(13) <= NOT AC(13);
ALT_INV_IR(10) <= NOT IR(10);
ALT_INV_AC(3) <= NOT AC(3);
ALT_INV_IR(3) <= NOT IR(3);
\ALT_INV_state.ex_in2~q\ <= NOT \state.ex_in2~q\;
ALT_INV_AC(1) <= NOT AC(1);
\ALT_INV_state.ex_out2~q\ <= NOT \state.ex_out2~q\;
\ALT_INV_operand[3]~3_combout\ <= NOT \operand[3]~3_combout\;
\ALT_INV_operand[4]~4_combout\ <= NOT \operand[4]~4_combout\;
\ALT_INV_operand[5]~5_combout\ <= NOT \operand[5]~5_combout\;
\ALT_INV_operand[6]~6_combout\ <= NOT \operand[6]~6_combout\;
\ALT_INV_operand[7]~7_combout\ <= NOT \operand[7]~7_combout\;
ALT_INV_IR(2) <= NOT IR(2);
\ALT_INV_operand[8]~8_combout\ <= NOT \operand[8]~8_combout\;
ALT_INV_AC(4) <= NOT AC(4);
\ALT_INV_operand[9]~9_combout\ <= NOT \operand[9]~9_combout\;
\ALT_INV_operand[1]~1_combout\ <= NOT \operand[1]~1_combout\;
ALT_INV_IR(5) <= NOT IR(5);
ALT_INV_AC(5) <= NOT AC(5);
\ALT_INV_IO_WRITE~reg0_q\ <= NOT \IO_WRITE~reg0_q\;
ALT_INV_AC(0) <= NOT AC(0);
ALT_INV_IR(7) <= NOT IR(7);
ALT_INV_IR(6) <= NOT IR(6);
ALT_INV_AC(9) <= NOT AC(9);
ALT_INV_AC(7) <= NOT AC(7);
ALT_INV_IR(8) <= NOT IR(8);
ALT_INV_AC(14) <= NOT AC(14);
ALT_INV_IR(0) <= NOT IR(0);
ALT_INV_AC(6) <= NOT AC(6);
ALT_INV_AC(2) <= NOT AC(2);
\ALT_INV_state.ex_in~q\ <= NOT \state.ex_in~q\;
ALT_INV_AC(12) <= NOT AC(12);
ALT_INV_AC(11) <= NOT AC(11);
\ALT_INV_state.fetch~q\ <= NOT \state.fetch~q\;
ALT_INV_IR(9) <= NOT IR(9);
ALT_INV_AC(15) <= NOT AC(15);
\ALT_INV_state.decode~q\ <= NOT \state.decode~q\;
\ALT_INV_state.ex_out~q\ <= NOT \state.ex_out~q\;
\ALT_INV_WideOr2~1_combout\ <= NOT \WideOr2~1_combout\;
\shifter|ALT_INV_sbit[2][5]~20_combout\ <= NOT \shifter|sbit[2][5]~20_combout\;
\ALT_INV_Selector26~4_combout\ <= NOT \Selector26~4_combout\;
\shifter|ALT_INV_sbit[2][11]~29_combout\ <= NOT \shifter|sbit[2][11]~29_combout\;
\shifter|ALT_INV_sbit[3][10]~27_combout\ <= NOT \shifter|sbit[3][10]~27_combout\;
\shifter|ALT_INV_sbit[2][7]~30_combout\ <= NOT \shifter|sbit[2][7]~30_combout\;
\shifter|ALT_INV_sbit[1][12]~4_combout\ <= NOT \shifter|sbit[1][12]~4_combout\;
\shifter|ALT_INV_sbit[1][7]~14_combout\ <= NOT \shifter|sbit[1][7]~14_combout\;
\shifter|ALT_INV_sbit[3][1]~23_combout\ <= NOT \shifter|sbit[3][1]~23_combout\;
\shifter|ALT_INV_sbit[1][10]~1_combout\ <= NOT \shifter|sbit[1][10]~1_combout\;
\ALT_INV_state.ex_load~q\ <= NOT \state.ex_load~q\;
\shifter|ALT_INV_sbit[3][11]~31_combout\ <= NOT \shifter|sbit[3][11]~31_combout\;
\shifter|ALT_INV_sbit[1][8]~0_combout\ <= NOT \shifter|sbit[1][8]~0_combout\;
\ALT_INV_Selector26~6_combout\ <= NOT \Selector26~6_combout\;
\shifter|ALT_INV_sbit[2][3]~32_combout\ <= NOT \shifter|sbit[2][3]~32_combout\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_state.ex_addi~q\ <= NOT \state.ex_addi~q\;
\shifter|ALT_INV_sbit[3][8]~10_combout\ <= NOT \shifter|sbit[3][8]~10_combout\;
\shifter|ALT_INV_sbit[1][3]~19_combout\ <= NOT \shifter|sbit[1][3]~19_combout\;
\shifter|ALT_INV_sbit[2][4]~9_combout\ <= NOT \shifter|sbit[2][4]~9_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\ALT_INV_state.ex_add~q\ <= NOT \state.ex_add~q\;
\ALT_INV_operand[10]~10_combout\ <= NOT \operand[10]~10_combout\;
\shifter|ALT_INV_sbit[2][12]~6_combout\ <= NOT \shifter|sbit[2][12]~6_combout\;
\ALT_INV_state.ex_loadi~q\ <= NOT \state.ex_loadi~q\;
\ALT_INV_state.ex_or~q\ <= NOT \state.ex_or~q\;
\ALT_INV_state.ex_and~q\ <= NOT \state.ex_and~q\;
\ALT_INV_state.init~q\ <= NOT \state.init~q\;
\shifter|ALT_INV_sbit[1][14]~5_combout\ <= NOT \shifter|sbit[1][14]~5_combout\;
\shifter|ALT_INV_sbit[1][2]~8_combout\ <= NOT \shifter|sbit[1][2]~8_combout\;
\ALT_INV_state.ex_xor~q\ <= NOT \state.ex_xor~q\;
\ALT_INV_Selector26~2_combout\ <= NOT \Selector26~2_combout\;
\ALT_INV_state.ex_sub~q\ <= NOT \state.ex_sub~q\;
\shifter|ALT_INV_sbit[1][4]~7_combout\ <= NOT \shifter|sbit[1][4]~7_combout\;
\ALT_INV_Selector26~1_combout\ <= NOT \Selector26~1_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\shifter|ALT_INV_sbit[1][9]~12_combout\ <= NOT \shifter|sbit[1][9]~12_combout\;
\ALT_INV_state.ex_shift~q\ <= NOT \state.ex_shift~q\;
\shifter|ALT_INV_sbit[1][11]~13_combout\ <= NOT \shifter|sbit[1][11]~13_combout\;
\shifter|ALT_INV_sbit[1][6]~2_combout\ <= NOT \shifter|sbit[1][6]~2_combout\;
\shifter|ALT_INV_sbit[1][13]~16_combout\ <= NOT \shifter|sbit[1][13]~16_combout\;
\shifter|ALT_INV_sbit[1][5]~18_combout\ <= NOT \shifter|sbit[1][5]~18_combout\;
\shifter|ALT_INV_sbit[3][9]~21_combout\ <= NOT \shifter|sbit[3][9]~21_combout\;
\shifter|ALT_INV_sbit[1][1]~22_combout\ <= NOT \shifter|sbit[1][1]~22_combout\;
\ALT_INV_WideOr2~0_combout\ <= NOT \WideOr2~0_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\shifter|ALT_INV_sbit[2][13]~17_combout\ <= NOT \shifter|sbit[2][13]~17_combout\;
\ALT_INV_Selector26~3_combout\ <= NOT \Selector26~3_combout\;
\ALT_INV_Selector26~5_combout\ <= NOT \Selector26~5_combout\;
\ALT_INV_Selector25~1_combout\ <= NOT \Selector25~1_combout\;
\ALT_INV_Selector27~1_combout\ <= NOT \Selector27~1_combout\;
\shifter|ALT_INV_sbit[2][14]~25_combout\ <= NOT \shifter|sbit[2][14]~25_combout\;
\shifter|ALT_INV_sbit[2][9]~15_combout\ <= NOT \shifter|sbit[2][9]~15_combout\;
\shifter|ALT_INV_sbit[2][8]~3_combout\ <= NOT \shifter|sbit[2][8]~3_combout\;
\shifter|ALT_INV_sbit[3][0]~11_combout\ <= NOT \shifter|sbit[3][0]~11_combout\;
\shifter|ALT_INV_sbit[2][6]~26_combout\ <= NOT \shifter|sbit[2][6]~26_combout\;
\shifter|ALT_INV_sbit[2][10]~24_combout\ <= NOT \shifter|sbit[2][10]~24_combout\;
\shifter|ALT_INV_sbit[2][2]~28_combout\ <= NOT \shifter|sbit[2][2]~28_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_Selector25~2_combout\ <= NOT \Selector25~2_combout\;
\shifter|ALT_INV_sbit[2][0]~34_combout\ <= NOT \shifter|sbit[2][0]~34_combout\;
\ALT_INV_Selector21~3_combout\ <= NOT \Selector21~3_combout\;
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\shifter|ALT_INV_sbit[3][7]~38_combout\ <= NOT \shifter|sbit[3][7]~38_combout\;
\ALT_INV_Selector16~2_combout\ <= NOT \Selector16~2_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_Selector15~1_combout\ <= NOT \Selector15~1_combout\;
\ALT_INV_Selector15~3_combout\ <= NOT \Selector15~3_combout\;
\ALT_INV_Selector15~4_combout\ <= NOT \Selector15~4_combout\;
\ALT_INV_Selector22~2_combout\ <= NOT \Selector22~2_combout\;
\ALT_INV_Selector14~1_combout\ <= NOT \Selector14~1_combout\;
\ALT_INV_Selector14~2_combout\ <= NOT \Selector14~2_combout\;
\ALT_INV_Selector24~2_combout\ <= NOT \Selector24~2_combout\;
\ALT_INV_Selector14~4_combout\ <= NOT \Selector14~4_combout\;
\ALT_INV_Selector16~3_combout\ <= NOT \Selector16~3_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Selector15~2_combout\ <= NOT \Selector15~2_combout\;
\ALT_INV_Selector13~2_combout\ <= NOT \Selector13~2_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector24~3_combout\ <= NOT \Selector24~3_combout\;
\ALT_INV_Selector13~1_combout\ <= NOT \Selector13~1_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_Selector18~1_combout\ <= NOT \Selector18~1_combout\;
\ALT_INV_Selector19~1_combout\ <= NOT \Selector19~1_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\shifter|ALT_INV_sbit[3][7]~39_combout\ <= NOT \shifter|sbit[3][7]~39_combout\;
\ALT_INV_Selector14~3_combout\ <= NOT \Selector14~3_combout\;
\ALT_INV_Selector13~3_combout\ <= NOT \Selector13~3_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\shifter|ALT_INV_sbit[3][5]~35_combout\ <= NOT \shifter|sbit[3][5]~35_combout\;
\ALT_INV_Selector17~3_combout\ <= NOT \Selector17~3_combout\;
\shifter|ALT_INV_sbit[3][12]~33_combout\ <= NOT \shifter|sbit[3][12]~33_combout\;
\ALT_INV_Selector23~2_combout\ <= NOT \Selector23~2_combout\;
\shifter|ALT_INV_sbit[3][14]~36_combout\ <= NOT \shifter|sbit[3][14]~36_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\ALT_INV_Selector23~3_combout\ <= NOT \Selector23~3_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector21~1_combout\ <= NOT \Selector21~1_combout\;
\shifter|ALT_INV_sbit[3][7]~37_combout\ <= NOT \shifter|sbit[3][7]~37_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector17~4_combout\ <= NOT \Selector17~4_combout\;
\ALT_INV_Selector22~3_combout\ <= NOT \Selector22~3_combout\;
\ALT_INV_Selector18~3_combout\ <= NOT \Selector18~3_combout\;
\ALT_INV_Selector22~4_combout\ <= NOT \Selector22~4_combout\;
\ALT_INV_Selector21~2_combout\ <= NOT \Selector21~2_combout\;
\ALT_INV_Selector18~2_combout\ <= NOT \Selector18~2_combout\;
\ALT_INV_Selector17~2_combout\ <= NOT \Selector17~2_combout\;
\ALT_INV_Selector16~1_combout\ <= NOT \Selector16~1_combout\;
\ALT_INV_Selector16~4_combout\ <= NOT \Selector16~4_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_state.ex_jpos~q\ <= NOT \state.ex_jpos~q\;
\ALT_INV_PC[2]~0_combout\ <= NOT \PC[2]~0_combout\;
\ALT_INV_Add1~74_combout\ <= NOT \Add1~74_combout\;
\ALT_INV_state.ex_call~q\ <= NOT \state.ex_call~q\;
\ALT_INV_state.ex_jzero~q\ <= NOT \state.ex_jzero~q\;
\ALT_INV_state~35_combout\ <= NOT \state~35_combout\;
\ALT_INV_Selector14~6_combout\ <= NOT \Selector14~6_combout\;
\ALT_INV_state.ex_return~q\ <= NOT \state.ex_return~q\;
\ALT_INV_PC[2]~1_combout\ <= NOT \PC[2]~1_combout\;
\ALT_INV_WideOr1~1_combout\ <= NOT \WideOr1~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_state~32_combout\ <= NOT \state~32_combout\;
\ALT_INV_Add1~64_combout\ <= NOT \Add1~64_combout\;
\ALT_INV_state~42_combout\ <= NOT \state~42_combout\;
\ALT_INV_Add1~69_combout\ <= NOT \Add1~69_combout\;
\ALT_INV_Selector12~3_combout\ <= NOT \Selector12~3_combout\;
\ALT_INV_Add1~71_combout\ <= NOT \Add1~71_combout\;
\ALT_INV_Selector12~4_combout\ <= NOT \Selector12~4_combout\;
\ALT_INV_Selector12~1_combout\ <= NOT \Selector12~1_combout\;
\ALT_INV_PC[2]~2_combout\ <= NOT \PC[2]~2_combout\;
\ALT_INV_Selector12~6_combout\ <= NOT \Selector12~6_combout\;
\ALT_INV_state.ex_jump~q\ <= NOT \state.ex_jump~q\;
\ALT_INV_PC[0]~3_combout\ <= NOT \PC[0]~3_combout\;
\ALT_INV_state~30_combout\ <= NOT \state~30_combout\;
\ALT_INV_state~33_combout\ <= NOT \state~33_combout\;
\ALT_INV_state.ex_jneg~q\ <= NOT \state.ex_jneg~q\;
\ALT_INV_state~36_combout\ <= NOT \state~36_combout\;
\ALT_INV_Selector12~5_combout\ <= NOT \Selector12~5_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_state.ex_jnz~q\ <= NOT \state.ex_jnz~q\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector12~2_combout\ <= NOT \Selector12~2_combout\;
\ALT_INV_Add1~70_combout\ <= NOT \Add1~70_combout\;
\ALT_INV_Add1~72_combout\ <= NOT \Add1~72_combout\;
\ALT_INV_Add1~73_combout\ <= NOT \Add1~73_combout\;
\ALT_INV_Selector13~4_combout\ <= NOT \Selector13~4_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_MW~q\ <= NOT \MW~q\;
\ALT_INV_Add1~82_combout\ <= NOT \Add1~82_combout\;
\ALT_INV_IO_DATA[4]~input_o\ <= NOT \IO_DATA[4]~input_o\;
\ALT_INV_IO_DATA[6]~input_o\ <= NOT \IO_DATA[6]~input_o\;
\ALT_INV_PC_stack[10][7]~q\ <= NOT \PC_stack[10][7]~q\;
\ALT_INV_Selector19~3_combout\ <= NOT \Selector19~3_combout\;
\ALT_INV_Add1~79_combout\ <= NOT \Add1~79_combout\;
\ALT_INV_IO_DATA[5]~input_o\ <= NOT \IO_DATA[5]~input_o\;
\ALT_INV_IO_DATA[9]~input_o\ <= NOT \IO_DATA[9]~input_o\;
\ALT_INV_Add1~75_combout\ <= NOT \Add1~75_combout\;
\ALT_INV_IO_DATA[11]~input_o\ <= NOT \IO_DATA[11]~input_o\;
\ALT_INV_IO_DATA[13]~input_o\ <= NOT \IO_DATA[13]~input_o\;
\ALT_INV_Selector19~4_combout\ <= NOT \Selector19~4_combout\;
\ALT_INV_IO_DATA[1]~input_o\ <= NOT \IO_DATA[1]~input_o\;
\ALT_INV_PC_stack[10][8]~q\ <= NOT \PC_stack[10][8]~q\;
\ALT_INV_PC_stack[10][2]~q\ <= NOT \PC_stack[10][2]~q\;
\ALT_INV_Add1~77_combout\ <= NOT \Add1~77_combout\;
\ALT_INV_PC_stack[10][6]~q\ <= NOT \PC_stack[10][6]~q\;
\ALT_INV_IO_DATA[3]~input_o\ <= NOT \IO_DATA[3]~input_o\;
\ALT_INV_PC_stack[10][0]~q\ <= NOT \PC_stack[10][0]~q\;
\ALT_INV_Selector20~2_combout\ <= NOT \Selector20~2_combout\;
\ALT_INV_PC_stack[10][5]~q\ <= NOT \PC_stack[10][5]~q\;
\ALT_INV_IO_DATA[2]~input_o\ <= NOT \IO_DATA[2]~input_o\;
\ALT_INV_IO_DATA[10]~input_o\ <= NOT \IO_DATA[10]~input_o\;
\ALT_INV_IO_DATA[14]~input_o\ <= NOT \IO_DATA[14]~input_o\;
\ALT_INV_PC_stack[10][9]~q\ <= NOT \PC_stack[10][9]~q\;
\ALT_INV_IO_DATA[15]~input_o\ <= NOT \IO_DATA[15]~input_o\;
\ALT_INV_Add1~81_combout\ <= NOT \Add1~81_combout\;
\ALT_INV_state.ex_store~q\ <= NOT \state.ex_store~q\;
\ALT_INV_io_drive_en~q\ <= NOT \io_drive_en~q\;
\ALT_INV_Add1~76_combout\ <= NOT \Add1~76_combout\;
\ALT_INV_IO_DATA[8]~input_o\ <= NOT \IO_DATA[8]~input_o\;
\ALT_INV_IO_DATA[12]~input_o\ <= NOT \IO_DATA[12]~input_o\;
\ALT_INV_Selector19~5_combout\ <= NOT \Selector19~5_combout\;
\ALT_INV_state~53_combout\ <= NOT \state~53_combout\;
\ALT_INV_PC_stack[10][4]~q\ <= NOT \PC_stack[10][4]~q\;
\ALT_INV_Add1~80_combout\ <= NOT \Add1~80_combout\;
\ALT_INV_IO_DATA[7]~input_o\ <= NOT \IO_DATA[7]~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_Add1~83_combout\ <= NOT \Add1~83_combout\;
\ALT_INV_PC_stack[10][1]~q\ <= NOT \PC_stack[10][1]~q\;
\ALT_INV_PC_stack[10][3]~q\ <= NOT \PC_stack[10][3]~q\;
\ALT_INV_PC_stack[10][10]~q\ <= NOT \PC_stack[10][10]~q\;
\ALT_INV_IO_DATA[0]~input_o\ <= NOT \IO_DATA[0]~input_o\;
\ALT_INV_Add1~78_combout\ <= NOT \Add1~78_combout\;
\ALT_INV_state.ex_addi~DUPLICATE_q\ <= NOT \state.ex_addi~DUPLICATE_q\;
\ALT_INV_state.ex_in2~DUPLICATE_q\ <= NOT \state.ex_in2~DUPLICATE_q\;
\ALT_INV_state.ex_sub~DUPLICATE_q\ <= NOT \state.ex_sub~DUPLICATE_q\;
\ALT_INV_state.ex_xor~DUPLICATE_q\ <= NOT \state.ex_xor~DUPLICATE_q\;
\ALT_INV_state.ex_add~DUPLICATE_q\ <= NOT \state.ex_add~DUPLICATE_q\;
\ALT_INV_state.ex_or~DUPLICATE_q\ <= NOT \state.ex_or~DUPLICATE_q\;

-- Location: IOOBUF_X80_Y0_N2
\IO_READ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_READ~reg0_q\,
	devoe => ww_devoe,
	o => ww_IO_READ);

-- Location: IOOBUF_X89_Y9_N22
\IO_WRITE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \IO_WRITE~reg0_q\,
	devoe => ww_devoe,
	o => ww_IO_WRITE);

-- Location: IOOBUF_X86_Y0_N2
\IO_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => ww_IO_ADDR(0));

-- Location: IOOBUF_X40_Y0_N2
\IO_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => ww_IO_ADDR(1));

-- Location: IOOBUF_X52_Y0_N2
\IO_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => ww_IO_ADDR(2));

-- Location: IOOBUF_X30_Y0_N53
\IO_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => ww_IO_ADDR(3));

-- Location: IOOBUF_X80_Y0_N36
\IO_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => ww_IO_ADDR(4));

-- Location: IOOBUF_X89_Y16_N5
\IO_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => ww_IO_ADDR(5));

-- Location: IOOBUF_X88_Y0_N54
\IO_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => ww_IO_ADDR(6));

-- Location: IOOBUF_X34_Y0_N76
\IO_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => ww_IO_ADDR(7));

-- Location: IOOBUF_X38_Y0_N53
\IO_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => ww_IO_ADDR(8));

-- Location: IOOBUF_X32_Y0_N36
\IO_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => ww_IO_ADDR(9));

-- Location: IOOBUF_X36_Y0_N2
\IO_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => ww_IO_ADDR(10));

-- Location: IOOBUF_X68_Y0_N53
\dbg_FETCH~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fetch~q\,
	devoe => ww_devoe,
	o => ww_dbg_FETCH);

-- Location: IOOBUF_X66_Y0_N76
\dbg_AC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	devoe => ww_devoe,
	o => ww_dbg_AC(0));

-- Location: IOOBUF_X76_Y0_N2
\dbg_AC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	devoe => ww_devoe,
	o => ww_dbg_AC(1));

-- Location: IOOBUF_X62_Y0_N53
\dbg_AC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	devoe => ww_devoe,
	o => ww_dbg_AC(2));

-- Location: IOOBUF_X70_Y0_N36
\dbg_AC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	devoe => ww_devoe,
	o => ww_dbg_AC(3));

-- Location: IOOBUF_X70_Y0_N19
\dbg_AC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	devoe => ww_devoe,
	o => ww_dbg_AC(4));

-- Location: IOOBUF_X68_Y0_N2
\dbg_AC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	devoe => ww_devoe,
	o => ww_dbg_AC(5));

-- Location: IOOBUF_X80_Y0_N19
\dbg_AC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	devoe => ww_devoe,
	o => ww_dbg_AC(6));

-- Location: IOOBUF_X80_Y0_N53
\dbg_AC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	devoe => ww_devoe,
	o => ww_dbg_AC(7));

-- Location: IOOBUF_X62_Y0_N2
\dbg_AC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	devoe => ww_devoe,
	o => ww_dbg_AC(8));

-- Location: IOOBUF_X60_Y0_N53
\dbg_AC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	devoe => ww_devoe,
	o => ww_dbg_AC(9));

-- Location: IOOBUF_X72_Y0_N19
\dbg_AC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	devoe => ww_devoe,
	o => ww_dbg_AC(10));

-- Location: IOOBUF_X66_Y0_N59
\dbg_AC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	devoe => ww_devoe,
	o => ww_dbg_AC(11));

-- Location: IOOBUF_X72_Y0_N2
\dbg_AC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	devoe => ww_devoe,
	o => ww_dbg_AC(12));

-- Location: IOOBUF_X64_Y0_N36
\dbg_AC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	devoe => ww_devoe,
	o => ww_dbg_AC(13));

-- Location: IOOBUF_X58_Y0_N93
\dbg_AC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	devoe => ww_devoe,
	o => ww_dbg_AC(14));

-- Location: IOOBUF_X78_Y0_N53
\dbg_AC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	devoe => ww_devoe,
	o => ww_dbg_AC(15));

-- Location: IOOBUF_X74_Y0_N59
\dbg_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(0),
	devoe => ww_devoe,
	o => ww_dbg_PC(0));

-- Location: IOOBUF_X40_Y81_N2
\dbg_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(1),
	devoe => ww_devoe,
	o => ww_dbg_PC(1));

-- Location: IOOBUF_X82_Y0_N42
\dbg_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(2),
	devoe => ww_devoe,
	o => ww_dbg_PC(2));

-- Location: IOOBUF_X89_Y4_N79
\dbg_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(3),
	devoe => ww_devoe,
	o => ww_dbg_PC(3));

-- Location: IOOBUF_X76_Y0_N53
\dbg_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(4),
	devoe => ww_devoe,
	o => ww_dbg_PC(4));

-- Location: IOOBUF_X36_Y0_N36
\dbg_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(5),
	devoe => ww_devoe,
	o => ww_dbg_PC(5));

-- Location: IOOBUF_X56_Y0_N36
\dbg_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(6),
	devoe => ww_devoe,
	o => ww_dbg_PC(6));

-- Location: IOOBUF_X74_Y0_N42
\dbg_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(7),
	devoe => ww_devoe,
	o => ww_dbg_PC(7));

-- Location: IOOBUF_X38_Y0_N2
\dbg_PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(8),
	devoe => ww_devoe,
	o => ww_dbg_PC(8));

-- Location: IOOBUF_X89_Y6_N39
\dbg_PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(9),
	devoe => ww_devoe,
	o => ww_dbg_PC(9));

-- Location: IOOBUF_X82_Y0_N59
\dbg_PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PC(10),
	devoe => ww_devoe,
	o => ww_dbg_PC(10));

-- Location: IOOBUF_X58_Y0_N76
\dbg_NMA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(0));

-- Location: IOOBUF_X52_Y0_N36
\dbg_NMA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(1));

-- Location: IOOBUF_X54_Y0_N19
\dbg_NMA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(2));

-- Location: IOOBUF_X56_Y0_N53
\dbg_NMA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(3));

-- Location: IOOBUF_X56_Y0_N2
\dbg_NMA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(4));

-- Location: IOOBUF_X50_Y0_N59
\dbg_NMA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(5));

-- Location: IOOBUF_X50_Y0_N42
\dbg_NMA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(6));

-- Location: IOOBUF_X50_Y0_N76
\dbg_NMA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(7));

-- Location: IOOBUF_X50_Y0_N93
\dbg_NMA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(8));

-- Location: IOOBUF_X52_Y0_N53
\dbg_NMA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(9));

-- Location: IOOBUF_X58_Y0_N42
\dbg_NMA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \next_mem_addr[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_dbg_NMA(10));

-- Location: IOOBUF_X89_Y6_N5
\dbg_MD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_dbg_MD(0));

-- Location: IOOBUF_X56_Y0_N19
\dbg_MD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_dbg_MD(1));

-- Location: IOOBUF_X58_Y0_N59
\dbg_MD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_dbg_MD(2));

-- Location: IOOBUF_X60_Y0_N2
\dbg_MD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_dbg_MD(3));

-- Location: IOOBUF_X89_Y6_N56
\dbg_MD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_dbg_MD(4));

-- Location: IOOBUF_X89_Y8_N39
\dbg_MD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_dbg_MD(5));

-- Location: IOOBUF_X64_Y0_N53
\dbg_MD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_dbg_MD(6));

-- Location: IOOBUF_X74_Y0_N76
\dbg_MD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_dbg_MD(7));

-- Location: IOOBUF_X40_Y0_N53
\dbg_MD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_dbg_MD(8));

-- Location: IOOBUF_X74_Y0_N93
\dbg_MD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_dbg_MD(9));

-- Location: IOOBUF_X89_Y6_N22
\dbg_MD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_dbg_MD(10));

-- Location: IOOBUF_X54_Y0_N53
\dbg_MD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_dbg_MD(11));

-- Location: IOOBUF_X72_Y0_N36
\dbg_MD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_dbg_MD(12));

-- Location: IOOBUF_X54_Y0_N36
\dbg_MD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_dbg_MD(13));

-- Location: IOOBUF_X64_Y0_N19
\dbg_MD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_dbg_MD(14));

-- Location: IOOBUF_X38_Y0_N36
\dbg_MD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_dbg_MD(15));

-- Location: IOOBUF_X86_Y0_N53
\dbg_IR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => ww_dbg_IR(0));

-- Location: IOOBUF_X40_Y0_N36
\dbg_IR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => ww_dbg_IR(1));

-- Location: IOOBUF_X52_Y0_N19
\dbg_IR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => ww_dbg_IR(2));

-- Location: IOOBUF_X32_Y0_N19
\dbg_IR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => ww_dbg_IR(3));

-- Location: IOOBUF_X82_Y0_N93
\dbg_IR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => ww_dbg_IR(4));

-- Location: IOOBUF_X40_Y81_N19
\dbg_IR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => ww_dbg_IR(5));

-- Location: IOOBUF_X88_Y0_N37
\dbg_IR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => ww_dbg_IR(6));

-- Location: IOOBUF_X24_Y0_N2
\dbg_IR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => ww_dbg_IR(7));

-- Location: IOOBUF_X40_Y0_N19
\dbg_IR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => ww_dbg_IR(8));

-- Location: IOOBUF_X34_Y0_N42
\dbg_IR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => ww_dbg_IR(9));

-- Location: IOOBUF_X36_Y0_N19
\dbg_IR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => ww_dbg_IR(10));

-- Location: IOOBUF_X36_Y0_N53
\dbg_IR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(11),
	devoe => ww_devoe,
	o => ww_dbg_IR(11));

-- Location: IOOBUF_X89_Y8_N22
\dbg_IR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(12),
	devoe => ww_devoe,
	o => ww_dbg_IR(12));

-- Location: IOOBUF_X32_Y0_N53
\dbg_IR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(13),
	devoe => ww_devoe,
	o => ww_dbg_IR(13));

-- Location: IOOBUF_X78_Y0_N19
\dbg_IR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(14),
	devoe => ww_devoe,
	o => ww_dbg_IR(14));

-- Location: IOOBUF_X38_Y0_N19
\dbg_IR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(15),
	devoe => ww_devoe,
	o => ww_dbg_IR(15));

-- Location: IOOBUF_X66_Y0_N42
\IO_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(0));

-- Location: IOOBUF_X76_Y0_N36
\IO_DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(1));

-- Location: IOOBUF_X62_Y0_N19
\IO_DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(2));

-- Location: IOOBUF_X68_Y0_N36
\IO_DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(3));

-- Location: IOOBUF_X70_Y0_N2
\IO_DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(4));

-- Location: IOOBUF_X68_Y0_N19
\IO_DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(5));

-- Location: IOOBUF_X76_Y0_N19
\IO_DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(6));

-- Location: IOOBUF_X78_Y0_N36
\IO_DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(7));

-- Location: IOOBUF_X62_Y0_N36
\IO_DATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(8));

-- Location: IOOBUF_X60_Y0_N36
\IO_DATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(9));

-- Location: IOOBUF_X72_Y0_N53
\IO_DATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(10));

-- Location: IOOBUF_X66_Y0_N93
\IO_DATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(11));

-- Location: IOOBUF_X70_Y0_N53
\IO_DATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(12));

-- Location: IOOBUF_X64_Y0_N2
\IO_DATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(13));

-- Location: IOOBUF_X60_Y0_N19
\IO_DATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(14));

-- Location: IOOBUF_X78_Y0_N2
\IO_DATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	oe => \io_drive_en~q\,
	devoe => ww_devoe,
	o => IO_DATA(15));

-- Location: IOIBUF_X89_Y23_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: MLABCELL_X59_Y4_N18
\state~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~52_combout\ = ( \state~30_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(12) & !\altsyncram_component|auto_generated|q_a\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_state~30_combout\,
	combout => \state~52_combout\);

-- Location: FF_X59_Y4_N19
\state.ex_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~52_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_call~q\);

-- Location: LABCELL_X56_Y4_N57
\PC_stack[10][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[10][0]~1_combout\ = ( \resetn~input_o\ & ( \state.ex_call~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_resetn~input_o\,
	dataf => \ALT_INV_state.ex_call~q\,
	combout => \PC_stack[10][0]~1_combout\);

-- Location: FF_X61_Y5_N53
\PC_stack[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][4]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][4]~q\);

-- Location: LABCELL_X61_Y5_N36
\PC_stack[9][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][4]~feeder_combout\ = \PC_stack[10][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[10][4]~q\,
	combout => \PC_stack[9][4]~feeder_combout\);

-- Location: LABCELL_X62_Y4_N42
\PC_stack[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][0]~0_combout\ = ( \state.ex_call~q\ & ( \resetn~input_o\ ) ) # ( !\state.ex_call~q\ & ( (\state.ex_return~q\ & \resetn~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_return~q\,
	datac => \ALT_INV_resetn~input_o\,
	dataf => \ALT_INV_state.ex_call~q\,
	combout => \PC_stack[0][0]~0_combout\);

-- Location: FF_X61_Y5_N38
\PC_stack[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][4]~feeder_combout\,
	asdata => \PC_stack[8][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][4]~q\);

-- Location: LABCELL_X60_Y4_N45
\PC_stack[8][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][4]~feeder_combout\ = \PC_stack[9][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][4]~q\,
	combout => \PC_stack[8][4]~feeder_combout\);

-- Location: FF_X60_Y4_N47
\PC_stack[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][4]~feeder_combout\,
	asdata => \PC_stack[7][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][4]~q\);

-- Location: LABCELL_X60_Y4_N42
\PC_stack[7][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][4]~feeder_combout\ = \PC_stack[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[8][4]~q\,
	combout => \PC_stack[7][4]~feeder_combout\);

-- Location: FF_X60_Y4_N44
\PC_stack[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][4]~feeder_combout\,
	asdata => \PC_stack[6][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][4]~q\);

-- Location: LABCELL_X60_Y4_N33
\PC_stack[6][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][4]~feeder_combout\ = \PC_stack[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[7][4]~q\,
	combout => \PC_stack[6][4]~feeder_combout\);

-- Location: FF_X60_Y4_N35
\PC_stack[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][4]~feeder_combout\,
	asdata => \PC_stack[5][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][4]~q\);

-- Location: LABCELL_X60_Y4_N30
\PC_stack[5][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][4]~feeder_combout\ = \PC_stack[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[6][4]~q\,
	combout => \PC_stack[5][4]~feeder_combout\);

-- Location: FF_X60_Y4_N32
\PC_stack[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][4]~feeder_combout\,
	asdata => \PC_stack[4][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][4]~q\);

-- Location: LABCELL_X60_Y4_N9
\PC_stack[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][4]~feeder_combout\ = \PC_stack[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[5][4]~q\,
	combout => \PC_stack[4][4]~feeder_combout\);

-- Location: FF_X60_Y4_N11
\PC_stack[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][4]~feeder_combout\,
	asdata => \PC_stack[3][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][4]~q\);

-- Location: LABCELL_X60_Y4_N6
\PC_stack[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][4]~feeder_combout\ = \PC_stack[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[4][4]~q\,
	combout => \PC_stack[3][4]~feeder_combout\);

-- Location: FF_X60_Y4_N8
\PC_stack[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][4]~feeder_combout\,
	asdata => \PC_stack[2][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][4]~q\);

-- Location: LABCELL_X60_Y4_N18
\PC_stack[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][4]~feeder_combout\ = \PC_stack[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[3][4]~q\,
	combout => \PC_stack[2][4]~feeder_combout\);

-- Location: FF_X60_Y4_N20
\PC_stack[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][4]~feeder_combout\,
	asdata => \PC_stack[1][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][4]~q\);

-- Location: LABCELL_X60_Y4_N21
\PC_stack[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][4]~feeder_combout\ = \PC_stack[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[2][4]~q\,
	combout => \PC_stack[1][4]~feeder_combout\);

-- Location: FF_X60_Y4_N23
\PC_stack[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][4]~feeder_combout\,
	asdata => \PC_stack[0][4]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][4]~q\);

-- Location: LABCELL_X60_Y4_N57
\PC_stack[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][4]~feeder_combout\ = \PC_stack[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[1][4]~q\,
	combout => \PC_stack[0][4]~feeder_combout\);

-- Location: FF_X60_Y4_N59
\PC_stack[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][4]~feeder_combout\,
	asdata => PC(4),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][4]~q\);

-- Location: FF_X59_Y4_N52
\PC_stack[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][1]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][1]~q\);

-- Location: LABCELL_X61_Y4_N30
\PC_stack[9][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][1]~feeder_combout\ = ( \PC_stack[10][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[10][1]~q\,
	combout => \PC_stack[9][1]~feeder_combout\);

-- Location: FF_X61_Y4_N32
\PC_stack[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][1]~feeder_combout\,
	asdata => \PC_stack[8][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][1]~q\);

-- Location: LABCELL_X61_Y4_N27
\PC_stack[8][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][1]~feeder_combout\ = \PC_stack[9][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][1]~q\,
	combout => \PC_stack[8][1]~feeder_combout\);

-- Location: FF_X61_Y4_N29
\PC_stack[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][1]~feeder_combout\,
	asdata => \PC_stack[7][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][1]~q\);

-- Location: LABCELL_X61_Y4_N24
\PC_stack[7][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][1]~feeder_combout\ = \PC_stack[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[8][1]~q\,
	combout => \PC_stack[7][1]~feeder_combout\);

-- Location: FF_X61_Y4_N26
\PC_stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][1]~feeder_combout\,
	asdata => \PC_stack[6][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][1]~q\);

-- Location: LABCELL_X61_Y4_N15
\PC_stack[6][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][1]~feeder_combout\ = \PC_stack[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][1]~q\,
	combout => \PC_stack[6][1]~feeder_combout\);

-- Location: FF_X61_Y4_N17
\PC_stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][1]~feeder_combout\,
	asdata => \PC_stack[5][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][1]~q\);

-- Location: LABCELL_X61_Y4_N12
\PC_stack[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][1]~feeder_combout\ = \PC_stack[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[6][1]~q\,
	combout => \PC_stack[5][1]~feeder_combout\);

-- Location: FF_X61_Y4_N14
\PC_stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][1]~feeder_combout\,
	asdata => \PC_stack[4][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][1]~q\);

-- Location: LABCELL_X57_Y6_N51
\PC_stack[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][1]~feeder_combout\ = \PC_stack[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[5][1]~q\,
	combout => \PC_stack[4][1]~feeder_combout\);

-- Location: FF_X57_Y6_N53
\PC_stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][1]~feeder_combout\,
	asdata => \PC_stack[3][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][1]~q\);

-- Location: LABCELL_X57_Y6_N48
\PC_stack[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][1]~feeder_combout\ = \PC_stack[4][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][1]~q\,
	combout => \PC_stack[3][1]~feeder_combout\);

-- Location: FF_X57_Y6_N50
\PC_stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][1]~feeder_combout\,
	asdata => \PC_stack[2][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][1]~q\);

-- Location: LABCELL_X57_Y6_N18
\PC_stack[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][1]~feeder_combout\ = \PC_stack[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][1]~q\,
	combout => \PC_stack[2][1]~feeder_combout\);

-- Location: FF_X57_Y6_N20
\PC_stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][1]~feeder_combout\,
	asdata => \PC_stack[1][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][1]~q\);

-- Location: LABCELL_X57_Y6_N21
\PC_stack[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][1]~feeder_combout\ = \PC_stack[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[2][1]~q\,
	combout => \PC_stack[1][1]~feeder_combout\);

-- Location: FF_X57_Y6_N23
\PC_stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][1]~feeder_combout\,
	asdata => \PC_stack[0][1]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][1]~q\);

-- Location: LABCELL_X57_Y6_N39
\PC_stack[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][1]~feeder_combout\ = \PC_stack[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[1][1]~q\,
	combout => \PC_stack[0][1]~feeder_combout\);

-- Location: FF_X57_Y6_N41
\PC_stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][1]~feeder_combout\,
	asdata => PC(1),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][1]~q\);

-- Location: LABCELL_X56_Y4_N15
\PC_stack[10][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[10][0]~feeder_combout\ = ( \PC_stack[9][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[9][0]~q\,
	combout => \PC_stack[10][0]~feeder_combout\);

-- Location: FF_X56_Y4_N16
\PC_stack[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[10][0]~feeder_combout\,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][0]~q\);

-- Location: LABCELL_X61_Y4_N45
\PC_stack[9][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][0]~feeder_combout\ = \PC_stack[10][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[10][0]~q\,
	combout => \PC_stack[9][0]~feeder_combout\);

-- Location: FF_X61_Y4_N47
\PC_stack[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][0]~feeder_combout\,
	asdata => \PC_stack[8][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][0]~q\);

-- Location: LABCELL_X61_Y4_N36
\PC_stack[8][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][0]~feeder_combout\ = \PC_stack[9][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[9][0]~q\,
	combout => \PC_stack[8][0]~feeder_combout\);

-- Location: FF_X61_Y4_N38
\PC_stack[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][0]~feeder_combout\,
	asdata => \PC_stack[7][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][0]~q\);

-- Location: LABCELL_X61_Y4_N42
\PC_stack[7][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][0]~feeder_combout\ = \PC_stack[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[8][0]~q\,
	combout => \PC_stack[7][0]~feeder_combout\);

-- Location: FF_X61_Y4_N44
\PC_stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][0]~feeder_combout\,
	asdata => \PC_stack[6][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][0]~q\);

-- Location: LABCELL_X61_Y4_N21
\PC_stack[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][0]~feeder_combout\ = \PC_stack[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[7][0]~q\,
	combout => \PC_stack[6][0]~feeder_combout\);

-- Location: FF_X61_Y4_N23
\PC_stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][0]~feeder_combout\,
	asdata => \PC_stack[5][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][0]~q\);

-- Location: LABCELL_X61_Y4_N18
\PC_stack[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][0]~feeder_combout\ = \PC_stack[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[6][0]~q\,
	combout => \PC_stack[5][0]~feeder_combout\);

-- Location: FF_X61_Y4_N20
\PC_stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][0]~feeder_combout\,
	asdata => \PC_stack[4][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][0]~q\);

-- Location: LABCELL_X61_Y4_N3
\PC_stack[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][0]~feeder_combout\ = \PC_stack[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[5][0]~q\,
	combout => \PC_stack[4][0]~feeder_combout\);

-- Location: FF_X61_Y4_N5
\PC_stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][0]~feeder_combout\,
	asdata => \PC_stack[3][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][0]~q\);

-- Location: LABCELL_X61_Y4_N0
\PC_stack[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][0]~feeder_combout\ = \PC_stack[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][0]~q\,
	combout => \PC_stack[3][0]~feeder_combout\);

-- Location: FF_X61_Y4_N2
\PC_stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][0]~feeder_combout\,
	asdata => \PC_stack[2][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][0]~q\);

-- Location: LABCELL_X61_Y4_N6
\PC_stack[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][0]~feeder_combout\ = \PC_stack[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][0]~q\,
	combout => \PC_stack[2][0]~feeder_combout\);

-- Location: FF_X61_Y4_N8
\PC_stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][0]~feeder_combout\,
	asdata => \PC_stack[1][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][0]~q\);

-- Location: LABCELL_X61_Y4_N9
\PC_stack[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][0]~feeder_combout\ = \PC_stack[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[2][0]~q\,
	combout => \PC_stack[1][0]~feeder_combout\);

-- Location: FF_X61_Y4_N11
\PC_stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][0]~feeder_combout\,
	asdata => \PC_stack[0][0]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][0]~q\);

-- Location: LABCELL_X61_Y4_N39
\PC_stack[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][0]~feeder_combout\ = \PC_stack[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[1][0]~q\,
	combout => \PC_stack[0][0]~feeder_combout\);

-- Location: FF_X61_Y4_N41
\PC_stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][0]~feeder_combout\,
	asdata => PC(0),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][0]~q\);

-- Location: LABCELL_X60_Y5_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( PC(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( PC(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X60_Y5_N36
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \operand[0]~0_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~1_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][0]~q\)))) ) ) # ( !\operand[0]~0_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~1_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][0]~q\,
	datad => \ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_operand[0]~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X61_Y6_N12
\state.init~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \state.init~feeder_combout\);

-- Location: FF_X61_Y6_N14
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state.init~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LABCELL_X62_Y6_N33
\operand[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[4]~4_combout\ = (!\state.decode~q\ & (IR(4))) # (\state.decode~q\ & ((\altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_state.decode~q\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \operand[4]~4_combout\);

-- Location: FF_X62_Y6_N59
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \operand[4]~4_combout\,
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: LABCELL_X60_Y4_N36
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (IR(3) & \state.ex_shift~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_IR(3),
	datad => \ALT_INV_state.ex_shift~q\,
	combout => \Selector19~0_combout\);

-- Location: MLABCELL_X59_Y7_N3
\state~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~34_combout\ = ( \state~33_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(14) & (\altsyncram_component|auto_generated|q_a\(13) & !\altsyncram_component|auto_generated|q_a\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_state~33_combout\,
	combout => \state~34_combout\);

-- Location: FF_X59_Y7_N4
\state.ex_addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~34_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_addi~q\);

-- Location: MLABCELL_X59_Y4_N21
\state~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~35_combout\ = ( !\altsyncram_component|auto_generated|q_a\(15) & ( \state.decode~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.decode~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \state~35_combout\);

-- Location: MLABCELL_X59_Y7_N0
\state~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~38_combout\ = ( !\altsyncram_component|auto_generated|q_a\(12) & ( (\altsyncram_component|auto_generated|q_a\(13) & (!\altsyncram_component|auto_generated|q_a\(14) & (\state~35_combout\ & !\altsyncram_component|auto_generated|q_a\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \ALT_INV_state~35_combout\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \state~38_combout\);

-- Location: FF_X59_Y7_N1
\state.ex_add~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~38_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_add~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y6_N51
\state~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~36_combout\ = ( \state~35_combout\ & ( (\altsyncram_component|auto_generated|q_a\(11) & !\altsyncram_component|auto_generated|q_a\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \ALT_INV_state~35_combout\,
	combout => \state~36_combout\);

-- Location: MLABCELL_X59_Y6_N21
\state~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~37_combout\ = ( \state~36_combout\ & ( (\altsyncram_component|auto_generated|q_a\(13) & !\altsyncram_component|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \ALT_INV_state~36_combout\,
	combout => \state~37_combout\);

-- Location: FF_X59_Y6_N22
\state.ex_sub~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~37_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_sub~DUPLICATE_q\);

-- Location: LABCELL_X60_Y7_N54
\WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ( !\state.ex_sub~DUPLICATE_q\ & ( (!\state.ex_addi~q\ & !\state.ex_add~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	dataf => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	combout => \WideOr2~0_combout\);

-- Location: MLABCELL_X59_Y4_N24
\state~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~31_combout\ = ( \state~30_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & \altsyncram_component|auto_generated|q_a\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \ALT_INV_state~30_combout\,
	combout => \state~31_combout\);

-- Location: FF_X59_Y4_N25
\state.ex_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~31_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in~q\);

-- Location: MLABCELL_X59_Y5_N0
\state.ex_in2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.ex_in2~feeder_combout\ = ( \state.ex_in~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.ex_in~q\,
	combout => \state.ex_in2~feeder_combout\);

-- Location: FF_X59_Y5_N1
\state.ex_in2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state.ex_in2~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in2~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y6_N18
\state~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~40_combout\ = ( \state~36_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~36_combout\,
	combout => \state~40_combout\);

-- Location: FF_X59_Y6_N19
\state.ex_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~40_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_load~q\);

-- Location: MLABCELL_X59_Y4_N27
\state~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~42_combout\ = ( \state~33_combout\ & ( \altsyncram_component|auto_generated|q_a\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_state~33_combout\,
	combout => \state~42_combout\);

-- Location: MLABCELL_X59_Y6_N39
\state~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~45_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) & ( (!\altsyncram_component|auto_generated|q_a\(14) & \state~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \ALT_INV_state~42_combout\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \state~45_combout\);

-- Location: FF_X59_Y6_N40
\state.ex_and\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~45_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_and~q\);

-- Location: MLABCELL_X59_Y5_N24
\state~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~43_combout\ = ( \state~42_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~42_combout\,
	combout => \state~43_combout\);

-- Location: FF_X59_Y5_N26
\state.ex_loadi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~43_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_loadi~q\);

-- Location: MLABCELL_X59_Y6_N30
\state~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~44_combout\ = ( \state~36_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(13) & \altsyncram_component|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \ALT_INV_state~36_combout\,
	combout => \state~44_combout\);

-- Location: FF_X59_Y6_N32
\state.ex_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~44_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_xor~q\);

-- Location: LABCELL_X61_Y6_N57
\WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = ( !\state.ex_shift~q\ & ( (!\state.ex_and~q\ & (!\state.ex_loadi~q\ & (\state.init~q\ & !\state.ex_xor~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datab => \ALT_INV_state.ex_loadi~q\,
	datac => \ALT_INV_state.init~q\,
	datad => \ALT_INV_state.ex_xor~q\,
	dataf => \ALT_INV_state.ex_shift~q\,
	combout => \WideOr2~1_combout\);

-- Location: MLABCELL_X59_Y6_N48
\state~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~41_combout\ = ( \altsyncram_component|auto_generated|q_a\(14) & ( (!\altsyncram_component|auto_generated|q_a\(11) & (\state~35_combout\ & (!\altsyncram_component|auto_generated|q_a\(13) & !\altsyncram_component|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datab => \ALT_INV_state~35_combout\,
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \state~41_combout\);

-- Location: FF_X59_Y6_N49
\state.ex_or~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~41_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_or~DUPLICATE_q\);

-- Location: LABCELL_X61_Y6_N39
\Selector26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = ( \WideOr2~0_combout\ & ( (!\state.ex_or~DUPLICATE_q\ & (((!\WideOr2~1_combout\) # (\state.ex_load~q\)) # (\state.ex_in2~DUPLICATE_q\))) ) ) # ( !\WideOr2~0_combout\ & ( !\state.ex_or~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => \ALT_INV_WideOr2~1_combout\,
	datad => \ALT_INV_state.ex_or~DUPLICATE_q\,
	dataf => \ALT_INV_WideOr2~0_combout\,
	combout => \Selector26~2_combout\);

-- Location: FF_X59_Y5_N2
\state.ex_in2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state.ex_in2~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_in2~q\);

-- Location: LABCELL_X60_Y5_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( PC(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( PC(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X60_Y5_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( PC(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( PC(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X56_Y4_N42
\PC_stack[10][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[10][6]~feeder_combout\ = ( \PC_stack[9][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[9][6]~q\,
	combout => \PC_stack[10][6]~feeder_combout\);

-- Location: FF_X56_Y4_N43
\PC_stack[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[10][6]~feeder_combout\,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][6]~q\);

-- Location: LABCELL_X57_Y4_N24
\PC_stack[9][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][6]~feeder_combout\ = \PC_stack[10][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[10][6]~q\,
	combout => \PC_stack[9][6]~feeder_combout\);

-- Location: FF_X57_Y4_N26
\PC_stack[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][6]~feeder_combout\,
	asdata => \PC_stack[8][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][6]~q\);

-- Location: LABCELL_X57_Y4_N12
\PC_stack[8][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][6]~feeder_combout\ = \PC_stack[9][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][6]~q\,
	combout => \PC_stack[8][6]~feeder_combout\);

-- Location: FF_X57_Y4_N14
\PC_stack[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][6]~feeder_combout\,
	asdata => \PC_stack[7][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][6]~q\);

-- Location: LABCELL_X57_Y4_N27
\PC_stack[7][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][6]~feeder_combout\ = ( \PC_stack[8][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[8][6]~q\,
	combout => \PC_stack[7][6]~feeder_combout\);

-- Location: FF_X57_Y4_N29
\PC_stack[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][6]~feeder_combout\,
	asdata => \PC_stack[6][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][6]~q\);

-- Location: LABCELL_X57_Y4_N15
\PC_stack[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][6]~feeder_combout\ = \PC_stack[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][6]~q\,
	combout => \PC_stack[6][6]~feeder_combout\);

-- Location: FF_X57_Y4_N17
\PC_stack[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][6]~feeder_combout\,
	asdata => \PC_stack[5][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][6]~q\);

-- Location: LABCELL_X57_Y4_N0
\PC_stack[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][6]~feeder_combout\ = \PC_stack[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[6][6]~q\,
	combout => \PC_stack[5][6]~feeder_combout\);

-- Location: FF_X57_Y4_N2
\PC_stack[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][6]~feeder_combout\,
	asdata => \PC_stack[4][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][6]~q\);

-- Location: LABCELL_X57_Y4_N3
\PC_stack[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][6]~feeder_combout\ = \PC_stack[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[5][6]~q\,
	combout => \PC_stack[4][6]~feeder_combout\);

-- Location: FF_X57_Y4_N5
\PC_stack[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][6]~feeder_combout\,
	asdata => \PC_stack[3][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][6]~q\);

-- Location: LABCELL_X57_Y4_N36
\PC_stack[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][6]~feeder_combout\ = \PC_stack[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][6]~q\,
	combout => \PC_stack[3][6]~feeder_combout\);

-- Location: FF_X57_Y4_N38
\PC_stack[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][6]~feeder_combout\,
	asdata => \PC_stack[2][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][6]~q\);

-- Location: LABCELL_X57_Y4_N39
\PC_stack[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][6]~feeder_combout\ = \PC_stack[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[3][6]~q\,
	combout => \PC_stack[2][6]~feeder_combout\);

-- Location: FF_X57_Y4_N41
\PC_stack[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][6]~feeder_combout\,
	asdata => \PC_stack[1][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][6]~q\);

-- Location: LABCELL_X57_Y4_N48
\PC_stack[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][6]~feeder_combout\ = \PC_stack[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[2][6]~q\,
	combout => \PC_stack[1][6]~feeder_combout\);

-- Location: FF_X57_Y4_N50
\PC_stack[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][6]~feeder_combout\,
	asdata => \PC_stack[0][6]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][6]~q\);

-- Location: LABCELL_X57_Y4_N51
\PC_stack[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][6]~feeder_combout\ = \PC_stack[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[1][6]~q\,
	combout => \PC_stack[0][6]~feeder_combout\);

-- Location: FF_X57_Y4_N53
\PC_stack[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][6]~feeder_combout\,
	asdata => PC(6),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][6]~q\);

-- Location: FF_X59_Y5_N17
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \operand[6]~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LABCELL_X63_Y7_N21
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( \shifter|sbit[2][13]~17_combout\ & ( IR(2) & ( (IR(3) & (IR(4) & AC(15))) ) ) ) # ( !\shifter|sbit[2][13]~17_combout\ & ( IR(2) & ( (IR(3) & (IR(4) & AC(15))) ) ) ) # ( \shifter|sbit[2][13]~17_combout\ & ( !IR(2) & ( (IR(3) & 
-- IR(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datae => \shifter|ALT_INV_sbit[2][13]~17_combout\,
	dataf => ALT_INV_IR(2),
	combout => \Selector22~1_combout\);

-- Location: LABCELL_X56_Y4_N24
\PC_stack[10][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[10][7]~feeder_combout\ = ( \PC_stack[9][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[9][7]~q\,
	combout => \PC_stack[10][7]~feeder_combout\);

-- Location: FF_X56_Y4_N25
\PC_stack[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[10][7]~feeder_combout\,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][7]~q\);

-- Location: LABCELL_X57_Y4_N18
\PC_stack[9][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][7]~feeder_combout\ = \PC_stack[10][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[10][7]~q\,
	combout => \PC_stack[9][7]~feeder_combout\);

-- Location: FF_X57_Y4_N20
\PC_stack[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][7]~feeder_combout\,
	asdata => \PC_stack[8][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][7]~q\);

-- Location: LABCELL_X57_Y4_N54
\PC_stack[8][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][7]~feeder_combout\ = \PC_stack[9][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][7]~q\,
	combout => \PC_stack[8][7]~feeder_combout\);

-- Location: FF_X57_Y4_N56
\PC_stack[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][7]~feeder_combout\,
	asdata => \PC_stack[7][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][7]~q\);

-- Location: LABCELL_X57_Y4_N21
\PC_stack[7][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][7]~feeder_combout\ = \PC_stack[8][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[8][7]~q\,
	combout => \PC_stack[7][7]~feeder_combout\);

-- Location: FF_X57_Y4_N23
\PC_stack[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][7]~feeder_combout\,
	asdata => \PC_stack[6][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][7]~q\);

-- Location: LABCELL_X57_Y4_N57
\PC_stack[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][7]~feeder_combout\ = \PC_stack[7][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][7]~q\,
	combout => \PC_stack[6][7]~feeder_combout\);

-- Location: FF_X57_Y4_N59
\PC_stack[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][7]~feeder_combout\,
	asdata => \PC_stack[5][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][7]~q\);

-- Location: LABCELL_X57_Y4_N30
\PC_stack[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][7]~feeder_combout\ = \PC_stack[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[6][7]~q\,
	combout => \PC_stack[5][7]~feeder_combout\);

-- Location: FF_X57_Y4_N32
\PC_stack[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][7]~feeder_combout\,
	asdata => \PC_stack[4][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][7]~q\);

-- Location: LABCELL_X57_Y4_N33
\PC_stack[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][7]~feeder_combout\ = \PC_stack[5][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[5][7]~q\,
	combout => \PC_stack[4][7]~feeder_combout\);

-- Location: FF_X57_Y4_N35
\PC_stack[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][7]~feeder_combout\,
	asdata => \PC_stack[3][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][7]~q\);

-- Location: LABCELL_X57_Y4_N42
\PC_stack[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][7]~feeder_combout\ = \PC_stack[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][7]~q\,
	combout => \PC_stack[3][7]~feeder_combout\);

-- Location: FF_X57_Y4_N44
\PC_stack[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][7]~feeder_combout\,
	asdata => \PC_stack[2][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][7]~q\);

-- Location: LABCELL_X57_Y4_N45
\PC_stack[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][7]~feeder_combout\ = \PC_stack[3][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][7]~q\,
	combout => \PC_stack[2][7]~feeder_combout\);

-- Location: FF_X57_Y4_N47
\PC_stack[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][7]~feeder_combout\,
	asdata => \PC_stack[1][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][7]~q\);

-- Location: LABCELL_X57_Y4_N6
\PC_stack[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][7]~feeder_combout\ = \PC_stack[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[2][7]~q\,
	combout => \PC_stack[1][7]~feeder_combout\);

-- Location: FF_X57_Y4_N8
\PC_stack[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][7]~feeder_combout\,
	asdata => \PC_stack[0][7]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][7]~q\);

-- Location: LABCELL_X57_Y4_N9
\PC_stack[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][7]~feeder_combout\ = \PC_stack[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[1][7]~q\,
	combout => \PC_stack[0][7]~feeder_combout\);

-- Location: FF_X57_Y4_N11
\PC_stack[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][7]~feeder_combout\,
	asdata => PC(7),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][7]~q\);

-- Location: LABCELL_X60_Y5_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( PC(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( PC(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PC(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X57_Y6_N26
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \operand[7]~7_combout\,
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: FF_X56_Y5_N43
\PC_stack[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][9]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][9]~q\);

-- Location: LABCELL_X57_Y5_N21
\PC_stack[9][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][9]~feeder_combout\ = \PC_stack[10][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[10][9]~q\,
	combout => \PC_stack[9][9]~feeder_combout\);

-- Location: FF_X57_Y5_N23
\PC_stack[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][9]~feeder_combout\,
	asdata => \PC_stack[8][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][9]~q\);

-- Location: LABCELL_X57_Y5_N24
\PC_stack[8][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][9]~feeder_combout\ = \PC_stack[9][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][9]~q\,
	combout => \PC_stack[8][9]~feeder_combout\);

-- Location: FF_X57_Y5_N26
\PC_stack[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][9]~feeder_combout\,
	asdata => \PC_stack[7][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][9]~q\);

-- Location: LABCELL_X57_Y5_N33
\PC_stack[7][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][9]~feeder_combout\ = \PC_stack[8][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[8][9]~q\,
	combout => \PC_stack[7][9]~feeder_combout\);

-- Location: FF_X57_Y5_N35
\PC_stack[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][9]~feeder_combout\,
	asdata => \PC_stack[6][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][9]~q\);

-- Location: LABCELL_X57_Y5_N0
\PC_stack[6][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][9]~feeder_combout\ = \PC_stack[7][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[7][9]~q\,
	combout => \PC_stack[6][9]~feeder_combout\);

-- Location: FF_X57_Y5_N2
\PC_stack[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][9]~feeder_combout\,
	asdata => \PC_stack[5][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][9]~q\);

-- Location: LABCELL_X57_Y5_N30
\PC_stack[5][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][9]~feeder_combout\ = \PC_stack[6][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[6][9]~q\,
	combout => \PC_stack[5][9]~feeder_combout\);

-- Location: FF_X57_Y5_N32
\PC_stack[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][9]~feeder_combout\,
	asdata => \PC_stack[4][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][9]~q\);

-- Location: LABCELL_X57_Y5_N3
\PC_stack[4][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][9]~feeder_combout\ = ( \PC_stack[5][9]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[5][9]~q\,
	combout => \PC_stack[4][9]~feeder_combout\);

-- Location: FF_X57_Y5_N5
\PC_stack[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][9]~feeder_combout\,
	asdata => \PC_stack[3][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][9]~q\);

-- Location: LABCELL_X57_Y5_N27
\PC_stack[3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][9]~feeder_combout\ = \PC_stack[4][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[4][9]~q\,
	combout => \PC_stack[3][9]~feeder_combout\);

-- Location: FF_X57_Y5_N29
\PC_stack[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][9]~feeder_combout\,
	asdata => \PC_stack[2][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][9]~q\);

-- Location: LABCELL_X57_Y5_N18
\PC_stack[2][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][9]~feeder_combout\ = \PC_stack[3][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][9]~q\,
	combout => \PC_stack[2][9]~feeder_combout\);

-- Location: FF_X57_Y5_N20
\PC_stack[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][9]~feeder_combout\,
	asdata => \PC_stack[1][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][9]~q\);

-- Location: LABCELL_X57_Y5_N6
\PC_stack[1][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][9]~feeder_combout\ = \PC_stack[2][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[2][9]~q\,
	combout => \PC_stack[1][9]~feeder_combout\);

-- Location: FF_X57_Y5_N8
\PC_stack[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][9]~feeder_combout\,
	asdata => \PC_stack[0][9]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][9]~q\);

-- Location: LABCELL_X57_Y5_N9
\PC_stack[0][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][9]~feeder_combout\ = \PC_stack[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[1][9]~q\,
	combout => \PC_stack[0][9]~feeder_combout\);

-- Location: FF_X57_Y5_N11
\PC_stack[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][9]~feeder_combout\,
	asdata => PC(9),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][9]~q\);

-- Location: LABCELL_X60_Y5_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( PC(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( PC(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PC(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X59_Y4_N4
\PC_stack[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][8]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][8]~q\);

-- Location: LABCELL_X61_Y4_N48
\PC_stack[9][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][8]~feeder_combout\ = ( \PC_stack[10][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[10][8]~q\,
	combout => \PC_stack[9][8]~feeder_combout\);

-- Location: FF_X61_Y4_N50
\PC_stack[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][8]~feeder_combout\,
	asdata => \PC_stack[8][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][8]~q\);

-- Location: LABCELL_X61_Y4_N51
\PC_stack[8][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][8]~feeder_combout\ = \PC_stack[9][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[9][8]~q\,
	combout => \PC_stack[8][8]~feeder_combout\);

-- Location: FF_X61_Y4_N53
\PC_stack[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][8]~feeder_combout\,
	asdata => \PC_stack[7][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][8]~q\);

-- Location: LABCELL_X61_Y4_N57
\PC_stack[7][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][8]~feeder_combout\ = \PC_stack[8][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[8][8]~q\,
	combout => \PC_stack[7][8]~feeder_combout\);

-- Location: FF_X61_Y4_N59
\PC_stack[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][8]~feeder_combout\,
	asdata => \PC_stack[6][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][8]~q\);

-- Location: LABCELL_X62_Y4_N21
\PC_stack[6][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][8]~feeder_combout\ = \PC_stack[7][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][8]~q\,
	combout => \PC_stack[6][8]~feeder_combout\);

-- Location: FF_X62_Y4_N23
\PC_stack[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][8]~feeder_combout\,
	asdata => \PC_stack[5][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][8]~q\);

-- Location: LABCELL_X62_Y4_N18
\PC_stack[5][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][8]~feeder_combout\ = \PC_stack[6][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[6][8]~q\,
	combout => \PC_stack[5][8]~feeder_combout\);

-- Location: FF_X62_Y4_N20
\PC_stack[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][8]~feeder_combout\,
	asdata => \PC_stack[4][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][8]~q\);

-- Location: LABCELL_X62_Y4_N57
\PC_stack[4][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][8]~feeder_combout\ = \PC_stack[5][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[5][8]~q\,
	combout => \PC_stack[4][8]~feeder_combout\);

-- Location: FF_X62_Y4_N59
\PC_stack[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][8]~feeder_combout\,
	asdata => \PC_stack[3][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][8]~q\);

-- Location: LABCELL_X62_Y4_N33
\PC_stack[3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][8]~feeder_combout\ = \PC_stack[4][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][8]~q\,
	combout => \PC_stack[3][8]~feeder_combout\);

-- Location: FF_X62_Y4_N35
\PC_stack[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][8]~feeder_combout\,
	asdata => \PC_stack[2][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][8]~q\);

-- Location: LABCELL_X62_Y4_N54
\PC_stack[2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][8]~feeder_combout\ = ( \PC_stack[3][8]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[3][8]~q\,
	combout => \PC_stack[2][8]~feeder_combout\);

-- Location: FF_X62_Y4_N56
\PC_stack[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][8]~feeder_combout\,
	asdata => \PC_stack[1][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][8]~q\);

-- Location: LABCELL_X62_Y4_N30
\PC_stack[1][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][8]~feeder_combout\ = \PC_stack[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[2][8]~q\,
	combout => \PC_stack[1][8]~feeder_combout\);

-- Location: FF_X62_Y4_N32
\PC_stack[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][8]~feeder_combout\,
	asdata => \PC_stack[0][8]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][8]~q\);

-- Location: LABCELL_X62_Y4_N45
\PC_stack[0][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][8]~feeder_combout\ = \PC_stack[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[1][8]~q\,
	combout => \PC_stack[0][8]~feeder_combout\);

-- Location: FF_X62_Y4_N47
\PC_stack[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][8]~feeder_combout\,
	asdata => PC(8),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][8]~q\);

-- Location: FF_X57_Y6_N32
\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \operand[8]~8_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

-- Location: LABCELL_X57_Y6_N30
\operand[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[8]~8_combout\ = (!\state.decode~q\ & ((IR(8)))) # (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \ALT_INV_state.decode~q\,
	datad => ALT_INV_IR(8),
	combout => \operand[8]~8_combout\);

-- Location: LABCELL_X60_Y5_N57
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \operand[8]~8_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~33_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][8]~q\)))) ) ) # ( !\operand[8]~8_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- (\Add0~33_sumout\))) # (\state.ex_return~q\ & (((\PC_stack[0][8]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_PC_stack[0][8]~q\,
	dataf => \ALT_INV_operand[8]~8_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X60_Y5_N59
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LABCELL_X60_Y5_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( PC(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( PC(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PC(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X57_Y6_N29
\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \operand[9]~9_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

-- Location: LABCELL_X60_Y5_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( PC(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PC(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\);

-- Location: FF_X61_Y5_N10
\PC_stack[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][10]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][10]~q\);

-- Location: LABCELL_X62_Y5_N15
\PC_stack[9][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][10]~feeder_combout\ = \PC_stack[10][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[10][10]~q\,
	combout => \PC_stack[9][10]~feeder_combout\);

-- Location: FF_X62_Y5_N17
\PC_stack[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][10]~feeder_combout\,
	asdata => \PC_stack[8][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][10]~q\);

-- Location: LABCELL_X62_Y5_N3
\PC_stack[8][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][10]~feeder_combout\ = \PC_stack[9][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[9][10]~q\,
	combout => \PC_stack[8][10]~feeder_combout\);

-- Location: FF_X62_Y5_N5
\PC_stack[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][10]~feeder_combout\,
	asdata => \PC_stack[7][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][10]~q\);

-- Location: LABCELL_X62_Y5_N0
\PC_stack[7][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][10]~feeder_combout\ = \PC_stack[8][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[8][10]~q\,
	combout => \PC_stack[7][10]~feeder_combout\);

-- Location: FF_X62_Y5_N2
\PC_stack[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][10]~feeder_combout\,
	asdata => \PC_stack[6][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][10]~q\);

-- Location: LABCELL_X62_Y5_N45
\PC_stack[6][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][10]~feeder_combout\ = \PC_stack[7][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][10]~q\,
	combout => \PC_stack[6][10]~feeder_combout\);

-- Location: FF_X62_Y5_N47
\PC_stack[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][10]~feeder_combout\,
	asdata => \PC_stack[5][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][10]~q\);

-- Location: LABCELL_X62_Y5_N42
\PC_stack[5][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][10]~feeder_combout\ = \PC_stack[6][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[6][10]~q\,
	combout => \PC_stack[5][10]~feeder_combout\);

-- Location: FF_X62_Y5_N44
\PC_stack[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][10]~feeder_combout\,
	asdata => \PC_stack[4][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][10]~q\);

-- Location: LABCELL_X63_Y5_N48
\PC_stack[4][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][10]~feeder_combout\ = ( \PC_stack[5][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[5][10]~q\,
	combout => \PC_stack[4][10]~feeder_combout\);

-- Location: FF_X63_Y5_N50
\PC_stack[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][10]~feeder_combout\,
	asdata => \PC_stack[3][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][10]~q\);

-- Location: LABCELL_X62_Y5_N48
\PC_stack[3][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][10]~feeder_combout\ = ( \PC_stack[4][10]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[4][10]~q\,
	combout => \PC_stack[3][10]~feeder_combout\);

-- Location: FF_X62_Y5_N50
\PC_stack[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][10]~feeder_combout\,
	asdata => \PC_stack[2][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][10]~q\);

-- Location: LABCELL_X62_Y5_N54
\PC_stack[2][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][10]~feeder_combout\ = \PC_stack[3][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][10]~q\,
	combout => \PC_stack[2][10]~feeder_combout\);

-- Location: FF_X62_Y5_N56
\PC_stack[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][10]~feeder_combout\,
	asdata => \PC_stack[1][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][10]~q\);

-- Location: LABCELL_X62_Y5_N57
\PC_stack[1][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][10]~feeder_combout\ = \PC_stack[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[2][10]~q\,
	combout => \PC_stack[1][10]~feeder_combout\);

-- Location: FF_X62_Y5_N59
\PC_stack[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][10]~feeder_combout\,
	asdata => \PC_stack[0][10]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][10]~q\);

-- Location: LABCELL_X62_Y5_N12
\PC_stack[0][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][10]~feeder_combout\ = \PC_stack[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[1][10]~q\,
	combout => \PC_stack[0][10]~feeder_combout\);

-- Location: FF_X62_Y5_N14
\PC_stack[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][10]~feeder_combout\,
	asdata => PC(10),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][10]~q\);

-- Location: MLABCELL_X59_Y5_N45
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \operand[10]~10_combout\ & ( (!\state.ex_return~q\ & (((!\state.fetch~q\)) # (\Add0~41_sumout\))) # (\state.ex_return~q\ & (((\PC_stack[0][10]~q\)))) ) ) # ( !\operand[10]~10_combout\ & ( (!\state.ex_return~q\ & (\Add0~41_sumout\ 
-- & ((\state.fetch~q\)))) # (\state.ex_return~q\ & (((\PC_stack[0][10]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~41_sumout\,
	datab => \ALT_INV_PC_stack[0][10]~q\,
	datac => \ALT_INV_state.fetch~q\,
	datad => \ALT_INV_state.ex_return~q\,
	dataf => \ALT_INV_operand[10]~10_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X59_Y5_N47
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: MLABCELL_X59_Y5_N54
\next_mem_addr[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[10]~10_combout\ = ( PC(10) & ( ((!\state.decode~q\ & ((IR(10)))) # (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(10)))) # (\state.fetch~q\) ) ) # ( !PC(10) & ( (!\state.fetch~q\ & ((!\state.decode~q\ & ((IR(10)))) # 
-- (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000011111101111110001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \ALT_INV_state.fetch~q\,
	datad => ALT_INV_IR(10),
	dataf => ALT_INV_PC(10),
	combout => \next_mem_addr[10]~10_combout\);

-- Location: IOIBUF_X78_Y0_N35
\IO_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(7),
	o => \IO_DATA[7]~input_o\);

-- Location: LABCELL_X63_Y5_N6
\shifter|sbit[1][3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][3]~19_combout\ = ( AC(3) & ( (!IR(0)) # ((!IR(4) & (AC(2))) # (IR(4) & ((AC(4))))) ) ) # ( !AC(3) & ( (IR(0) & ((!IR(4) & (AC(2))) # (IR(4) & ((AC(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001111011100110111111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(2),
	datab => ALT_INV_IR(0),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(4),
	dataf => ALT_INV_AC(3),
	combout => \shifter|sbit[1][3]~19_combout\);

-- Location: LABCELL_X62_Y5_N9
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( IR(4) & ( (IR(3) & \state.ex_shift~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_IR(3),
	datad => \ALT_INV_state.ex_shift~q\,
	dataf => ALT_INV_IR(4),
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X62_Y5_N24
\shifter|sbit[3][1]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][1]~23_combout\ = ( IR(4) & ( (!IR(1) & (\shifter|sbit[1][1]~22_combout\)) # (IR(1) & ((\shifter|sbit[1][3]~19_combout\))) ) ) # ( !IR(4) & ( (!IR(1) & \shifter|sbit[1][1]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][1]~22_combout\,
	datad => \shifter|ALT_INV_sbit[1][3]~19_combout\,
	dataf => ALT_INV_IR(4),
	combout => \shifter|sbit[3][1]~23_combout\);

-- Location: IOIBUF_X62_Y0_N35
\IO_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(8),
	o => \IO_DATA[8]~input_o\);

-- Location: FF_X59_Y6_N50
\state.ex_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~41_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_or~q\);

-- Location: FF_X59_Y6_N31
\state.ex_xor~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~44_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_xor~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y6_N33
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \state.ex_xor~DUPLICATE_q\ & ( (!\altsyncram_component|auto_generated|q_a\(8) & (((!AC(8))))) # (\altsyncram_component|auto_generated|q_a\(8) & (!\state.ex_or~q\ & (!\state.ex_load~q\ & AC(8)))) ) ) # ( 
-- !\state.ex_xor~DUPLICATE_q\ & ( (!\altsyncram_component|auto_generated|q_a\(8)) # ((!\state.ex_or~q\ & !\state.ex_load~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110011001100001000001100110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_or~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \ALT_INV_state.ex_load~q\,
	datad => ALT_INV_AC(8),
	dataf => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	combout => \Selector19~1_combout\);

-- Location: LABCELL_X63_Y6_N42
\shifter|sbit[3][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][0]~11_combout\ = ( AC(0) & ( !IR(1) & ( (!IR(2) & ((!IR(0)) # ((AC(1) & IR(4))))) ) ) ) # ( !AC(0) & ( !IR(1) & ( (IR(0) & (!IR(2) & (AC(1) & IR(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100100010001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_AC(1),
	datad => ALT_INV_IR(4),
	datae => ALT_INV_AC(0),
	dataf => ALT_INV_IR(1),
	combout => \shifter|sbit[3][0]~11_combout\);

-- Location: LABCELL_X60_Y6_N48
\Selector19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = ( AC(15) & ( (\Selector19~0_combout\ & ((\shifter|sbit[3][0]~11_combout\) # (IR(4)))) ) ) # ( !AC(15) & ( (!IR(4) & (\Selector19~0_combout\ & \shifter|sbit[3][0]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(4),
	datac => \ALT_INV_Selector19~0_combout\,
	datad => \shifter|ALT_INV_sbit[3][0]~11_combout\,
	dataf => ALT_INV_AC(15),
	combout => \Selector19~5_combout\);

-- Location: LABCELL_X62_Y5_N39
\shifter|sbit[1][9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][9]~12_combout\ = ( IR(0) & ( AC(8) & ( (!IR(4)) # (AC(10)) ) ) ) # ( !IR(0) & ( AC(8) & ( AC(9) ) ) ) # ( IR(0) & ( !AC(8) & ( (IR(4) & AC(10)) ) ) ) # ( !IR(0) & ( !AC(8) & ( AC(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000111101010101010101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(9),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(10),
	datae => ALT_INV_IR(0),
	dataf => ALT_INV_AC(8),
	combout => \shifter|sbit[1][9]~12_combout\);

-- Location: LABCELL_X61_Y5_N21
\shifter|sbit[2][9]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][9]~15_combout\ = ( \shifter|sbit[1][9]~12_combout\ & ( (!IR(1)) # ((!IR(4) & ((\shifter|sbit[1][7]~14_combout\))) # (IR(4) & (\shifter|sbit[1][11]~13_combout\))) ) ) # ( !\shifter|sbit[1][9]~12_combout\ & ( (IR(1) & ((!IR(4) & 
-- ((\shifter|sbit[1][7]~14_combout\))) # (IR(4) & (\shifter|sbit[1][11]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][11]~13_combout\,
	datad => \shifter|ALT_INV_sbit[1][7]~14_combout\,
	dataf => \shifter|ALT_INV_sbit[1][9]~12_combout\,
	combout => \shifter|sbit[2][9]~15_combout\);

-- Location: LABCELL_X61_Y5_N0
\Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = ( \shifter|sbit[2][9]~15_combout\ & ( \shifter|sbit[2][13]~17_combout\ & ( (!IR(4) & (((!IR(3))))) # (IR(4) & (((!IR(2) & !IR(3))) # (AC(15)))) ) ) ) # ( !\shifter|sbit[2][9]~15_combout\ & ( \shifter|sbit[2][13]~17_combout\ & ( 
-- (!IR(4) & (((!IR(2) & !IR(3))))) # (IR(4) & (((!IR(2) & !IR(3))) # (AC(15)))) ) ) ) # ( \shifter|sbit[2][9]~15_combout\ & ( !\shifter|sbit[2][13]~17_combout\ & ( (!IR(4) & (((IR(2) & !IR(3))))) # (IR(4) & (AC(15) & ((IR(3)) # (IR(2))))) ) ) ) # ( 
-- !\shifter|sbit[2][9]~15_combout\ & ( !\shifter|sbit[2][13]~17_combout\ & ( (IR(4) & (AC(15) & ((IR(3)) # (IR(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000010110001000111110001000100011111101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_AC(15),
	datac => ALT_INV_IR(2),
	datad => ALT_INV_IR(3),
	datae => \shifter|ALT_INV_sbit[2][9]~15_combout\,
	dataf => \shifter|ALT_INV_sbit[2][13]~17_combout\,
	combout => \Selector14~1_combout\);

-- Location: LABCELL_X63_Y5_N54
\shifter|sbit[3][5]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][5]~35_combout\ = ( \shifter|sbit[1][1]~22_combout\ & ( (IR(2) & (!IR(4) & !IR(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_IR(1),
	dataf => \shifter|ALT_INV_sbit[1][1]~22_combout\,
	combout => \shifter|sbit[3][5]~35_combout\);

-- Location: LABCELL_X61_Y5_N33
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( !IR(4) & ( \shifter|sbit[3][5]~35_combout\ & ( IR(3) ) ) ) # ( !IR(4) & ( !\shifter|sbit[3][5]~35_combout\ & ( (!IR(2) & (IR(3) & \shifter|sbit[2][5]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datac => ALT_INV_IR(3),
	datad => \shifter|ALT_INV_sbit[2][5]~20_combout\,
	datae => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[3][5]~35_combout\,
	combout => \Selector14~0_combout\);

-- Location: IOIBUF_X64_Y0_N1
\IO_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(13),
	o => \IO_DATA[13]~input_o\);

-- Location: MLABCELL_X59_Y5_N6
\Selector14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = ( \IO_DATA[13]~input_o\ & ( ((IR(10) & \state.ex_loadi~q\)) # (\state.ex_in2~q\) ) ) # ( !\IO_DATA[13]~input_o\ & ( (IR(10) & \state.ex_loadi~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~q\,
	datab => ALT_INV_IR(10),
	datac => \ALT_INV_state.ex_loadi~q\,
	dataf => \ALT_INV_IO_DATA[13]~input_o\,
	combout => \Selector14~2_combout\);

-- Location: LABCELL_X62_Y7_N0
\Selector14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(13))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(13) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datac => ALT_INV_AC(13),
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \Selector14~3_combout\);

-- Location: LABCELL_X61_Y7_N36
\Selector14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) & ( \Selector14~3_combout\ & ( (!\Selector14~2_combout\ & ((!AC(13)) # ((!\state.ex_and~q\ & \Selector26~2_combout\)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(13) & ( 
-- \Selector14~3_combout\ & ( (!\Selector14~2_combout\ & ((!AC(13)) # (\Selector26~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(13),
	datab => \ALT_INV_state.ex_and~q\,
	datac => \ALT_INV_Selector26~2_combout\,
	datad => \ALT_INV_Selector14~2_combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_Selector14~3_combout\,
	combout => \Selector14~4_combout\);

-- Location: FF_X59_Y7_N5
\state.ex_addi~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~34_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_addi~DUPLICATE_q\);

-- Location: FF_X59_Y6_N23
\state.ex_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~37_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_sub~q\);

-- Location: MLABCELL_X59_Y7_N54
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(13) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(10),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \Add1~81_combout\);

-- Location: MLABCELL_X59_Y7_N15
\Add1~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = ( \altsyncram_component|auto_generated|q_a\(12) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(12) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100100110000000000010011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => ALT_INV_IR(10),
	datad => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \Add1~80_combout\);

-- Location: MLABCELL_X59_Y7_N24
\Add1~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~79_combout\ = ( \altsyncram_component|auto_generated|q_a\(11) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(11) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(10),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \Add1~79_combout\);

-- Location: LABCELL_X60_Y7_N57
\Add1~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = ( \altsyncram_component|auto_generated|q_a\(10) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(10) & ( ((\state.ex_addi~q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(10),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \Add1~78_combout\);

-- Location: MLABCELL_X59_Y7_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = ( \altsyncram_component|auto_generated|q_a\(9) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(9))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(9) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(9)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(9),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \Add1~77_combout\);

-- Location: MLABCELL_X59_Y7_N57
\Add1~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = ( \altsyncram_component|auto_generated|q_a\(8) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(8))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(8) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(8)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => ALT_INV_IR(8),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \Add1~76_combout\);

-- Location: MLABCELL_X59_Y7_N6
\Add1~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = ( !\state.ex_sub~DUPLICATE_q\ & ( \altsyncram_component|auto_generated|q_a\(7) & ( (!\state.ex_addi~DUPLICATE_q\ & ((\state.ex_add~DUPLICATE_q\))) # (\state.ex_addi~DUPLICATE_q\ & (IR(7) & !\state.ex_add~DUPLICATE_q\)) ) ) ) # ( 
-- \state.ex_sub~DUPLICATE_q\ & ( !\altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\state.ex_sub~DUPLICATE_q\ & ( !\altsyncram_component|auto_generated|q_a\(7) & ( (\state.ex_addi~DUPLICATE_q\ & ((\state.ex_add~DUPLICATE_q\) # (IR(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111111111111111111100000011111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(7),
	datac => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datad => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datae => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \Add1~75_combout\);

-- Location: MLABCELL_X59_Y7_N27
\Add1~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = ( \altsyncram_component|auto_generated|q_a\(6) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(6))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(6) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(6)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => ALT_INV_IR(6),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \Add1~74_combout\);

-- Location: LABCELL_X57_Y6_N57
\operand[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[5]~5_combout\ = ( IR(5) & ( \state.decode~q\ & ( \altsyncram_component|auto_generated|q_a\(5) ) ) ) # ( !IR(5) & ( \state.decode~q\ & ( \altsyncram_component|auto_generated|q_a\(5) ) ) ) # ( IR(5) & ( !\state.decode~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datae => ALT_INV_IR(5),
	dataf => \ALT_INV_state.decode~q\,
	combout => \operand[5]~5_combout\);

-- Location: FF_X57_Y6_N59
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \operand[5]~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: MLABCELL_X59_Y7_N36
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_combout\ = ( \altsyncram_component|auto_generated|q_a\(5) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(5))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(5) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(5)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(5),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \Add1~73_combout\);

-- Location: MLABCELL_X59_Y7_N30
\Add1~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = ( \altsyncram_component|auto_generated|q_a\(4) & ( (!\state.ex_sub~q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(4))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(4) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(4)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => ALT_INV_IR(4),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \Add1~72_combout\);

-- Location: MLABCELL_X59_Y7_N51
\Add1~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = ( \altsyncram_component|auto_generated|q_a\(3) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(3))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(3) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(3)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => ALT_INV_IR(3),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Add1~71_combout\);

-- Location: M10K_X58_Y7_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001CEFA0820EF9DF7CA418828C6BE3993F304FE89866F0CF13CD660A12F5B835AD497F1C92A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 5,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X59_Y7_N12
\Add1~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = ( \state.ex_sub~q\ & ( !\altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\state.ex_sub~q\ & ( (!\state.ex_add~DUPLICATE_q\ & (\state.ex_addi~DUPLICATE_q\ & (IR(2)))) # (\state.ex_add~DUPLICATE_q\ & (!\state.ex_addi~DUPLICATE_q\ $ 
-- (((!\altsyncram_component|auto_generated|q_a\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100100110000101010010011011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => ALT_INV_IR(2),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \ALT_INV_state.ex_sub~q\,
	combout => \Add1~70_combout\);

-- Location: MLABCELL_X59_Y7_N42
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = ( \altsyncram_component|auto_generated|q_a\(1) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(1))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(1) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(1)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100100110000000000010011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => ALT_INV_IR(1),
	datad => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \Add1~69_combout\);

-- Location: MLABCELL_X59_Y7_N33
\Add1~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = ( \altsyncram_component|auto_generated|q_a\(0) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(0))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(0) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(0)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101011111000111110101111100100000011000000010000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => ALT_INV_IR(0),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \Add1~64_combout\);

-- Location: LABCELL_X60_Y7_N0
\Add1~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~67_cout\ = CARRY(( \state.ex_sub~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_sub~q\,
	cin => GND,
	cout => \Add1~67_cout\);

-- Location: LABCELL_X60_Y7_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \Add1~64_combout\ ) + ( (AC(0) & (((\state.ex_add~DUPLICATE_q\) # (\state.ex_sub~q\)) # (\state.ex_addi~q\))) ) + ( \Add1~67_cout\ ))
-- \Add1~2\ = CARRY(( \Add1~64_combout\ ) + ( (AC(0) & (((\state.ex_add~DUPLICATE_q\) # (\state.ex_sub~q\)) # (\state.ex_addi~q\))) ) + ( \Add1~67_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_sub~q\,
	datac => ALT_INV_AC(0),
	datad => \ALT_INV_Add1~64_combout\,
	dataf => \ALT_INV_state.ex_add~DUPLICATE_q\,
	cin => \Add1~67_cout\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X60_Y7_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Add1~69_combout\ ) + ( (AC(1) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \Add1~69_combout\ ) + ( (AC(1) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~69_combout\,
	dataf => ALT_INV_AC(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X60_Y7_N9
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \Add1~70_combout\ ) + ( (AC(2) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \Add1~70_combout\ ) + ( (AC(2) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~70_combout\,
	dataf => ALT_INV_AC(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X60_Y7_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \Add1~71_combout\ ) + ( (AC(3) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \Add1~71_combout\ ) + ( (AC(3) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~71_combout\,
	dataf => ALT_INV_AC(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X60_Y7_N15
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \Add1~72_combout\ ) + ( (AC(4) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \Add1~72_combout\ ) + ( (AC(4) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~72_combout\,
	dataf => ALT_INV_AC(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X60_Y7_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \Add1~73_combout\ ) + ( (AC(5) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \Add1~73_combout\ ) + ( (AC(5) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~73_combout\,
	dataf => ALT_INV_AC(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X60_Y7_N21
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \Add1~74_combout\ ) + ( (AC(6) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \Add1~74_combout\ ) + ( (AC(6) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~74_combout\,
	dataf => ALT_INV_AC(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X60_Y7_N24
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \Add1~75_combout\ ) + ( (AC(7) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \Add1~75_combout\ ) + ( (AC(7) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~75_combout\,
	dataf => ALT_INV_AC(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X60_Y7_N27
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \Add1~76_combout\ ) + ( (AC(8) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \Add1~76_combout\ ) + ( (AC(8) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~76_combout\,
	dataf => ALT_INV_AC(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X60_Y7_N30
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \Add1~77_combout\ ) + ( (AC(9) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \Add1~77_combout\ ) + ( (AC(9) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~77_combout\,
	dataf => ALT_INV_AC(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X60_Y7_N33
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \Add1~78_combout\ ) + ( (AC(10) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \Add1~78_combout\ ) + ( (AC(10) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~78_combout\,
	dataf => ALT_INV_AC(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X60_Y7_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \Add1~79_combout\ ) + ( (AC(11) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \Add1~79_combout\ ) + ( (AC(11) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_Add1~79_combout\,
	dataf => ALT_INV_AC(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X60_Y7_N39
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \Add1~80_combout\ ) + ( (AC(12) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \Add1~80_combout\ ) + ( (AC(12) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~80_combout\,
	dataf => ALT_INV_AC(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X60_Y7_N42
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( (AC(13) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~81_combout\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( (AC(13) & (((\state.ex_sub~DUPLICATE_q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~81_combout\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => ALT_INV_AC(13),
	dataf => \ALT_INV_Add1~81_combout\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X61_Y7_N48
\Selector14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~5_combout\ = ( \Selector14~4_combout\ & ( \Add1~53_sumout\ & ( (!\WideOr2~0_combout\) # ((\state.ex_shift~q\ & ((\Selector14~0_combout\) # (\Selector14~1_combout\)))) ) ) ) # ( !\Selector14~4_combout\ & ( \Add1~53_sumout\ ) ) # ( 
-- \Selector14~4_combout\ & ( !\Add1~53_sumout\ & ( (\state.ex_shift~q\ & ((\Selector14~0_combout\) # (\Selector14~1_combout\))) ) ) ) # ( !\Selector14~4_combout\ & ( !\Add1~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000111011111111111111111111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector14~1_combout\,
	datab => \ALT_INV_Selector14~0_combout\,
	datac => \ALT_INV_WideOr2~0_combout\,
	datad => \ALT_INV_state.ex_shift~q\,
	datae => \ALT_INV_Selector14~4_combout\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \Selector14~5_combout\);

-- Location: FF_X61_Y7_N50
\AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector14~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(13));

-- Location: LABCELL_X63_Y6_N12
\shifter|sbit[1][14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][14]~5_combout\ = ( AC(15) & ( AC(14) & ( ((!IR(0)) # (AC(13))) # (IR(4)) ) ) ) # ( !AC(15) & ( AC(14) & ( (!IR(0)) # ((!IR(4) & AC(13))) ) ) ) # ( AC(15) & ( !AC(14) & ( (IR(0) & ((AC(13)) # (IR(4)))) ) ) ) # ( !AC(15) & ( !AC(14) & ( 
-- (!IR(4) & (IR(0) & AC(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000110000111111110000111111001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(4),
	datac => ALT_INV_IR(0),
	datad => ALT_INV_AC(13),
	datae => ALT_INV_AC(15),
	dataf => ALT_INV_AC(14),
	combout => \shifter|sbit[1][14]~5_combout\);

-- Location: LABCELL_X62_Y6_N9
\shifter|sbit[2][12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][12]~6_combout\ = ( \shifter|sbit[1][14]~5_combout\ & ( (!IR(1) & (((\shifter|sbit[1][12]~4_combout\)))) # (IR(1) & (((\shifter|sbit[1][10]~1_combout\)) # (IR(4)))) ) ) # ( !\shifter|sbit[1][14]~5_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][12]~4_combout\)))) # (IR(1) & (!IR(4) & ((\shifter|sbit[1][10]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][12]~4_combout\,
	datad => \shifter|ALT_INV_sbit[1][10]~1_combout\,
	dataf => \shifter|ALT_INV_sbit[1][14]~5_combout\,
	combout => \shifter|sbit[2][12]~6_combout\);

-- Location: LABCELL_X62_Y6_N24
\shifter|sbit[3][8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][8]~10_combout\ = ( \shifter|sbit[2][12]~6_combout\ & ( (!IR(2) & (((\shifter|sbit[2][8]~3_combout\)))) # (IR(2) & (((IR(4))) # (\shifter|sbit[2][4]~9_combout\))) ) ) # ( !\shifter|sbit[2][12]~6_combout\ & ( (!IR(2) & 
-- (((\shifter|sbit[2][8]~3_combout\)))) # (IR(2) & (\shifter|sbit[2][4]~9_combout\ & (!IR(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011110100000001001111010000000111111101110000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][4]~9_combout\,
	datab => ALT_INV_IR(4),
	datac => ALT_INV_IR(2),
	datad => \shifter|ALT_INV_sbit[2][8]~3_combout\,
	dataf => \shifter|ALT_INV_sbit[2][12]~6_combout\,
	combout => \shifter|sbit[3][8]~10_combout\);

-- Location: MLABCELL_X59_Y6_N27
\Selector19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = ( !\Selector19~5_combout\ & ( \shifter|sbit[3][8]~10_combout\ & ( (!\Selector26~1_combout\ & ((!\state.ex_loadi~q\) # (!IR(8)))) ) ) ) # ( !\Selector19~5_combout\ & ( !\shifter|sbit[3][8]~10_combout\ & ( (!\state.ex_loadi~q\) # 
-- (!IR(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000000000000000011111010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_loadi~q\,
	datac => ALT_INV_IR(8),
	datad => \ALT_INV_Selector26~1_combout\,
	datae => \ALT_INV_Selector19~5_combout\,
	dataf => \shifter|ALT_INV_sbit[3][8]~10_combout\,
	combout => \Selector19~3_combout\);

-- Location: MLABCELL_X59_Y6_N42
\Selector19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = ( \Selector19~3_combout\ & ( \altsyncram_component|auto_generated|q_a\(8) & ( (!AC(8)) # ((!\state.ex_and~q\ & \Selector26~2_combout\)) ) ) ) # ( \Selector19~3_combout\ & ( !\altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!AC(8)) # (\Selector26~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datac => ALT_INV_AC(8),
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector19~3_combout\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \Selector19~4_combout\);

-- Location: MLABCELL_X59_Y6_N0
\Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = ( \Add1~33_sumout\ & ( \state.ex_in2~DUPLICATE_q\ & ( ((!\WideOr2~0_combout\) # ((!\Selector19~1_combout\) # (!\Selector19~4_combout\))) # (\IO_DATA[8]~input_o\) ) ) ) # ( !\Add1~33_sumout\ & ( \state.ex_in2~DUPLICATE_q\ & ( 
-- ((!\Selector19~1_combout\) # (!\Selector19~4_combout\)) # (\IO_DATA[8]~input_o\) ) ) ) # ( \Add1~33_sumout\ & ( !\state.ex_in2~DUPLICATE_q\ & ( (!\WideOr2~0_combout\) # ((!\Selector19~1_combout\) # (!\Selector19~4_combout\)) ) ) ) # ( !\Add1~33_sumout\ & 
-- ( !\state.ex_in2~DUPLICATE_q\ & ( (!\Selector19~1_combout\) # (!\Selector19~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111110011111111111101011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[8]~input_o\,
	datab => \ALT_INV_WideOr2~0_combout\,
	datac => \ALT_INV_Selector19~1_combout\,
	datad => \ALT_INV_Selector19~4_combout\,
	datae => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	combout => \Selector19~2_combout\);

-- Location: FF_X59_Y6_N2
\AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector19~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(8));

-- Location: LABCELL_X62_Y6_N48
\shifter|sbit[1][7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][7]~14_combout\ = ( AC(6) & ( (!IR(0) & (((AC(7))))) # (IR(0) & ((!IR(4)) # ((AC(8))))) ) ) # ( !AC(6) & ( (!IR(0) & (((AC(7))))) # (IR(0) & (IR(4) & (AC(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(8),
	datad => ALT_INV_AC(7),
	dataf => ALT_INV_AC(6),
	combout => \shifter|sbit[1][7]~14_combout\);

-- Location: LABCELL_X62_Y5_N51
\shifter|sbit[2][5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][5]~20_combout\ = ( \shifter|sbit[1][7]~14_combout\ & ( (!IR(1) & (\shifter|sbit[1][5]~18_combout\)) # (IR(1) & (((\shifter|sbit[1][3]~19_combout\) # (IR(4))))) ) ) # ( !\shifter|sbit[1][7]~14_combout\ & ( (!IR(1) & 
-- (\shifter|sbit[1][5]~18_combout\)) # (IR(1) & (((!IR(4) & \shifter|sbit[1][3]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[1][5]~18_combout\,
	datab => ALT_INV_IR(1),
	datac => ALT_INV_IR(4),
	datad => \shifter|ALT_INV_sbit[1][3]~19_combout\,
	dataf => \shifter|ALT_INV_sbit[1][7]~14_combout\,
	combout => \shifter|sbit[2][5]~20_combout\);

-- Location: LABCELL_X61_Y5_N39
\Selector26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~3_combout\ = ( \shifter|sbit[2][5]~20_combout\ & ( (\Selector26~1_combout\ & ((!IR(2) & (\shifter|sbit[3][1]~23_combout\)) # (IR(2) & ((IR(4)))))) ) ) # ( !\shifter|sbit[2][5]~20_combout\ & ( (!IR(2) & (\shifter|sbit[3][1]~23_combout\ & 
-- \Selector26~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000001110000001000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => \shifter|ALT_INV_sbit[3][1]~23_combout\,
	datac => \ALT_INV_Selector26~1_combout\,
	datad => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[2][5]~20_combout\,
	combout => \Selector26~3_combout\);

-- Location: IOIBUF_X76_Y0_N35
\IO_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(1),
	o => \IO_DATA[1]~input_o\);

-- Location: LABCELL_X61_Y5_N15
\Selector26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~4_combout\ = ( \IO_DATA[1]~input_o\ & ( ((\state.ex_loadi~q\ & IR(1))) # (\state.ex_in2~DUPLICATE_q\) ) ) # ( !\IO_DATA[1]~input_o\ & ( (\state.ex_loadi~q\ & IR(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_loadi~q\,
	datad => ALT_INV_IR(1),
	dataf => \ALT_INV_IO_DATA[1]~input_o\,
	combout => \Selector26~4_combout\);

-- Location: LABCELL_X60_Y6_N33
\Selector26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~5_combout\ = ( !\altsyncram_component|auto_generated|q_a\(1) & ( \state.ex_load~q\ & ( (!\state.ex_xor~q\) # (!AC(1)) ) ) ) # ( \altsyncram_component|auto_generated|q_a\(1) & ( !\state.ex_load~q\ & ( (!\state.ex_or~DUPLICATE_q\ & 
-- ((!\state.ex_xor~q\) # (AC(1)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(1) & ( !\state.ex_load~q\ & ( (!\state.ex_xor~q\) # (!AC(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010101000001111000011111111101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~q\,
	datac => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datad => ALT_INV_AC(1),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \ALT_INV_state.ex_load~q\,
	combout => \Selector26~5_combout\);

-- Location: LABCELL_X60_Y6_N27
\Selector26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~6_combout\ = ( !\Selector26~4_combout\ & ( \Selector26~5_combout\ & ( (!AC(1)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(1)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(1),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_Selector26~2_combout\,
	datad => \ALT_INV_state.ex_and~q\,
	datae => \ALT_INV_Selector26~4_combout\,
	dataf => \ALT_INV_Selector26~5_combout\,
	combout => \Selector26~6_combout\);

-- Location: LABCELL_X60_Y6_N54
\Selector26~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~7_combout\ = ( \Selector26~6_combout\ & ( \Add1~5_sumout\ & ( ((!\WideOr2~0_combout\) # ((\Selector26~0_combout\ & \shifter|sbit[3][9]~21_combout\))) # (\Selector26~3_combout\) ) ) ) # ( !\Selector26~6_combout\ & ( \Add1~5_sumout\ ) ) # ( 
-- \Selector26~6_combout\ & ( !\Add1~5_sumout\ & ( ((\Selector26~0_combout\ & \shifter|sbit[3][9]~21_combout\)) # (\Selector26~3_combout\) ) ) ) # ( !\Selector26~6_combout\ & ( !\Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101110011011111111111111111111111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~0_combout\,
	datab => \ALT_INV_Selector26~3_combout\,
	datac => \shifter|ALT_INV_sbit[3][9]~21_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Selector26~6_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Selector26~7_combout\);

-- Location: FF_X60_Y6_N56
\AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector26~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(1));

-- Location: LABCELL_X63_Y5_N9
\shifter|sbit[1][1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][1]~22_combout\ = ( AC(0) & ( (!IR(0) & (((AC(1))))) # (IR(0) & (((!IR(4))) # (AC(2)))) ) ) # ( !AC(0) & ( (!IR(0) & (((AC(1))))) # (IR(0) & (AC(2) & ((IR(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100111111000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(2),
	datab => ALT_INV_IR(0),
	datac => ALT_INV_AC(1),
	datad => ALT_INV_IR(4),
	dataf => ALT_INV_AC(0),
	combout => \shifter|sbit[1][1]~22_combout\);

-- Location: LABCELL_X63_Y5_N21
\shifter|sbit[2][3]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][3]~32_combout\ = ( \shifter|sbit[1][5]~18_combout\ & ( (!IR(1) & (((\shifter|sbit[1][3]~19_combout\)))) # (IR(1) & (((\shifter|sbit[1][1]~22_combout\)) # (IR(4)))) ) ) # ( !\shifter|sbit[1][5]~18_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][3]~19_combout\)))) # (IR(1) & (!IR(4) & ((\shifter|sbit[1][1]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][3]~19_combout\,
	datad => \shifter|ALT_INV_sbit[1][1]~22_combout\,
	dataf => \shifter|ALT_INV_sbit[1][5]~18_combout\,
	combout => \shifter|sbit[2][3]~32_combout\);

-- Location: LABCELL_X63_Y5_N39
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \shifter|sbit[2][7]~30_combout\ & ( (\Selector26~1_combout\ & ((!IR(2) & ((\shifter|sbit[2][3]~32_combout\))) # (IR(2) & (IR(4))))) ) ) # ( !\shifter|sbit[2][7]~30_combout\ & ( (!IR(2) & (\Selector26~1_combout\ & 
-- \shifter|sbit[2][3]~32_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000001000011010000000100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(2),
	datac => \ALT_INV_Selector26~1_combout\,
	datad => \shifter|ALT_INV_sbit[2][3]~32_combout\,
	dataf => \shifter|ALT_INV_sbit[2][7]~30_combout\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X63_Y6_N3
\shifter|sbit[1][13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][13]~16_combout\ = ( AC(13) & ( AC(14) & ( (!IR(0)) # ((AC(12)) # (IR(4))) ) ) ) # ( !AC(13) & ( AC(14) & ( (IR(0) & ((AC(12)) # (IR(4)))) ) ) ) # ( AC(13) & ( !AC(14) & ( (!IR(0)) # ((!IR(4) & AC(12))) ) ) ) # ( !AC(13) & ( !AC(14) & ( 
-- (IR(0) & (!IR(4) & AC(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000101010101111101000000101010101011010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(12),
	datae => ALT_INV_AC(13),
	dataf => ALT_INV_AC(14),
	combout => \shifter|sbit[1][13]~16_combout\);

-- Location: LABCELL_X63_Y5_N24
\shifter|sbit[2][11]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][11]~29_combout\ = ( \shifter|sbit[1][13]~16_combout\ & ( (!IR(1) & (((\shifter|sbit[1][11]~13_combout\)))) # (IR(1) & (((\shifter|sbit[1][9]~12_combout\)) # (IR(4)))) ) ) # ( !\shifter|sbit[1][13]~16_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][11]~13_combout\)))) # (IR(1) & (!IR(4) & (\shifter|sbit[1][9]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][9]~12_combout\,
	datad => \shifter|ALT_INV_sbit[1][11]~13_combout\,
	dataf => \shifter|ALT_INV_sbit[1][13]~16_combout\,
	combout => \shifter|sbit[2][11]~29_combout\);

-- Location: LABCELL_X63_Y5_N15
\shifter|sbit[3][11]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][11]~31_combout\ = ( \shifter|sbit[2][11]~29_combout\ & ( (!IR(2)) # ((!IR(4) & (\shifter|sbit[2][7]~30_combout\)) # (IR(4) & ((AC(15))))) ) ) # ( !\shifter|sbit[2][11]~29_combout\ & ( (IR(2) & ((!IR(4) & (\shifter|sbit[2][7]~30_combout\)) 
-- # (IR(4) & ((AC(15)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][7]~30_combout\,
	datad => ALT_INV_AC(15),
	dataf => \shifter|ALT_INV_sbit[2][11]~29_combout\,
	combout => \shifter|sbit[3][11]~31_combout\);

-- Location: LABCELL_X60_Y6_N42
\Selector24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = ( !\state.ex_or~DUPLICATE_q\ & ( \altsyncram_component|auto_generated|q_a\(3) & ( (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(3)))) ) ) ) # ( \state.ex_or~DUPLICATE_q\ & ( !\altsyncram_component|auto_generated|q_a\(3) & ( 
-- (!\state.ex_xor~q\) # (!AC(3)) ) ) ) # ( !\state.ex_or~DUPLICATE_q\ & ( !\altsyncram_component|auto_generated|q_a\(3) & ( (!\state.ex_xor~q\) # (!AC(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101010001100100011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => ALT_INV_AC(3),
	datae => \ALT_INV_state.ex_or~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Selector24~2_combout\);

-- Location: IOIBUF_X68_Y0_N35
\IO_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(3),
	o => \IO_DATA[3]~input_o\);

-- Location: LABCELL_X61_Y6_N54
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( \IO_DATA[3]~input_o\ & ( ((\state.ex_loadi~q\ & IR(3))) # (\state.ex_in2~DUPLICATE_q\) ) ) # ( !\IO_DATA[3]~input_o\ & ( (\state.ex_loadi~q\ & IR(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_loadi~q\,
	datac => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datad => ALT_INV_IR(3),
	dataf => \ALT_INV_IO_DATA[3]~input_o\,
	combout => \Selector24~1_combout\);

-- Location: LABCELL_X60_Y6_N12
\Selector24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = ( !\Selector24~1_combout\ & ( \altsyncram_component|auto_generated|q_a\(3) & ( (\Selector24~2_combout\ & ((!AC(3)) # ((!\state.ex_and~q\ & \Selector26~2_combout\)))) ) ) ) # ( !\Selector24~1_combout\ & ( 
-- !\altsyncram_component|auto_generated|q_a\(3) & ( (\Selector24~2_combout\ & ((!AC(3)) # (\Selector26~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000000000000000000000111100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datab => \ALT_INV_Selector26~2_combout\,
	datac => ALT_INV_AC(3),
	datad => \ALT_INV_Selector24~2_combout\,
	datae => \ALT_INV_Selector24~1_combout\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \Selector24~3_combout\);

-- Location: LABCELL_X61_Y6_N51
\Selector24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = ( \Selector24~3_combout\ & ( \Add1~13_sumout\ & ( ((!\WideOr2~0_combout\) # ((\Selector26~0_combout\ & \shifter|sbit[3][11]~31_combout\))) # (\Selector24~0_combout\) ) ) ) # ( !\Selector24~3_combout\ & ( \Add1~13_sumout\ ) ) # ( 
-- \Selector24~3_combout\ & ( !\Add1~13_sumout\ & ( ((\Selector26~0_combout\ & \shifter|sbit[3][11]~31_combout\)) # (\Selector24~0_combout\) ) ) ) # ( !\Selector24~3_combout\ & ( !\Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101111111111111111111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector24~0_combout\,
	datab => \ALT_INV_WideOr2~0_combout\,
	datac => \ALT_INV_Selector26~0_combout\,
	datad => \shifter|ALT_INV_sbit[3][11]~31_combout\,
	datae => \ALT_INV_Selector24~3_combout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \Selector24~4_combout\);

-- Location: FF_X61_Y6_N53
\AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector24~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(3));

-- Location: LABCELL_X62_Y6_N51
\shifter|sbit[1][4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][4]~7_combout\ = ( AC(5) & ( (!IR(0) & (((AC(4))))) # (IR(0) & (((AC(3))) # (IR(4)))) ) ) # ( !AC(5) & ( (!IR(0) & (((AC(4))))) # (IR(0) & (!IR(4) & ((AC(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(4),
	datad => ALT_INV_AC(3),
	dataf => ALT_INV_AC(5),
	combout => \shifter|sbit[1][4]~7_combout\);

-- Location: LABCELL_X62_Y6_N39
\shifter|sbit[1][8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][8]~0_combout\ = ( AC(9) & ( (!IR(0) & (AC(8))) # (IR(0) & (((AC(7)) # (IR(4))))) ) ) # ( !AC(9) & ( (!IR(0) & (AC(8))) # (IR(0) & (((!IR(4) & AC(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(8),
	datab => ALT_INV_IR(0),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(7),
	dataf => ALT_INV_AC(9),
	combout => \shifter|sbit[1][8]~0_combout\);

-- Location: LABCELL_X62_Y6_N30
\shifter|sbit[2][6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][6]~26_combout\ = ( \shifter|sbit[1][8]~0_combout\ & ( (!IR(1) & (((\shifter|sbit[1][6]~2_combout\)))) # (IR(1) & (((\shifter|sbit[1][4]~7_combout\)) # (IR(4)))) ) ) # ( !\shifter|sbit[1][8]~0_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][6]~2_combout\)))) # (IR(1) & (!IR(4) & ((\shifter|sbit[1][4]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][6]~2_combout\,
	datad => \shifter|ALT_INV_sbit[1][4]~7_combout\,
	dataf => \shifter|ALT_INV_sbit[1][8]~0_combout\,
	combout => \shifter|sbit[2][6]~26_combout\);

-- Location: LABCELL_X60_Y6_N18
\shifter|sbit[3][10]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][10]~27_combout\ = ( IR(2) & ( \shifter|sbit[2][14]~25_combout\ & ( (IR(4)) # (\shifter|sbit[2][6]~26_combout\) ) ) ) # ( !IR(2) & ( \shifter|sbit[2][14]~25_combout\ & ( \shifter|sbit[2][10]~24_combout\ ) ) ) # ( IR(2) & ( 
-- !\shifter|sbit[2][14]~25_combout\ & ( (\shifter|sbit[2][6]~26_combout\ & !IR(4)) ) ) ) # ( !IR(2) & ( !\shifter|sbit[2][14]~25_combout\ & ( \shifter|sbit[2][10]~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010001000100010000001111000011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][6]~26_combout\,
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][10]~24_combout\,
	datae => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[2][14]~25_combout\,
	combout => \shifter|sbit[3][10]~27_combout\);

-- Location: LABCELL_X62_Y6_N54
\shifter|sbit[2][2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][2]~28_combout\ = ( IR(1) & ( AC(0) & ( (!IR(4) & ((!IR(0)))) # (IR(4) & (\shifter|sbit[1][4]~7_combout\)) ) ) ) # ( !IR(1) & ( AC(0) & ( \shifter|sbit[1][2]~8_combout\ ) ) ) # ( IR(1) & ( !AC(0) & ( (IR(4) & 
-- \shifter|sbit[1][4]~7_combout\) ) ) ) # ( !IR(1) & ( !AC(0) & ( \shifter|sbit[1][2]~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000110000001101010101010101011100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[1][2]~8_combout\,
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][4]~7_combout\,
	datad => ALT_INV_IR(0),
	datae => ALT_INV_IR(1),
	dataf => ALT_INV_AC(0),
	combout => \shifter|sbit[2][2]~28_combout\);

-- Location: LABCELL_X60_Y6_N51
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \shifter|sbit[2][6]~26_combout\ & ( (\Selector26~1_combout\ & ((!IR(2) & (\shifter|sbit[2][2]~28_combout\)) # (IR(2) & ((IR(4)))))) ) ) # ( !\shifter|sbit[2][6]~26_combout\ & ( (\shifter|sbit[2][2]~28_combout\ & (!IR(2) & 
-- \Selector26~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][2]~28_combout\,
	datab => ALT_INV_IR(4),
	datac => ALT_INV_IR(2),
	datad => \ALT_INV_Selector26~1_combout\,
	dataf => \shifter|ALT_INV_sbit[2][6]~26_combout\,
	combout => \Selector25~0_combout\);

-- Location: IOIBUF_X62_Y0_N18
\IO_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(2),
	o => \IO_DATA[2]~input_o\);

-- Location: LABCELL_X61_Y5_N12
\Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = ( \IO_DATA[2]~input_o\ & ( ((\state.ex_loadi~q\ & IR(2))) # (\state.ex_in2~DUPLICATE_q\) ) ) # ( !\IO_DATA[2]~input_o\ & ( (\state.ex_loadi~q\ & IR(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_loadi~q\,
	datac => ALT_INV_IR(2),
	dataf => \ALT_INV_IO_DATA[2]~input_o\,
	combout => \Selector25~2_combout\);

-- Location: MLABCELL_X59_Y6_N36
\Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = ( \altsyncram_component|auto_generated|q_a\(2) & ( (((\state.ex_xor~DUPLICATE_q\ & !AC(2))) # (\state.ex_or~q\)) # (\state.ex_load~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => \ALT_INV_state.ex_or~q\,
	datad => ALT_INV_AC(2),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \Selector25~1_combout\);

-- Location: LABCELL_X60_Y6_N0
\Selector25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = ( !\altsyncram_component|auto_generated|q_a\(2) & ( (((AC(2) & ((!\Selector26~2_combout\) # (\state.ex_xor~q\)))) # (\Selector25~1_combout\)) # (\Selector25~2_combout\) ) ) # ( \altsyncram_component|auto_generated|q_a\(2) & ( 
-- (((AC(2) & ((!\Selector26~2_combout\) # (\state.ex_and~q\)))) # (\Selector25~1_combout\)) # (\Selector25~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010111111111010001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(2),
	datab => \ALT_INV_Selector26~2_combout\,
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector25~2_combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \ALT_INV_Selector25~1_combout\,
	datag => \ALT_INV_state.ex_xor~q\,
	combout => \Selector25~4_combout\);

-- Location: LABCELL_X60_Y6_N36
\Selector25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = ( \Selector25~4_combout\ & ( \Add1~9_sumout\ ) ) # ( !\Selector25~4_combout\ & ( \Add1~9_sumout\ & ( ((!\WideOr2~0_combout\) # ((\shifter|sbit[3][10]~27_combout\ & \Selector26~0_combout\))) # (\Selector25~0_combout\) ) ) ) # ( 
-- \Selector25~4_combout\ & ( !\Add1~9_sumout\ ) ) # ( !\Selector25~4_combout\ & ( !\Add1~9_sumout\ & ( ((\shifter|sbit[3][10]~27_combout\ & \Selector26~0_combout\)) # (\Selector25~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111111111111111111111111111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[3][10]~27_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Selector25~0_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Selector25~4_combout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Selector25~3_combout\);

-- Location: FF_X60_Y6_N38
\AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector25~3_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(2));

-- Location: LABCELL_X62_Y6_N0
\shifter|sbit[1][2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][2]~8_combout\ = ( AC(1) & ( (!IR(0) & (((AC(2))))) # (IR(0) & ((!IR(4)) # ((AC(3))))) ) ) # ( !AC(1) & ( (!IR(0) & (((AC(2))))) # (IR(0) & (IR(4) & ((AC(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(2),
	datad => ALT_INV_AC(3),
	dataf => ALT_INV_AC(1),
	combout => \shifter|sbit[1][2]~8_combout\);

-- Location: LABCELL_X62_Y6_N18
\shifter|sbit[2][4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][4]~9_combout\ = ( \shifter|sbit[1][4]~7_combout\ & ( (!IR(1)) # ((!IR(4) & ((\shifter|sbit[1][2]~8_combout\))) # (IR(4) & (\shifter|sbit[1][6]~2_combout\))) ) ) # ( !\shifter|sbit[1][4]~7_combout\ & ( (IR(1) & ((!IR(4) & 
-- ((\shifter|sbit[1][2]~8_combout\))) # (IR(4) & (\shifter|sbit[1][6]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][6]~2_combout\,
	datad => \shifter|ALT_INV_sbit[1][2]~8_combout\,
	dataf => \shifter|ALT_INV_sbit[1][4]~7_combout\,
	combout => \shifter|sbit[2][4]~9_combout\);

-- Location: LABCELL_X61_Y5_N18
\shifter|sbit[2][0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][0]~34_combout\ = ( IR(0) & ( (IR(4) & (!IR(1) & AC(1))) ) ) # ( !IR(0) & ( (!IR(1) & AC(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_AC(0),
	datad => ALT_INV_AC(1),
	dataf => ALT_INV_IR(0),
	combout => \shifter|sbit[2][0]~34_combout\);

-- Location: LABCELL_X60_Y6_N6
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Selector26~1_combout\ & ( \shifter|sbit[2][8]~3_combout\ & ( (!IR(2) & (\shifter|sbit[2][4]~9_combout\)) # (IR(2) & (((\shifter|sbit[2][0]~34_combout\) # (IR(4))))) ) ) ) # ( \Selector26~1_combout\ & ( 
-- !\shifter|sbit[2][8]~3_combout\ & ( (!IR(2) & (\shifter|sbit[2][4]~9_combout\)) # (IR(2) & (((!IR(4) & \shifter|sbit[2][0]~34_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000110000000000000000000101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][4]~9_combout\,
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][0]~34_combout\,
	datad => ALT_INV_IR(2),
	datae => \ALT_INV_Selector26~1_combout\,
	dataf => \shifter|ALT_INV_sbit[2][8]~3_combout\,
	combout => \Selector23~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\IO_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(4),
	o => \IO_DATA[4]~input_o\);

-- Location: LABCELL_X62_Y5_N33
\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = ( \state.ex_in2~DUPLICATE_q\ & ( IR(4) & ( (\state.ex_loadi~q\) # (\IO_DATA[4]~input_o\) ) ) ) # ( !\state.ex_in2~DUPLICATE_q\ & ( IR(4) & ( \state.ex_loadi~q\ ) ) ) # ( \state.ex_in2~DUPLICATE_q\ & ( !IR(4) & ( 
-- \IO_DATA[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[4]~input_o\,
	datad => \ALT_INV_state.ex_loadi~q\,
	datae => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	dataf => ALT_INV_IR(4),
	combout => \Selector23~1_combout\);

-- Location: LABCELL_X61_Y6_N30
\Selector23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(4) & ( (!\state.ex_load~q\ & (!\state.ex_or~DUPLICATE_q\ & ((!\state.ex_xor~q\) # (AC(4))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(4) & ( (!\state.ex_xor~q\) # (!AC(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => ALT_INV_AC(4),
	datad => \ALT_INV_state.ex_or~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \Selector23~2_combout\);

-- Location: LABCELL_X61_Y6_N24
\Selector23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(4) & ( AC(4) & ( (!\Selector23~1_combout\ & (\Selector26~2_combout\ & (!\state.ex_and~q\ & \Selector23~2_combout\))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(4) & ( AC(4) & ( 
-- (!\Selector23~1_combout\ & (\Selector26~2_combout\ & \Selector23~2_combout\)) ) ) ) # ( \altsyncram_component|auto_generated|q_a\(4) & ( !AC(4) & ( (!\Selector23~1_combout\ & \Selector23~2_combout\) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(4) 
-- & ( !AC(4) & ( (!\Selector23~1_combout\ & \Selector23~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000001000100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~1_combout\,
	datab => \ALT_INV_Selector26~2_combout\,
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector23~2_combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => ALT_INV_AC(4),
	combout => \Selector23~3_combout\);

-- Location: LABCELL_X62_Y6_N12
\shifter|sbit[3][12]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][12]~33_combout\ = ( IR(4) & ( \shifter|sbit[2][8]~3_combout\ & ( (!IR(2) & (\shifter|sbit[2][12]~6_combout\)) # (IR(2) & ((AC(15)))) ) ) ) # ( !IR(4) & ( \shifter|sbit[2][8]~3_combout\ & ( (\shifter|sbit[2][12]~6_combout\) # (IR(2)) ) ) ) 
-- # ( IR(4) & ( !\shifter|sbit[2][8]~3_combout\ & ( (!IR(2) & (\shifter|sbit[2][12]~6_combout\)) # (IR(2) & ((AC(15)))) ) ) ) # ( !IR(4) & ( !\shifter|sbit[2][8]~3_combout\ & ( (!IR(2) & \shifter|sbit[2][12]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001001110010011101110111011101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => \shifter|ALT_INV_sbit[2][12]~6_combout\,
	datac => ALT_INV_AC(15),
	datae => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[2][8]~3_combout\,
	combout => \shifter|sbit[3][12]~33_combout\);

-- Location: LABCELL_X61_Y6_N42
\Selector23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = ( \Add1~17_sumout\ & ( \shifter|sbit[3][12]~33_combout\ & ( (((!\Selector23~3_combout\) # (!\WideOr2~0_combout\)) # (\Selector26~0_combout\)) # (\Selector23~0_combout\) ) ) ) # ( !\Add1~17_sumout\ & ( 
-- \shifter|sbit[3][12]~33_combout\ & ( ((!\Selector23~3_combout\) # (\Selector26~0_combout\)) # (\Selector23~0_combout\) ) ) ) # ( \Add1~17_sumout\ & ( !\shifter|sbit[3][12]~33_combout\ & ( ((!\Selector23~3_combout\) # (!\WideOr2~0_combout\)) # 
-- (\Selector23~0_combout\) ) ) ) # ( !\Add1~17_sumout\ & ( !\shifter|sbit[3][12]~33_combout\ & ( (!\Selector23~3_combout\) # (\Selector23~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111010111110111111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Selector23~3_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Add1~17_sumout\,
	dataf => \shifter|ALT_INV_sbit[3][12]~33_combout\,
	combout => \Selector23~4_combout\);

-- Location: FF_X61_Y6_N44
\AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector23~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(4));

-- Location: LABCELL_X63_Y5_N51
\shifter|sbit[1][5]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][5]~18_combout\ = ( IR(4) & ( (!IR(0) & ((AC(5)))) # (IR(0) & (AC(6))) ) ) # ( !IR(4) & ( (!IR(0) & ((AC(5)))) # (IR(0) & (AC(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(6),
	datab => ALT_INV_AC(4),
	datac => ALT_INV_IR(0),
	datad => ALT_INV_AC(5),
	dataf => ALT_INV_IR(4),
	combout => \shifter|sbit[1][5]~18_combout\);

-- Location: LABCELL_X63_Y5_N30
\shifter|sbit[2][7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][7]~30_combout\ = ( \shifter|sbit[1][9]~12_combout\ & ( (!IR(1) & (((\shifter|sbit[1][7]~14_combout\)))) # (IR(1) & (((\shifter|sbit[1][5]~18_combout\)) # (IR(4)))) ) ) # ( !\shifter|sbit[1][9]~12_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][7]~14_combout\)))) # (IR(1) & (!IR(4) & (\shifter|sbit[1][5]~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][5]~18_combout\,
	datad => \shifter|ALT_INV_sbit[1][7]~14_combout\,
	dataf => \shifter|ALT_INV_sbit[1][9]~12_combout\,
	combout => \shifter|sbit[2][7]~30_combout\);

-- Location: LABCELL_X63_Y5_N27
\shifter|sbit[3][7]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][7]~38_combout\ = ( \shifter|sbit[1][3]~19_combout\ & ( (!IR(4) & (IR(2) & ((!IR(1)) # (\shifter|sbit[1][1]~22_combout\)))) ) ) # ( !\shifter|sbit[1][3]~19_combout\ & ( (!IR(4) & (IR(1) & (\shifter|sbit[1][1]~22_combout\ & IR(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][1]~22_combout\,
	datad => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[1][3]~19_combout\,
	combout => \shifter|sbit[3][7]~38_combout\);

-- Location: LABCELL_X63_Y5_N18
\shifter|sbit[3][7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][7]~37_combout\ = ( \shifter|sbit[1][11]~13_combout\ & ( (IR(4) & (IR(2) & ((!IR(1)) # (\shifter|sbit[1][13]~16_combout\)))) ) ) # ( !\shifter|sbit[1][11]~13_combout\ & ( (IR(4) & (IR(1) & (\shifter|sbit[1][13]~16_combout\ & IR(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000010001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => \shifter|ALT_INV_sbit[1][13]~16_combout\,
	datad => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[1][11]~13_combout\,
	combout => \shifter|sbit[3][7]~37_combout\);

-- Location: LABCELL_X63_Y5_N57
\shifter|sbit[3][7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][7]~39_combout\ = ( \shifter|sbit[3][7]~37_combout\ ) # ( !\shifter|sbit[3][7]~37_combout\ & ( ((!IR(2) & \shifter|sbit[2][7]~30_combout\)) # (\shifter|sbit[3][7]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(2),
	datac => \shifter|ALT_INV_sbit[2][7]~30_combout\,
	datad => \shifter|ALT_INV_sbit[3][7]~38_combout\,
	dataf => \shifter|ALT_INV_sbit[3][7]~37_combout\,
	combout => \shifter|sbit[3][7]~39_combout\);

-- Location: LABCELL_X62_Y7_N24
\Selector20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~3_combout\ = ( !IR(3) & ( ((!\state.ex_loadi~q\ & (\shifter|sbit[3][7]~39_combout\ & (\state.ex_shift~q\))) # (\state.ex_loadi~q\ & (((\shifter|sbit[3][7]~39_combout\ & \state.ex_shift~q\)) # (IR(7))))) ) ) # ( IR(3) & ( (!\state.ex_loadi~q\ & 
-- (AC(15) & (IR(4) & (\state.ex_shift~q\)))) # (\state.ex_loadi~q\ & (((AC(15) & (IR(4) & \state.ex_shift~q\))) # (IR(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000010100110011001111110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \ALT_INV_state.ex_loadi~q\,
	datac => ALT_INV_IR(4),
	datad => \ALT_INV_state.ex_shift~q\,
	datae => ALT_INV_IR(3),
	dataf => ALT_INV_IR(7),
	datag => \shifter|ALT_INV_sbit[3][7]~39_combout\,
	combout => \Selector20~3_combout\);

-- Location: LABCELL_X62_Y7_N42
\Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = ( !\Selector20~3_combout\ & ( (!AC(7)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(7)) # (!\state.ex_and~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001110110011111100111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datab => ALT_INV_AC(7),
	datac => \ALT_INV_Selector26~2_combout\,
	datad => \ALT_INV_state.ex_and~q\,
	dataf => \ALT_INV_Selector20~3_combout\,
	combout => \Selector20~2_combout\);

-- Location: LABCELL_X62_Y7_N3
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(7) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(7))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datac => ALT_INV_AC(7),
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X61_Y7_N24
\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = ( \Selector20~0_combout\ & ( \Add1~29_sumout\ & ( (!\Selector20~2_combout\) # ((!\WideOr2~0_combout\) # ((\IO_DATA[7]~input_o\ & \state.ex_in2~DUPLICATE_q\))) ) ) ) # ( !\Selector20~0_combout\ & ( \Add1~29_sumout\ ) ) # ( 
-- \Selector20~0_combout\ & ( !\Add1~29_sumout\ & ( (!\Selector20~2_combout\) # ((\IO_DATA[7]~input_o\ & \state.ex_in2~DUPLICATE_q\)) ) ) ) # ( !\Selector20~0_combout\ & ( !\Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001101110111111111111111111111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[7]~input_o\,
	datab => \ALT_INV_Selector20~2_combout\,
	datac => \ALT_INV_WideOr2~0_combout\,
	datad => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datae => \ALT_INV_Selector20~0_combout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X61_Y7_N26
\AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector20~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(7));

-- Location: M10K_X58_Y6_N0
\altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002FF3800007FFFFFC0000001084E0007E00000000000003E00800000021080210843F00421",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 5,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LABCELL_X57_Y6_N27
\operand[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[9]~9_combout\ = ( \altsyncram_component|auto_generated|q_a\(9) & ( (IR(9)) # (\state.decode~q\) ) ) # ( !\altsyncram_component|auto_generated|q_a\(9) & ( (!\state.decode~q\ & IR(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.decode~q\,
	datad => ALT_INV_IR(9),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \operand[9]~9_combout\);

-- Location: LABCELL_X60_Y5_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \operand[9]~9_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~37_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][9]~q\)))) ) ) # ( !\operand[9]~9_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~37_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][9]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][9]~q\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_operand[9]~9_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X60_Y5_N56
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LABCELL_X57_Y6_N6
\next_mem_addr[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[9]~9_combout\ = ( \state.decode~q\ & ( IR(9) & ( (!\state.fetch~q\ & ((\altsyncram_component|auto_generated|q_a\(9)))) # (\state.fetch~q\ & (PC(9))) ) ) ) # ( !\state.decode~q\ & ( IR(9) & ( (!\state.fetch~q\) # (PC(9)) ) ) ) # ( 
-- \state.decode~q\ & ( !IR(9) & ( (!\state.fetch~q\ & ((\altsyncram_component|auto_generated|q_a\(9)))) # (\state.fetch~q\ & (PC(9))) ) ) ) # ( !\state.decode~q\ & ( !IR(9) & ( (\state.fetch~q\ & PC(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011010111110101111101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(9),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \ALT_INV_state.decode~q\,
	dataf => ALT_INV_IR(9),
	combout => \next_mem_addr[9]~9_combout\);

-- Location: LABCELL_X57_Y6_N33
\next_mem_addr[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[8]~8_combout\ = ( \state.fetch~q\ & ( PC(8) ) ) # ( !\state.fetch~q\ & ( (!\state.decode~q\ & ((IR(8)))) # (\state.decode~q\ & (\altsyncram_component|auto_generated|q_a\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datab => \ALT_INV_state.decode~q\,
	datac => ALT_INV_IR(8),
	datad => ALT_INV_PC(8),
	dataf => \ALT_INV_state.fetch~q\,
	combout => \next_mem_addr[8]~8_combout\);

-- Location: LABCELL_X57_Y6_N36
\operand[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[7]~7_combout\ = (!\state.decode~q\ & (IR(7))) # (\state.decode~q\ & ((\altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.decode~q\,
	datac => ALT_INV_IR(7),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \operand[7]~7_combout\);

-- Location: LABCELL_X60_Y5_N51
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \operand[7]~7_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~29_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][7]~q\)))) ) ) # ( !\operand[7]~7_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~29_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][7]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][7]~q\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_operand[7]~7_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X60_Y5_N53
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LABCELL_X57_Y6_N0
\next_mem_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[7]~7_combout\ = ( \altsyncram_component|auto_generated|q_a\(7) & ( IR(7) & ( (!\state.fetch~q\) # (PC(7)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(7) & ( IR(7) & ( (!\state.fetch~q\ & (!\state.decode~q\)) # (\state.fetch~q\ & 
-- ((PC(7)))) ) ) ) # ( \altsyncram_component|auto_generated|q_a\(7) & ( !IR(7) & ( (!\state.fetch~q\ & (\state.decode~q\)) # (\state.fetch~q\ & ((PC(7)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(7) & ( !IR(7) & ( (\state.fetch~q\ & PC(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001001110010011110001101100011011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \ALT_INV_state.decode~q\,
	datac => ALT_INV_PC(7),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => ALT_INV_IR(7),
	combout => \next_mem_addr[7]~7_combout\);

-- Location: IOIBUF_X68_Y0_N18
\IO_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(5),
	o => \IO_DATA[5]~input_o\);

-- Location: LABCELL_X63_Y7_N51
\Selector22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = ( IR(5) & ( \state.ex_in2~DUPLICATE_q\ & ( (\state.ex_loadi~q\) # (\IO_DATA[5]~input_o\) ) ) ) # ( !IR(5) & ( \state.ex_in2~DUPLICATE_q\ & ( \IO_DATA[5]~input_o\ ) ) ) # ( IR(5) & ( !\state.ex_in2~DUPLICATE_q\ & ( 
-- \state.ex_loadi~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[5]~input_o\,
	datac => \ALT_INV_state.ex_loadi~q\,
	datae => ALT_INV_IR(5),
	dataf => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	combout => \Selector22~2_combout\);

-- Location: LABCELL_X63_Y7_N57
\Selector22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(5) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(5))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(5) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101010001100000000001000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datac => ALT_INV_AC(5),
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \Selector22~3_combout\);

-- Location: LABCELL_X63_Y7_N12
\Selector22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~4_combout\ = ( \Selector22~3_combout\ & ( AC(5) & ( (!\Selector22~2_combout\ & (\Selector26~2_combout\ & ((!\state.ex_and~q\) # (!\altsyncram_component|auto_generated|q_a\(5))))) ) ) ) # ( \Selector22~3_combout\ & ( !AC(5) & ( 
-- !\Selector22~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \ALT_INV_Selector22~2_combout\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector22~3_combout\,
	dataf => ALT_INV_AC(5),
	combout => \Selector22~4_combout\);

-- Location: LABCELL_X63_Y7_N0
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( IR(4) & ( \shifter|sbit[2][5]~20_combout\ & ( (!IR(3) & (((!IR(2)) # (\shifter|sbit[2][9]~15_combout\)) # (\shifter|sbit[3][5]~35_combout\))) ) ) ) # ( !IR(4) & ( \shifter|sbit[2][5]~20_combout\ & ( (!IR(3) & ((!IR(2)) # 
-- (\shifter|sbit[3][5]~35_combout\))) ) ) ) # ( IR(4) & ( !\shifter|sbit[2][5]~20_combout\ & ( (!IR(3) & (((IR(2) & \shifter|sbit[2][9]~15_combout\)) # (\shifter|sbit[3][5]~35_combout\))) ) ) ) # ( !IR(4) & ( !\shifter|sbit[2][5]~20_combout\ & ( (!IR(3) & 
-- \shifter|sbit[3][5]~35_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010101010100010101000101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \shifter|ALT_INV_sbit[3][5]~35_combout\,
	datac => ALT_INV_IR(2),
	datad => \shifter|ALT_INV_sbit[2][9]~15_combout\,
	datae => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[2][5]~20_combout\,
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X63_Y7_N24
\Selector22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~5_combout\ = ( \Selector22~0_combout\ & ( \Add1~21_sumout\ & ( (!\WideOr2~0_combout\) # ((!\Selector22~4_combout\) # (\state.ex_shift~q\)) ) ) ) # ( !\Selector22~0_combout\ & ( \Add1~21_sumout\ & ( (!\WideOr2~0_combout\) # 
-- ((!\Selector22~4_combout\) # ((\state.ex_shift~q\ & \Selector22~1_combout\))) ) ) ) # ( \Selector22~0_combout\ & ( !\Add1~21_sumout\ & ( (!\Selector22~4_combout\) # (\state.ex_shift~q\) ) ) ) # ( !\Selector22~0_combout\ & ( !\Add1~21_sumout\ & ( 
-- (!\Selector22~4_combout\) # ((\state.ex_shift~q\ & \Selector22~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110011001111111111101010111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr2~0_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_Selector22~1_combout\,
	datad => \ALT_INV_Selector22~4_combout\,
	datae => \ALT_INV_Selector22~0_combout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \Selector22~5_combout\);

-- Location: FF_X63_Y7_N26
\AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector22~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(5));

-- Location: MLABCELL_X59_Y5_N15
\operand[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[6]~6_combout\ = ( IR(6) & ( \altsyncram_component|auto_generated|q_a\(6) ) ) # ( !IR(6) & ( \altsyncram_component|auto_generated|q_a\(6) & ( \state.decode~q\ ) ) ) # ( IR(6) & ( !\altsyncram_component|auto_generated|q_a\(6) & ( !\state.decode~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datae => ALT_INV_IR(6),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \operand[6]~6_combout\);

-- Location: MLABCELL_X59_Y5_N51
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \operand[6]~6_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~25_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][6]~q\)))) ) ) # ( !\operand[6]~6_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- (\Add0~25_sumout\))) # (\state.ex_return~q\ & (((\PC_stack[0][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_PC_stack[0][6]~q\,
	dataf => \ALT_INV_operand[6]~6_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X59_Y5_N53
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LABCELL_X57_Y6_N42
\next_mem_addr[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[6]~6_combout\ = ( \altsyncram_component|auto_generated|q_a\(6) & ( IR(6) & ( (!\state.fetch~q\) # (PC(6)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(6) & ( IR(6) & ( (!\state.fetch~q\ & (!\state.decode~q\)) # (\state.fetch~q\ & 
-- ((PC(6)))) ) ) ) # ( \altsyncram_component|auto_generated|q_a\(6) & ( !IR(6) & ( (!\state.fetch~q\ & (\state.decode~q\)) # (\state.fetch~q\ & ((PC(6)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(6) & ( !IR(6) & ( (\state.fetch~q\ & PC(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000010100101111110100000111101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_state.decode~q\,
	datad => ALT_INV_PC(6),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => ALT_INV_IR(6),
	combout => \next_mem_addr[6]~6_combout\);

-- Location: M10K_X58_Y5_N0
\altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000036A0000007FFFFFC000001613206B78FE35B46D5354368F617306A524E818482294D62102",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 5,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: MLABCELL_X59_Y5_N57
\operand[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[10]~10_combout\ = ( \altsyncram_component|auto_generated|q_a\(10) & ( (IR(10)) # (\state.decode~q\) ) ) # ( !\altsyncram_component|auto_generated|q_a\(10) & ( (!\state.decode~q\ & IR(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datad => ALT_INV_IR(10),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \operand[10]~10_combout\);

-- Location: FF_X59_Y5_N59
\IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \operand[10]~10_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(10));

-- Location: IOIBUF_X66_Y0_N92
\IO_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(11),
	o => \IO_DATA[11]~input_o\);

-- Location: MLABCELL_X59_Y5_N30
\Selector16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (!\state.ex_in2~q\ & (IR(10) & (\state.ex_loadi~q\))) # (\state.ex_in2~q\ & (((IR(10) & \state.ex_loadi~q\)) # (\IO_DATA[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~q\,
	datab => ALT_INV_IR(10),
	datac => \ALT_INV_state.ex_loadi~q\,
	datad => \ALT_INV_IO_DATA[11]~input_o\,
	combout => \Selector16~2_combout\);

-- Location: LABCELL_X62_Y7_N48
\Selector16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = ( !\state.ex_load~q\ & ( \altsyncram_component|auto_generated|q_a\(11) & ( (!\state.ex_or~DUPLICATE_q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(11)))) ) ) ) # ( \state.ex_load~q\ & ( !\altsyncram_component|auto_generated|q_a\(11) & 
-- ( (!\state.ex_xor~DUPLICATE_q\) # (!AC(11)) ) ) ) # ( !\state.ex_load~q\ & ( !\altsyncram_component|auto_generated|q_a\(11) & ( (!\state.ex_xor~DUPLICATE_q\) # (!AC(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datac => ALT_INV_AC(11),
	datad => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datae => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \Selector16~3_combout\);

-- Location: LABCELL_X62_Y7_N54
\Selector16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = ( !\Selector16~2_combout\ & ( \Selector16~3_combout\ & ( (!AC(11)) # ((\Selector26~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(11)) # (!\state.ex_and~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~2_combout\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => ALT_INV_AC(11),
	datad => \ALT_INV_state.ex_and~q\,
	datae => \ALT_INV_Selector16~2_combout\,
	dataf => \ALT_INV_Selector16~3_combout\,
	combout => \Selector16~4_combout\);

-- Location: LABCELL_X63_Y5_N12
\Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = ( IR(3) & ( (!IR(4) & (!IR(2) & (\shifter|sbit[2][3]~32_combout\))) # (IR(4) & (((AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][3]~32_combout\,
	datad => ALT_INV_AC(15),
	dataf => ALT_INV_IR(3),
	combout => \Selector16~1_combout\);

-- Location: LABCELL_X63_Y5_N0
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( AC(15) & ( \shifter|sbit[2][7]~30_combout\ & ( (!IR(3) & ((\shifter|sbit[2][11]~29_combout\) # (IR(2)))) ) ) ) # ( !AC(15) & ( \shifter|sbit[2][7]~30_combout\ & ( (!IR(3) & ((!IR(2) & (\shifter|sbit[2][11]~29_combout\)) # (IR(2) 
-- & ((!IR(4)))))) ) ) ) # ( AC(15) & ( !\shifter|sbit[2][7]~30_combout\ & ( (!IR(3) & ((!IR(2) & (\shifter|sbit[2][11]~29_combout\)) # (IR(2) & ((IR(4)))))) ) ) ) # ( !AC(15) & ( !\shifter|sbit[2][7]~30_combout\ & ( (!IR(3) & (!IR(2) & 
-- \shifter|sbit[2][11]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000010101000101010000010000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => ALT_INV_IR(2),
	datac => \shifter|ALT_INV_sbit[2][11]~29_combout\,
	datad => ALT_INV_IR(4),
	datae => ALT_INV_AC(15),
	dataf => \shifter|ALT_INV_sbit[2][7]~30_combout\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X61_Y7_N12
\Selector16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = ( \Selector16~0_combout\ & ( \Add1~45_sumout\ & ( (!\WideOr2~0_combout\) # ((!\Selector16~4_combout\) # (\state.ex_shift~q\)) ) ) ) # ( !\Selector16~0_combout\ & ( \Add1~45_sumout\ & ( (!\WideOr2~0_combout\) # 
-- ((!\Selector16~4_combout\) # ((\state.ex_shift~q\ & \Selector16~1_combout\))) ) ) ) # ( \Selector16~0_combout\ & ( !\Add1~45_sumout\ & ( (!\Selector16~4_combout\) # (\state.ex_shift~q\) ) ) ) # ( !\Selector16~0_combout\ & ( !\Add1~45_sumout\ & ( 
-- (!\Selector16~4_combout\) # ((\state.ex_shift~q\ & \Selector16~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011111100111111101110111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr2~0_combout\,
	datab => \ALT_INV_Selector16~4_combout\,
	datac => \ALT_INV_state.ex_shift~q\,
	datad => \ALT_INV_Selector16~1_combout\,
	datae => \ALT_INV_Selector16~0_combout\,
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \Selector16~5_combout\);

-- Location: FF_X61_Y7_N14
\AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector16~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(11));

-- Location: LABCELL_X62_Y7_N21
\shifter|sbit[1][11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][11]~13_combout\ = ( AC(11) & ( IR(0) & ( (!IR(4) & (AC(10))) # (IR(4) & ((AC(12)))) ) ) ) # ( !AC(11) & ( IR(0) & ( (!IR(4) & (AC(10))) # (IR(4) & ((AC(12)))) ) ) ) # ( AC(11) & ( !IR(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(10),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_AC(12),
	datae => ALT_INV_AC(11),
	dataf => ALT_INV_IR(0),
	combout => \shifter|sbit[1][11]~13_combout\);

-- Location: LABCELL_X61_Y5_N24
\shifter|sbit[2][13]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][13]~17_combout\ = ( \shifter|sbit[1][13]~16_combout\ & ( (!IR(1)) # ((!IR(4) & ((\shifter|sbit[1][11]~13_combout\))) # (IR(4) & (AC(15)))) ) ) # ( !\shifter|sbit[1][13]~16_combout\ & ( (IR(1) & ((!IR(4) & 
-- ((\shifter|sbit[1][11]~13_combout\))) # (IR(4) & (AC(15))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101111110001111110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_AC(15),
	datac => ALT_INV_IR(1),
	datad => \shifter|ALT_INV_sbit[1][11]~13_combout\,
	dataf => \shifter|ALT_INV_sbit[1][13]~16_combout\,
	combout => \shifter|sbit[2][13]~17_combout\);

-- Location: LABCELL_X61_Y5_N54
\shifter|sbit[3][9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][9]~21_combout\ = ( \shifter|sbit[2][9]~15_combout\ & ( \shifter|sbit[2][5]~20_combout\ & ( (!IR(4)) # ((!IR(2)) # (\shifter|sbit[2][13]~17_combout\)) ) ) ) # ( !\shifter|sbit[2][9]~15_combout\ & ( \shifter|sbit[2][5]~20_combout\ & ( 
-- (IR(2) & ((!IR(4)) # (\shifter|sbit[2][13]~17_combout\))) ) ) ) # ( \shifter|sbit[2][9]~15_combout\ & ( !\shifter|sbit[2][5]~20_combout\ & ( (!IR(2)) # ((IR(4) & \shifter|sbit[2][13]~17_combout\)) ) ) ) # ( !\shifter|sbit[2][9]~15_combout\ & ( 
-- !\shifter|sbit[2][5]~20_combout\ & ( (IR(4) & (IR(2) & \shifter|sbit[2][13]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001110011011100110100100011001000111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(2),
	datac => \shifter|ALT_INV_sbit[2][13]~17_combout\,
	datae => \shifter|ALT_INV_sbit[2][9]~15_combout\,
	dataf => \shifter|ALT_INV_sbit[2][5]~20_combout\,
	combout => \shifter|sbit[3][9]~21_combout\);

-- Location: LABCELL_X61_Y5_N27
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \shifter|sbit[3][1]~23_combout\ & ( (\Selector19~0_combout\ & ((!IR(4) & ((!IR(2)))) # (IR(4) & (AC(15))))) ) ) # ( !\shifter|sbit[3][1]~23_combout\ & ( (IR(4) & (AC(15) & \Selector19~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001011000000010000101100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_AC(15),
	datac => \ALT_INV_Selector19~0_combout\,
	datad => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[3][1]~23_combout\,
	combout => \Selector18~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\IO_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(9),
	o => \IO_DATA[9]~input_o\);

-- Location: LABCELL_X57_Y6_N24
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( \state.ex_loadi~q\ & ( ((\state.ex_in2~DUPLICATE_q\ & \IO_DATA[9]~input_o\)) # (IR(9)) ) ) # ( !\state.ex_loadi~q\ & ( (\state.ex_in2~DUPLICATE_q\ & \IO_DATA[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datab => \ALT_INV_IO_DATA[9]~input_o\,
	datac => ALT_INV_IR(9),
	dataf => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector18~1_combout\);

-- Location: LABCELL_X61_Y6_N15
\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(9) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~q\) # (AC(9))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(9) & ( (!\state.ex_xor~q\) # (!AC(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~q\,
	datab => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_load~q\,
	datad => ALT_INV_AC(9),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \Selector18~2_combout\);

-- Location: LABCELL_X61_Y6_N6
\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( AC(9) & ( \Selector18~2_combout\ & ( (!\Selector18~1_combout\ & (\Selector26~2_combout\ & ((!\state.ex_and~q\) # (!\altsyncram_component|auto_generated|q_a\(9))))) ) ) ) # ( !AC(9) & ( \Selector18~2_combout\ & ( 
-- !\Selector18~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \ALT_INV_Selector18~1_combout\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => ALT_INV_AC(9),
	dataf => \ALT_INV_Selector18~2_combout\,
	combout => \Selector18~3_combout\);

-- Location: LABCELL_X61_Y5_N42
\Selector18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = ( \Selector18~3_combout\ & ( \Add1~37_sumout\ & ( ((!\WideOr2~0_combout\) # ((\shifter|sbit[3][9]~21_combout\ & \Selector26~1_combout\))) # (\Selector18~0_combout\) ) ) ) # ( !\Selector18~3_combout\ & ( \Add1~37_sumout\ ) ) # ( 
-- \Selector18~3_combout\ & ( !\Add1~37_sumout\ & ( ((\shifter|sbit[3][9]~21_combout\ & \Selector26~1_combout\)) # (\Selector18~0_combout\) ) ) ) # ( !\Selector18~3_combout\ & ( !\Add1~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000111110001111111111111111111111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[3][9]~21_combout\,
	datab => \ALT_INV_Selector26~1_combout\,
	datac => \ALT_INV_Selector18~0_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Selector18~3_combout\,
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \Selector18~4_combout\);

-- Location: FF_X61_Y5_N44
\AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector18~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(9));

-- Location: LABCELL_X62_Y5_N6
\shifter|sbit[1][10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][10]~1_combout\ = ( AC(10) & ( (!IR(0)) # ((!IR(4) & (AC(9))) # (IR(4) & ((AC(11))))) ) ) # ( !AC(10) & ( (IR(0) & ((!IR(4) & (AC(9))) # (IR(4) & ((AC(11)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001111011101110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(9),
	datab => ALT_INV_IR(0),
	datac => ALT_INV_AC(11),
	datad => ALT_INV_IR(4),
	dataf => ALT_INV_AC(10),
	combout => \shifter|sbit[1][10]~1_combout\);

-- Location: LABCELL_X62_Y6_N21
\shifter|sbit[2][10]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][10]~24_combout\ = ( \shifter|sbit[1][8]~0_combout\ & ( (!IR(1) & (((\shifter|sbit[1][10]~1_combout\)))) # (IR(1) & ((!IR(4)) # ((\shifter|sbit[1][12]~4_combout\)))) ) ) # ( !\shifter|sbit[1][8]~0_combout\ & ( (!IR(1) & 
-- (((\shifter|sbit[1][10]~1_combout\)))) # (IR(1) & (IR(4) & (\shifter|sbit[1][12]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][12]~4_combout\,
	datad => \shifter|ALT_INV_sbit[1][10]~1_combout\,
	dataf => \shifter|ALT_INV_sbit[1][8]~0_combout\,
	combout => \shifter|sbit[2][10]~24_combout\);

-- Location: LABCELL_X63_Y7_N36
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \Selector26~1_combout\ & ( \shifter|sbit[2][6]~26_combout\ & ( (!IR(2)) # ((!IR(4) & ((\shifter|sbit[2][2]~28_combout\))) # (IR(4) & (\shifter|sbit[2][10]~24_combout\))) ) ) ) # ( \Selector26~1_combout\ & ( 
-- !\shifter|sbit[2][6]~26_combout\ & ( (IR(2) & ((!IR(4) & ((\shifter|sbit[2][2]~28_combout\))) # (IR(4) & (\shifter|sbit[2][10]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000101100000000000000001111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => \shifter|ALT_INV_sbit[2][10]~24_combout\,
	datac => ALT_INV_IR(2),
	datad => \shifter|ALT_INV_sbit[2][2]~28_combout\,
	datae => \ALT_INV_Selector26~1_combout\,
	dataf => \shifter|ALT_INV_sbit[2][6]~26_combout\,
	combout => \Selector21~0_combout\);

-- Location: IOIBUF_X76_Y0_N18
\IO_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(6),
	o => \IO_DATA[6]~input_o\);

-- Location: MLABCELL_X59_Y5_N27
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( \state.ex_loadi~q\ & ( ((\IO_DATA[6]~input_o\ & \state.ex_in2~q\)) # (IR(6)) ) ) # ( !\state.ex_loadi~q\ & ( (\IO_DATA[6]~input_o\ & \state.ex_in2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IO_DATA[6]~input_o\,
	datac => ALT_INV_IR(6),
	datad => \ALT_INV_state.ex_in2~q\,
	dataf => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector21~1_combout\);

-- Location: LABCELL_X63_Y7_N54
\Selector21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(6) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(6))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(6) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_load~q\,
	datad => ALT_INV_AC(6),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \Selector21~2_combout\);

-- Location: LABCELL_X63_Y7_N6
\Selector21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = ( \Selector21~2_combout\ & ( AC(6) & ( (!\Selector21~1_combout\ & (\Selector26~2_combout\ & ((!\state.ex_and~q\) # (!\altsyncram_component|auto_generated|q_a\(6))))) ) ) ) # ( \Selector21~2_combout\ & ( !AC(6) & ( 
-- !\Selector21~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector21~1_combout\,
	datab => \ALT_INV_state.ex_and~q\,
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \ALT_INV_Selector21~2_combout\,
	dataf => ALT_INV_AC(6),
	combout => \Selector21~3_combout\);

-- Location: LABCELL_X63_Y7_N30
\shifter|sbit[3][14]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[3][14]~36_combout\ = ( \shifter|sbit[2][10]~24_combout\ & ( (!IR(2) & (((\shifter|sbit[2][14]~25_combout\)))) # (IR(2) & (((!IR(4))) # (AC(15)))) ) ) # ( !\shifter|sbit[2][10]~24_combout\ & ( (!IR(2) & (((\shifter|sbit[2][14]~25_combout\)))) 
-- # (IR(2) & (AC(15) & ((IR(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101011111000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_AC(15),
	datac => \shifter|ALT_INV_sbit[2][14]~25_combout\,
	datad => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[2][10]~24_combout\,
	combout => \shifter|sbit[3][14]~36_combout\);

-- Location: LABCELL_X63_Y7_N42
\Selector21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~4_combout\ = ( \WideOr2~0_combout\ & ( \Add1~25_sumout\ & ( ((!\Selector21~3_combout\) # ((\Selector26~0_combout\ & \shifter|sbit[3][14]~36_combout\))) # (\Selector21~0_combout\) ) ) ) # ( !\WideOr2~0_combout\ & ( \Add1~25_sumout\ ) ) # ( 
-- \WideOr2~0_combout\ & ( !\Add1~25_sumout\ & ( ((!\Selector21~3_combout\) # ((\Selector26~0_combout\ & \shifter|sbit[3][14]~36_combout\))) # (\Selector21~0_combout\) ) ) ) # ( !\WideOr2~0_combout\ & ( !\Add1~25_sumout\ & ( ((!\Selector21~3_combout\) # 
-- ((\Selector26~0_combout\ & \shifter|sbit[3][14]~36_combout\))) # (\Selector21~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011111110111011101111111111111111111111101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector21~0_combout\,
	datab => \ALT_INV_Selector21~3_combout\,
	datac => \ALT_INV_Selector26~0_combout\,
	datad => \shifter|ALT_INV_sbit[3][14]~36_combout\,
	datae => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \Selector21~4_combout\);

-- Location: FF_X63_Y7_N44
\AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector21~4_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(6));

-- Location: LABCELL_X62_Y6_N3
\shifter|sbit[1][6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][6]~2_combout\ = ( AC(5) & ( (!IR(0) & (((AC(6))))) # (IR(0) & ((!IR(4)) # ((AC(7))))) ) ) # ( !AC(5) & ( (!IR(0) & (((AC(6))))) # (IR(0) & (IR(4) & ((AC(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(6),
	datad => ALT_INV_AC(7),
	dataf => ALT_INV_AC(5),
	combout => \shifter|sbit[1][6]~2_combout\);

-- Location: LABCELL_X62_Y6_N6
\shifter|sbit[2][8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][8]~3_combout\ = ( \shifter|sbit[1][8]~0_combout\ & ( (!IR(1)) # ((!IR(4) & (\shifter|sbit[1][6]~2_combout\)) # (IR(4) & ((\shifter|sbit[1][10]~1_combout\)))) ) ) # ( !\shifter|sbit[1][8]~0_combout\ & ( (IR(1) & ((!IR(4) & 
-- (\shifter|sbit[1][6]~2_combout\)) # (IR(4) & ((\shifter|sbit[1][10]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[1][6]~2_combout\,
	datad => \shifter|ALT_INV_sbit[1][10]~1_combout\,
	dataf => \shifter|ALT_INV_sbit[1][8]~0_combout\,
	combout => \shifter|sbit[2][8]~3_combout\);

-- Location: LABCELL_X62_Y6_N45
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( IR(4) & ( \shifter|sbit[2][12]~6_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # (AC(15)))) ) ) ) # ( !IR(4) & ( \shifter|sbit[2][12]~6_combout\ & ( (\Selector26~1_combout\ & ((!IR(2)) # (\shifter|sbit[2][8]~3_combout\))) ) ) 
-- ) # ( IR(4) & ( !\shifter|sbit[2][12]~6_combout\ & ( (AC(15) & (IR(2) & \Selector26~1_combout\)) ) ) ) # ( !IR(4) & ( !\shifter|sbit[2][12]~6_combout\ & ( (IR(2) & (\shifter|sbit[2][8]~3_combout\ & \Selector26~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000001000100000000110011110000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => ALT_INV_IR(2),
	datac => \shifter|ALT_INV_sbit[2][8]~3_combout\,
	datad => \ALT_INV_Selector26~1_combout\,
	datae => ALT_INV_IR(4),
	dataf => \shifter|ALT_INV_sbit[2][12]~6_combout\,
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X62_Y6_N27
\Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = ( AC(15) & ( ((!IR(2) & (\shifter|sbit[2][4]~9_combout\)) # (IR(2) & ((\shifter|sbit[2][0]~34_combout\)))) # (IR(4)) ) ) # ( !AC(15) & ( (!IR(4) & ((!IR(2) & (\shifter|sbit[2][4]~9_combout\)) # (IR(2) & 
-- ((\shifter|sbit[2][0]~34_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][4]~9_combout\,
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][0]~34_combout\,
	datad => ALT_INV_IR(2),
	dataf => ALT_INV_AC(15),
	combout => \Selector15~1_combout\);

-- Location: IOIBUF_X70_Y0_N52
\IO_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(12),
	o => \IO_DATA[12]~input_o\);

-- Location: MLABCELL_X59_Y5_N21
\Selector15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = ( \IO_DATA[12]~input_o\ & ( ((\state.ex_loadi~q\ & IR(10))) # (\state.ex_in2~q\) ) ) # ( !\IO_DATA[12]~input_o\ & ( (\state.ex_loadi~q\ & IR(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_loadi~q\,
	datac => ALT_INV_IR(10),
	datad => \ALT_INV_state.ex_in2~q\,
	dataf => \ALT_INV_IO_DATA[12]~input_o\,
	combout => \Selector15~2_combout\);

-- Location: LABCELL_X61_Y7_N57
\Selector15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(12) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(12))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(12) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datac => ALT_INV_AC(12),
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \Selector15~3_combout\);

-- Location: LABCELL_X61_Y7_N0
\Selector15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = ( \Selector15~3_combout\ & ( \altsyncram_component|auto_generated|q_a\(12) & ( (!\Selector15~2_combout\ & ((!AC(12)) # ((\Selector26~2_combout\ & !\state.ex_and~q\)))) ) ) ) # ( \Selector15~3_combout\ & ( 
-- !\altsyncram_component|auto_generated|q_a\(12) & ( (!\Selector15~2_combout\ & ((!AC(12)) # (\Selector26~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010101000101000000000000000001000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector15~2_combout\,
	datab => ALT_INV_AC(12),
	datac => \ALT_INV_Selector26~2_combout\,
	datad => \ALT_INV_state.ex_and~q\,
	datae => \ALT_INV_Selector15~3_combout\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \Selector15~4_combout\);

-- Location: LABCELL_X61_Y7_N42
\Selector15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = ( \Selector15~4_combout\ & ( \Add1~49_sumout\ & ( ((!\WideOr2~0_combout\) # ((\Selector19~0_combout\ & \Selector15~1_combout\))) # (\Selector15~0_combout\) ) ) ) # ( !\Selector15~4_combout\ & ( \Add1~49_sumout\ ) ) # ( 
-- \Selector15~4_combout\ & ( !\Add1~49_sumout\ & ( ((\Selector19~0_combout\ & \Selector15~1_combout\)) # (\Selector15~0_combout\) ) ) ) # ( !\Selector15~4_combout\ & ( !\Add1~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001101110011011111111111111111111111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~0_combout\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \ALT_INV_Selector15~1_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Selector15~4_combout\,
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \Selector15~5_combout\);

-- Location: FF_X61_Y7_N44
\AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector15~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(12));

-- Location: LABCELL_X63_Y6_N18
\shifter|sbit[1][12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[1][12]~4_combout\ = ( IR(0) & ( AC(11) & ( (!IR(4)) # (AC(13)) ) ) ) # ( !IR(0) & ( AC(11) & ( AC(12) ) ) ) # ( IR(0) & ( !AC(11) & ( (AC(13) & IR(4)) ) ) ) # ( !IR(0) & ( !AC(11) & ( AC(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000011001101010101010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(12),
	datab => ALT_INV_AC(13),
	datad => ALT_INV_IR(4),
	datae => ALT_INV_IR(0),
	dataf => ALT_INV_AC(11),
	combout => \shifter|sbit[1][12]~4_combout\);

-- Location: LABCELL_X63_Y6_N54
\shifter|sbit[2][14]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifter|sbit[2][14]~25_combout\ = ( AC(15) & ( \shifter|sbit[1][14]~5_combout\ & ( ((!IR(1)) # (IR(4))) # (\shifter|sbit[1][12]~4_combout\) ) ) ) # ( !AC(15) & ( \shifter|sbit[1][14]~5_combout\ & ( (!IR(1)) # ((\shifter|sbit[1][12]~4_combout\ & !IR(4))) 
-- ) ) ) # ( AC(15) & ( !\shifter|sbit[1][14]~5_combout\ & ( (IR(1) & ((IR(4)) # (\shifter|sbit[1][12]~4_combout\))) ) ) ) # ( !AC(15) & ( !\shifter|sbit[1][14]~5_combout\ & ( (\shifter|sbit[1][12]~4_combout\ & (IR(1) & !IR(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010011001111011101110011001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[1][12]~4_combout\,
	datab => ALT_INV_IR(1),
	datad => ALT_INV_IR(4),
	datae => ALT_INV_AC(15),
	dataf => \shifter|ALT_INV_sbit[1][14]~5_combout\,
	combout => \shifter|sbit[2][14]~25_combout\);

-- Location: LABCELL_X62_Y7_N12
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \shifter|sbit[2][10]~24_combout\ & ( IR(2) & ( (!IR(4) & ((!IR(3)))) # (IR(4) & (AC(15))) ) ) ) # ( !\shifter|sbit[2][10]~24_combout\ & ( IR(2) & ( (AC(15) & IR(4)) ) ) ) # ( \shifter|sbit[2][10]~24_combout\ & ( !IR(2) & ( 
-- (!IR(3) & (((\shifter|sbit[2][14]~25_combout\)))) # (IR(3) & (AC(15) & ((IR(4))))) ) ) ) # ( !\shifter|sbit[2][10]~24_combout\ & ( !IR(2) & ( (!IR(3) & (((\shifter|sbit[2][14]~25_combout\)))) # (IR(3) & (AC(15) & ((IR(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100000101000001011111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \shifter|ALT_INV_sbit[2][14]~25_combout\,
	datac => ALT_INV_IR(4),
	datad => ALT_INV_IR(3),
	datae => \shifter|ALT_INV_sbit[2][10]~24_combout\,
	dataf => ALT_INV_IR(2),
	combout => \Selector13~1_combout\);

-- Location: IOIBUF_X60_Y0_N18
\IO_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(14),
	o => \IO_DATA[14]~input_o\);

-- Location: MLABCELL_X59_Y5_N39
\Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = ( IR(10) & ( ((\IO_DATA[14]~input_o\ & \state.ex_in2~q\)) # (\state.ex_loadi~q\) ) ) # ( !IR(10) & ( (\IO_DATA[14]~input_o\ & \state.ex_in2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100000000000011110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_loadi~q\,
	datac => \ALT_INV_IO_DATA[14]~input_o\,
	datad => \ALT_INV_state.ex_in2~q\,
	datae => ALT_INV_IR(10),
	combout => \Selector13~2_combout\);

-- Location: LABCELL_X61_Y7_N54
\Selector13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(14) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(14))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(14) & ( 
-- (!\state.ex_xor~DUPLICATE_q\) # (!AC(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010001010000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datac => ALT_INV_AC(14),
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \Selector13~3_combout\);

-- Location: LABCELL_X61_Y7_N18
\Selector13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = ( \Selector13~3_combout\ & ( AC(14) & ( (!\Selector13~2_combout\ & (\Selector26~2_combout\ & ((!\state.ex_and~q\) # (!\altsyncram_component|auto_generated|q_a\(14))))) ) ) ) # ( \Selector13~3_combout\ & ( !AC(14) & ( 
-- !\Selector13~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~2_combout\,
	datab => \ALT_INV_state.ex_and~q\,
	datac => \ALT_INV_Selector26~2_combout\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \ALT_INV_Selector13~3_combout\,
	dataf => ALT_INV_AC(14),
	combout => \Selector13~4_combout\);

-- Location: LABCELL_X62_Y7_N36
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \shifter|sbit[2][2]~28_combout\ & ( IR(2) & ( (IR(3) & !IR(4)) ) ) ) # ( \shifter|sbit[2][2]~28_combout\ & ( !IR(2) & ( (IR(3) & (!IR(4) & \shifter|sbit[2][6]~26_combout\)) ) ) ) # ( !\shifter|sbit[2][2]~28_combout\ & ( !IR(2) & 
-- ( (IR(3) & (!IR(4) & \shifter|sbit[2][6]~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(3),
	datac => ALT_INV_IR(4),
	datad => \shifter|ALT_INV_sbit[2][6]~26_combout\,
	datae => \shifter|ALT_INV_sbit[2][2]~28_combout\,
	dataf => ALT_INV_IR(2),
	combout => \Selector13~0_combout\);

-- Location: MLABCELL_X59_Y7_N39
\Add1~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = ( \altsyncram_component|auto_generated|q_a\(14) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(14) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100100110000000000010011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => ALT_INV_IR(10),
	datad => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \Add1~82_combout\);

-- Location: LABCELL_X60_Y7_N45
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \Add1~82_combout\ ) + ( (AC(14) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \Add1~82_combout\ ) + ( (AC(14) & (((\state.ex_sub~q\) # (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_sub~q\,
	datad => \ALT_INV_Add1~82_combout\,
	dataf => ALT_INV_AC(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X61_Y7_N6
\Selector13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~5_combout\ = ( \WideOr2~0_combout\ & ( \Add1~57_sumout\ & ( (!\Selector13~4_combout\) # ((\state.ex_shift~q\ & ((\Selector13~0_combout\) # (\Selector13~1_combout\)))) ) ) ) # ( !\WideOr2~0_combout\ & ( \Add1~57_sumout\ ) ) # ( 
-- \WideOr2~0_combout\ & ( !\Add1~57_sumout\ & ( (!\Selector13~4_combout\) # ((\state.ex_shift~q\ & ((\Selector13~0_combout\) # (\Selector13~1_combout\)))) ) ) ) # ( !\WideOr2~0_combout\ & ( !\Add1~57_sumout\ & ( (!\Selector13~4_combout\) # 
-- ((\state.ex_shift~q\ & ((\Selector13~0_combout\) # (\Selector13~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110101111100011111010111111111111111111111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_shift~q\,
	datab => \ALT_INV_Selector13~1_combout\,
	datac => \ALT_INV_Selector13~4_combout\,
	datad => \ALT_INV_Selector13~0_combout\,
	datae => \ALT_INV_WideOr2~0_combout\,
	dataf => \ALT_INV_Add1~57_sumout\,
	combout => \Selector13~5_combout\);

-- Location: FF_X61_Y7_N8
\AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector13~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(14));

-- Location: LABCELL_X63_Y6_N6
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \shifter|sbit[1][13]~16_combout\ & ( IR(1) & ( !IR(4) ) ) ) # ( \shifter|sbit[1][13]~16_combout\ & ( !IR(1) & ( (!IR(0) & (((AC(15))))) # (IR(0) & ((!IR(4) & ((AC(14)))) # (IR(4) & (AC(15))))) ) ) ) # ( 
-- !\shifter|sbit[1][13]~16_combout\ & ( !IR(1) & ( (!IR(0) & (((AC(15))))) # (IR(0) & ((!IR(4) & ((AC(14)))) # (IR(4) & (AC(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => ALT_INV_IR(4),
	datac => ALT_INV_AC(15),
	datad => ALT_INV_AC(14),
	datae => \shifter|ALT_INV_sbit[1][13]~16_combout\,
	dataf => ALT_INV_IR(1),
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X63_Y5_N36
\Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ( \shifter|sbit[2][11]~29_combout\ & ( (!IR(3) & ((!IR(2) & ((\Selector12~0_combout\))) # (IR(2) & (!IR(4))))) ) ) # ( !\shifter|sbit[2][11]~29_combout\ & ( (!IR(2) & (!IR(3) & \Selector12~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000100000111000000010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(2),
	datac => ALT_INV_IR(3),
	datad => \ALT_INV_Selector12~0_combout\,
	dataf => \shifter|ALT_INV_sbit[2][11]~29_combout\,
	combout => \Selector12~1_combout\);

-- Location: IOIBUF_X78_Y0_N1
\IO_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(15),
	o => \IO_DATA[15]~input_o\);

-- Location: MLABCELL_X59_Y5_N9
\Selector12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = ( \state.ex_loadi~q\ & ( ((\state.ex_in2~q\ & \IO_DATA[15]~input_o\)) # (IR(10)) ) ) # ( !\state.ex_loadi~q\ & ( (\state.ex_in2~q\ & \IO_DATA[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~q\,
	datab => ALT_INV_IR(10),
	datac => \ALT_INV_IO_DATA[15]~input_o\,
	dataf => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector12~4_combout\);

-- Location: MLABCELL_X59_Y6_N6
\Selector12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = ( \altsyncram_component|auto_generated|q_a\(15) & ( (!\state.ex_load~q\ & (!\state.ex_or~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(15))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(15) & ( (!\state.ex_xor~DUPLICATE_q\) # 
-- (!AC(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => \ALT_INV_state.ex_or~q\,
	datad => ALT_INV_AC(15),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \Selector12~5_combout\);

-- Location: MLABCELL_X59_Y6_N12
\Selector12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = ( \Selector26~2_combout\ & ( \Selector12~5_combout\ & ( (!\Selector12~4_combout\ & ((!\state.ex_and~q\) # ((!AC(15)) # (!\altsyncram_component|auto_generated|q_a\(15))))) ) ) ) # ( !\Selector26~2_combout\ & ( 
-- \Selector12~5_combout\ & ( (!AC(15) & !\Selector12~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_and~q\,
	datab => ALT_INV_AC(15),
	datac => \ALT_INV_Selector12~4_combout\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \ALT_INV_Selector26~2_combout\,
	dataf => \ALT_INV_Selector12~5_combout\,
	combout => \Selector12~6_combout\);

-- Location: LABCELL_X63_Y5_N33
\Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = ( IR(3) & ( (IR(4) & AC(15)) ) ) # ( !IR(3) & ( (IR(4) & (AC(15) & ((IR(2)) # (IR(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(4),
	datab => ALT_INV_IR(1),
	datac => ALT_INV_AC(15),
	datad => ALT_INV_IR(2),
	dataf => ALT_INV_IR(3),
	combout => \Selector12~2_combout\);

-- Location: LABCELL_X62_Y5_N18
\Selector14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~6_combout\ = ( !IR(4) & ( IR(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(3),
	dataf => ALT_INV_IR(4),
	combout => \Selector14~6_combout\);

-- Location: LABCELL_X63_Y5_N42
\Selector12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = ( IR(2) & ( \shifter|sbit[3][7]~37_combout\ & ( (!\Selector12~2_combout\ & !\Selector14~6_combout\) ) ) ) # ( !IR(2) & ( \shifter|sbit[3][7]~37_combout\ & ( (!\Selector12~2_combout\ & !\Selector14~6_combout\) ) ) ) # ( IR(2) & ( 
-- !\shifter|sbit[3][7]~37_combout\ & ( (!\Selector12~2_combout\ & ((!\Selector14~6_combout\) # (!\shifter|sbit[3][7]~38_combout\))) ) ) ) # ( !IR(2) & ( !\shifter|sbit[3][7]~37_combout\ & ( (!\Selector12~2_combout\ & ((!\Selector14~6_combout\) # 
-- ((!\shifter|sbit[3][7]~38_combout\ & !\shifter|sbit[2][7]~30_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010001000101010001010100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector12~2_combout\,
	datab => \ALT_INV_Selector14~6_combout\,
	datac => \shifter|ALT_INV_sbit[3][7]~38_combout\,
	datad => \shifter|ALT_INV_sbit[2][7]~30_combout\,
	datae => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[3][7]~37_combout\,
	combout => \Selector12~3_combout\);

-- Location: FF_X59_Y7_N2
\state.ex_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~38_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_add~q\);

-- Location: MLABCELL_X59_Y7_N45
\Add1~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = ( \altsyncram_component|auto_generated|q_a\(15) & ( (!\state.ex_sub~DUPLICATE_q\ & ((!\state.ex_addi~DUPLICATE_q\ & (\state.ex_add~DUPLICATE_q\)) # (\state.ex_addi~DUPLICATE_q\ & (!\state.ex_add~DUPLICATE_q\ & IR(10))))) ) ) # ( 
-- !\altsyncram_component|auto_generated|q_a\(15) & ( ((\state.ex_addi~DUPLICATE_q\ & ((IR(10)) # (\state.ex_add~DUPLICATE_q\)))) # (\state.ex_sub~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100100110000000000010011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~DUPLICATE_q\,
	datab => \ALT_INV_state.ex_add~DUPLICATE_q\,
	datac => ALT_INV_IR(10),
	datad => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \Add1~83_combout\);

-- Location: LABCELL_X60_Y7_N48
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( (AC(15) & (((\state.ex_add~q\) # (\state.ex_sub~DUPLICATE_q\)) # (\state.ex_addi~q\))) ) + ( \Add1~83_combout\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_addi~q\,
	datab => ALT_INV_AC(15),
	datac => \ALT_INV_state.ex_sub~DUPLICATE_q\,
	datad => \ALT_INV_state.ex_add~q\,
	dataf => \ALT_INV_Add1~83_combout\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: MLABCELL_X59_Y7_N18
\Selector12~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~7_combout\ = ( \Selector12~3_combout\ & ( \Add1~61_sumout\ & ( (!\Selector12~6_combout\) # ((!\WideOr2~0_combout\) # ((\Selector12~1_combout\ & \state.ex_shift~q\))) ) ) ) # ( !\Selector12~3_combout\ & ( \Add1~61_sumout\ & ( 
-- (!\Selector12~6_combout\) # ((!\WideOr2~0_combout\) # (\state.ex_shift~q\)) ) ) ) # ( \Selector12~3_combout\ & ( !\Add1~61_sumout\ & ( (!\Selector12~6_combout\) # ((\Selector12~1_combout\ & \state.ex_shift~q\)) ) ) ) # ( !\Selector12~3_combout\ & ( 
-- !\Add1~61_sumout\ & ( (!\Selector12~6_combout\) # (\state.ex_shift~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011011100110111111111110011111111111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector12~1_combout\,
	datab => \ALT_INV_Selector12~6_combout\,
	datac => \ALT_INV_state.ex_shift~q\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Selector12~3_combout\,
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \Selector12~7_combout\);

-- Location: FF_X59_Y7_N20
\AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector12~7_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(15));

-- Location: M10K_X58_Y4_N0
\altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000210000000421084000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SimpleDemo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_7p24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 5,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \MW~q\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: MLABCELL_X59_Y4_N9
\state~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~33_combout\ = ( \altsyncram_component|auto_generated|q_a\(12) & ( (\state.decode~q\ & !\altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.decode~q\,
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \state~33_combout\);

-- Location: LABCELL_X56_Y4_N33
\state~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~49_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) & ( \state~33_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & \altsyncram_component|auto_generated|q_a\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~33_combout\,
	combout => \state~49_combout\);

-- Location: FF_X56_Y4_N35
\state.ex_jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~49_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jzero~q\);

-- Location: MLABCELL_X59_Y6_N9
\state~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~47_combout\ = ( \state~36_combout\ & ( (\altsyncram_component|auto_generated|q_a\(13) & \altsyncram_component|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \ALT_INV_state~36_combout\,
	combout => \state~47_combout\);

-- Location: FF_X59_Y6_N10
\state.ex_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~47_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jpos~q\);

-- Location: LABCELL_X56_Y4_N39
\state~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~48_combout\ = ( \state~42_combout\ & ( (\altsyncram_component|auto_generated|q_a\(14) & \altsyncram_component|auto_generated|q_a\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~42_combout\,
	combout => \state~48_combout\);

-- Location: FF_X56_Y4_N40
\state.ex_jnz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~48_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jnz~q\);

-- Location: MLABCELL_X59_Y6_N57
\state~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~50_combout\ = ( !\altsyncram_component|auto_generated|q_a\(12) & ( \state~35_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & (\altsyncram_component|auto_generated|q_a\(13) & \altsyncram_component|auto_generated|q_a\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \ALT_INV_state~35_combout\,
	combout => \state~50_combout\);

-- Location: FF_X59_Y6_N58
\state.ex_jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~50_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jneg~q\);

-- Location: LABCELL_X56_Y4_N48
\PC[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[2]~0_combout\ = ( \state.ex_jneg~q\ & ( AC(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.ex_jneg~q\,
	dataf => ALT_INV_AC(15),
	combout => \PC[2]~0_combout\);

-- Location: MLABCELL_X59_Y4_N39
\WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = ( !\state.ex_call~q\ & ( (!\state.ex_return~q\ & !\state.fetch~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.ex_return~q\,
	datad => \ALT_INV_state.fetch~q\,
	dataf => \ALT_INV_state.ex_call~q\,
	combout => \WideOr1~1_combout\);

-- Location: LABCELL_X56_Y4_N9
\state~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~51_combout\ = ( !\altsyncram_component|auto_generated|q_a\(13) & ( \state~42_combout\ & ( \altsyncram_component|auto_generated|q_a\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~42_combout\,
	combout => \state~51_combout\);

-- Location: FF_X56_Y4_N10
\state.ex_jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~51_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_jump~q\);

-- Location: MLABCELL_X59_Y4_N30
\WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ( !\state.ex_jpos~q\ & ( (!\state.ex_jnz~q\ & (!\state.ex_jump~q\ & \state.init~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_jnz~q\,
	datac => \ALT_INV_state.ex_jump~q\,
	datad => \ALT_INV_state.init~q\,
	dataf => \ALT_INV_state.ex_jpos~q\,
	combout => \WideOr1~0_combout\);

-- Location: MLABCELL_X59_Y4_N54
\PC[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[0]~3_combout\ = ( \state.ex_jneg~q\ & ( \WideOr1~0_combout\ & ( (AC(15) & \resetn~input_o\) ) ) ) # ( !\state.ex_jneg~q\ & ( \WideOr1~0_combout\ & ( (\resetn~input_o\ & ((!\WideOr1~1_combout\) # (\state.ex_jzero~q\))) ) ) ) # ( \state.ex_jneg~q\ & ( 
-- !\WideOr1~0_combout\ & ( (AC(15) & \resetn~input_o\) ) ) ) # ( !\state.ex_jneg~q\ & ( !\WideOr1~0_combout\ & ( \resetn~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100010001000100110011000000110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => \ALT_INV_resetn~input_o\,
	datac => \ALT_INV_state.ex_jzero~q\,
	datad => \ALT_INV_WideOr1~1_combout\,
	datae => \ALT_INV_state.ex_jneg~q\,
	dataf => \ALT_INV_WideOr1~0_combout\,
	combout => \PC[0]~3_combout\);

-- Location: LABCELL_X61_Y5_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !AC(1) & ( !AC(3) & ( (!AC(0) & !AC(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(0),
	datac => ALT_INV_AC(2),
	datae => ALT_INV_AC(1),
	dataf => ALT_INV_AC(3),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X56_Y4_N36
\PC[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[2]~1_combout\ = ( AC(15) & ( !\state.ex_jnz~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ex_jnz~q\,
	dataf => ALT_INV_AC(15),
	combout => \PC[2]~1_combout\);

-- Location: LABCELL_X62_Y4_N9
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !AC(9) & ( !AC(8) & ( (!AC(7) & (!AC(5) & (!AC(6) & !AC(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(7),
	datab => ALT_INV_AC(5),
	datac => ALT_INV_AC(6),
	datad => ALT_INV_AC(4),
	datae => ALT_INV_AC(9),
	dataf => ALT_INV_AC(8),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X63_Y6_N39
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !AC(13) & ( !AC(11) & ( (!AC(15) & (!AC(10) & (!AC(14) & !AC(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(15),
	datab => ALT_INV_AC(10),
	datac => ALT_INV_AC(14),
	datad => ALT_INV_AC(12),
	datae => ALT_INV_AC(13),
	dataf => ALT_INV_AC(11),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X59_Y4_N48
\PC[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[2]~2_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (!\state.ex_jneg~q\ & ((!\Equal0~0_combout\ & (!\PC[2]~1_combout\ & !\state.ex_jzero~q\)) # (\Equal0~0_combout\ & ((\state.ex_jzero~q\))))) ) ) ) # ( !\Equal0~2_combout\ & ( 
-- \Equal0~1_combout\ & ( (!\PC[2]~1_combout\ & (!\state.ex_jzero~q\ & !\state.ex_jneg~q\)) ) ) ) # ( \Equal0~2_combout\ & ( !\Equal0~1_combout\ & ( (!\PC[2]~1_combout\ & (!\state.ex_jzero~q\ & !\state.ex_jneg~q\)) ) ) ) # ( !\Equal0~2_combout\ & ( 
-- !\Equal0~1_combout\ & ( (!\PC[2]~1_combout\ & (!\state.ex_jzero~q\ & !\state.ex_jneg~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_PC[2]~1_combout\,
	datac => \ALT_INV_state.ex_jzero~q\,
	datad => \ALT_INV_state.ex_jneg~q\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \PC[2]~2_combout\);

-- Location: MLABCELL_X59_Y4_N0
\PC[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[0]~4_combout\ = ( \PC[0]~3_combout\ & ( \PC[2]~2_combout\ ) ) # ( \PC[0]~3_combout\ & ( !\PC[2]~2_combout\ & ( ((!\state.ex_jzero~q\ & (!\state.ex_jpos~q\ & !\state.ex_jnz~q\))) # (\PC[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_jzero~q\,
	datab => \ALT_INV_state.ex_jpos~q\,
	datac => \ALT_INV_state.ex_jnz~q\,
	datad => \ALT_INV_PC[2]~0_combout\,
	datae => \ALT_INV_PC[0]~3_combout\,
	dataf => \ALT_INV_PC[2]~2_combout\,
	combout => \PC[0]~4_combout\);

-- Location: FF_X60_Y5_N38
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LABCELL_X60_Y5_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( PC(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( PC(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X60_Y5_N42
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \operand[1]~1_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~5_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][1]~q\)))) ) ) # ( !\operand[1]~1_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~5_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][1]~q\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_operand[1]~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X60_Y5_N44
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LABCELL_X60_Y5_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( PC(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( PC(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X60_Y5_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( PC(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( PC(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X59_Y4_N58
\PC_stack[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][3]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][3]~q\);

-- Location: LABCELL_X60_Y4_N54
\PC_stack[9][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][3]~feeder_combout\ = \PC_stack[10][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[10][3]~q\,
	combout => \PC_stack[9][3]~feeder_combout\);

-- Location: FF_X60_Y4_N56
\PC_stack[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][3]~feeder_combout\,
	asdata => \PC_stack[8][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][3]~q\);

-- Location: LABCELL_X60_Y4_N15
\PC_stack[8][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][3]~feeder_combout\ = \PC_stack[9][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[9][3]~q\,
	combout => \PC_stack[8][3]~feeder_combout\);

-- Location: FF_X60_Y4_N17
\PC_stack[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][3]~feeder_combout\,
	asdata => \PC_stack[7][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][3]~q\);

-- Location: LABCELL_X60_Y4_N12
\PC_stack[7][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][3]~feeder_combout\ = \PC_stack[8][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[8][3]~q\,
	combout => \PC_stack[7][3]~feeder_combout\);

-- Location: FF_X60_Y4_N14
\PC_stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][3]~feeder_combout\,
	asdata => \PC_stack[6][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][3]~q\);

-- Location: LABCELL_X60_Y4_N3
\PC_stack[6][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][3]~feeder_combout\ = \PC_stack[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[7][3]~q\,
	combout => \PC_stack[6][3]~feeder_combout\);

-- Location: FF_X60_Y4_N5
\PC_stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][3]~feeder_combout\,
	asdata => \PC_stack[5][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][3]~q\);

-- Location: LABCELL_X60_Y4_N0
\PC_stack[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][3]~feeder_combout\ = \PC_stack[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[6][3]~q\,
	combout => \PC_stack[5][3]~feeder_combout\);

-- Location: FF_X60_Y4_N2
\PC_stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][3]~feeder_combout\,
	asdata => \PC_stack[4][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][3]~q\);

-- Location: LABCELL_X60_Y4_N27
\PC_stack[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][3]~feeder_combout\ = \PC_stack[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[5][3]~q\,
	combout => \PC_stack[4][3]~feeder_combout\);

-- Location: FF_X60_Y4_N29
\PC_stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][3]~feeder_combout\,
	asdata => \PC_stack[3][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][3]~q\);

-- Location: LABCELL_X60_Y4_N24
\PC_stack[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][3]~feeder_combout\ = \PC_stack[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[4][3]~q\,
	combout => \PC_stack[3][3]~feeder_combout\);

-- Location: FF_X60_Y4_N26
\PC_stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][3]~feeder_combout\,
	asdata => \PC_stack[2][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][3]~q\);

-- Location: LABCELL_X60_Y4_N48
\PC_stack[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][3]~feeder_combout\ = \PC_stack[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][3]~q\,
	combout => \PC_stack[2][3]~feeder_combout\);

-- Location: FF_X60_Y4_N50
\PC_stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][3]~feeder_combout\,
	asdata => \PC_stack[1][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][3]~q\);

-- Location: LABCELL_X60_Y4_N51
\PC_stack[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][3]~feeder_combout\ = \PC_stack[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[2][3]~q\,
	combout => \PC_stack[1][3]~feeder_combout\);

-- Location: FF_X60_Y4_N53
\PC_stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][3]~feeder_combout\,
	asdata => \PC_stack[0][3]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][3]~q\);

-- Location: LABCELL_X60_Y4_N39
\PC_stack[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][3]~feeder_combout\ = \PC_stack[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[1][3]~q\,
	combout => \PC_stack[0][3]~feeder_combout\);

-- Location: FF_X60_Y4_N41
\PC_stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][3]~feeder_combout\,
	asdata => PC(3),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][3]~q\);

-- Location: LABCELL_X60_Y5_N39
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \operand[3]~3_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~13_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][3]~q\)))) ) ) # ( !\operand[3]~3_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- (\Add0~13_sumout\))) # (\state.ex_return~q\ & (((\PC_stack[0][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_PC_stack[0][3]~q\,
	dataf => \ALT_INV_operand[3]~3_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X60_Y5_N41
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LABCELL_X60_Y5_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( PC(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( PC(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PC(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X60_Y5_N48
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \operand[4]~4_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~17_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][4]~q\)))) ) ) # ( !\operand[4]~4_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~17_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][4]~q\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_operand[4]~4_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X60_Y5_N50
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: FF_X62_Y4_N7
\PC_stack[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \PC_stack[9][5]~q\,
	sload => VCC,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][5]~q\);

-- Location: LABCELL_X62_Y4_N48
\PC_stack[9][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][5]~feeder_combout\ = \PC_stack[10][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[10][5]~q\,
	combout => \PC_stack[9][5]~feeder_combout\);

-- Location: FF_X62_Y4_N50
\PC_stack[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][5]~feeder_combout\,
	asdata => \PC_stack[8][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][5]~q\);

-- Location: LABCELL_X62_Y4_N39
\PC_stack[8][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][5]~feeder_combout\ = \PC_stack[9][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[9][5]~q\,
	combout => \PC_stack[8][5]~feeder_combout\);

-- Location: FF_X62_Y4_N41
\PC_stack[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][5]~feeder_combout\,
	asdata => \PC_stack[7][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][5]~q\);

-- Location: LABCELL_X62_Y4_N36
\PC_stack[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][5]~feeder_combout\ = \PC_stack[8][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[8][5]~q\,
	combout => \PC_stack[7][5]~feeder_combout\);

-- Location: FF_X62_Y4_N38
\PC_stack[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][5]~feeder_combout\,
	asdata => \PC_stack[6][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][5]~q\);

-- Location: LABCELL_X62_Y4_N15
\PC_stack[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][5]~feeder_combout\ = \PC_stack[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[7][5]~q\,
	combout => \PC_stack[6][5]~feeder_combout\);

-- Location: FF_X62_Y4_N17
\PC_stack[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][5]~feeder_combout\,
	asdata => \PC_stack[5][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][5]~q\);

-- Location: LABCELL_X62_Y4_N12
\PC_stack[5][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][5]~feeder_combout\ = \PC_stack[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[6][5]~q\,
	combout => \PC_stack[5][5]~feeder_combout\);

-- Location: FF_X62_Y4_N14
\PC_stack[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][5]~feeder_combout\,
	asdata => \PC_stack[4][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][5]~q\);

-- Location: LABCELL_X62_Y4_N3
\PC_stack[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][5]~feeder_combout\ = \PC_stack[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[5][5]~q\,
	combout => \PC_stack[4][5]~feeder_combout\);

-- Location: FF_X62_Y4_N5
\PC_stack[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][5]~feeder_combout\,
	asdata => \PC_stack[3][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][5]~q\);

-- Location: LABCELL_X62_Y4_N27
\PC_stack[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][5]~feeder_combout\ = \PC_stack[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[4][5]~q\,
	combout => \PC_stack[3][5]~feeder_combout\);

-- Location: FF_X62_Y4_N29
\PC_stack[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][5]~feeder_combout\,
	asdata => \PC_stack[2][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][5]~q\);

-- Location: LABCELL_X62_Y4_N0
\PC_stack[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][5]~feeder_combout\ = \PC_stack[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][5]~q\,
	combout => \PC_stack[2][5]~feeder_combout\);

-- Location: FF_X62_Y4_N2
\PC_stack[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][5]~feeder_combout\,
	asdata => \PC_stack[1][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][5]~q\);

-- Location: LABCELL_X62_Y4_N24
\PC_stack[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][5]~feeder_combout\ = \PC_stack[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[2][5]~q\,
	combout => \PC_stack[1][5]~feeder_combout\);

-- Location: FF_X62_Y4_N26
\PC_stack[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][5]~feeder_combout\,
	asdata => \PC_stack[0][5]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][5]~q\);

-- Location: LABCELL_X62_Y4_N51
\PC_stack[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][5]~feeder_combout\ = \PC_stack[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[1][5]~q\,
	combout => \PC_stack[0][5]~feeder_combout\);

-- Location: FF_X62_Y4_N53
\PC_stack[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][5]~feeder_combout\,
	asdata => PC(5),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][5]~q\);

-- Location: LABCELL_X60_Y5_N45
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \operand[5]~5_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~21_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][5]~q\)))) ) ) # ( !\operand[5]~5_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- (\Add0~21_sumout\))) # (\state.ex_return~q\ & (((\PC_stack[0][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_PC_stack[0][5]~q\,
	dataf => \ALT_INV_operand[5]~5_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X60_Y5_N47
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LABCELL_X57_Y6_N15
\next_mem_addr[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[5]~5_combout\ = ( \altsyncram_component|auto_generated|q_a\(5) & ( IR(5) & ( (!\state.fetch~q\) # (PC(5)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(5) & ( IR(5) & ( (!\state.fetch~q\ & ((!\state.decode~q\))) # (\state.fetch~q\ & 
-- (PC(5))) ) ) ) # ( \altsyncram_component|auto_generated|q_a\(5) & ( !IR(5) & ( (!\state.fetch~q\ & ((\state.decode~q\))) # (\state.fetch~q\ & (PC(5))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(5) & ( !IR(5) & ( (PC(5) & \state.fetch~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101010111110000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PC(5),
	datac => \ALT_INV_state.decode~q\,
	datad => \ALT_INV_state.fetch~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => ALT_INV_IR(5),
	combout => \next_mem_addr[5]~5_combout\);

-- Location: LABCELL_X57_Y7_N9
\next_mem_addr[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[4]~4_combout\ = ( IR(4) & ( \state.decode~q\ & ( (!\state.fetch~q\ & (\altsyncram_component|auto_generated|q_a\(4))) # (\state.fetch~q\ & ((PC(4)))) ) ) ) # ( !IR(4) & ( \state.decode~q\ & ( (!\state.fetch~q\ & 
-- (\altsyncram_component|auto_generated|q_a\(4))) # (\state.fetch~q\ & ((PC(4)))) ) ) ) # ( IR(4) & ( !\state.decode~q\ & ( (!\state.fetch~q\) # (PC(4)) ) ) ) # ( !IR(4) & ( !\state.decode~q\ & ( (\state.fetch~q\ & PC(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.fetch~q\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => ALT_INV_PC(4),
	datae => ALT_INV_IR(4),
	dataf => \ALT_INV_state.decode~q\,
	combout => \next_mem_addr[4]~4_combout\);

-- Location: MLABCELL_X59_Y5_N18
\operand[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[3]~3_combout\ = ( IR(3) & ( (!\state.decode~q\) # (\altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !IR(3) & ( (\state.decode~q\ & \altsyncram_component|auto_generated|q_a\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.decode~q\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => ALT_INV_IR(3),
	combout => \operand[3]~3_combout\);

-- Location: FF_X59_Y5_N35
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \operand[3]~3_combout\,
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LABCELL_X57_Y7_N0
\next_mem_addr[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[3]~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(3) & ( \state.decode~q\ & ( (!\state.fetch~q\) # (PC(3)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(3) & ( \state.decode~q\ & ( (\state.fetch~q\ & PC(3)) ) ) ) # ( 
-- \altsyncram_component|auto_generated|q_a\(3) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & (IR(3))) # (\state.fetch~q\ & ((PC(3)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(3) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & (IR(3))) # 
-- (\state.fetch~q\ & ((PC(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(3),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(3),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	dataf => \ALT_INV_state.decode~q\,
	combout => \next_mem_addr[3]~3_combout\);

-- Location: MLABCELL_X59_Y4_N15
\state~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~30_combout\ = ( \state.decode~q\ & ( (!\altsyncram_component|auto_generated|q_a\(13) & (!\altsyncram_component|auto_generated|q_a\(14) & \altsyncram_component|auto_generated|q_a\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \ALT_INV_state.decode~q\,
	combout => \state~30_combout\);

-- Location: MLABCELL_X59_Y4_N45
\state~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~46_combout\ = ( \state~30_combout\ & ( (\altsyncram_component|auto_generated|q_a\(11) & !\altsyncram_component|auto_generated|q_a\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \ALT_INV_state~30_combout\,
	combout => \state~46_combout\);

-- Location: FF_X59_Y4_N47
\state.ex_return\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~46_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_return~q\);

-- Location: LABCELL_X56_Y5_N36
\PC_stack[10][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[10][2]~feeder_combout\ = ( \PC_stack[9][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[9][2]~q\,
	combout => \PC_stack[10][2]~feeder_combout\);

-- Location: FF_X56_Y5_N37
\PC_stack[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[10][2]~feeder_combout\,
	ena => \PC_stack[10][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[10][2]~q\);

-- Location: LABCELL_X57_Y5_N45
\PC_stack[9][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[9][2]~feeder_combout\ = \PC_stack[10][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[10][2]~q\,
	combout => \PC_stack[9][2]~feeder_combout\);

-- Location: FF_X57_Y5_N47
\PC_stack[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[9][2]~feeder_combout\,
	asdata => \PC_stack[8][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[9][2]~q\);

-- Location: LABCELL_X57_Y5_N42
\PC_stack[8][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[8][2]~feeder_combout\ = \PC_stack[9][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[9][2]~q\,
	combout => \PC_stack[8][2]~feeder_combout\);

-- Location: FF_X57_Y5_N44
\PC_stack[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[8][2]~feeder_combout\,
	asdata => \PC_stack[7][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[8][2]~q\);

-- Location: LABCELL_X57_Y5_N39
\PC_stack[7][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[7][2]~feeder_combout\ = \PC_stack[8][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[8][2]~q\,
	combout => \PC_stack[7][2]~feeder_combout\);

-- Location: FF_X57_Y5_N41
\PC_stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[7][2]~feeder_combout\,
	asdata => \PC_stack[6][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[7][2]~q\);

-- Location: LABCELL_X57_Y5_N36
\PC_stack[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[6][2]~feeder_combout\ = \PC_stack[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[7][2]~q\,
	combout => \PC_stack[6][2]~feeder_combout\);

-- Location: FF_X57_Y5_N38
\PC_stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[6][2]~feeder_combout\,
	asdata => \PC_stack[5][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[6][2]~q\);

-- Location: LABCELL_X57_Y5_N57
\PC_stack[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[5][2]~feeder_combout\ = \PC_stack[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[6][2]~q\,
	combout => \PC_stack[5][2]~feeder_combout\);

-- Location: FF_X57_Y5_N59
\PC_stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[5][2]~feeder_combout\,
	asdata => \PC_stack[4][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[5][2]~q\);

-- Location: LABCELL_X57_Y5_N54
\PC_stack[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[4][2]~feeder_combout\ = \PC_stack[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_stack[5][2]~q\,
	combout => \PC_stack[4][2]~feeder_combout\);

-- Location: FF_X57_Y5_N56
\PC_stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[4][2]~feeder_combout\,
	asdata => \PC_stack[3][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[4][2]~q\);

-- Location: LABCELL_X57_Y5_N15
\PC_stack[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[3][2]~feeder_combout\ = \PC_stack[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_stack[4][2]~q\,
	combout => \PC_stack[3][2]~feeder_combout\);

-- Location: FF_X57_Y5_N17
\PC_stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[3][2]~feeder_combout\,
	asdata => \PC_stack[2][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[3][2]~q\);

-- Location: LABCELL_X57_Y5_N51
\PC_stack[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[2][2]~feeder_combout\ = \PC_stack[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[3][2]~q\,
	combout => \PC_stack[2][2]~feeder_combout\);

-- Location: FF_X57_Y5_N53
\PC_stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[2][2]~feeder_combout\,
	asdata => \PC_stack[1][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[2][2]~q\);

-- Location: LABCELL_X57_Y5_N12
\PC_stack[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[1][2]~feeder_combout\ = \PC_stack[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_PC_stack[2][2]~q\,
	combout => \PC_stack[1][2]~feeder_combout\);

-- Location: FF_X57_Y5_N14
\PC_stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[1][2]~feeder_combout\,
	asdata => \PC_stack[0][2]~q\,
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[1][2]~q\);

-- Location: LABCELL_X57_Y5_N48
\PC_stack[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC_stack[0][2]~feeder_combout\ = ( \PC_stack[1][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_PC_stack[1][2]~q\,
	combout => \PC_stack[0][2]~feeder_combout\);

-- Location: FF_X57_Y5_N50
\PC_stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PC_stack[0][2]~feeder_combout\,
	asdata => PC(2),
	sload => \ALT_INV_state.ex_return~q\,
	ena => \PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_stack[0][2]~q\);

-- Location: MLABCELL_X59_Y5_N48
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \operand[2]~2_combout\ & ( (!\state.ex_return~q\ & ((!\state.fetch~q\) # ((\Add0~9_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][2]~q\)))) ) ) # ( !\operand[2]~2_combout\ & ( (!\state.ex_return~q\ & (\state.fetch~q\ & 
-- ((\Add0~9_sumout\)))) # (\state.ex_return~q\ & (((\PC_stack[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_return~q\,
	datab => \ALT_INV_state.fetch~q\,
	datac => \ALT_INV_PC_stack[0][2]~q\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_operand[2]~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X59_Y5_N50
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	sclr => \ALT_INV_state.init~q\,
	ena => \PC[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LABCELL_X57_Y7_N21
\next_mem_addr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[2]~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(2) & ( \state.decode~q\ & ( (!\state.fetch~q\) # (PC(2)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(2) & ( \state.decode~q\ & ( (PC(2) & \state.fetch~q\) ) ) ) # ( 
-- \altsyncram_component|auto_generated|q_a\(2) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & ((IR(2)))) # (\state.fetch~q\ & (PC(2))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(2) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & ((IR(2)))) # 
-- (\state.fetch~q\ & (PC(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PC(2),
	datab => ALT_INV_IR(2),
	datac => \ALT_INV_state.fetch~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \ALT_INV_state.decode~q\,
	combout => \next_mem_addr[2]~2_combout\);

-- Location: LABCELL_X56_Y5_N30
\operand[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[1]~1_combout\ = ( \altsyncram_component|auto_generated|q_a\(1) & ( IR(1) ) ) # ( !\altsyncram_component|auto_generated|q_a\(1) & ( IR(1) & ( !\state.decode~q\ ) ) ) # ( \altsyncram_component|auto_generated|q_a\(1) & ( !IR(1) & ( \state.decode~q\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.decode~q\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => ALT_INV_IR(1),
	combout => \operand[1]~1_combout\);

-- Location: LABCELL_X56_Y5_N24
\IR[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[1]~feeder_combout\ = ( \operand[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_operand[1]~1_combout\,
	combout => \IR[1]~feeder_combout\);

-- Location: FF_X56_Y5_N26
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IR[1]~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: LABCELL_X57_Y7_N51
\next_mem_addr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[1]~1_combout\ = ( PC(1) & ( \state.decode~q\ & ( (\altsyncram_component|auto_generated|q_a\(1)) # (\state.fetch~q\) ) ) ) # ( !PC(1) & ( \state.decode~q\ & ( (!\state.fetch~q\ & \altsyncram_component|auto_generated|q_a\(1)) ) ) ) # ( PC(1) 
-- & ( !\state.decode~q\ & ( (\state.fetch~q\) # (IR(1)) ) ) ) # ( !PC(1) & ( !\state.decode~q\ & ( (IR(1) & !\state.fetch~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(1),
	datab => \ALT_INV_state.fetch~q\,
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => ALT_INV_PC(1),
	dataf => \ALT_INV_state.decode~q\,
	combout => \next_mem_addr[1]~1_combout\);

-- Location: LABCELL_X62_Y6_N36
\operand[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[0]~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(0) & ( (\state.decode~q\) # (IR(0)) ) ) # ( !\altsyncram_component|auto_generated|q_a\(0) & ( (IR(0) & !\state.decode~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_IR(0),
	datad => \ALT_INV_state.decode~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \operand[0]~0_combout\);

-- Location: FF_X62_Y6_N17
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \operand[0]~0_combout\,
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: LABCELL_X57_Y7_N54
\next_mem_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_mem_addr[0]~0_combout\ = ( \altsyncram_component|auto_generated|q_a\(0) & ( \state.decode~q\ & ( (!\state.fetch~q\) # (PC(0)) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(0) & ( \state.decode~q\ & ( (\state.fetch~q\ & PC(0)) ) ) ) # ( 
-- \altsyncram_component|auto_generated|q_a\(0) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & (IR(0))) # (\state.fetch~q\ & ((PC(0)))) ) ) ) # ( !\altsyncram_component|auto_generated|q_a\(0) & ( !\state.decode~q\ & ( (!\state.fetch~q\ & (IR(0))) # 
-- (\state.fetch~q\ & ((PC(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(0),
	datab => \ALT_INV_state.fetch~q\,
	datac => ALT_INV_PC(0),
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \ALT_INV_state.decode~q\,
	combout => \next_mem_addr[0]~0_combout\);

-- Location: MLABCELL_X59_Y4_N33
\state~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~32_combout\ = ( \state~30_combout\ & ( (\altsyncram_component|auto_generated|q_a\(12) & \altsyncram_component|auto_generated|q_a\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_state~30_combout\,
	combout => \state~32_combout\);

-- Location: FF_X59_Y4_N35
\state.ex_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~32_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out~q\);

-- Location: LABCELL_X62_Y5_N27
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( !\state.ex_in~q\ & ( (!\state.decode~q\ & (!\state.ex_out~q\ & !\state.fetch~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.decode~q\,
	datac => \ALT_INV_state.ex_out~q\,
	datad => \ALT_INV_state.fetch~q\,
	dataf => \ALT_INV_state.ex_in~q\,
	combout => \WideOr4~combout\);

-- Location: FF_X62_Y5_N28
\state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \WideOr4~combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fetch~q\);

-- Location: LABCELL_X57_Y7_N24
\state.decode~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.decode~feeder_combout\ = ( \state.fetch~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.fetch~q\,
	combout => \state.decode~feeder_combout\);

-- Location: FF_X57_Y7_N25
\state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state.decode~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.decode~q\);

-- Location: MLABCELL_X59_Y5_N42
\operand[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operand[2]~2_combout\ = ( \altsyncram_component|auto_generated|q_a\(2) & ( (IR(2)) # (\state.decode~q\) ) ) # ( !\altsyncram_component|auto_generated|q_a\(2) & ( (!\state.decode~q\ & IR(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.decode~q\,
	datad => ALT_INV_IR(2),
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \operand[2]~2_combout\);

-- Location: FF_X59_Y5_N38
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \operand[2]~2_combout\,
	sload => VCC,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: LABCELL_X63_Y7_N33
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \shifter|sbit[2][2]~28_combout\ & ( (IR(3) & ((!IR(4) & (!IR(2))) # (IR(4) & ((AC(15)))))) ) ) # ( !\shifter|sbit[2][2]~28_combout\ & ( (AC(15) & (IR(4) & IR(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000101000110000000010100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_IR(2),
	datab => ALT_INV_AC(15),
	datac => ALT_INV_IR(4),
	datad => ALT_INV_IR(3),
	dataf => \shifter|ALT_INV_sbit[2][2]~28_combout\,
	combout => \Selector17~1_combout\);

-- Location: LABCELL_X63_Y6_N24
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \shifter|sbit[2][10]~24_combout\ & ( !IR(3) & ( (!IR(2)) # ((!IR(4) & (\shifter|sbit[2][6]~26_combout\)) # (IR(4) & ((\shifter|sbit[2][14]~25_combout\)))) ) ) ) # ( !\shifter|sbit[2][10]~24_combout\ & ( !IR(3) & ( (IR(2) & 
-- ((!IR(4) & (\shifter|sbit[2][6]~26_combout\)) # (IR(4) & ((\shifter|sbit[2][14]~25_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111011100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shifter|ALT_INV_sbit[2][6]~26_combout\,
	datab => ALT_INV_IR(2),
	datac => \shifter|ALT_INV_sbit[2][14]~25_combout\,
	datad => ALT_INV_IR(4),
	datae => \shifter|ALT_INV_sbit[2][10]~24_combout\,
	dataf => ALT_INV_IR(3),
	combout => \Selector17~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\IO_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(10),
	o => \IO_DATA[10]~input_o\);

-- Location: MLABCELL_X59_Y5_N33
\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = ( \state.ex_loadi~q\ & ( ((\state.ex_in2~q\ & \IO_DATA[10]~input_o\)) # (IR(10)) ) ) # ( !\state.ex_loadi~q\ & ( (\state.ex_in2~q\ & \IO_DATA[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~q\,
	datab => ALT_INV_IR(10),
	datad => \ALT_INV_IO_DATA[10]~input_o\,
	dataf => \ALT_INV_state.ex_loadi~q\,
	combout => \Selector17~2_combout\);

-- Location: LABCELL_X62_Y7_N9
\Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = ( \altsyncram_component|auto_generated|q_a\(10) & ( (!\state.ex_or~DUPLICATE_q\ & (!\state.ex_load~q\ & ((!\state.ex_xor~DUPLICATE_q\) # (AC(10))))) ) ) # ( !\altsyncram_component|auto_generated|q_a\(10) & ( (!AC(10)) # 
-- (!\state.ex_xor~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AC(10),
	datab => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datac => \ALT_INV_state.ex_xor~DUPLICATE_q\,
	datad => \ALT_INV_state.ex_load~q\,
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \Selector17~3_combout\);

-- Location: LABCELL_X62_Y7_N30
\Selector17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = ( \Selector26~2_combout\ & ( \Selector17~3_combout\ & ( (!\Selector17~2_combout\ & ((!\altsyncram_component|auto_generated|q_a\(10)) # ((!AC(10)) # (!\state.ex_and~q\)))) ) ) ) # ( !\Selector26~2_combout\ & ( 
-- \Selector17~3_combout\ & ( (!\Selector17~2_combout\ & !AC(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~2_combout\,
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => ALT_INV_AC(10),
	datad => \ALT_INV_state.ex_and~q\,
	datae => \ALT_INV_Selector26~2_combout\,
	dataf => \ALT_INV_Selector17~3_combout\,
	combout => \Selector17~4_combout\);

-- Location: LABCELL_X61_Y7_N30
\Selector17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = ( \Add1~41_sumout\ & ( \Selector17~4_combout\ & ( (!\WideOr2~0_combout\) # ((\state.ex_shift~q\ & ((\Selector17~0_combout\) # (\Selector17~1_combout\)))) ) ) ) # ( !\Add1~41_sumout\ & ( \Selector17~4_combout\ & ( 
-- (\state.ex_shift~q\ & ((\Selector17~0_combout\) # (\Selector17~1_combout\))) ) ) ) # ( \Add1~41_sumout\ & ( !\Selector17~4_combout\ ) ) # ( !\Add1~41_sumout\ & ( !\Selector17~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010001001100111111000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~1_combout\,
	datab => \ALT_INV_state.ex_shift~q\,
	datac => \ALT_INV_WideOr2~0_combout\,
	datad => \ALT_INV_Selector17~0_combout\,
	datae => \ALT_INV_Add1~41_sumout\,
	dataf => \ALT_INV_Selector17~4_combout\,
	combout => \Selector17~5_combout\);

-- Location: FF_X61_Y7_N32
\AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector17~5_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(10));

-- Location: MLABCELL_X59_Y4_N42
\state~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~53_combout\ = ( \state~33_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(11) & (!\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \ALT_INV_state~33_combout\,
	combout => \state~53_combout\);

-- Location: FF_X59_Y4_N43
\state.ex_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~53_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_store~q\);

-- Location: MLABCELL_X59_Y4_N36
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state~53_combout\ ) # ( !\state~53_combout\ & ( (\MW~q\ & (((!\state.ex_store~q\ & \state.init~q\)) # (\state.decode~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011000000000011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_store~q\,
	datab => \ALT_INV_state.decode~q\,
	datac => \ALT_INV_state.init~q\,
	datad => \ALT_INV_MW~q\,
	dataf => \ALT_INV_state~53_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X59_Y4_N38
MW : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MW~q\);

-- Location: MLABCELL_X59_Y4_N12
\state~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~39_combout\ = ( \state~33_combout\ & ( (!\altsyncram_component|auto_generated|q_a\(13) & (\altsyncram_component|auto_generated|q_a\(14) & !\altsyncram_component|auto_generated|q_a\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datab => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \ALT_INV_state~33_combout\,
	combout => \state~39_combout\);

-- Location: FF_X59_Y4_N13
\state.ex_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state~39_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_shift~q\);

-- Location: LABCELL_X61_Y5_N48
\Selector26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = ( !IR(3) & ( \state.ex_shift~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.ex_shift~q\,
	datae => ALT_INV_IR(3),
	combout => \Selector26~1_combout\);

-- Location: LABCELL_X63_Y6_N51
\Selector27~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~7_combout\ = ( !IR(2) & ( (\Selector26~1_combout\ & (((IR(4) & (IR(1) & \shifter|sbit[1][2]~8_combout\))) # (\shifter|sbit[3][0]~11_combout\))) ) ) # ( IR(2) & ( (\Selector26~1_combout\ & ((((IR(4) & \shifter|sbit[2][4]~9_combout\)) # 
-- (\shifter|sbit[3][0]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000001000000010000000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector26~1_combout\,
	datab => ALT_INV_IR(4),
	datac => \shifter|ALT_INV_sbit[2][4]~9_combout\,
	datad => \shifter|ALT_INV_sbit[1][2]~8_combout\,
	datae => ALT_INV_IR(2),
	dataf => \shifter|ALT_INV_sbit[3][0]~11_combout\,
	datag => ALT_INV_IR(1),
	combout => \Selector27~7_combout\);

-- Location: IOIBUF_X66_Y0_N41
\IO_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => IO_DATA(0),
	o => \IO_DATA[0]~input_o\);

-- Location: LABCELL_X61_Y6_N36
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( IR(0) & ( ((\state.ex_in2~DUPLICATE_q\ & \IO_DATA[0]~input_o\)) # (\state.ex_loadi~q\) ) ) # ( !IR(0) & ( (\state.ex_in2~DUPLICATE_q\ & \IO_DATA[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datac => \ALT_INV_IO_DATA[0]~input_o\,
	datad => \ALT_INV_state.ex_loadi~q\,
	dataf => ALT_INV_IR(0),
	combout => \Selector27~1_combout\);

-- Location: LABCELL_X61_Y6_N33
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( AC(0) & ( (\altsyncram_component|auto_generated|q_a\(0) & ((\state.ex_or~DUPLICATE_q\) # (\state.ex_load~q\))) ) ) # ( !AC(0) & ( (\altsyncram_component|auto_generated|q_a\(0) & (((\state.ex_or~DUPLICATE_q\) # 
-- (\state.ex_load~q\)) # (\state.ex_xor~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_xor~q\,
	datab => \ALT_INV_state.ex_load~q\,
	datac => \ALT_INV_state.ex_or~DUPLICATE_q\,
	datad => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => ALT_INV_AC(0),
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X61_Y6_N0
\Selector27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = ( !\altsyncram_component|auto_generated|q_a\(0) & ( (((AC(0) & ((!\Selector26~2_combout\) # (\state.ex_xor~q\)))) # (\Selector27~0_combout\)) # (\Selector27~1_combout\) ) ) # ( \altsyncram_component|auto_generated|q_a\(0) & ( 
-- (((AC(0) & ((!\Selector26~2_combout\) # (\state.ex_and~q\)))) # (\Selector27~0_combout\)) # (\Selector27~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111011101010111011101110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector27~1_combout\,
	datab => ALT_INV_AC(0),
	datac => \ALT_INV_state.ex_and~q\,
	datad => \ALT_INV_Selector26~2_combout\,
	datae => \altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \ALT_INV_Selector27~0_combout\,
	datag => \ALT_INV_state.ex_xor~q\,
	combout => \Selector27~3_combout\);

-- Location: LABCELL_X61_Y6_N18
\Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = ( \Add1~1_sumout\ & ( \shifter|sbit[3][8]~10_combout\ & ( (((!\WideOr2~0_combout\) # (\Selector27~3_combout\)) # (\Selector26~0_combout\)) # (\Selector27~7_combout\) ) ) ) # ( !\Add1~1_sumout\ & ( \shifter|sbit[3][8]~10_combout\ & 
-- ( ((\Selector27~3_combout\) # (\Selector26~0_combout\)) # (\Selector27~7_combout\) ) ) ) # ( \Add1~1_sumout\ & ( !\shifter|sbit[3][8]~10_combout\ & ( ((!\WideOr2~0_combout\) # (\Selector27~3_combout\)) # (\Selector27~7_combout\) ) ) ) # ( !\Add1~1_sumout\ 
-- & ( !\shifter|sbit[3][8]~10_combout\ & ( (\Selector27~3_combout\) # (\Selector27~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111110101111101111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector27~7_combout\,
	datab => \ALT_INV_Selector26~0_combout\,
	datac => \ALT_INV_Selector27~3_combout\,
	datad => \ALT_INV_WideOr2~0_combout\,
	datae => \ALT_INV_Add1~1_sumout\,
	dataf => \shifter|ALT_INV_sbit[3][8]~10_combout\,
	combout => \Selector27~2_combout\);

-- Location: FF_X61_Y6_N20
\AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector27~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(0));

-- Location: MLABCELL_X59_Y4_N6
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \state~32_combout\ ) # ( !\state~32_combout\ & ( (\io_drive_en~q\ & (((\state.init~q\ & !\state.fetch~q\)) # (\state.decode~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110011000000000111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.init~q\,
	datab => \ALT_INV_state.decode~q\,
	datac => \ALT_INV_state.fetch~q\,
	datad => \ALT_INV_io_drive_en~q\,
	dataf => \ALT_INV_state~32_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X59_Y4_N8
io_drive_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector28~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io_drive_en~q\);

-- Location: LABCELL_X62_Y5_N21
\Selector139~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector139~0_combout\ = ( \state.ex_in~q\ ) # ( !\state.ex_in~q\ & ( (!\state.ex_in2~DUPLICATE_q\ & \IO_READ~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ex_in2~DUPLICATE_q\,
	datad => \ALT_INV_IO_READ~reg0_q\,
	dataf => \ALT_INV_state.ex_in~q\,
	combout => \Selector139~0_combout\);

-- Location: FF_X62_Y5_N22
\IO_READ~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector139~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_READ~reg0_q\);

-- Location: FF_X62_Y7_N16
\state.ex_out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \state.ex_out~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ex_out2~q\);

-- Location: LABCELL_X62_Y7_N6
\Selector140~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector140~0_combout\ = ( \state.ex_out2~q\ & ( \state.ex_out~q\ ) ) # ( !\state.ex_out2~q\ & ( (\IO_WRITE~reg0_q\) # (\state.ex_out~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.ex_out~q\,
	datad => \ALT_INV_IO_WRITE~reg0_q\,
	dataf => \ALT_INV_state.ex_out2~q\,
	combout => \Selector140~0_combout\);

-- Location: FF_X62_Y7_N7
\IO_WRITE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Selector140~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IO_WRITE~reg0_q\);

-- Location: LABCELL_X55_Y2_N48
\IR[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[11]~feeder_combout\ = ( \altsyncram_component|auto_generated|q_a\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \IR[11]~feeder_combout\);

-- Location: LABCELL_X57_Y7_N15
\IR[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[15]~0_combout\ = ( \state.decode~q\ & ( \resetn~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resetn~input_o\,
	dataf => \ALT_INV_state.decode~q\,
	combout => \IR[15]~0_combout\);

-- Location: FF_X55_Y2_N49
\IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IR[11]~feeder_combout\,
	ena => \IR[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(11));

-- Location: FF_X61_Y7_N4
\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \IR[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

-- Location: LABCELL_X55_Y2_N30
\IR[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[13]~feeder_combout\ = ( \altsyncram_component|auto_generated|q_a\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \IR[13]~feeder_combout\);

-- Location: FF_X55_Y2_N31
\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IR[13]~feeder_combout\,
	ena => \IR[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

-- Location: LABCELL_X56_Y2_N12
\IR[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[14]~feeder_combout\ = ( \altsyncram_component|auto_generated|q_a\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \IR[14]~feeder_combout\);

-- Location: FF_X56_Y2_N13
\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IR[14]~feeder_combout\,
	ena => \IR[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

-- Location: LABCELL_X56_Y2_N45
\IR[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \IR[15]~feeder_combout\ = ( \altsyncram_component|auto_generated|q_a\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \IR[15]~feeder_combout\);

-- Location: FF_X56_Y2_N46
\IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \IR[15]~feeder_combout\,
	ena => \IR[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(15));

-- Location: MLABCELL_X8_Y74_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


