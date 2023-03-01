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

-- DATE "03/01/2023 11:43:05"

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
	dig_out : OUT std_logic_vector(6 DOWNTO 0);
	sel_out : OUT std_logic_vector(3 DOWNTO 0)
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
-- rst	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \freq_devider|clk100hz_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \freq_devider|Add0~1\ : std_logic;
SIGNAL \freq_devider|Add0~2_combout\ : std_logic;
SIGNAL \freq_devider|Add0~3\ : std_logic;
SIGNAL \freq_devider|Add0~4_combout\ : std_logic;
SIGNAL \freq_devider|Add0~5\ : std_logic;
SIGNAL \freq_devider|Add0~6_combout\ : std_logic;
SIGNAL \freq_devider|Add0~7\ : std_logic;
SIGNAL \freq_devider|Add0~8_combout\ : std_logic;
SIGNAL \freq_devider|cnt~1_combout\ : std_logic;
SIGNAL \freq_devider|Add0~9\ : std_logic;
SIGNAL \freq_devider|Add0~10_combout\ : std_logic;
SIGNAL \freq_devider|Add0~11\ : std_logic;
SIGNAL \freq_devider|Add0~12_combout\ : std_logic;
SIGNAL \freq_devider|cnt~2_combout\ : std_logic;
SIGNAL \freq_devider|Add0~13\ : std_logic;
SIGNAL \freq_devider|Add0~14_combout\ : std_logic;
SIGNAL \freq_devider|Add0~15\ : std_logic;
SIGNAL \freq_devider|Add0~16_combout\ : std_logic;
SIGNAL \freq_devider|cnt~3_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~2_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~3_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~0_combout\ : std_logic;
SIGNAL \freq_devider|Add0~27\ : std_logic;
SIGNAL \freq_devider|Add0~28_combout\ : std_logic;
SIGNAL \freq_devider|cnt~4_combout\ : std_logic;
SIGNAL \freq_devider|Add0~29\ : std_logic;
SIGNAL \freq_devider|Add0~30_combout\ : std_logic;
SIGNAL \freq_devider|cnt~5_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~1_combout\ : std_logic;
SIGNAL \freq_devider|Equal0~4_combout\ : std_logic;
SIGNAL \freq_devider|Add0~17\ : std_logic;
SIGNAL \freq_devider|Add0~18_combout\ : std_logic;
SIGNAL \freq_devider|cnt~0_combout\ : std_logic;
SIGNAL \freq_devider|Add0~19\ : std_logic;
SIGNAL \freq_devider|Add0~20_combout\ : std_logic;
SIGNAL \freq_devider|Add0~21\ : std_logic;
SIGNAL \freq_devider|Add0~22_combout\ : std_logic;
SIGNAL \freq_devider|Add0~23\ : std_logic;
SIGNAL \freq_devider|Add0~24_combout\ : std_logic;
SIGNAL \freq_devider|Add0~25\ : std_logic;
SIGNAL \freq_devider|Add0~26_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~0_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~1_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~2_combout\ : std_logic;
SIGNAL \freq_devider|LessThan0~3_combout\ : std_logic;
SIGNAL \freq_devider|clk100hz_out~q\ : std_logic;
SIGNAL \freq_devider|clk100hz_out~clkctrl_outclk\ : std_logic;
SIGNAL \freq_devider|Add1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \freq_devider|Add1~1\ : std_logic;
SIGNAL \freq_devider|Add1~2_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~7_combout\ : std_logic;
SIGNAL \freq_devider|Add1~3\ : std_logic;
SIGNAL \freq_devider|Add1~4_combout\ : std_logic;
SIGNAL \freq_devider|Add1~5\ : std_logic;
SIGNAL \freq_devider|Add1~6_combout\ : std_logic;
SIGNAL \freq_devider|Add1~7\ : std_logic;
SIGNAL \freq_devider|Add1~8_combout\ : std_logic;
SIGNAL \freq_devider|Add1~9\ : std_logic;
SIGNAL \freq_devider|Add1~10_combout\ : std_logic;
SIGNAL \freq_devider|Add1~11\ : std_logic;
SIGNAL \freq_devider|Add1~12_combout\ : std_logic;
SIGNAL \freq_devider|Add1~13\ : std_logic;
SIGNAL \freq_devider|Add1~14_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~9_combout\ : std_logic;
SIGNAL \freq_devider|Add1~15\ : std_logic;
SIGNAL \freq_devider|Add1~16_combout\ : std_logic;
SIGNAL \freq_devider|Add1~17\ : std_logic;
SIGNAL \freq_devider|Add1~18_combout\ : std_logic;
SIGNAL \freq_devider|Add1~19\ : std_logic;
SIGNAL \freq_devider|Add1~20_combout\ : std_logic;
SIGNAL \freq_devider|Add1~21\ : std_logic;
SIGNAL \freq_devider|Add1~22_combout\ : std_logic;
SIGNAL \freq_devider|Add1~23\ : std_logic;
SIGNAL \freq_devider|Add1~24_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~8_combout\ : std_logic;
SIGNAL \freq_devider|Add1~25\ : std_logic;
SIGNAL \freq_devider|Add1~26_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~7_combout\ : std_logic;
SIGNAL \freq_devider|Add1~27\ : std_logic;
SIGNAL \freq_devider|Add1~28_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~6_combout\ : std_logic;
SIGNAL \freq_devider|Add1~29\ : std_logic;
SIGNAL \freq_devider|Add1~30_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~11_combout\ : std_logic;
SIGNAL \freq_devider|Add1~31\ : std_logic;
SIGNAL \freq_devider|Add1~32_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~5_combout\ : std_logic;
SIGNAL \freq_devider|Add1~47\ : std_logic;
SIGNAL \freq_devider|Add1~48_combout\ : std_logic;
SIGNAL \freq_devider|Add1~33\ : std_logic;
SIGNAL \freq_devider|Add1~34_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~10_combout\ : std_logic;
SIGNAL \freq_devider|Add1~35\ : std_logic;
SIGNAL \freq_devider|Add1~36_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~3_combout\ : std_logic;
SIGNAL \freq_devider|Add1~49\ : std_logic;
SIGNAL \freq_devider|Add1~50_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~0_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~2_combout\ : std_logic;
SIGNAL \freq_devider|Add1~37\ : std_logic;
SIGNAL \freq_devider|Add1~38_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~5_combout\ : std_logic;
SIGNAL \freq_devider|Add1~39\ : std_logic;
SIGNAL \freq_devider|Add1~40_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~4_combout\ : std_logic;
SIGNAL \freq_devider|Add1~41\ : std_logic;
SIGNAL \freq_devider|Add1~42_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~3_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~0_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~1_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~4_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~6_combout\ : std_logic;
SIGNAL \freq_devider|Equal1~8_combout\ : std_logic;
SIGNAL \freq_devider|Add1~43\ : std_logic;
SIGNAL \freq_devider|Add1~44_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~2_combout\ : std_logic;
SIGNAL \freq_devider|Add1~45\ : std_logic;
SIGNAL \freq_devider|Add1~46_combout\ : std_logic;
SIGNAL \freq_devider|clk_cnt~1_combout\ : std_logic;
SIGNAL \freq_devider|LessThan1~2_combout\ : std_logic;
SIGNAL \freq_devider|LessThan1~0_combout\ : std_logic;
SIGNAL \freq_devider|LessThan1~1_combout\ : std_logic;
SIGNAL \freq_devider|LessThan1~3_combout\ : std_logic;
SIGNAL \freq_devider|LessThan1~4_combout\ : std_logic;
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
SIGNAL \freq_devider|cnt\ : std_logic_vector(15 DOWNTO 0);
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

\freq_devider|clk100hz_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_devider|clk100hz_out~q\);

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

-- Location: LCCOMB_X56_Y30_N0
\freq_devider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~0_combout\ = \freq_devider|cnt\(0) $ (VCC)
-- \freq_devider|Add0~1\ = CARRY(\freq_devider|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(0),
	datad => VCC,
	combout => \freq_devider|Add0~0_combout\,
	cout => \freq_devider|Add0~1\);

-- Location: FF_X56_Y30_N1
\freq_devider|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(0));

-- Location: LCCOMB_X56_Y30_N2
\freq_devider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~2_combout\ = (\freq_devider|cnt\(1) & (!\freq_devider|Add0~1\)) # (!\freq_devider|cnt\(1) & ((\freq_devider|Add0~1\) # (GND)))
-- \freq_devider|Add0~3\ = CARRY((!\freq_devider|Add0~1\) # (!\freq_devider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(1),
	datad => VCC,
	cin => \freq_devider|Add0~1\,
	combout => \freq_devider|Add0~2_combout\,
	cout => \freq_devider|Add0~3\);

-- Location: FF_X56_Y30_N3
\freq_devider|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(1));

-- Location: LCCOMB_X56_Y30_N4
\freq_devider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~4_combout\ = (\freq_devider|cnt\(2) & (\freq_devider|Add0~3\ $ (GND))) # (!\freq_devider|cnt\(2) & (!\freq_devider|Add0~3\ & VCC))
-- \freq_devider|Add0~5\ = CARRY((\freq_devider|cnt\(2) & !\freq_devider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(2),
	datad => VCC,
	cin => \freq_devider|Add0~3\,
	combout => \freq_devider|Add0~4_combout\,
	cout => \freq_devider|Add0~5\);

-- Location: FF_X56_Y30_N5
\freq_devider|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(2));

-- Location: LCCOMB_X56_Y30_N6
\freq_devider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~6_combout\ = (\freq_devider|cnt\(3) & (!\freq_devider|Add0~5\)) # (!\freq_devider|cnt\(3) & ((\freq_devider|Add0~5\) # (GND)))
-- \freq_devider|Add0~7\ = CARRY((!\freq_devider|Add0~5\) # (!\freq_devider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(3),
	datad => VCC,
	cin => \freq_devider|Add0~5\,
	combout => \freq_devider|Add0~6_combout\,
	cout => \freq_devider|Add0~7\);

-- Location: FF_X56_Y30_N7
\freq_devider|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(3));

-- Location: LCCOMB_X56_Y30_N8
\freq_devider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~8_combout\ = (\freq_devider|cnt\(4) & (\freq_devider|Add0~7\ $ (GND))) # (!\freq_devider|cnt\(4) & (!\freq_devider|Add0~7\ & VCC))
-- \freq_devider|Add0~9\ = CARRY((\freq_devider|cnt\(4) & !\freq_devider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(4),
	datad => VCC,
	cin => \freq_devider|Add0~7\,
	combout => \freq_devider|Add0~8_combout\,
	cout => \freq_devider|Add0~9\);

-- Location: LCCOMB_X57_Y30_N20
\freq_devider|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~1_combout\ = (!\freq_devider|Equal0~4_combout\ & \freq_devider|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~4_combout\,
	datad => \freq_devider|Add0~8_combout\,
	combout => \freq_devider|cnt~1_combout\);

-- Location: FF_X57_Y30_N21
\freq_devider|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(4));

-- Location: LCCOMB_X56_Y30_N10
\freq_devider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~10_combout\ = (\freq_devider|cnt\(5) & (!\freq_devider|Add0~9\)) # (!\freq_devider|cnt\(5) & ((\freq_devider|Add0~9\) # (GND)))
-- \freq_devider|Add0~11\ = CARRY((!\freq_devider|Add0~9\) # (!\freq_devider|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(5),
	datad => VCC,
	cin => \freq_devider|Add0~9\,
	combout => \freq_devider|Add0~10_combout\,
	cout => \freq_devider|Add0~11\);

-- Location: FF_X56_Y30_N11
\freq_devider|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(5));

-- Location: LCCOMB_X56_Y30_N12
\freq_devider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~12_combout\ = (\freq_devider|cnt\(6) & (\freq_devider|Add0~11\ $ (GND))) # (!\freq_devider|cnt\(6) & (!\freq_devider|Add0~11\ & VCC))
-- \freq_devider|Add0~13\ = CARRY((\freq_devider|cnt\(6) & !\freq_devider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(6),
	datad => VCC,
	cin => \freq_devider|Add0~11\,
	combout => \freq_devider|Add0~12_combout\,
	cout => \freq_devider|Add0~13\);

-- Location: LCCOMB_X57_Y30_N30
\freq_devider|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~2_combout\ = (!\freq_devider|Equal0~4_combout\ & \freq_devider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~4_combout\,
	datad => \freq_devider|Add0~12_combout\,
	combout => \freq_devider|cnt~2_combout\);

-- Location: FF_X57_Y30_N31
\freq_devider|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(6));

-- Location: LCCOMB_X56_Y30_N14
\freq_devider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~14_combout\ = (\freq_devider|cnt\(7) & (!\freq_devider|Add0~13\)) # (!\freq_devider|cnt\(7) & ((\freq_devider|Add0~13\) # (GND)))
-- \freq_devider|Add0~15\ = CARRY((!\freq_devider|Add0~13\) # (!\freq_devider|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(7),
	datad => VCC,
	cin => \freq_devider|Add0~13\,
	combout => \freq_devider|Add0~14_combout\,
	cout => \freq_devider|Add0~15\);

-- Location: FF_X56_Y30_N15
\freq_devider|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(7));

-- Location: LCCOMB_X56_Y30_N16
\freq_devider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~16_combout\ = (\freq_devider|cnt\(8) & (\freq_devider|Add0~15\ $ (GND))) # (!\freq_devider|cnt\(8) & (!\freq_devider|Add0~15\ & VCC))
-- \freq_devider|Add0~17\ = CARRY((\freq_devider|cnt\(8) & !\freq_devider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(8),
	datad => VCC,
	cin => \freq_devider|Add0~15\,
	combout => \freq_devider|Add0~16_combout\,
	cout => \freq_devider|Add0~17\);

-- Location: LCCOMB_X57_Y30_N14
\freq_devider|cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~3_combout\ = (\freq_devider|Add0~16_combout\ & !\freq_devider|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add0~16_combout\,
	datad => \freq_devider|Equal0~4_combout\,
	combout => \freq_devider|cnt~3_combout\);

-- Location: FF_X57_Y30_N15
\freq_devider|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(8));

-- Location: LCCOMB_X57_Y30_N10
\freq_devider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~2_combout\ = (!\freq_devider|cnt\(5) & (\freq_devider|cnt\(8) & (\freq_devider|cnt\(6) & !\freq_devider|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(5),
	datab => \freq_devider|cnt\(8),
	datac => \freq_devider|cnt\(6),
	datad => \freq_devider|cnt\(7),
	combout => \freq_devider|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y30_N8
\freq_devider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~3_combout\ = (\freq_devider|cnt\(1) & (\freq_devider|cnt\(3) & (\freq_devider|cnt\(2) & !\freq_devider|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(1),
	datab => \freq_devider|cnt\(3),
	datac => \freq_devider|cnt\(2),
	datad => \freq_devider|cnt\(4),
	combout => \freq_devider|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y30_N26
\freq_devider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~0_combout\ = (!\freq_devider|cnt\(11) & (!\freq_devider|cnt\(10) & (\freq_devider|cnt\(0) & !\freq_devider|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(11),
	datab => \freq_devider|cnt\(10),
	datac => \freq_devider|cnt\(0),
	datad => \freq_devider|cnt\(12),
	combout => \freq_devider|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y30_N26
\freq_devider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~26_combout\ = (\freq_devider|cnt\(13) & (!\freq_devider|Add0~25\)) # (!\freq_devider|cnt\(13) & ((\freq_devider|Add0~25\) # (GND)))
-- \freq_devider|Add0~27\ = CARRY((!\freq_devider|Add0~25\) # (!\freq_devider|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(13),
	datad => VCC,
	cin => \freq_devider|Add0~25\,
	combout => \freq_devider|Add0~26_combout\,
	cout => \freq_devider|Add0~27\);

-- Location: LCCOMB_X56_Y30_N28
\freq_devider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~28_combout\ = (\freq_devider|cnt\(14) & (\freq_devider|Add0~27\ $ (GND))) # (!\freq_devider|cnt\(14) & (!\freq_devider|Add0~27\ & VCC))
-- \freq_devider|Add0~29\ = CARRY((\freq_devider|cnt\(14) & !\freq_devider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(14),
	datad => VCC,
	cin => \freq_devider|Add0~27\,
	combout => \freq_devider|Add0~28_combout\,
	cout => \freq_devider|Add0~29\);

-- Location: LCCOMB_X57_Y30_N18
\freq_devider|cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~4_combout\ = (!\freq_devider|Equal0~4_combout\ & \freq_devider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~4_combout\,
	datad => \freq_devider|Add0~28_combout\,
	combout => \freq_devider|cnt~4_combout\);

-- Location: FF_X57_Y30_N19
\freq_devider|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(14));

-- Location: LCCOMB_X56_Y30_N30
\freq_devider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~30_combout\ = \freq_devider|Add0~29\ $ (\freq_devider|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_devider|cnt\(15),
	cin => \freq_devider|Add0~29\,
	combout => \freq_devider|Add0~30_combout\);

-- Location: LCCOMB_X57_Y30_N16
\freq_devider|cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~5_combout\ = (!\freq_devider|Equal0~4_combout\ & \freq_devider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~4_combout\,
	datad => \freq_devider|Add0~30_combout\,
	combout => \freq_devider|cnt~5_combout\);

-- Location: FF_X57_Y30_N17
\freq_devider|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(15));

-- Location: LCCOMB_X57_Y30_N28
\freq_devider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~1_combout\ = (!\freq_devider|cnt\(13) & (\freq_devider|cnt\(14) & (\freq_devider|cnt\(9) & \freq_devider|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(13),
	datab => \freq_devider|cnt\(14),
	datac => \freq_devider|cnt\(9),
	datad => \freq_devider|cnt\(15),
	combout => \freq_devider|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y30_N6
\freq_devider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal0~4_combout\ = (\freq_devider|Equal0~2_combout\ & (\freq_devider|Equal0~3_combout\ & (\freq_devider|Equal0~0_combout\ & \freq_devider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~2_combout\,
	datab => \freq_devider|Equal0~3_combout\,
	datac => \freq_devider|Equal0~0_combout\,
	datad => \freq_devider|Equal0~1_combout\,
	combout => \freq_devider|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y30_N18
\freq_devider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~18_combout\ = (\freq_devider|cnt\(9) & (!\freq_devider|Add0~17\)) # (!\freq_devider|cnt\(9) & ((\freq_devider|Add0~17\) # (GND)))
-- \freq_devider|Add0~19\ = CARRY((!\freq_devider|Add0~17\) # (!\freq_devider|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(9),
	datad => VCC,
	cin => \freq_devider|Add0~17\,
	combout => \freq_devider|Add0~18_combout\,
	cout => \freq_devider|Add0~19\);

-- Location: LCCOMB_X57_Y30_N4
\freq_devider|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|cnt~0_combout\ = (!\freq_devider|Equal0~4_combout\ & \freq_devider|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal0~4_combout\,
	datad => \freq_devider|Add0~18_combout\,
	combout => \freq_devider|cnt~0_combout\);

-- Location: FF_X57_Y30_N5
\freq_devider|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(9));

-- Location: LCCOMB_X56_Y30_N20
\freq_devider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~20_combout\ = (\freq_devider|cnt\(10) & (\freq_devider|Add0~19\ $ (GND))) # (!\freq_devider|cnt\(10) & (!\freq_devider|Add0~19\ & VCC))
-- \freq_devider|Add0~21\ = CARRY((\freq_devider|cnt\(10) & !\freq_devider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(10),
	datad => VCC,
	cin => \freq_devider|Add0~19\,
	combout => \freq_devider|Add0~20_combout\,
	cout => \freq_devider|Add0~21\);

-- Location: FF_X56_Y30_N21
\freq_devider|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(10));

-- Location: LCCOMB_X56_Y30_N22
\freq_devider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~22_combout\ = (\freq_devider|cnt\(11) & (!\freq_devider|Add0~21\)) # (!\freq_devider|cnt\(11) & ((\freq_devider|Add0~21\) # (GND)))
-- \freq_devider|Add0~23\ = CARRY((!\freq_devider|Add0~21\) # (!\freq_devider|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(11),
	datad => VCC,
	cin => \freq_devider|Add0~21\,
	combout => \freq_devider|Add0~22_combout\,
	cout => \freq_devider|Add0~23\);

-- Location: FF_X56_Y30_N23
\freq_devider|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(11));

-- Location: LCCOMB_X56_Y30_N24
\freq_devider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add0~24_combout\ = (\freq_devider|cnt\(12) & (\freq_devider|Add0~23\ $ (GND))) # (!\freq_devider|cnt\(12) & (!\freq_devider|Add0~23\ & VCC))
-- \freq_devider|Add0~25\ = CARRY((\freq_devider|cnt\(12) & !\freq_devider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|cnt\(12),
	datad => VCC,
	cin => \freq_devider|Add0~23\,
	combout => \freq_devider|Add0~24_combout\,
	cout => \freq_devider|Add0~25\);

-- Location: FF_X56_Y30_N25
\freq_devider|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(12));

-- Location: FF_X56_Y30_N27
\freq_devider|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|cnt\(13));

-- Location: LCCOMB_X57_Y30_N22
\freq_devider|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~0_combout\ = (!\freq_devider|cnt\(11) & (!\freq_devider|cnt\(10) & (!\freq_devider|cnt\(9) & !\freq_devider|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(11),
	datab => \freq_devider|cnt\(10),
	datac => \freq_devider|cnt\(9),
	datad => \freq_devider|cnt\(12),
	combout => \freq_devider|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y30_N12
\freq_devider|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~1_combout\ = (!\freq_devider|cnt\(6) & (((!\freq_devider|cnt\(4) & !\freq_devider|cnt\(3))) # (!\freq_devider|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(6),
	datab => \freq_devider|cnt\(4),
	datac => \freq_devider|cnt\(3),
	datad => \freq_devider|cnt\(5),
	combout => \freq_devider|LessThan0~1_combout\);

-- Location: LCCOMB_X57_Y30_N24
\freq_devider|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~2_combout\ = (\freq_devider|LessThan0~0_combout\ & (((\freq_devider|LessThan0~1_combout\) # (!\freq_devider|cnt\(8))) # (!\freq_devider|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(7),
	datab => \freq_devider|cnt\(8),
	datac => \freq_devider|LessThan0~0_combout\,
	datad => \freq_devider|LessThan0~1_combout\,
	combout => \freq_devider|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y30_N28
\freq_devider|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan0~3_combout\ = (!\freq_devider|cnt\(15) & (((\freq_devider|LessThan0~2_combout\) # (!\freq_devider|cnt\(14))) # (!\freq_devider|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|cnt\(13),
	datab => \freq_devider|cnt\(14),
	datac => \freq_devider|LessThan0~2_combout\,
	datad => \freq_devider|cnt\(15),
	combout => \freq_devider|LessThan0~3_combout\);

-- Location: FF_X59_Y30_N29
\freq_devider|clk100hz_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk100hz_out~q\);

-- Location: CLKCTRL_G9
\freq_devider|clk100hz_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_devider|clk100hz_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_devider|clk100hz_out~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y11_N6
\freq_devider|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~0_combout\ = \freq_devider|clk_cnt\(0) $ (VCC)
-- \freq_devider|Add1~1\ = CARRY(\freq_devider|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(0),
	datad => VCC,
	combout => \freq_devider|Add1~0_combout\,
	cout => \freq_devider|Add1~1\);

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

-- Location: FF_X42_Y11_N7
\freq_devider|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(0));

-- Location: LCCOMB_X42_Y11_N8
\freq_devider|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~2_combout\ = (\freq_devider|clk_cnt\(1) & (!\freq_devider|Add1~1\)) # (!\freq_devider|clk_cnt\(1) & ((\freq_devider|Add1~1\) # (GND)))
-- \freq_devider|Add1~3\ = CARRY((!\freq_devider|Add1~1\) # (!\freq_devider|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(1),
	datad => VCC,
	cin => \freq_devider|Add1~1\,
	combout => \freq_devider|Add1~2_combout\,
	cout => \freq_devider|Add1~3\);

-- Location: FF_X42_Y11_N9
\freq_devider|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(1));

-- Location: LCCOMB_X41_Y11_N30
\freq_devider|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~7_combout\ = (\freq_devider|clk_cnt\(1) & \freq_devider|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|clk_cnt\(1),
	datad => \freq_devider|clk_cnt\(0),
	combout => \freq_devider|Equal1~7_combout\);

-- Location: LCCOMB_X42_Y11_N10
\freq_devider|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~4_combout\ = (\freq_devider|clk_cnt\(2) & (\freq_devider|Add1~3\ $ (GND))) # (!\freq_devider|clk_cnt\(2) & (!\freq_devider|Add1~3\ & VCC))
-- \freq_devider|Add1~5\ = CARRY((\freq_devider|clk_cnt\(2) & !\freq_devider|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(2),
	datad => VCC,
	cin => \freq_devider|Add1~3\,
	combout => \freq_devider|Add1~4_combout\,
	cout => \freq_devider|Add1~5\);

-- Location: FF_X42_Y11_N11
\freq_devider|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(2));

-- Location: LCCOMB_X42_Y11_N12
\freq_devider|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~6_combout\ = (\freq_devider|clk_cnt\(3) & (!\freq_devider|Add1~5\)) # (!\freq_devider|clk_cnt\(3) & ((\freq_devider|Add1~5\) # (GND)))
-- \freq_devider|Add1~7\ = CARRY((!\freq_devider|Add1~5\) # (!\freq_devider|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(3),
	datad => VCC,
	cin => \freq_devider|Add1~5\,
	combout => \freq_devider|Add1~6_combout\,
	cout => \freq_devider|Add1~7\);

-- Location: FF_X42_Y11_N13
\freq_devider|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(3));

-- Location: LCCOMB_X42_Y11_N14
\freq_devider|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~8_combout\ = (\freq_devider|clk_cnt\(4) & (\freq_devider|Add1~7\ $ (GND))) # (!\freq_devider|clk_cnt\(4) & (!\freq_devider|Add1~7\ & VCC))
-- \freq_devider|Add1~9\ = CARRY((\freq_devider|clk_cnt\(4) & !\freq_devider|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(4),
	datad => VCC,
	cin => \freq_devider|Add1~7\,
	combout => \freq_devider|Add1~8_combout\,
	cout => \freq_devider|Add1~9\);

-- Location: FF_X42_Y11_N15
\freq_devider|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(4));

-- Location: LCCOMB_X42_Y11_N16
\freq_devider|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~10_combout\ = (\freq_devider|clk_cnt\(5) & (!\freq_devider|Add1~9\)) # (!\freq_devider|clk_cnt\(5) & ((\freq_devider|Add1~9\) # (GND)))
-- \freq_devider|Add1~11\ = CARRY((!\freq_devider|Add1~9\) # (!\freq_devider|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(5),
	datad => VCC,
	cin => \freq_devider|Add1~9\,
	combout => \freq_devider|Add1~10_combout\,
	cout => \freq_devider|Add1~11\);

-- Location: FF_X42_Y11_N17
\freq_devider|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(5));

-- Location: LCCOMB_X42_Y11_N18
\freq_devider|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~12_combout\ = (\freq_devider|clk_cnt\(6) & (\freq_devider|Add1~11\ $ (GND))) # (!\freq_devider|clk_cnt\(6) & (!\freq_devider|Add1~11\ & VCC))
-- \freq_devider|Add1~13\ = CARRY((\freq_devider|clk_cnt\(6) & !\freq_devider|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(6),
	datad => VCC,
	cin => \freq_devider|Add1~11\,
	combout => \freq_devider|Add1~12_combout\,
	cout => \freq_devider|Add1~13\);

-- Location: FF_X42_Y11_N19
\freq_devider|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(6));

-- Location: LCCOMB_X42_Y11_N20
\freq_devider|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~14_combout\ = (\freq_devider|clk_cnt\(7) & (!\freq_devider|Add1~13\)) # (!\freq_devider|clk_cnt\(7) & ((\freq_devider|Add1~13\) # (GND)))
-- \freq_devider|Add1~15\ = CARRY((!\freq_devider|Add1~13\) # (!\freq_devider|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(7),
	datad => VCC,
	cin => \freq_devider|Add1~13\,
	combout => \freq_devider|Add1~14_combout\,
	cout => \freq_devider|Add1~15\);

-- Location: LCCOMB_X42_Y11_N2
\freq_devider|clk_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~9_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~14_combout\,
	combout => \freq_devider|clk_cnt~9_combout\);

-- Location: FF_X42_Y11_N3
\freq_devider|clk_cnt[7]\ : dffeas
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
	q => \freq_devider|clk_cnt\(7));

-- Location: LCCOMB_X42_Y11_N22
\freq_devider|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~16_combout\ = (\freq_devider|clk_cnt\(8) & (\freq_devider|Add1~15\ $ (GND))) # (!\freq_devider|clk_cnt\(8) & (!\freq_devider|Add1~15\ & VCC))
-- \freq_devider|Add1~17\ = CARRY((\freq_devider|clk_cnt\(8) & !\freq_devider|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(8),
	datad => VCC,
	cin => \freq_devider|Add1~15\,
	combout => \freq_devider|Add1~16_combout\,
	cout => \freq_devider|Add1~17\);

-- Location: FF_X42_Y11_N23
\freq_devider|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(8));

-- Location: LCCOMB_X42_Y11_N24
\freq_devider|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~18_combout\ = (\freq_devider|clk_cnt\(9) & (!\freq_devider|Add1~17\)) # (!\freq_devider|clk_cnt\(9) & ((\freq_devider|Add1~17\) # (GND)))
-- \freq_devider|Add1~19\ = CARRY((!\freq_devider|Add1~17\) # (!\freq_devider|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(9),
	datad => VCC,
	cin => \freq_devider|Add1~17\,
	combout => \freq_devider|Add1~18_combout\,
	cout => \freq_devider|Add1~19\);

-- Location: FF_X42_Y11_N25
\freq_devider|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(9));

-- Location: LCCOMB_X42_Y11_N26
\freq_devider|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~20_combout\ = (\freq_devider|clk_cnt\(10) & (\freq_devider|Add1~19\ $ (GND))) # (!\freq_devider|clk_cnt\(10) & (!\freq_devider|Add1~19\ & VCC))
-- \freq_devider|Add1~21\ = CARRY((\freq_devider|clk_cnt\(10) & !\freq_devider|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(10),
	datad => VCC,
	cin => \freq_devider|Add1~19\,
	combout => \freq_devider|Add1~20_combout\,
	cout => \freq_devider|Add1~21\);

-- Location: FF_X42_Y11_N27
\freq_devider|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(10));

-- Location: LCCOMB_X42_Y11_N28
\freq_devider|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~22_combout\ = (\freq_devider|clk_cnt\(11) & (!\freq_devider|Add1~21\)) # (!\freq_devider|clk_cnt\(11) & ((\freq_devider|Add1~21\) # (GND)))
-- \freq_devider|Add1~23\ = CARRY((!\freq_devider|Add1~21\) # (!\freq_devider|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(11),
	datad => VCC,
	cin => \freq_devider|Add1~21\,
	combout => \freq_devider|Add1~22_combout\,
	cout => \freq_devider|Add1~23\);

-- Location: FF_X42_Y11_N29
\freq_devider|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(11));

-- Location: LCCOMB_X42_Y11_N30
\freq_devider|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~24_combout\ = (\freq_devider|clk_cnt\(12) & (\freq_devider|Add1~23\ $ (GND))) # (!\freq_devider|clk_cnt\(12) & (!\freq_devider|Add1~23\ & VCC))
-- \freq_devider|Add1~25\ = CARRY((\freq_devider|clk_cnt\(12) & !\freq_devider|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(12),
	datad => VCC,
	cin => \freq_devider|Add1~23\,
	combout => \freq_devider|Add1~24_combout\,
	cout => \freq_devider|Add1~25\);

-- Location: LCCOMB_X42_Y11_N4
\freq_devider|clk_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~8_combout\ = (\freq_devider|Add1~24_combout\ & !\freq_devider|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add1~24_combout\,
	datad => \freq_devider|Equal1~8_combout\,
	combout => \freq_devider|clk_cnt~8_combout\);

-- Location: FF_X42_Y11_N5
\freq_devider|clk_cnt[12]\ : dffeas
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
	q => \freq_devider|clk_cnt\(12));

-- Location: LCCOMB_X42_Y10_N0
\freq_devider|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~26_combout\ = (\freq_devider|clk_cnt\(13) & (!\freq_devider|Add1~25\)) # (!\freq_devider|clk_cnt\(13) & ((\freq_devider|Add1~25\) # (GND)))
-- \freq_devider|Add1~27\ = CARRY((!\freq_devider|Add1~25\) # (!\freq_devider|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(13),
	datad => VCC,
	cin => \freq_devider|Add1~25\,
	combout => \freq_devider|Add1~26_combout\,
	cout => \freq_devider|Add1~27\);

-- Location: LCCOMB_X41_Y10_N16
\freq_devider|clk_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~7_combout\ = (\freq_devider|Add1~26_combout\ & !\freq_devider|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add1~26_combout\,
	datad => \freq_devider|Equal1~8_combout\,
	combout => \freq_devider|clk_cnt~7_combout\);

-- Location: FF_X41_Y10_N17
\freq_devider|clk_cnt[13]\ : dffeas
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
	q => \freq_devider|clk_cnt\(13));

-- Location: LCCOMB_X42_Y10_N2
\freq_devider|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~28_combout\ = (\freq_devider|clk_cnt\(14) & (\freq_devider|Add1~27\ $ (GND))) # (!\freq_devider|clk_cnt\(14) & (!\freq_devider|Add1~27\ & VCC))
-- \freq_devider|Add1~29\ = CARRY((\freq_devider|clk_cnt\(14) & !\freq_devider|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(14),
	datad => VCC,
	cin => \freq_devider|Add1~27\,
	combout => \freq_devider|Add1~28_combout\,
	cout => \freq_devider|Add1~29\);

-- Location: LCCOMB_X41_Y10_N6
\freq_devider|clk_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~6_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~28_combout\,
	combout => \freq_devider|clk_cnt~6_combout\);

-- Location: FF_X41_Y10_N7
\freq_devider|clk_cnt[14]\ : dffeas
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
	q => \freq_devider|clk_cnt\(14));

-- Location: LCCOMB_X42_Y10_N4
\freq_devider|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~30_combout\ = (\freq_devider|clk_cnt\(15) & (!\freq_devider|Add1~29\)) # (!\freq_devider|clk_cnt\(15) & ((\freq_devider|Add1~29\) # (GND)))
-- \freq_devider|Add1~31\ = CARRY((!\freq_devider|Add1~29\) # (!\freq_devider|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(15),
	datad => VCC,
	cin => \freq_devider|Add1~29\,
	combout => \freq_devider|Add1~30_combout\,
	cout => \freq_devider|Add1~31\);

-- Location: LCCOMB_X42_Y10_N30
\freq_devider|clk_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~11_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal1~8_combout\,
	datac => \freq_devider|Add1~30_combout\,
	combout => \freq_devider|clk_cnt~11_combout\);

-- Location: FF_X42_Y10_N31
\freq_devider|clk_cnt[15]\ : dffeas
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
	q => \freq_devider|clk_cnt\(15));

-- Location: LCCOMB_X42_Y10_N6
\freq_devider|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~32_combout\ = (\freq_devider|clk_cnt\(16) & (\freq_devider|Add1~31\ $ (GND))) # (!\freq_devider|clk_cnt\(16) & (!\freq_devider|Add1~31\ & VCC))
-- \freq_devider|Add1~33\ = CARRY((\freq_devider|clk_cnt\(16) & !\freq_devider|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(16),
	datad => VCC,
	cin => \freq_devider|Add1~31\,
	combout => \freq_devider|Add1~32_combout\,
	cout => \freq_devider|Add1~33\);

-- Location: FF_X42_Y10_N7
\freq_devider|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(16));

-- Location: LCCOMB_X41_Y10_N24
\freq_devider|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~5_combout\ = (!\freq_devider|clk_cnt\(16) & (\freq_devider|clk_cnt\(15) & (!\freq_devider|clk_cnt\(11) & \freq_devider|clk_cnt\(6))))

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
	combout => \freq_devider|Equal1~5_combout\);

-- Location: LCCOMB_X42_Y10_N20
\freq_devider|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~46_combout\ = (\freq_devider|clk_cnt\(23) & (!\freq_devider|Add1~45\)) # (!\freq_devider|clk_cnt\(23) & ((\freq_devider|Add1~45\) # (GND)))
-- \freq_devider|Add1~47\ = CARRY((!\freq_devider|Add1~45\) # (!\freq_devider|clk_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(23),
	datad => VCC,
	cin => \freq_devider|Add1~45\,
	combout => \freq_devider|Add1~46_combout\,
	cout => \freq_devider|Add1~47\);

-- Location: LCCOMB_X42_Y10_N22
\freq_devider|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~48_combout\ = (\freq_devider|clk_cnt\(24) & (\freq_devider|Add1~47\ $ (GND))) # (!\freq_devider|clk_cnt\(24) & (!\freq_devider|Add1~47\ & VCC))
-- \freq_devider|Add1~49\ = CARRY((\freq_devider|clk_cnt\(24) & !\freq_devider|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(24),
	datad => VCC,
	cin => \freq_devider|Add1~47\,
	combout => \freq_devider|Add1~48_combout\,
	cout => \freq_devider|Add1~49\);

-- Location: FF_X42_Y10_N23
\freq_devider|clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(24));

-- Location: LCCOMB_X42_Y10_N8
\freq_devider|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~34_combout\ = (\freq_devider|clk_cnt\(17) & (!\freq_devider|Add1~33\)) # (!\freq_devider|clk_cnt\(17) & ((\freq_devider|Add1~33\) # (GND)))
-- \freq_devider|Add1~35\ = CARRY((!\freq_devider|Add1~33\) # (!\freq_devider|clk_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|clk_cnt\(17),
	datad => VCC,
	cin => \freq_devider|Add1~33\,
	combout => \freq_devider|Add1~34_combout\,
	cout => \freq_devider|Add1~35\);

-- Location: LCCOMB_X42_Y10_N28
\freq_devider|clk_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~10_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal1~8_combout\,
	datac => \freq_devider|Add1~34_combout\,
	combout => \freq_devider|clk_cnt~10_combout\);

-- Location: FF_X42_Y10_N29
\freq_devider|clk_cnt[17]\ : dffeas
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
	q => \freq_devider|clk_cnt\(17));

-- Location: LCCOMB_X42_Y10_N10
\freq_devider|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~36_combout\ = (\freq_devider|clk_cnt\(18) & (\freq_devider|Add1~35\ $ (GND))) # (!\freq_devider|clk_cnt\(18) & (!\freq_devider|Add1~35\ & VCC))
-- \freq_devider|Add1~37\ = CARRY((\freq_devider|clk_cnt\(18) & !\freq_devider|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(18),
	datad => VCC,
	cin => \freq_devider|Add1~35\,
	combout => \freq_devider|Add1~36_combout\,
	cout => \freq_devider|Add1~37\);

-- Location: FF_X42_Y10_N11
\freq_devider|clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|Add1~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_cnt\(18));

-- Location: LCCOMB_X41_Y10_N22
\freq_devider|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~3_combout\ = (\freq_devider|clk_cnt\(23) & (!\freq_devider|clk_cnt\(24) & (!\freq_devider|clk_cnt\(18) & \freq_devider|clk_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(23),
	datab => \freq_devider|clk_cnt\(24),
	datac => \freq_devider|clk_cnt\(18),
	datad => \freq_devider|clk_cnt\(17),
	combout => \freq_devider|Equal1~3_combout\);

-- Location: LCCOMB_X42_Y10_N24
\freq_devider|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~50_combout\ = \freq_devider|Add1~49\ $ (\freq_devider|clk_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_devider|clk_cnt\(25),
	cin => \freq_devider|Add1~49\,
	combout => \freq_devider|Add1~50_combout\);

-- Location: LCCOMB_X41_Y10_N14
\freq_devider|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~0_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~50_combout\,
	combout => \freq_devider|clk_cnt~0_combout\);

-- Location: FF_X41_Y10_N15
\freq_devider|clk_cnt[25]\ : dffeas
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
	q => \freq_devider|clk_cnt\(25));

-- Location: LCCOMB_X41_Y10_N2
\freq_devider|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~2_combout\ = (\freq_devider|clk_cnt\(12) & (\freq_devider|clk_cnt\(13) & (\freq_devider|clk_cnt\(25) & \freq_devider|clk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(12),
	datab => \freq_devider|clk_cnt\(13),
	datac => \freq_devider|clk_cnt\(25),
	datad => \freq_devider|clk_cnt\(14),
	combout => \freq_devider|Equal1~2_combout\);

-- Location: LCCOMB_X42_Y10_N12
\freq_devider|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~38_combout\ = (\freq_devider|clk_cnt\(19) & (!\freq_devider|Add1~37\)) # (!\freq_devider|clk_cnt\(19) & ((\freq_devider|Add1~37\) # (GND)))
-- \freq_devider|Add1~39\ = CARRY((!\freq_devider|Add1~37\) # (!\freq_devider|clk_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(19),
	datad => VCC,
	cin => \freq_devider|Add1~37\,
	combout => \freq_devider|Add1~38_combout\,
	cout => \freq_devider|Add1~39\);

-- Location: LCCOMB_X43_Y10_N4
\freq_devider|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~5_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~38_combout\,
	combout => \freq_devider|clk_cnt~5_combout\);

-- Location: FF_X43_Y10_N5
\freq_devider|clk_cnt[19]\ : dffeas
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
	q => \freq_devider|clk_cnt\(19));

-- Location: LCCOMB_X42_Y10_N14
\freq_devider|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~40_combout\ = (\freq_devider|clk_cnt\(20) & (\freq_devider|Add1~39\ $ (GND))) # (!\freq_devider|clk_cnt\(20) & (!\freq_devider|Add1~39\ & VCC))
-- \freq_devider|Add1~41\ = CARRY((\freq_devider|clk_cnt\(20) & !\freq_devider|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(20),
	datad => VCC,
	cin => \freq_devider|Add1~39\,
	combout => \freq_devider|Add1~40_combout\,
	cout => \freq_devider|Add1~41\);

-- Location: LCCOMB_X43_Y10_N6
\freq_devider|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~4_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~40_combout\,
	combout => \freq_devider|clk_cnt~4_combout\);

-- Location: FF_X43_Y10_N7
\freq_devider|clk_cnt[20]\ : dffeas
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
	q => \freq_devider|clk_cnt\(20));

-- Location: LCCOMB_X42_Y10_N16
\freq_devider|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~42_combout\ = (\freq_devider|clk_cnt\(21) & (!\freq_devider|Add1~41\)) # (!\freq_devider|clk_cnt\(21) & ((\freq_devider|Add1~41\) # (GND)))
-- \freq_devider|Add1~43\ = CARRY((!\freq_devider|Add1~41\) # (!\freq_devider|clk_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(21),
	datad => VCC,
	cin => \freq_devider|Add1~41\,
	combout => \freq_devider|Add1~42_combout\,
	cout => \freq_devider|Add1~43\);

-- Location: LCCOMB_X42_Y10_N26
\freq_devider|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~3_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~42_combout\,
	combout => \freq_devider|clk_cnt~3_combout\);

-- Location: FF_X42_Y10_N27
\freq_devider|clk_cnt[21]\ : dffeas
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
	q => \freq_devider|clk_cnt\(21));

-- Location: LCCOMB_X43_Y10_N10
\freq_devider|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~0_combout\ = (\freq_devider|clk_cnt\(21) & (\freq_devider|clk_cnt\(22) & (\freq_devider|clk_cnt\(19) & \freq_devider|clk_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(21),
	datab => \freq_devider|clk_cnt\(22),
	datac => \freq_devider|clk_cnt\(19),
	datad => \freq_devider|clk_cnt\(20),
	combout => \freq_devider|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y11_N0
\freq_devider|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~1_combout\ = (!\freq_devider|clk_cnt\(8) & (!\freq_devider|clk_cnt\(7) & (!\freq_devider|clk_cnt\(10) & !\freq_devider|clk_cnt\(9))))

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
	combout => \freq_devider|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y10_N8
\freq_devider|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~4_combout\ = (\freq_devider|Equal1~3_combout\ & (\freq_devider|Equal1~2_combout\ & (\freq_devider|Equal1~0_combout\ & \freq_devider|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal1~3_combout\,
	datab => \freq_devider|Equal1~2_combout\,
	datac => \freq_devider|Equal1~0_combout\,
	datad => \freq_devider|Equal1~1_combout\,
	combout => \freq_devider|Equal1~4_combout\);

-- Location: LCCOMB_X41_Y11_N24
\freq_devider|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~6_combout\ = (\freq_devider|clk_cnt\(3) & (\freq_devider|clk_cnt\(4) & (\freq_devider|clk_cnt\(2) & \freq_devider|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(3),
	datab => \freq_devider|clk_cnt\(4),
	datac => \freq_devider|clk_cnt\(2),
	datad => \freq_devider|clk_cnt\(5),
	combout => \freq_devider|Equal1~6_combout\);

-- Location: LCCOMB_X41_Y10_N0
\freq_devider|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Equal1~8_combout\ = (\freq_devider|Equal1~7_combout\ & (\freq_devider|Equal1~5_combout\ & (\freq_devider|Equal1~4_combout\ & \freq_devider|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|Equal1~7_combout\,
	datab => \freq_devider|Equal1~5_combout\,
	datac => \freq_devider|Equal1~4_combout\,
	datad => \freq_devider|Equal1~6_combout\,
	combout => \freq_devider|Equal1~8_combout\);

-- Location: LCCOMB_X42_Y10_N18
\freq_devider|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|Add1~44_combout\ = (\freq_devider|clk_cnt\(22) & (\freq_devider|Add1~43\ $ (GND))) # (!\freq_devider|clk_cnt\(22) & (!\freq_devider|Add1~43\ & VCC))
-- \freq_devider|Add1~45\ = CARRY((\freq_devider|clk_cnt\(22) & !\freq_devider|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(22),
	datad => VCC,
	cin => \freq_devider|Add1~43\,
	combout => \freq_devider|Add1~44_combout\,
	cout => \freq_devider|Add1~45\);

-- Location: LCCOMB_X43_Y10_N20
\freq_devider|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~2_combout\ = (!\freq_devider|Equal1~8_combout\ & \freq_devider|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Equal1~8_combout\,
	datad => \freq_devider|Add1~44_combout\,
	combout => \freq_devider|clk_cnt~2_combout\);

-- Location: FF_X43_Y10_N21
\freq_devider|clk_cnt[22]\ : dffeas
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
	q => \freq_devider|clk_cnt\(22));

-- Location: LCCOMB_X41_Y10_N12
\freq_devider|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|clk_cnt~1_combout\ = (\freq_devider|Add1~46_combout\ & !\freq_devider|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_devider|Add1~46_combout\,
	datad => \freq_devider|Equal1~8_combout\,
	combout => \freq_devider|clk_cnt~1_combout\);

-- Location: FF_X41_Y10_N13
\freq_devider|clk_cnt[23]\ : dffeas
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
	q => \freq_devider|clk_cnt\(23));

-- Location: LCCOMB_X41_Y10_N26
\freq_devider|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan1~2_combout\ = (\freq_devider|clk_cnt\(17)) # ((\freq_devider|clk_cnt\(16) & \freq_devider|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(16),
	datab => \freq_devider|clk_cnt\(17),
	datad => \freq_devider|clk_cnt\(15),
	combout => \freq_devider|LessThan1~2_combout\);

-- Location: LCCOMB_X41_Y10_N30
\freq_devider|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan1~0_combout\ = (\freq_devider|clk_cnt\(14) & (\freq_devider|clk_cnt\(13) & (\freq_devider|clk_cnt\(12) & \freq_devider|clk_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(14),
	datab => \freq_devider|clk_cnt\(13),
	datac => \freq_devider|clk_cnt\(12),
	datad => \freq_devider|clk_cnt\(16),
	combout => \freq_devider|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y10_N20
\freq_devider|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan1~1_combout\ = (\freq_devider|clk_cnt\(11) & (\freq_devider|LessThan1~0_combout\ & ((\freq_devider|clk_cnt\(6)) # (!\freq_devider|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(6),
	datab => \freq_devider|clk_cnt\(11),
	datac => \freq_devider|LessThan1~0_combout\,
	datad => \freq_devider|Equal1~1_combout\,
	combout => \freq_devider|LessThan1~1_combout\);

-- Location: LCCOMB_X41_Y10_N4
\freq_devider|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan1~3_combout\ = (\freq_devider|clk_cnt\(18) & (\freq_devider|Equal1~0_combout\ & ((\freq_devider|LessThan1~2_combout\) # (\freq_devider|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|LessThan1~2_combout\,
	datab => \freq_devider|clk_cnt\(18),
	datac => \freq_devider|Equal1~0_combout\,
	datad => \freq_devider|LessThan1~1_combout\,
	combout => \freq_devider|LessThan1~3_combout\);

-- Location: LCCOMB_X41_Y10_N10
\freq_devider|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_devider|LessThan1~4_combout\ = (\freq_devider|clk_cnt\(25)) # ((\freq_devider|clk_cnt\(24) & ((\freq_devider|clk_cnt\(23)) # (\freq_devider|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_devider|clk_cnt\(23),
	datab => \freq_devider|clk_cnt\(25),
	datac => \freq_devider|LessThan1~3_combout\,
	datad => \freq_devider|clk_cnt\(24),
	combout => \freq_devider|LessThan1~4_combout\);

-- Location: FF_X41_Y10_N11
\freq_devider|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \freq_devider|LessThan1~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_devider|clk_out~q\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X1_Y12_N2
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

-- Location: FF_X1_Y12_N3
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

-- Location: LCCOMB_X1_Y12_N24
\up_counter|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt~2_combout\ = (\up_counter|cnt\(2) & (\up_counter|cnt\(3) $ (((\up_counter|cnt\(0) & \up_counter|cnt\(1)))))) # (!\up_counter|cnt\(2) & (\up_counter|cnt\(3) & ((\up_counter|cnt\(1)) # (!\up_counter|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(1),
	combout => \up_counter|cnt~2_combout\);

-- Location: FF_X1_Y12_N25
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

-- Location: LCCOMB_X1_Y12_N12
\up_counter|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt~0_combout\ = (\up_counter|cnt\(1) & (((!\up_counter|cnt\(0))))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(0) & ((\up_counter|cnt\(2)) # (!\up_counter|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(1),
	datad => \up_counter|cnt\(0),
	combout => \up_counter|cnt~0_combout\);

-- Location: FF_X1_Y12_N13
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

-- Location: LCCOMB_X1_Y12_N10
\up_counter|cnt[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_counter|cnt[2]~1_combout\ = \up_counter|cnt\(2) $ (((\up_counter|cnt\(0) & \up_counter|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(2),
	datad => \up_counter|cnt\(1),
	combout => \up_counter|cnt[2]~1_combout\);

-- Location: FF_X1_Y12_N11
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

-- Location: LCCOMB_X1_Y12_N16
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

-- Location: FF_X1_Y12_N17
\seg7|dig_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(0));

-- Location: LCCOMB_X1_Y12_N30
\seg7|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr5~0_combout\ = (\up_counter|cnt\(2) & (!\up_counter|cnt\(3) & ((!\up_counter|cnt\(1)) # (!\up_counter|cnt\(0))))) # (!\up_counter|cnt\(2) & (!\up_counter|cnt\(1) & ((\up_counter|cnt\(3)) # (!\up_counter|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr5~0_combout\);

-- Location: FF_X1_Y12_N31
\seg7|dig_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(1));

-- Location: LCCOMB_X1_Y12_N4
\seg7|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr4~0_combout\ = (!\up_counter|cnt\(0) & ((\up_counter|cnt\(1) & ((!\up_counter|cnt\(3)))) # (!\up_counter|cnt\(1) & (!\up_counter|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr4~0_combout\);

-- Location: FF_X1_Y12_N5
\seg7|dig_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(2));

-- Location: LCCOMB_X1_Y12_N14
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

-- Location: FF_X1_Y12_N15
\seg7|dig_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(3));

-- Location: LCCOMB_X1_Y12_N8
\seg7|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr2~0_combout\ = (\up_counter|cnt\(2) & (((!\up_counter|cnt\(3))))) # (!\up_counter|cnt\(2) & (((\up_counter|cnt\(0) & !\up_counter|cnt\(3))) # (!\up_counter|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(2),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(1),
	combout => \seg7|WideOr2~0_combout\);

-- Location: FF_X1_Y12_N9
\seg7|dig_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(4));

-- Location: LCCOMB_X1_Y12_N26
\seg7|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr1~0_combout\ = (\up_counter|cnt\(3) & (!\up_counter|cnt\(1) & ((!\up_counter|cnt\(2))))) # (!\up_counter|cnt\(3) & ((\up_counter|cnt\(1) $ (!\up_counter|cnt\(0))) # (!\up_counter|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datab => \up_counter|cnt\(0),
	datac => \up_counter|cnt\(3),
	datad => \up_counter|cnt\(2),
	combout => \seg7|WideOr1~0_combout\);

-- Location: FF_X1_Y12_N27
\seg7|dig_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(5));

-- Location: LCCOMB_X1_Y12_N0
\seg7|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg7|WideOr0~0_combout\ = (\up_counter|cnt\(1) & (!\up_counter|cnt\(3))) # (!\up_counter|cnt\(1) & (\up_counter|cnt\(2) $ (((\up_counter|cnt\(3)) # (!\up_counter|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_counter|cnt\(1),
	datab => \up_counter|cnt\(3),
	datac => \up_counter|cnt\(0),
	datad => \up_counter|cnt\(2),
	combout => \seg7|WideOr0~0_combout\);

-- Location: FF_X1_Y12_N1
\seg7|dig_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|WideOr0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|dig_out\(6));

-- Location: LCCOMB_X1_Y12_N20
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

-- Location: FF_X1_Y12_N21
\seg7|sel_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|sel_out[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(1));

-- Location: LCCOMB_X1_Y12_N6
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

-- Location: FF_X1_Y12_N7
\seg7|sel_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|sel_out[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(2));

-- Location: LCCOMB_X1_Y12_N28
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

-- Location: FF_X1_Y12_N29
\seg7|sel_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
	d => \seg7|sel_out[3]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg7|sel_out\(3));

-- Location: LCCOMB_X1_Y12_N18
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

-- Location: FF_X1_Y12_N19
\seg7|sel_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_devider|clk100hz_out~clkctrl_outclk\,
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


