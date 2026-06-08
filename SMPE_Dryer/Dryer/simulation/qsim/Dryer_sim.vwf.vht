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
-- Generated on "10/29/2025 13:22:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Dryer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Dryer_vhd_vec_tst IS
END Dryer_vhd_vec_tst;
ARCHITECTURE Dryer_arch OF Dryer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DAMP : STD_LOGIC;
SIGNAL HEAT : STD_LOGIC;
SIGNAL RESETN : STD_LOGIC;
SIGNAL TOOHOT : STD_LOGIC;
SIGNAL VENT : STD_LOGIC;
COMPONENT Dryer
	PORT (
	CLOCK : IN STD_LOGIC;
	DAMP : IN STD_LOGIC;
	HEAT : OUT STD_LOGIC;
	RESETN : IN STD_LOGIC;
	TOOHOT : IN STD_LOGIC;
	VENT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Dryer
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	DAMP => DAMP,
	HEAT => HEAT,
	RESETN => RESETN,
	TOOHOT => TOOHOT,
	VENT => VENT
	);

-- RESETN
t_prcs_RESETN: PROCESS
BEGIN
	RESETN <= '0';
	WAIT FOR 1000000 ps;
	RESETN <= '1';
	WAIT FOR 26000000 ps;
	RESETN <= '0';
	WAIT FOR 500000 ps;
	RESETN <= '1';
	WAIT FOR 12000000 ps;
	RESETN <= '0';
	WAIT FOR 500000 ps;
	RESETN <= '1';
	WAIT FOR 31000000 ps;
	RESETN <= '0';
	WAIT FOR 500000 ps;
	RESETN <= '1';
WAIT;
END PROCESS t_prcs_RESETN;

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 250000 ps;
	CLOCK <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;

-- TOOHOT
t_prcs_TOOHOT: PROCESS
BEGIN
	TOOHOT <= '0';
	WAIT FOR 5500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1500000 ps;
	TOOHOT <= '0';
	WAIT FOR 11500000 ps;
	TOOHOT <= '1';
	WAIT FOR 3000000 ps;
	TOOHOT <= '0';
	WAIT FOR 7000000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 12500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 1500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1500000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 2500000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 4500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 2500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 2000000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 1500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 1000000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 2000000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 1500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 1000000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1500000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
	WAIT FOR 1000000 ps;
	TOOHOT <= '0';
	WAIT FOR 500000 ps;
	TOOHOT <= '1';
WAIT;
END PROCESS t_prcs_TOOHOT;

-- DAMP
t_prcs_DAMP: PROCESS
BEGIN
	DAMP <= '0';
	WAIT FOR 2500000 ps;
	DAMP <= '1';
	WAIT FOR 7500000 ps;
	DAMP <= '0';
	WAIT FOR 5000000 ps;
	DAMP <= '1';
	WAIT FOR 4500000 ps;
	DAMP <= '0';
	WAIT FOR 5500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 5500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 2000000 ps;
	DAMP <= '1';
	WAIT FOR 1000000 ps;
	DAMP <= '0';
	WAIT FOR 2000000 ps;
	DAMP <= '1';
	WAIT FOR 1500000 ps;
	DAMP <= '0';
	WAIT FOR 3000000 ps;
	DAMP <= '1';
	WAIT FOR 1500000 ps;
	DAMP <= '0';
	WAIT FOR 1500000 ps;
	DAMP <= '1';
	WAIT FOR 2000000 ps;
	DAMP <= '0';
	WAIT FOR 3000000 ps;
	DAMP <= '1';
	WAIT FOR 1500000 ps;
	DAMP <= '0';
	WAIT FOR 2500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 2500000 ps;
	DAMP <= '1';
	WAIT FOR 3000000 ps;
	DAMP <= '0';
	WAIT FOR 1000000 ps;
	DAMP <= '1';
	WAIT FOR 3000000 ps;
	DAMP <= '0';
	WAIT FOR 2000000 ps;
	DAMP <= '1';
	WAIT FOR 1000000 ps;
	DAMP <= '0';
	WAIT FOR 1500000 ps;
	DAMP <= '1';
	WAIT FOR 1500000 ps;
	DAMP <= '0';
	WAIT FOR 3500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 1000000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 1000000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 1500000 ps;
	DAMP <= '1';
	WAIT FOR 1000000 ps;
	DAMP <= '0';
	WAIT FOR 3000000 ps;
	DAMP <= '1';
	WAIT FOR 2000000 ps;
	DAMP <= '0';
	WAIT FOR 500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 2500000 ps;
	DAMP <= '1';
	WAIT FOR 1000000 ps;
	DAMP <= '0';
	WAIT FOR 1000000 ps;
	DAMP <= '1';
	WAIT FOR 3500000 ps;
	DAMP <= '0';
	WAIT FOR 500000 ps;
	DAMP <= '1';
	WAIT FOR 2500000 ps;
	DAMP <= '0';
	WAIT FOR 500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
	WAIT FOR 500000 ps;
	DAMP <= '1';
	WAIT FOR 500000 ps;
	DAMP <= '0';
WAIT;
END PROCESS t_prcs_DAMP;
END Dryer_arch;
