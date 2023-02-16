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

-- DATE "02/16/2023 19:46:30"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Module IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sel_out : OUT std_logic_vector(5 DOWNTO 0);
	dig_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Top_Module;

-- Design Ports Information
-- sel_out[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Module IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_sel_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_dig_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sel_out[0]~output_o\ : std_logic;
SIGNAL \sel_out[1]~output_o\ : std_logic;
SIGNAL \sel_out[2]~output_o\ : std_logic;
SIGNAL \sel_out[3]~output_o\ : std_logic;
SIGNAL \sel_out[4]~output_o\ : std_logic;
SIGNAL \sel_out[5]~output_o\ : std_logic;
SIGNAL \dig_out[0]~output_o\ : std_logic;
SIGNAL \dig_out[1]~output_o\ : std_logic;
SIGNAL \dig_out[2]~output_o\ : std_logic;
SIGNAL \dig_out[3]~output_o\ : std_logic;
SIGNAL \dig_out[4]~output_o\ : std_logic;
SIGNAL \dig_out[5]~output_o\ : std_logic;
SIGNAL \dig_out[6]~output_o\ : std_logic;
SIGNAL \dig_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \up_counter|cnt[2]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \up_counter|cnt~2_combout\ : std_logic;
SIGNAL \up_counter|cnt~1_combout\ : std_logic;
SIGNAL \seg7|sel_out~3_combout\ : std_logic;
SIGNAL \seg7|Decoder3~0_combout\ : std_logic;
SIGNAL \seg7|Decoder2~0_combout\ : std_logic;
SIGNAL \seg7|sel_out~0_combout\ : std_logic;
SIGNAL \seg7|Decoder1~0_combout\ : std_logic;
SIGNAL \seg7|sel_out~1_combout\ : std_logic;
SIGNAL \seg7|sel_out~2_combout\ : std_logic;
SIGNAL \seg7|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7|Decoder4~0_combout\ : std_logic;
SIGNAL \up_counter|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7|ALT_INV_Decoder4~0_combout\ : std_logic;
SIGNAL \seg7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seg7|ALT_INV_Decoder2~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
sel_out <= ww_sel_out;
dig_out <= ww_dig_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\seg7|ALT_INV_Decoder4~0_combout\ <= NOT \seg7|Decoder4~0_combout\;
\seg7|ALT_INV_WideOr0~0_combout\ <= NOT \seg7|WideOr0~0_combout\;
\seg7|ALT_INV_Decoder2~0_combout\ <= NOT \seg7|Decoder2~0_combout\;

-- Location: IOOBUF_X24_Y31_N9
\sel_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|Decoder3~0_combout\,
	devoe => ww_devoe,
	o => \sel_out[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\sel_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|ALT_INV_Decoder2~0_combout\,
	devoe => ww_devoe,
	o => \sel_out[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\sel_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out~0_combout\,
	devoe => ww_devoe,
	o => \sel_out[2]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\sel_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|Decoder1~0_combout\,
	devoe => ww_devoe,
	o => \sel_out[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\sel_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out~1_combout\,
	devoe => ww_devoe,
	o => \sel_out[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\sel_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out~2_combout\,
	devoe => ww_devoe,
	o => \sel_out[5]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dig_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[0]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\dig_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\dig_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\dig_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\dig_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\dig_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[5]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\dig_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\dig_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|ALT_INV_Decoder4~0_combout\,
	devoe => ww_devoe,
	o => \dig_out[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y28_N12
\up_counter|cnt[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \up_counter|cnt[2]~0_combout\ = \up_counter|cnt\(2) $ (((\up_counter|cnt\(0) & \up_counter|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(1),
	combout => \up_counter|cnt[2]~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X32_Y28_N13
\up_counter|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \up_counter|cnt[2]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(2));

-- Location: LCCOMB_X32_Y28_N18
\up_counter|cnt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \up_counter|cnt~2_combout\ = (\up_counter|cnt\(1) & (\up_counter|cnt\(3) $ (((\up_counter|cnt\(0) & \up_counter|cnt\(2)))))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(3) & ((\up_counter|cnt\(0)) # (\up_counter|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(2),
	combout => \up_counter|cnt~2_combout\);

-- Location: FF_X32_Y28_N19
\up_counter|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \up_counter|cnt~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(3));

-- Location: LCCOMB_X32_Y28_N16
\up_counter|cnt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \up_counter|cnt~1_combout\ = (!\up_counter|cnt\(0) & ((\up_counter|cnt\(1)) # ((\up_counter|cnt\(2)) # (!\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(2),
	combout => \up_counter|cnt~1_combout\);

-- Location: FF_X32_Y28_N17
\up_counter|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \up_counter|cnt~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(0));

-- Location: LCCOMB_X32_Y28_N10
\seg7|sel_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|sel_out~3_combout\ = \up_counter|cnt\(1) $ (\up_counter|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(0),
	combout => \seg7|sel_out~3_combout\);

-- Location: FF_X32_Y28_N11
\up_counter|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg7|sel_out~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(1));

-- Location: LCCOMB_X29_Y30_N28
\seg7|Decoder3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|Decoder3~0_combout\ = (\up_counter|cnt\(1)) # (\up_counter|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(2),
	combout => \seg7|Decoder3~0_combout\);

-- Location: LCCOMB_X29_Y30_N30
\seg7|Decoder2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|Decoder2~0_combout\ = (!\up_counter|cnt\(2) & !\up_counter|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(0),
	combout => \seg7|Decoder2~0_combout\);

-- Location: LCCOMB_X29_Y30_N8
\seg7|sel_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|sel_out~0_combout\ = (\up_counter|cnt\(2)) # (\up_counter|cnt\(1) $ (\up_counter|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(0),
	combout => \seg7|sel_out~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\seg7|Decoder1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|Decoder1~0_combout\ = (\up_counter|cnt\(1)) # (\up_counter|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(0),
	combout => \seg7|Decoder1~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\seg7|sel_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|sel_out~1_combout\ = (\up_counter|cnt\(1)) # (\up_counter|cnt\(2) $ (\up_counter|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datac => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(0),
	combout => \seg7|sel_out~1_combout\);

-- Location: LCCOMB_X29_Y30_N26
\seg7|sel_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|sel_out~2_combout\ = (\up_counter|cnt\(0)) # (\up_counter|cnt\(2) $ (\up_counter|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(0),
	combout => \seg7|sel_out~2_combout\);

-- Location: LCCOMB_X32_Y28_N24
\seg7|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr6~0_combout\ = (\up_counter|cnt\(2) & (((\up_counter|cnt\(3))) # (!\up_counter|cnt\(0)))) # (!\up_counter|cnt\(2) & ((\up_counter|cnt\(1) & ((\up_counter|cnt\(3)))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(0) & !\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y28_N26
\seg7|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr5~0_combout\ = (\up_counter|cnt\(2) & ((\up_counter|cnt\(3)) # (\up_counter|cnt\(0) $ (\up_counter|cnt\(1))))) # (!\up_counter|cnt\(2) & (((\up_counter|cnt\(1) & \up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr5~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\seg7|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr4~0_combout\ = (\up_counter|cnt\(2) & (((\up_counter|cnt\(3))))) # (!\up_counter|cnt\(2) & (\up_counter|cnt\(1) & ((\up_counter|cnt\(3)) # (!\up_counter|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr4~0_combout\);

-- Location: LCCOMB_X32_Y28_N14
\seg7|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr3~0_combout\ = (\up_counter|cnt\(1) & ((\up_counter|cnt\(3)) # ((\up_counter|cnt\(2) & \up_counter|cnt\(0))))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(2) $ (((\up_counter|cnt\(0) & !\up_counter|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr3~0_combout\);

-- Location: LCCOMB_X32_Y28_N8
\seg7|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr2~0_combout\ = (\up_counter|cnt\(0)) # ((\up_counter|cnt\(1) & ((\up_counter|cnt\(3)))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y28_N30
\seg7|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr1~0_combout\ = (\up_counter|cnt\(2) & ((\up_counter|cnt\(3)) # ((\up_counter|cnt\(0) & \up_counter|cnt\(1))))) # (!\up_counter|cnt\(2) & ((\up_counter|cnt\(1)) # ((\up_counter|cnt\(0) & !\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr1~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\seg7|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|WideOr0~0_combout\ = (\up_counter|cnt\(2) & (!\up_counter|cnt\(3) & ((!\up_counter|cnt\(1)) # (!\up_counter|cnt\(0))))) # (!\up_counter|cnt\(2) & ((\up_counter|cnt\(1) $ (\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y28_N6
\seg7|Decoder4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seg7|Decoder4~0_combout\ = (!\up_counter|cnt\(2) & (!\up_counter|cnt\(0) & (\up_counter|cnt\(1) & \up_counter|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(3),
	combout => \seg7|Decoder4~0_combout\);

ww_sel_out(0) <= \sel_out[0]~output_o\;

ww_sel_out(1) <= \sel_out[1]~output_o\;

ww_sel_out(2) <= \sel_out[2]~output_o\;

ww_sel_out(3) <= \sel_out[3]~output_o\;

ww_sel_out(4) <= \sel_out[4]~output_o\;

ww_sel_out(5) <= \sel_out[5]~output_o\;

ww_dig_out(0) <= \dig_out[0]~output_o\;

ww_dig_out(1) <= \dig_out[1]~output_o\;

ww_dig_out(2) <= \dig_out[2]~output_o\;

ww_dig_out(3) <= \dig_out[3]~output_o\;

ww_dig_out(4) <= \dig_out[4]~output_o\;

ww_dig_out(5) <= \dig_out[5]~output_o\;

ww_dig_out(6) <= \dig_out[6]~output_o\;

ww_dig_out(7) <= \dig_out[7]~output_o\;
END structure;


