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

-- DATE "09/24/2025 13:16:18"

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

ENTITY 	four_state_moore_state_machine IS
    PORT (
	feeding : IN std_logic;
	packing : IN std_logic;
	clock : IN std_logic;
	resetn : IN std_logic;
	y1 : OUT std_logic;
	y0 : OUT std_logic
	);
END four_state_moore_state_machine;

ARCHITECTURE structure OF four_state_moore_state_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_feeding : std_logic;
SIGNAL ww_packing : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y0~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \feeding~input_o\ : std_logic;
SIGNAL \packing~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \state.GREEN~q\ : std_logic;
SIGNAL \next_state.CHECK~0_combout\ : std_logic;
SIGNAL \state.CHECK~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.RED~q\ : std_logic;
SIGNAL \ALT_INV_state.CHECK~q\ : std_logic;
SIGNAL \ALT_INV_state.RED~q\ : std_logic;
SIGNAL \ALT_INV_state.GREEN~q\ : std_logic;
SIGNAL \ALT_INV_feeding~input_o\ : std_logic;
SIGNAL \ALT_INV_packing~input_o\ : std_logic;

BEGIN

ww_feeding <= feeding;
ww_packing <= packing;
ww_clock <= clock;
ww_resetn <= resetn;
y1 <= ww_y1;
y0 <= ww_y0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.CHECK~q\ <= NOT \state.CHECK~q\;
\ALT_INV_state.RED~q\ <= NOT \state.RED~q\;
\ALT_INV_state.GREEN~q\ <= NOT \state.GREEN~q\;
\ALT_INV_feeding~input_o\ <= NOT \feeding~input_o\;
\ALT_INV_packing~input_o\ <= NOT \packing~input_o\;

\y1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.RED~q\,
	devoe => ww_devoe,
	o => \y1~output_o\);

\y0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.RED~q\,
	devoe => ww_devoe,
	o => \y0~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\feeding~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_feeding,
	o => \feeding~input_o\);

\packing~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_packing,
	o => \packing~input_o\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\feeding~input_o\ & (\state.RED~q\ & (!\packing~input_o\ $ (\state.GREEN~q\)))) # (\feeding~input_o\ & (((\packing~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001100000111010000110000011101000011000001110100001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.RED~q\,
	datab => \ALT_INV_feeding~input_o\,
	datac => \ALT_INV_packing~input_o\,
	datad => \ALT_INV_state.GREEN~q\,
	combout => \Selector1~0_combout\);

\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\state.GREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GREEN~q\);

\next_state.CHECK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.CHECK~0_combout\ = (!\packing~input_o\ & \state.GREEN~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_packing~input_o\,
	datab => \ALT_INV_state.GREEN~q\,
	combout => \next_state.CHECK~0_combout\);

\state.CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \next_state.CHECK~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CHECK~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.RED~q\ & (\feeding~input_o\ & (\packing~input_o\))) # (\state.RED~q\ & ((!\state.CHECK~q\) # (!\feeding~input_o\ $ (\packing~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101000011010101110100001101010111010000110101011101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.RED~q\,
	datab => \ALT_INV_feeding~input_o\,
	datac => \ALT_INV_packing~input_o\,
	datad => \ALT_INV_state.CHECK~q\,
	combout => \Selector0~0_combout\);

\state.RED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RED~q\);

ww_y1 <= \y1~output_o\;

ww_y0 <= \y0~output_o\;
END structure;


