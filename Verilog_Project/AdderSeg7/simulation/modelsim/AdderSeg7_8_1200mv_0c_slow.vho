-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/24/2023 21:19:49"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AdderSeg7 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	key_col : IN std_logic_vector(3 DOWNTO 0);
	key_row : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END AdderSeg7;

-- Design Ports Information
-- clk	=>  Location: PIN_151,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_row[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_row[1]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_row[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_row[3]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_col[0]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_col[1]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_col[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_col[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AdderSeg7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_key_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \key_row[0]~output_o\ : std_logic;
SIGNAL \key_row[1]~output_o\ : std_logic;
SIGNAL \key_row[2]~output_o\ : std_logic;
SIGNAL \key_row[3]~output_o\ : std_logic;
SIGNAL \key_col[0]~input_o\ : std_logic;
SIGNAL \key_col[1]~input_o\ : std_logic;
SIGNAL \key_col[2]~input_o\ : std_logic;
SIGNAL \key_col[3]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_key_col <= key_col;
key_row <= ww_key_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X43_Y0_N23
\key_row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_col[0]~input_o\,
	devoe => ww_devoe,
	o => \key_row[0]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\key_row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_col[1]~input_o\,
	devoe => ww_devoe,
	o => \key_row[1]~output_o\);

-- Location: IOOBUF_X67_Y14_N23
\key_row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_col[2]~input_o\,
	devoe => ww_devoe,
	o => \key_row[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\key_row[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_col[3]~input_o\,
	devoe => ww_devoe,
	o => \key_row[3]~output_o\);

-- Location: IOIBUF_X48_Y0_N22
\key_col[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_col(0),
	o => \key_col[0]~input_o\);

-- Location: IOIBUF_X56_Y43_N15
\key_col[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_col(1),
	o => \key_col[1]~input_o\);

-- Location: IOIBUF_X67_Y5_N8
\key_col[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_col(2),
	o => \key_col[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\key_col[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_col(3),
	o => \key_col[3]~input_o\);

-- Location: IOIBUF_X67_Y22_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X67_Y22_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_key_row(0) <= \key_row[0]~output_o\;

ww_key_row(1) <= \key_row[1]~output_o\;

ww_key_row(2) <= \key_row[2]~output_o\;

ww_key_row(3) <= \key_row[3]~output_o\;
END structure;


