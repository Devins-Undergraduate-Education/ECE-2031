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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/24/2025 13:16:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          four_state_moore_state_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY four_state_moore_state_machine_vhd_vec_tst IS
END four_state_moore_state_machine_vhd_vec_tst;
ARCHITECTURE four_state_moore_state_machine_arch OF four_state_moore_state_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL feeding : STD_LOGIC;
SIGNAL packing : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL y0 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
COMPONENT four_state_moore_state_machine
	PORT (
	clock : IN STD_LOGIC;
	feeding : IN STD_LOGIC;
	packing : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	y0 : OUT STD_LOGIC;
	y1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : four_state_moore_state_machine
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	feeding => feeding,
	packing => packing,
	resetn => resetn,
	y0 => y0,
	y1 => y1
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
	WAIT FOR 540000 ps;
	resetn <= '0';
	WAIT FOR 40000 ps;
	resetn <= '1';
	WAIT FOR 240000 ps;
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- feeding
t_prcs_feeding: PROCESS
BEGIN
	feeding <= '0';
	WAIT FOR 60000 ps;
	feeding <= '1';
	WAIT FOR 560000 ps;
	feeding <= '0';
	WAIT FOR 80000 ps;
	feeding <= '1';
	WAIT FOR 200000 ps;
	feeding <= '0';
	WAIT FOR 80000 ps;
	feeding <= '1';
WAIT;
END PROCESS t_prcs_feeding;

-- packing
t_prcs_packing: PROCESS
BEGIN
	packing <= '0';
	WAIT FOR 160000 ps;
	packing <= '1';
	WAIT FOR 200000 ps;
	packing <= '0';
	WAIT FOR 160000 ps;
	packing <= '1';
	WAIT FOR 200000 ps;
	packing <= '0';
	WAIT FOR 160000 ps;
	packing <= '1';
	WAIT FOR 80000 ps;
	packing <= '0';
WAIT;
END PROCESS t_prcs_packing;
END four_state_moore_state_machine_arch;
