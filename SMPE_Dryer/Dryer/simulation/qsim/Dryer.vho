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

-- DATE "10/29/2025 13:22:06"

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

ENTITY 	Dryer IS
    PORT (
	RESETN : IN std_logic;
	CLOCK : IN std_logic;
	TOOHOT : IN std_logic;
	DAMP : IN std_logic;
	HEAT : OUT std_logic;
	VENT : OUT std_logic
	);
END Dryer;

ARCHITECTURE structure OF Dryer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESETN : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_TOOHOT : std_logic;
SIGNAL ww_DAMP : std_logic;
SIGNAL ww_HEAT : std_logic;
SIGNAL ww_VENT : std_logic;
SIGNAL \HEAT~output_o\ : std_logic;
SIGNAL \VENT~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \TOOHOT~input_o\ : std_logic;
SIGNAL \DAMP~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \RESETN~input_o\ : std_logic;
SIGNAL \STATE.dryHeat~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \STATE.dryVent~q\ : std_logic;
SIGNAL \HEAT~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \STATE.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \STATE.cool~q\ : std_logic;
SIGNAL \VENT~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.dryHeat~q\ : std_logic;
SIGNAL \ALT_INV_STATE.dryVent~q\ : std_logic;
SIGNAL \ALT_INV_STATE.cool~q\ : std_logic;
SIGNAL \ALT_INV_STATE.idle~q\ : std_logic;
SIGNAL \ALT_INV_TOOHOT~input_o\ : std_logic;
SIGNAL \ALT_INV_DAMP~input_o\ : std_logic;

BEGIN

ww_RESETN <= RESETN;
ww_CLOCK <= CLOCK;
ww_TOOHOT <= TOOHOT;
ww_DAMP <= DAMP;
HEAT <= ww_HEAT;
VENT <= ww_VENT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_STATE.dryHeat~q\ <= NOT \STATE.dryHeat~q\;
\ALT_INV_STATE.dryVent~q\ <= NOT \STATE.dryVent~q\;
\ALT_INV_STATE.cool~q\ <= NOT \STATE.cool~q\;
\ALT_INV_STATE.idle~q\ <= NOT \STATE.idle~q\;
\ALT_INV_TOOHOT~input_o\ <= NOT \TOOHOT~input_o\;
\ALT_INV_DAMP~input_o\ <= NOT \DAMP~input_o\;

\HEAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEAT~0_combout\,
	devoe => ww_devoe,
	o => \HEAT~output_o\);

\VENT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VENT~0_combout\,
	devoe => ww_devoe,
	o => \VENT~output_o\);

\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

\TOOHOT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TOOHOT,
	o => \TOOHOT~input_o\);

\DAMP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAMP,
	o => \DAMP~input_o\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\STATE.dryHeat~q\ & (!\TOOHOT~input_o\ & \DAMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.dryHeat~q\,
	datab => \ALT_INV_TOOHOT~input_o\,
	datac => \ALT_INV_DAMP~input_o\,
	combout => \Selector2~0_combout\);

\RESETN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETN,
	o => \RESETN~input_o\);

\STATE.dryHeat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector2~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.dryHeat~q\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\STATE.dryHeat~q\ & (!\TOOHOT~input_o\ & \DAMP~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.dryHeat~q\,
	datab => \ALT_INV_TOOHOT~input_o\,
	datac => \ALT_INV_DAMP~input_o\,
	combout => \Selector3~0_combout\);

\STATE.dryVent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector3~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.dryVent~q\);

\HEAT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEAT~0_combout\ = (\STATE.dryVent~q\) # (\STATE.dryHeat~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.dryHeat~q\,
	datab => \ALT_INV_STATE.dryVent~q\,
	combout => \HEAT~0_combout\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (((!\STATE.cool~q\ & \STATE.idle~q\)) # (\DAMP~input_o\)) # (\TOOHOT~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111001111111011111100111111101111110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.cool~q\,
	datab => \ALT_INV_TOOHOT~input_o\,
	datac => \ALT_INV_DAMP~input_o\,
	datad => \ALT_INV_STATE.idle~q\,
	combout => \Selector0~0_combout\);

\STATE.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector0~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.idle~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \DAMP~input_o\ & ( \STATE.idle~q\ & ( (\TOOHOT~input_o\ & (((\STATE.cool~q\) # (\STATE.dryVent~q\)) # (\STATE.dryHeat~q\))) ) ) ) # ( !\DAMP~input_o\ & ( \STATE.idle~q\ & ( (((\STATE.cool~q\ & \TOOHOT~input_o\)) # 
-- (\STATE.dryVent~q\)) # (\STATE.dryHeat~q\) ) ) ) # ( \DAMP~input_o\ & ( !\STATE.idle~q\ & ( \TOOHOT~input_o\ ) ) ) # ( !\DAMP~input_o\ & ( !\STATE.idle~q\ & ( ((\TOOHOT~input_o\) # (\STATE.dryVent~q\)) # (\STATE.dryHeat~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111000000001111111101110111011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.dryHeat~q\,
	datab => \ALT_INV_STATE.dryVent~q\,
	datac => \ALT_INV_STATE.cool~q\,
	datad => \ALT_INV_TOOHOT~input_o\,
	datae => \ALT_INV_DAMP~input_o\,
	dataf => \ALT_INV_STATE.idle~q\,
	combout => \Selector1~0_combout\);

\STATE.cool\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Selector1~0_combout\,
	clrn => \RESETN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.cool~q\);

\VENT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VENT~0_combout\ = (\STATE.cool~q\) # (\STATE.dryVent~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.dryVent~q\,
	datab => \ALT_INV_STATE.cool~q\,
	combout => \VENT~0_combout\);

ww_HEAT <= \HEAT~output_o\;

ww_VENT <= \VENT~output_o\;
END structure;


