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

-- DATE "02/26/2023 12:01:10"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Seg4bit_Counter IS
    PORT (
	clk_in : IN std_logic;
	rst : IN std_logic;
	dig_out : BUFFER std_logic_vector(6 DOWNTO 0);
	sel_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Seg4bit_Counter;

-- Design Ports Information
-- dig_out[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[4]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[5]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[6]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Seg4bit_Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dig_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_devider|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig_out[0]~output_o\ : std_logic;
SIGNAL \dig_out[1]~output_o\ : std_logic;
SIGNAL \dig_out[2]~output_o\ : std_logic;
SIGNAL \dig_out[3]~output_o\ : std_logic;
SIGNAL \dig_out[4]~output_o\ : std_logic;
SIGNAL \dig_out[5]~output_o\ : std_logic;
SIGNAL \dig_out[6]~output_o\ : std_logic;
SIGNAL \sel_out[0]~output_o\ : std_logic;
SIGNAL \sel_out[1]~output_o\ : std_logic;
SIGNAL \sel_out[2]~output_o\ : std_logic;
SIGNAL \sel_out[3]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq_devider|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \freq_devider|Add0~1\ : std_logic;
SIGNAL \freq_devider|Add0~2_combout\ : std_logic;
SIGNAL \freq_devider|Add0~3\ : std_logic;
SIGNAL \freq_devider|Add0~4_combout\ : std_logic;
SIGNAL \freq_devider|Add0~5\ : std_logic;
SIGNAL \freq_devider|Add0~6_combout\ : std_logic;
SIGNAL \freq_devider|Add0~7\ : std_logic;
SIGNAL \freq_devider|Add0~8_combout\ : std_logic;
SIGNAL \freq_devider|Add0~9\ : std_logic;
SIGNAL \freq_devider|Add0~10_combout\ : std_logic;
SIGNAL \freq_devider|Add0~11\ : std_logic;
SIGNAL \freq_devider|Add0~12_combout\ : std_logic;
SIGNAL \freq_devider|Add0~13\ : std_logic;
SIGNAL \freq_devider|Add0~14_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~3_combout\ : std_logic;
SIGNAL \freq_devider|Add0~15\ : std_logic;
SIGNAL \freq_devider|Add0~16_combout\ : std_logic;
SIGNAL \freq_devider|Add0~17\ : std_logic;
SIGNAL \freq_devider|Add0~18_combout\ : std_logic;
SIGNAL \freq_devider|Add0~19\ : std_logic;
SIGNAL \freq_devider|Add0~20_combout\ : std_logic;
SIGNAL \freq_devider|Add0~21\ : std_logic;
SIGNAL \freq_devider|Add0~22_combout\ : std_logic;
SIGNAL \freq_devider|Add0~23\ : std_logic;
SIGNAL \freq_devider|Add0~24_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~2_combout\ : std_logic;
SIGNAL \freq_devider|Add0~25\ : std_logic;
SIGNAL \freq_devider|Add0~26_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~1_combout\ : std_logic;
SIGNAL \freq_devider|Add0~27\ : std_logic;
SIGNAL \freq_devider|Add0~28_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~0_combout\ : std_logic;
SIGNAL \freq_devider|Add0~29\ : std_logic;
SIGNAL \freq_devider|Add0~30_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~5_combout\ : std_logic;
SIGNAL \freq_devider|Add0~31\ : std_logic;
SIGNAL \freq_devider|Add0~32_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~5_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~6_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~7_combout\ : std_logic;
SIGNAL \freq_devider|Add0~33\ : std_logic;
SIGNAL \freq_devider|Add0~34_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~4_combout\ : std_logic;
SIGNAL \freq_devider|Add0~35\ : std_logic;
SIGNAL \freq_devider|Add0~36_combout\ : std_logic;
SIGNAL \freq_devider|Add0~37\ : std_logic;
SIGNAL \freq_devider|Add0~38_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~9_combout\ : std_logic;
SIGNAL \freq_devider|Add0~39\ : std_logic;
SIGNAL \freq_devider|Add0~40_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~8_combout\ : std_logic;
SIGNAL \freq_devider|Add0~41\ : std_logic;
SIGNAL \freq_devider|Add0~42_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~7_combout\ : std_logic;
SIGNAL \freq_devider|Add0~43\ : std_logic;
SIGNAL \freq_devider|Add0~44_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~6_combout\ : std_logic;
SIGNAL \freq_devider|Add0~45\ : std_logic;
SIGNAL \freq_devider|Add0~47\ : std_logic;
SIGNAL \freq_devider|Add0~48_combout\ : std_logic;
SIGNAL \freq_devider|Add0~49\ : std_logic;
SIGNAL \freq_devider|Add0~50_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~10_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~2_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~3_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~1_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~0_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~4_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~8_combout\ : std_logic;
SIGNAL \freq_devider|Add0~46_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~11_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~0_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~1_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~2_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~3_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~4_combout\ : std_logic;
SIGNAL \freq_devider|clk_out~q\ : std_logic;
SIGNAL \freq_devider|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \up_counter|cnt[0]~3_combout\ : std_logic;
SIGNAL \up_counter|cnt~2_combout\ : std_logic;
SIGNAL \up_counter|cnt~0_combout\ : std_logic;
SIGNAL \up_counter|cnt[2]~1_combout\ : std_logic;
SIGNAL \seg7|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7|sel_out[1]~1_combout\ : std_logic;
SIGNAL \seg7|sel_out[2]~feeder_combout\ : std_logic;
SIGNAL \seg7|sel_out[3]~feeder_combout\ : std_logic;
SIGNAL \seg7|sel_out[0]~0_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \up_counter|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7|sel_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7|dig_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \seg7|ALT_INV_sel_out\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
ww_rst <= rst;
dig_out <= ww_dig_out;
sel_out <= ww_sel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freq_devider|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_devider|clk_out~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\seg7|ALT_INV_sel_out\(0) <= NOT \seg7|sel_out\(0);

-- Location: IOOBUF_X0_Y12_N16
\dig_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(0),
	devoe => ww_devoe,
	o => \dig_out[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\dig_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(1),
	devoe => ww_devoe,
	o => \dig_out[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dig_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(2),
	devoe => ww_devoe,
	o => \dig_out[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\dig_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(3),
	devoe => ww_devoe,
	o => \dig_out[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\dig_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(4),
	devoe => ww_devoe,
	o => \dig_out[4]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\dig_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(5),
	devoe => ww_devoe,
	o => \dig_out[5]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\dig_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|dig_out\(6),
	devoe => ww_devoe,
	o => \dig_out[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\sel_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|ALT_INV_sel_out\(0),
	devoe => ww_devoe,
	o => \sel_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\sel_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out\(1),
	devoe => ww_devoe,
	o => \sel_out[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sel_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out\(2),
	devoe => ww_devoe,
	o => \sel_out[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\sel_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg7|sel_out\(3),
	devoe => ww_devoe,
	o => \sel_out[3]~output_o\);

-- Location: IOIBUF_X67_Y22_N22
\clk_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G8
\clk_in~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y23_N6
\freq_devider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~0_combout\ = \freq_devider|clk_cnt\(0) $ (VCC)
-- \freq_devider|Add0~1\ = CARRY(\freq_devider|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(0),
	datad => VCC,
	combout => \freq_devider|Add0~0_combout\,
	cout => \freq_devider|Add0~1\);

-- Location: IOIBUF_X67_Y18_N15
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X49_Y23_N7
\freq_devider|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(0));

-- Location: LCCOMB_X49_Y23_N8
\freq_devider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~2_combout\ = (\freq_devider|clk_cnt\(1) & (!\freq_devider|Add0~1\)) # (!\freq_devider|clk_cnt\(1) & ((\freq_devider|Add0~1\) # (GND)))
-- \freq_devider|Add0~3\ = CARRY((!\freq_devider|Add0~1\) # (!\freq_devider|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(1),
	datad => VCC,
	cin => \freq_devider|Add0~1\,
	combout => \freq_devider|Add0~2_combout\,
	cout => \freq_devider|Add0~3\);

-- Location: FF_X49_Y23_N9
\freq_devider|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(1));

-- Location: LCCOMB_X49_Y23_N10
\freq_devider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~4_combout\ = (\freq_devider|clk_cnt\(2) & (\freq_devider|Add0~3\ $ (GND))) # (!\freq_devider|clk_cnt\(2) & (!\freq_devider|Add0~3\ & VCC))
-- \freq_devider|Add0~5\ = CARRY((\freq_devider|clk_cnt\(2) & !\freq_devider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(2),
	datad => VCC,
	cin => \freq_devider|Add0~3\,
	combout => \freq_devider|Add0~4_combout\,
	cout => \freq_devider|Add0~5\);

-- Location: FF_X49_Y23_N11
\freq_devider|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(2));

-- Location: LCCOMB_X49_Y23_N12
\freq_devider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~6_combout\ = (\freq_devider|clk_cnt\(3) & (!\freq_devider|Add0~5\)) # (!\freq_devider|clk_cnt\(3) & ((\freq_devider|Add0~5\) # (GND)))
-- \freq_devider|Add0~7\ = CARRY((!\freq_devider|Add0~5\) # (!\freq_devider|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(3),
	datad => VCC,
	cin => \freq_devider|Add0~5\,
	combout => \freq_devider|Add0~6_combout\,
	cout => \freq_devider|Add0~7\);

-- Location: FF_X49_Y23_N13
\freq_devider|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(3));

-- Location: LCCOMB_X49_Y23_N14
\freq_devider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~8_combout\ = (\freq_devider|clk_cnt\(4) & (\freq_devider|Add0~7\ $ (GND))) # (!\freq_devider|clk_cnt\(4) & (!\freq_devider|Add0~7\ & VCC))
-- \freq_devider|Add0~9\ = CARRY((\freq_devider|clk_cnt\(4) & !\freq_devider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(4),
	datad => VCC,
	cin => \freq_devider|Add0~7\,
	combout => \freq_devider|Add0~8_combout\,
	cout => \freq_devider|Add0~9\);

-- Location: FF_X49_Y23_N15
\freq_devider|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(4));

-- Location: LCCOMB_X49_Y23_N16
\freq_devider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~10_combout\ = (\freq_devider|clk_cnt\(5) & (!\freq_devider|Add0~9\)) # (!\freq_devider|clk_cnt\(5) & ((\freq_devider|Add0~9\) # (GND)))
-- \freq_devider|Add0~11\ = CARRY((!\freq_devider|Add0~9\) # (!\freq_devider|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(5),
	datad => VCC,
	cin => \freq_devider|Add0~9\,
	combout => \freq_devider|Add0~10_combout\,
	cout => \freq_devider|Add0~11\);

-- Location: FF_X49_Y23_N17
\freq_devider|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(5));

-- Location: LCCOMB_X49_Y23_N18
\freq_devider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~12_combout\ = (\freq_devider|clk_cnt\(6) & (\freq_devider|Add0~11\ $ (GND))) # (!\freq_devider|clk_cnt\(6) & (!\freq_devider|Add0~11\ & VCC))
-- \freq_devider|Add0~13\ = CARRY((\freq_devider|clk_cnt\(6) & !\freq_devider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(6),
	datad => VCC,
	cin => \freq_devider|Add0~11\,
	combout => \freq_devider|Add0~12_combout\,
	cout => \freq_devider|Add0~13\);

-- Location: FF_X49_Y23_N19
\freq_devider|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(6));

-- Location: LCCOMB_X49_Y23_N20
\freq_devider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~14_combout\ = (\freq_devider|clk_cnt\(7) & (!\freq_devider|Add0~13\)) # (!\freq_devider|clk_cnt\(7) & ((\freq_devider|Add0~13\) # (GND)))
-- \freq_devider|Add0~15\ = CARRY((!\freq_devider|Add0~13\) # (!\freq_devider|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(7),
	datad => VCC,
	cin => \freq_devider|Add0~13\,
	combout => \freq_devider|Add0~14_combout\,
	cout => \freq_devider|Add0~15\);

-- Location: LCCOMB_X49_Y23_N0
\freq_devider|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~3_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~14_combout\,
	combout => \freq_devider|clk_cnt~3_combout\);

-- Location: FF_X49_Y23_N1
\freq_devider|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(7));

-- Location: LCCOMB_X49_Y23_N22
\freq_devider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~16_combout\ = (\freq_devider|clk_cnt\(8) & (\freq_devider|Add0~15\ $ (GND))) # (!\freq_devider|clk_cnt\(8) & (!\freq_devider|Add0~15\ & VCC))
-- \freq_devider|Add0~17\ = CARRY((\freq_devider|clk_cnt\(8) & !\freq_devider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(8),
	datad => VCC,
	cin => \freq_devider|Add0~15\,
	combout => \freq_devider|Add0~16_combout\,
	cout => \freq_devider|Add0~17\);

-- Location: FF_X49_Y23_N23
\freq_devider|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(8));

-- Location: LCCOMB_X49_Y23_N24
\freq_devider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~18_combout\ = (\freq_devider|clk_cnt\(9) & (!\freq_devider|Add0~17\)) # (!\freq_devider|clk_cnt\(9) & ((\freq_devider|Add0~17\) # (GND)))
-- \freq_devider|Add0~19\ = CARRY((!\freq_devider|Add0~17\) # (!\freq_devider|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(9),
	datad => VCC,
	cin => \freq_devider|Add0~17\,
	combout => \freq_devider|Add0~18_combout\,
	cout => \freq_devider|Add0~19\);

-- Location: FF_X49_Y23_N25
\freq_devider|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(9));

-- Location: LCCOMB_X49_Y23_N26
\freq_devider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~20_combout\ = (\freq_devider|clk_cnt\(10) & (\freq_devider|Add0~19\ $ (GND))) # (!\freq_devider|clk_cnt\(10) & (!\freq_devider|Add0~19\ & VCC))
-- \freq_devider|Add0~21\ = CARRY((\freq_devider|clk_cnt\(10) & !\freq_devider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(10),
	datad => VCC,
	cin => \freq_devider|Add0~19\,
	combout => \freq_devider|Add0~20_combout\,
	cout => \freq_devider|Add0~21\);

-- Location: FF_X49_Y23_N27
\freq_devider|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(10));

-- Location: LCCOMB_X49_Y23_N28
\freq_devider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~22_combout\ = (\freq_devider|clk_cnt\(11) & (!\freq_devider|Add0~21\)) # (!\freq_devider|clk_cnt\(11) & ((\freq_devider|Add0~21\) # (GND)))
-- \freq_devider|Add0~23\ = CARRY((!\freq_devider|Add0~21\) # (!\freq_devider|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(11),
	datad => VCC,
	cin => \freq_devider|Add0~21\,
	combout => \freq_devider|Add0~22_combout\,
	cout => \freq_devider|Add0~23\);

-- Location: FF_X49_Y23_N29
\freq_devider|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(11));

-- Location: LCCOMB_X49_Y23_N30
\freq_devider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~24_combout\ = (\freq_devider|clk_cnt\(12) & (\freq_devider|Add0~23\ $ (GND))) # (!\freq_devider|clk_cnt\(12) & (!\freq_devider|Add0~23\ & VCC))
-- \freq_devider|Add0~25\ = CARRY((\freq_devider|clk_cnt\(12) & !\freq_devider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(12),
	datad => VCC,
	cin => \freq_devider|Add0~23\,
	combout => \freq_devider|Add0~24_combout\,
	cout => \freq_devider|Add0~25\);

-- Location: LCCOMB_X48_Y22_N18
\freq_devider|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~2_combout\ = (\freq_devider|Add0~24_combout\ & !\freq_devider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add0~24_combout\,
	datad => \freq_devider|Equal0~8_combout\,
	combout => \freq_devider|clk_cnt~2_combout\);

-- Location: FF_X48_Y22_N19
\freq_devider|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(12));

-- Location: LCCOMB_X49_Y22_N0
\freq_devider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~26_combout\ = (\freq_devider|clk_cnt\(13) & (!\freq_devider|Add0~25\)) # (!\freq_devider|clk_cnt\(13) & ((\freq_devider|Add0~25\) # (GND)))
-- \freq_devider|Add0~27\ = CARRY((!\freq_devider|Add0~25\) # (!\freq_devider|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(13),
	datad => VCC,
	cin => \freq_devider|Add0~25\,
	combout => \freq_devider|Add0~26_combout\,
	cout => \freq_devider|Add0~27\);

-- Location: LCCOMB_X48_Y22_N14
\freq_devider|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~1_combout\ = (\freq_devider|Add0~26_combout\ & !\freq_devider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add0~26_combout\,
	datad => \freq_devider|Equal0~8_combout\,
	combout => \freq_devider|clk_cnt~1_combout\);

-- Location: FF_X48_Y22_N15
\freq_devider|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(13));

-- Location: LCCOMB_X49_Y22_N2
\freq_devider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~28_combout\ = (\freq_devider|clk_cnt\(14) & (\freq_devider|Add0~27\ $ (GND))) # (!\freq_devider|clk_cnt\(14) & (!\freq_devider|Add0~27\ & VCC))
-- \freq_devider|Add0~29\ = CARRY((\freq_devider|clk_cnt\(14) & !\freq_devider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(14),
	datad => VCC,
	cin => \freq_devider|Add0~27\,
	combout => \freq_devider|Add0~28_combout\,
	cout => \freq_devider|Add0~29\);

-- Location: LCCOMB_X48_Y22_N30
\freq_devider|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~0_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~28_combout\,
	combout => \freq_devider|clk_cnt~0_combout\);

-- Location: FF_X48_Y22_N31
\freq_devider|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(14));

-- Location: LCCOMB_X49_Y22_N4
\freq_devider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~30_combout\ = (\freq_devider|clk_cnt\(15) & (!\freq_devider|Add0~29\)) # (!\freq_devider|clk_cnt\(15) & ((\freq_devider|Add0~29\) # (GND)))
-- \freq_devider|Add0~31\ = CARRY((!\freq_devider|Add0~29\) # (!\freq_devider|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(15),
	datad => VCC,
	cin => \freq_devider|Add0~29\,
	combout => \freq_devider|Add0~30_combout\,
	cout => \freq_devider|Add0~31\);

-- Location: LCCOMB_X48_Y22_N10
\freq_devider|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~5_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~30_combout\,
	combout => \freq_devider|clk_cnt~5_combout\);

-- Location: FF_X48_Y22_N11
\freq_devider|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(15));

-- Location: LCCOMB_X49_Y22_N6
\freq_devider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~32_combout\ = (\freq_devider|clk_cnt\(16) & (\freq_devider|Add0~31\ $ (GND))) # (!\freq_devider|clk_cnt\(16) & (!\freq_devider|Add0~31\ & VCC))
-- \freq_devider|Add0~33\ = CARRY((\freq_devider|clk_cnt\(16) & !\freq_devider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(16),
	datad => VCC,
	cin => \freq_devider|Add0~31\,
	combout => \freq_devider|Add0~32_combout\,
	cout => \freq_devider|Add0~33\);

-- Location: FF_X49_Y22_N7
\freq_devider|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(16));

-- Location: LCCOMB_X48_Y22_N22
\freq_devider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~5_combout\ = (!\freq_devider|clk_cnt\(16) & (\freq_devider|clk_cnt\(15) & (!\freq_devider|clk_cnt\(11) & \freq_devider|clk_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(16),
	datab => \freq_devider|clk_cnt\(15),
	datac => \freq_devider|clk_cnt\(11),
	datad => \freq_devider|clk_cnt\(6),
	combout => \freq_devider|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y23_N4
\freq_devider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~6_combout\ = (\freq_devider|clk_cnt\(2) & (\freq_devider|clk_cnt\(5) & (\freq_devider|clk_cnt\(4) & \freq_devider|clk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(2),
	datab => \freq_devider|clk_cnt\(5),
	datac => \freq_devider|clk_cnt\(4),
	datad => \freq_devider|clk_cnt\(3),
	combout => \freq_devider|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y23_N4
\freq_devider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~7_combout\ = (\freq_devider|clk_cnt\(1) & \freq_devider|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|clk_cnt\(1),
	datad => \freq_devider|clk_cnt\(0),
	combout => \freq_devider|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y22_N8
\freq_devider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~34_combout\ = (\freq_devider|clk_cnt\(17) & (!\freq_devider|Add0~33\)) # (!\freq_devider|clk_cnt\(17) & ((\freq_devider|Add0~33\) # (GND)))
-- \freq_devider|Add0~35\ = CARRY((!\freq_devider|Add0~33\) # (!\freq_devider|clk_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(17),
	datad => VCC,
	cin => \freq_devider|Add0~33\,
	combout => \freq_devider|Add0~34_combout\,
	cout => \freq_devider|Add0~35\);

-- Location: LCCOMB_X49_Y22_N30
\freq_devider|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~4_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~8_combout\,
	datac => \freq_devider|Add0~34_combout\,
	combout => \freq_devider|clk_cnt~4_combout\);

-- Location: FF_X49_Y22_N31
\freq_devider|clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(17));

-- Location: LCCOMB_X49_Y22_N10
\freq_devider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~36_combout\ = (\freq_devider|clk_cnt\(18) & (\freq_devider|Add0~35\ $ (GND))) # (!\freq_devider|clk_cnt\(18) & (!\freq_devider|Add0~35\ & VCC))
-- \freq_devider|Add0~37\ = CARRY((\freq_devider|clk_cnt\(18) & !\freq_devider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(18),
	datad => VCC,
	cin => \freq_devider|Add0~35\,
	combout => \freq_devider|Add0~36_combout\,
	cout => \freq_devider|Add0~37\);

-- Location: FF_X49_Y22_N11
\freq_devider|clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(18));

-- Location: LCCOMB_X49_Y22_N12
\freq_devider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~38_combout\ = (\freq_devider|clk_cnt\(19) & (!\freq_devider|Add0~37\)) # (!\freq_devider|clk_cnt\(19) & ((\freq_devider|Add0~37\) # (GND)))
-- \freq_devider|Add0~39\ = CARRY((!\freq_devider|Add0~37\) # (!\freq_devider|clk_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(19),
	datad => VCC,
	cin => \freq_devider|Add0~37\,
	combout => \freq_devider|Add0~38_combout\,
	cout => \freq_devider|Add0~39\);

-- Location: LCCOMB_X49_Y22_N28
\freq_devider|clk_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~9_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~38_combout\,
	combout => \freq_devider|clk_cnt~9_combout\);

-- Location: FF_X49_Y22_N29
\freq_devider|clk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(19));

-- Location: LCCOMB_X49_Y22_N14
\freq_devider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~40_combout\ = (\freq_devider|clk_cnt\(20) & (\freq_devider|Add0~39\ $ (GND))) # (!\freq_devider|clk_cnt\(20) & (!\freq_devider|Add0~39\ & VCC))
-- \freq_devider|Add0~41\ = CARRY((\freq_devider|clk_cnt\(20) & !\freq_devider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(20),
	datad => VCC,
	cin => \freq_devider|Add0~39\,
	combout => \freq_devider|Add0~40_combout\,
	cout => \freq_devider|Add0~41\);

-- Location: LCCOMB_X50_Y22_N4
\freq_devider|clk_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~8_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~40_combout\,
	combout => \freq_devider|clk_cnt~8_combout\);

-- Location: FF_X50_Y22_N5
\freq_devider|clk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(20));

-- Location: LCCOMB_X49_Y22_N16
\freq_devider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~42_combout\ = (\freq_devider|clk_cnt\(21) & (!\freq_devider|Add0~41\)) # (!\freq_devider|clk_cnt\(21) & ((\freq_devider|Add0~41\) # (GND)))
-- \freq_devider|Add0~43\ = CARRY((!\freq_devider|Add0~41\) # (!\freq_devider|clk_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(21),
	datad => VCC,
	cin => \freq_devider|Add0~41\,
	combout => \freq_devider|Add0~42_combout\,
	cout => \freq_devider|Add0~43\);

-- Location: LCCOMB_X50_Y22_N6
\freq_devider|clk_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~7_combout\ = (\freq_devider|Add0~42_combout\ & !\freq_devider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add0~42_combout\,
	datad => \freq_devider|Equal0~8_combout\,
	combout => \freq_devider|clk_cnt~7_combout\);

-- Location: FF_X50_Y22_N7
\freq_devider|clk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(21));

-- Location: LCCOMB_X49_Y22_N18
\freq_devider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~44_combout\ = (\freq_devider|clk_cnt\(22) & (\freq_devider|Add0~43\ $ (GND))) # (!\freq_devider|clk_cnt\(22) & (!\freq_devider|Add0~43\ & VCC))
-- \freq_devider|Add0~45\ = CARRY((\freq_devider|clk_cnt\(22) & !\freq_devider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(22),
	datad => VCC,
	cin => \freq_devider|Add0~43\,
	combout => \freq_devider|Add0~44_combout\,
	cout => \freq_devider|Add0~45\);

-- Location: LCCOMB_X50_Y22_N20
\freq_devider|clk_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~6_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~44_combout\,
	combout => \freq_devider|clk_cnt~6_combout\);

-- Location: FF_X50_Y22_N21
\freq_devider|clk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(22));

-- Location: LCCOMB_X49_Y22_N20
\freq_devider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~46_combout\ = (\freq_devider|clk_cnt\(23) & (!\freq_devider|Add0~45\)) # (!\freq_devider|clk_cnt\(23) & ((\freq_devider|Add0~45\) # (GND)))
-- \freq_devider|Add0~47\ = CARRY((!\freq_devider|Add0~45\) # (!\freq_devider|clk_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(23),
	datad => VCC,
	cin => \freq_devider|Add0~45\,
	combout => \freq_devider|Add0~46_combout\,
	cout => \freq_devider|Add0~47\);

-- Location: LCCOMB_X49_Y22_N22
\freq_devider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~48_combout\ = (\freq_devider|clk_cnt\(24) & (\freq_devider|Add0~47\ $ (GND))) # (!\freq_devider|clk_cnt\(24) & (!\freq_devider|Add0~47\ & VCC))
-- \freq_devider|Add0~49\ = CARRY((\freq_devider|clk_cnt\(24) & !\freq_devider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(24),
	datad => VCC,
	cin => \freq_devider|Add0~47\,
	combout => \freq_devider|Add0~48_combout\,
	cout => \freq_devider|Add0~49\);

-- Location: FF_X49_Y22_N23
\freq_devider|clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(24));

-- Location: LCCOMB_X49_Y22_N24
\freq_devider|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~50_combout\ = \freq_devider|Add0~49\ $ (\freq_devider|clk_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_devider|clk_cnt\(25),
	cin => \freq_devider|Add0~49\,
	combout => \freq_devider|Add0~50_combout\);

-- Location: LCCOMB_X48_Y22_N28
\freq_devider|clk_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~10_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~50_combout\,
	combout => \freq_devider|clk_cnt~10_combout\);

-- Location: FF_X48_Y22_N29
\freq_devider|clk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(25));

-- Location: LCCOMB_X48_Y22_N6
\freq_devider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~2_combout\ = (\freq_devider|clk_cnt\(13) & (\freq_devider|clk_cnt\(12) & (\freq_devider|clk_cnt\(14) & \freq_devider|clk_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(13),
	datab => \freq_devider|clk_cnt\(12),
	datac => \freq_devider|clk_cnt\(14),
	datad => \freq_devider|clk_cnt\(25),
	combout => \freq_devider|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y22_N20
\freq_devider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~3_combout\ = (\freq_devider|clk_cnt\(17) & (!\freq_devider|clk_cnt\(24) & (!\freq_devider|clk_cnt\(18) & \freq_devider|clk_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(17),
	datab => \freq_devider|clk_cnt\(24),
	datac => \freq_devider|clk_cnt\(18),
	datad => \freq_devider|clk_cnt\(23),
	combout => \freq_devider|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y22_N22
\freq_devider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~1_combout\ = (\freq_devider|clk_cnt\(21) & (\freq_devider|clk_cnt\(22) & (\freq_devider|clk_cnt\(20) & \freq_devider|clk_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(21),
	datab => \freq_devider|clk_cnt\(22),
	datac => \freq_devider|clk_cnt\(20),
	datad => \freq_devider|clk_cnt\(19),
	combout => \freq_devider|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y23_N2
\freq_devider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~0_combout\ = (!\freq_devider|clk_cnt\(8) & (!\freq_devider|clk_cnt\(7) & (!\freq_devider|clk_cnt\(10) & !\freq_devider|clk_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(8),
	datab => \freq_devider|clk_cnt\(7),
	datac => \freq_devider|clk_cnt\(10),
	datad => \freq_devider|clk_cnt\(9),
	combout => \freq_devider|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y22_N12
\freq_devider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~4_combout\ = (\freq_devider|Equal0~2_combout\ & (\freq_devider|Equal0~3_combout\ & (\freq_devider|Equal0~1_combout\ & \freq_devider|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~2_combout\,
	datab => \freq_devider|Equal0~3_combout\,
	datac => \freq_devider|Equal0~1_combout\,
	datad => \freq_devider|Equal0~0_combout\,
	combout => \freq_devider|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y22_N0
\freq_devider|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~8_combout\ = (\freq_devider|Equal0~5_combout\ & (\freq_devider|Equal0~6_combout\ & (\freq_devider|Equal0~7_combout\ & \freq_devider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~5_combout\,
	datab => \freq_devider|Equal0~6_combout\,
	datac => \freq_devider|Equal0~7_combout\,
	datad => \freq_devider|Equal0~4_combout\,
	combout => \freq_devider|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y22_N26
\freq_devider|clk_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~11_combout\ = (!\freq_devider|Equal0~8_combout\ & \freq_devider|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal0~8_combout\,
	datad => \freq_devider|Add0~46_combout\,
	combout => \freq_devider|clk_cnt~11_combout\);

-- Location: FF_X49_Y22_N27
\freq_devider|clk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|clk_cnt~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(23));

-- Location: LCCOMB_X48_Y22_N26
\freq_devider|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~0_combout\ = (\freq_devider|clk_cnt\(13) & (\freq_devider|clk_cnt\(12) & (\freq_devider|clk_cnt\(14) & \freq_devider|clk_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(13),
	datab => \freq_devider|clk_cnt\(12),
	datac => \freq_devider|clk_cnt\(14),
	datad => \freq_devider|clk_cnt\(16),
	combout => \freq_devider|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y22_N16
\freq_devider|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~1_combout\ = (\freq_devider|LessThan0~0_combout\ & (\freq_devider|clk_cnt\(11) & ((\freq_devider|clk_cnt\(6)) # (!\freq_devider|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|LessThan0~0_combout\,
	datab => \freq_devider|clk_cnt\(6),
	datac => \freq_devider|clk_cnt\(11),
	datad => \freq_devider|Equal0~0_combout\,
	combout => \freq_devider|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y22_N2
\freq_devider|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~2_combout\ = (\freq_devider|clk_cnt\(17)) # ((\freq_devider|LessThan0~1_combout\) # ((\freq_devider|clk_cnt\(16) & \freq_devider|clk_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(16),
	datab => \freq_devider|clk_cnt\(15),
	datac => \freq_devider|clk_cnt\(17),
	datad => \freq_devider|LessThan0~1_combout\,
	combout => \freq_devider|LessThan0~2_combout\);

-- Location: LCCOMB_X48_Y22_N4
\freq_devider|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~3_combout\ = (\freq_devider|Equal0~1_combout\ & (\freq_devider|clk_cnt\(24) & (\freq_devider|clk_cnt\(18) & \freq_devider|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~1_combout\,
	datab => \freq_devider|clk_cnt\(24),
	datac => \freq_devider|clk_cnt\(18),
	datad => \freq_devider|LessThan0~2_combout\,
	combout => \freq_devider|LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y22_N24
\freq_devider|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~4_combout\ = (\freq_devider|LessThan0~3_combout\) # ((\freq_devider|clk_cnt\(25)) # ((\freq_devider|clk_cnt\(23) & \freq_devider|clk_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(23),
	datab => \freq_devider|clk_cnt\(24),
	datac => \freq_devider|LessThan0~3_combout\,
	datad => \freq_devider|clk_cnt\(25),
	combout => \freq_devider|LessThan0~4_combout\);

-- Location: FF_X48_Y22_N25
\freq_devider|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|LessThan0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_out~q\);

-- Location: CLKCTRL_G5
\freq_devider|clk_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_devider|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_devider|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y16_N6
\up_counter|cnt[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt[0]~3_combout\ = !\up_counter|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \up_counter|cnt\(0),
	combout => \up_counter|cnt[0]~3_combout\);

-- Location: FF_X1_Y16_N7
\up_counter|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk_out~clkctrl_outclk\,
	d => \up_counter|cnt[0]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(0));

-- Location: LCCOMB_X1_Y16_N28
\up_counter|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt~2_combout\ = (\up_counter|cnt\(0) & ((\up_counter|cnt\(1) & (\up_counter|cnt\(3) $ (\up_counter|cnt\(2)))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(3) & \up_counter|cnt\(2))))) # (!\up_counter|cnt\(0) & (((\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(0),
	datab => \up_counter|cnt\(1),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(2),
	combout => \up_counter|cnt~2_combout\);

-- Location: FF_X1_Y16_N29
\up_counter|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk_out~clkctrl_outclk\,
	d => \up_counter|cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(3));

-- Location: LCCOMB_X1_Y16_N0
\up_counter|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt~0_combout\ = (\up_counter|cnt\(0) & (!\up_counter|cnt\(1) & ((\up_counter|cnt\(2)) # (!\up_counter|cnt\(3))))) # (!\up_counter|cnt\(0) & (((\up_counter|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(0),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(2),
	combout => \up_counter|cnt~0_combout\);

-- Location: FF_X1_Y16_N1
\up_counter|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk_out~clkctrl_outclk\,
	d => \up_counter|cnt~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(1));

-- Location: LCCOMB_X1_Y16_N18
\up_counter|cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt[2]~1_combout\ = \up_counter|cnt\(2) $ (((\up_counter|cnt\(0) & \up_counter|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(1),
	combout => \up_counter|cnt[2]~1_combout\);

-- Location: FF_X1_Y16_N19
\up_counter|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk_out~clkctrl_outclk\,
	d => \up_counter|cnt[2]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_counter|cnt\(2));

-- Location: LCCOMB_X1_Y16_N4
\seg7|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr6~0_combout\ = (\up_counter|cnt\(2) & (!\up_counter|cnt\(3) & ((!\up_counter|cnt\(1)) # (!\up_counter|cnt\(0))))) # (!\up_counter|cnt\(2) & (\up_counter|cnt\(3) $ (((\up_counter|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr6~0_combout\);

-- Location: FF_X1_Y16_N5
\seg7|dig_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(0));

-- Location: LCCOMB_X1_Y16_N14
\seg7|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr5~0_combout\ = (\up_counter|cnt\(0) & (!\up_counter|cnt\(1) & (\up_counter|cnt\(3) $ (\up_counter|cnt\(2))))) # (!\up_counter|cnt\(0) & ((\up_counter|cnt\(2) & ((!\up_counter|cnt\(3)))) # (!\up_counter|cnt\(2) & (!\up_counter|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(2),
	combout => \seg7|WideOr5~0_combout\);

-- Location: FF_X1_Y16_N15
\seg7|dig_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(1));

-- Location: LCCOMB_X1_Y16_N8
\seg7|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr4~0_combout\ = (!\up_counter|cnt\(0) & ((\up_counter|cnt\(1) & ((!\up_counter|cnt\(3)))) # (!\up_counter|cnt\(1) & (!\up_counter|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(1),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(0),
	combout => \seg7|WideOr4~0_combout\);

-- Location: FF_X1_Y16_N9
\seg7|dig_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(2));

-- Location: LCCOMB_X1_Y16_N30
\seg7|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr3~0_combout\ = (\up_counter|cnt\(1) & (!\up_counter|cnt\(3) & ((!\up_counter|cnt\(0)) # (!\up_counter|cnt\(2))))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(2) $ (((\up_counter|cnt\(3)) # (!\up_counter|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr3~0_combout\);

-- Location: FF_X1_Y16_N31
\seg7|dig_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(3));

-- Location: LCCOMB_X1_Y16_N16
\seg7|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr2~0_combout\ = (\up_counter|cnt\(2) & (((!\up_counter|cnt\(3))))) # (!\up_counter|cnt\(2) & (((\up_counter|cnt\(0) & !\up_counter|cnt\(3))) # (!\up_counter|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(0),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(2),
	combout => \seg7|WideOr2~0_combout\);

-- Location: FF_X1_Y16_N17
\seg7|dig_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(4));

-- Location: LCCOMB_X1_Y16_N26
\seg7|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr1~0_combout\ = (\up_counter|cnt\(2) & (!\up_counter|cnt\(3) & (\up_counter|cnt\(0) $ (!\up_counter|cnt\(1))))) # (!\up_counter|cnt\(2) & (((!\up_counter|cnt\(3)) # (!\up_counter|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(0),
	datab => \up_counter|cnt\(1),
	datac => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(3),
	combout => \seg7|WideOr1~0_combout\);

-- Location: FF_X1_Y16_N27
\seg7|dig_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(5));

-- Location: LCCOMB_X1_Y16_N24
\seg7|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr0~0_combout\ = (\up_counter|cnt\(1) & (((!\up_counter|cnt\(3))))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(2) $ (((\up_counter|cnt\(3)) # (!\up_counter|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr0~0_combout\);

-- Location: FF_X1_Y16_N25
\seg7|dig_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|WideOr0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(6));

-- Location: LCCOMB_X1_Y16_N12
\seg7|sel_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|sel_out[1]~1_combout\ = !\seg7|sel_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7|sel_out\(0),
	combout => \seg7|sel_out[1]~1_combout\);

-- Location: FF_X1_Y16_N13
\seg7|sel_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|sel_out[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(1));

-- Location: LCCOMB_X1_Y16_N2
\seg7|sel_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|sel_out[2]~feeder_combout\ = \seg7|sel_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7|sel_out\(1),
	combout => \seg7|sel_out[2]~feeder_combout\);

-- Location: FF_X1_Y16_N3
\seg7|sel_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|sel_out[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(2));

-- Location: LCCOMB_X1_Y16_N20
\seg7|sel_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|sel_out[3]~feeder_combout\ = \seg7|sel_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7|sel_out\(2),
	combout => \seg7|sel_out[3]~feeder_combout\);

-- Location: FF_X1_Y16_N21
\seg7|sel_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|sel_out[3]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(3));

-- Location: LCCOMB_X1_Y16_N10
\seg7|sel_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|sel_out[0]~0_combout\ = !\seg7|sel_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7|sel_out\(3),
	combout => \seg7|sel_out[0]~0_combout\);

-- Location: FF_X1_Y16_N11
\seg7|sel_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \seg7|sel_out[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(0));

ww_dig_out(0) <= \dig_out[0]~output_o\;

ww_dig_out(1) <= \dig_out[1]~output_o\;

ww_dig_out(2) <= \dig_out[2]~output_o\;

ww_dig_out(3) <= \dig_out[3]~output_o\;

ww_dig_out(4) <= \dig_out[4]~output_o\;

ww_dig_out(5) <= \dig_out[5]~output_o\;

ww_dig_out(6) <= \dig_out[6]~output_o\;

ww_sel_out(0) <= \sel_out[0]~output_o\;

ww_sel_out(1) <= \sel_out[1]~output_o\;

ww_sel_out(2) <= \sel_out[2]~output_o\;

ww_sel_out(3) <= \sel_out[3]~output_o\;
END structure;


