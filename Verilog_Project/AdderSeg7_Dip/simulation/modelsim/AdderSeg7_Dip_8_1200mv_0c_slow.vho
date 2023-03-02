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

-- DATE "03/02/2023 12:40:36"

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

ENTITY 	AdderSeg7_Dip IS
    PORT (
	clk_50Mhz : IN std_logic;
	dip : IN std_logic_vector(7 DOWNTO 0);
	dig_out : OUT std_logic_vector(7 DOWNTO 0);
	sel_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END AdderSeg7_Dip;

-- Design Ports Information
-- dig_out[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[3]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[5]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[6]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig_out[7]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[4]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[7]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[1]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dip[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AdderSeg7_Dip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_dip : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_divider|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig_out[0]~output_o\ : std_logic;
SIGNAL \dig_out[1]~output_o\ : std_logic;
SIGNAL \dig_out[2]~output_o\ : std_logic;
SIGNAL \dig_out[3]~output_o\ : std_logic;
SIGNAL \dig_out[4]~output_o\ : std_logic;
SIGNAL \dig_out[5]~output_o\ : std_logic;
SIGNAL \dig_out[6]~output_o\ : std_logic;
SIGNAL \dig_out[7]~output_o\ : std_logic;
SIGNAL \sel_out[0]~output_o\ : std_logic;
SIGNAL \sel_out[1]~output_o\ : std_logic;
SIGNAL \sel_out[2]~output_o\ : std_logic;
SIGNAL \sel_out[3]~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \freq_divider|Add0~0_combout\ : std_logic;
SIGNAL \freq_divider|Add0~1\ : std_logic;
SIGNAL \freq_divider|Add0~2_combout\ : std_logic;
SIGNAL \freq_divider|Add0~3\ : std_logic;
SIGNAL \freq_divider|Add0~4_combout\ : std_logic;
SIGNAL \freq_divider|Add0~5\ : std_logic;
SIGNAL \freq_divider|Add0~6_combout\ : std_logic;
SIGNAL \freq_divider|Add0~7\ : std_logic;
SIGNAL \freq_divider|Add0~8_combout\ : std_logic;
SIGNAL \freq_divider|cnt~1_combout\ : std_logic;
SIGNAL \freq_divider|Add0~9\ : std_logic;
SIGNAL \freq_divider|Add0~10_combout\ : std_logic;
SIGNAL \freq_divider|Add0~11\ : std_logic;
SIGNAL \freq_divider|Add0~12_combout\ : std_logic;
SIGNAL \freq_divider|cnt~2_combout\ : std_logic;
SIGNAL \freq_divider|Add0~13\ : std_logic;
SIGNAL \freq_divider|Add0~14_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~4_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~3_combout\ : std_logic;
SIGNAL \freq_divider|Add0~27\ : std_logic;
SIGNAL \freq_divider|Add0~28_combout\ : std_logic;
SIGNAL \freq_divider|cnt~4_combout\ : std_logic;
SIGNAL \freq_divider|Add0~29\ : std_logic;
SIGNAL \freq_divider|Add0~30_combout\ : std_logic;
SIGNAL \freq_divider|cnt~5_combout\ : std_logic;
SIGNAL \freq_divider|Add0~31\ : std_logic;
SIGNAL \freq_divider|Add0~32_combout\ : std_logic;
SIGNAL \freq_divider|Add0~33\ : std_logic;
SIGNAL \freq_divider|Add0~34_combout\ : std_logic;
SIGNAL \freq_divider|Add0~35\ : std_logic;
SIGNAL \freq_divider|Add0~36_combout\ : std_logic;
SIGNAL \freq_divider|Add0~37\ : std_logic;
SIGNAL \freq_divider|Add0~38_combout\ : std_logic;
SIGNAL \freq_divider|Add0~39\ : std_logic;
SIGNAL \freq_divider|Add0~40_combout\ : std_logic;
SIGNAL \freq_divider|Add0~41\ : std_logic;
SIGNAL \freq_divider|Add0~42_combout\ : std_logic;
SIGNAL \freq_divider|Add0~43\ : std_logic;
SIGNAL \freq_divider|Add0~44_combout\ : std_logic;
SIGNAL \freq_divider|Add0~45\ : std_logic;
SIGNAL \freq_divider|Add0~46_combout\ : std_logic;
SIGNAL \freq_divider|Add0~47\ : std_logic;
SIGNAL \freq_divider|Add0~48_combout\ : std_logic;
SIGNAL \freq_divider|Add0~49\ : std_logic;
SIGNAL \freq_divider|Add0~50_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~0_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~1_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~2_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~6_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~5_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~7_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~8_combout\ : std_logic;
SIGNAL \freq_divider|Add0~15\ : std_logic;
SIGNAL \freq_divider|Add0~16_combout\ : std_logic;
SIGNAL \freq_divider|cnt~3_combout\ : std_logic;
SIGNAL \freq_divider|Add0~17\ : std_logic;
SIGNAL \freq_divider|Add0~18_combout\ : std_logic;
SIGNAL \freq_divider|cnt~0_combout\ : std_logic;
SIGNAL \freq_divider|Add0~19\ : std_logic;
SIGNAL \freq_divider|Add0~20_combout\ : std_logic;
SIGNAL \freq_divider|Add0~21\ : std_logic;
SIGNAL \freq_divider|Add0~22_combout\ : std_logic;
SIGNAL \freq_divider|Add0~23\ : std_logic;
SIGNAL \freq_divider|Add0~24_combout\ : std_logic;
SIGNAL \freq_divider|Add0~25\ : std_logic;
SIGNAL \freq_divider|Add0~26_combout\ : std_logic;
SIGNAL \freq_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \freq_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \freq_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \freq_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \freq_divider|LessThan0~4_combout\ : std_logic;
SIGNAL \freq_divider|clk_out~q\ : std_logic;
SIGNAL \freq_divider|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \dip[7]~input_o\ : std_logic;
SIGNAL \dip[6]~input_o\ : std_logic;
SIGNAL \dip[5]~input_o\ : std_logic;
SIGNAL \dip[4]~input_o\ : std_logic;
SIGNAL \dip_switch|bin~6_combout\ : std_logic;
SIGNAL \dip[3]~input_o\ : std_logic;
SIGNAL \dip_switch|bin~4_combout\ : std_logic;
SIGNAL \dip_switch|bin~3_combout\ : std_logic;
SIGNAL \dip[2]~input_o\ : std_logic;
SIGNAL \dip_switch|bin~17_combout\ : std_logic;
SIGNAL \dip_switch|bin~7_combout\ : std_logic;
SIGNAL \dip_switch|bin~18_combout\ : std_logic;
SIGNAL \dip_switch|bin~38_combout\ : std_logic;
SIGNAL \dip_switch|bin~19_combout\ : std_logic;
SIGNAL \dip_switch|bin~20_combout\ : std_logic;
SIGNAL \dip_switch|bin~21_combout\ : std_logic;
SIGNAL \dip_switch|bin~23_combout\ : std_logic;
SIGNAL \dip_switch|bin~22_combout\ : std_logic;
SIGNAL \dip_switch|bin~24_combout\ : std_logic;
SIGNAL \dip_switch|bin~36_combout\ : std_logic;
SIGNAL \dip_switch|bin~35_combout\ : std_logic;
SIGNAL \dip_switch|bin~37_combout\ : std_logic;
SIGNAL \dip_switch|bin~30_combout\ : std_logic;
SIGNAL \dip_switch|bin~25_combout\ : std_logic;
SIGNAL \dip_switch|bin~26_combout\ : std_logic;
SIGNAL \dip_switch|bin~27_combout\ : std_logic;
SIGNAL \dip[1]~input_o\ : std_logic;
SIGNAL \dip_switch|bin~28_combout\ : std_logic;
SIGNAL \dip_switch|bin~29_combout\ : std_logic;
SIGNAL \seg_driver|WideOr13~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux1~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux3~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux0~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux2~0_combout\ : std_logic;
SIGNAL \dip_switch|bin~32_combout\ : std_logic;
SIGNAL \dip_switch|bin~33_combout\ : std_logic;
SIGNAL \dip_switch|bin~31_combout\ : std_logic;
SIGNAL \dip[0]~input_o\ : std_logic;
SIGNAL \seg_driver|WideOr6~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux10~0_combout\ : std_logic;
SIGNAL \dip_switch|bin~11_combout\ : std_logic;
SIGNAL \dip_switch|bin~39_combout\ : std_logic;
SIGNAL \dip_switch|bin[17]~feeder_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[2]~2_combout\ : std_logic;
SIGNAL \dip_switch|bin~34_combout\ : std_logic;
SIGNAL \seg_driver|Mux6~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr12~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr5~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux9~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux9~1_combout\ : std_logic;
SIGNAL \seg_driver|WideOr11~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr4~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux8~2_combout\ : std_logic;
SIGNAL \seg_driver|Mux8~3_combout\ : std_logic;
SIGNAL \seg_driver|WideOr10~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr3~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr3~1_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[4]~0_combout\ : std_logic;
SIGNAL \seg_driver|Decoder2~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr9~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr2~0_combout\ : std_logic;
SIGNAL \seg_driver|Mux6~1_combout\ : std_logic;
SIGNAL \seg_driver|Mux6~2_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[6]~5_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[6]~4_combout\ : std_logic;
SIGNAL \seg_driver|WideOr1~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr8~0_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[6]~3_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[6]~6_combout\ : std_logic;
SIGNAL \seg_driver|WideOr7~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr0~0_combout\ : std_logic;
SIGNAL \seg_driver|WideOr0~1_combout\ : std_logic;
SIGNAL \seg_driver|dig_out[7]~1_combout\ : std_logic;
SIGNAL \freq_divider|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \dip_switch|bin\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \seg_driver|sel_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_driver|dig_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg_driver|ALT_INV_sel_out\ : std_logic_vector(3 DOWNTO 1);

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_dip <= dip;
dig_out <= ww_dig_out;
sel_out <= ww_sel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freq_divider|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_divider|clk_out~q\);

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);
\seg_driver|ALT_INV_sel_out\(3) <= NOT \seg_driver|sel_out\(3);
\seg_driver|ALT_INV_sel_out\(2) <= NOT \seg_driver|sel_out\(2);
\seg_driver|ALT_INV_sel_out\(1) <= NOT \seg_driver|sel_out\(1);

-- Location: IOOBUF_X0_Y7_N2
\dig_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\dig_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(1),
	devoe => ww_devoe,
	o => \dig_out[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\dig_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(2),
	devoe => ww_devoe,
	o => \dig_out[2]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dig_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(3),
	devoe => ww_devoe,
	o => \dig_out[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\dig_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(4),
	devoe => ww_devoe,
	o => \dig_out[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\dig_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(5),
	devoe => ww_devoe,
	o => \dig_out[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\dig_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(6),
	devoe => ww_devoe,
	o => \dig_out[6]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\dig_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|dig_out\(7),
	devoe => ww_devoe,
	o => \dig_out[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\sel_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_driver|sel_out\(0),
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
	i => \seg_driver|ALT_INV_sel_out\(1),
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
	i => \seg_driver|ALT_INV_sel_out\(2),
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
	i => \seg_driver|ALT_INV_sel_out\(3),
	devoe => ww_devoe,
	o => \sel_out[3]~output_o\);

-- Location: IOIBUF_X67_Y22_N22
\clk_50Mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G8
\clk_50Mhz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y16_N6
\freq_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~0_combout\ = \freq_divider|cnt\(0) $ (VCC)
-- \freq_divider|Add0~1\ = CARRY(\freq_divider|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(0),
	datad => VCC,
	combout => \freq_divider|Add0~0_combout\,
	cout => \freq_divider|Add0~1\);

-- Location: FF_X2_Y16_N7
\freq_divider|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(0));

-- Location: LCCOMB_X2_Y16_N8
\freq_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~2_combout\ = (\freq_divider|cnt\(1) & (!\freq_divider|Add0~1\)) # (!\freq_divider|cnt\(1) & ((\freq_divider|Add0~1\) # (GND)))
-- \freq_divider|Add0~3\ = CARRY((!\freq_divider|Add0~1\) # (!\freq_divider|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(1),
	datad => VCC,
	cin => \freq_divider|Add0~1\,
	combout => \freq_divider|Add0~2_combout\,
	cout => \freq_divider|Add0~3\);

-- Location: FF_X2_Y16_N9
\freq_divider|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(1));

-- Location: LCCOMB_X2_Y16_N10
\freq_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~4_combout\ = (\freq_divider|cnt\(2) & (\freq_divider|Add0~3\ $ (GND))) # (!\freq_divider|cnt\(2) & (!\freq_divider|Add0~3\ & VCC))
-- \freq_divider|Add0~5\ = CARRY((\freq_divider|cnt\(2) & !\freq_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(2),
	datad => VCC,
	cin => \freq_divider|Add0~3\,
	combout => \freq_divider|Add0~4_combout\,
	cout => \freq_divider|Add0~5\);

-- Location: FF_X2_Y16_N11
\freq_divider|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(2));

-- Location: LCCOMB_X2_Y16_N12
\freq_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~6_combout\ = (\freq_divider|cnt\(3) & (!\freq_divider|Add0~5\)) # (!\freq_divider|cnt\(3) & ((\freq_divider|Add0~5\) # (GND)))
-- \freq_divider|Add0~7\ = CARRY((!\freq_divider|Add0~5\) # (!\freq_divider|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(3),
	datad => VCC,
	cin => \freq_divider|Add0~5\,
	combout => \freq_divider|Add0~6_combout\,
	cout => \freq_divider|Add0~7\);

-- Location: FF_X2_Y16_N13
\freq_divider|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(3));

-- Location: LCCOMB_X2_Y16_N14
\freq_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~8_combout\ = (\freq_divider|cnt\(4) & (\freq_divider|Add0~7\ $ (GND))) # (!\freq_divider|cnt\(4) & (!\freq_divider|Add0~7\ & VCC))
-- \freq_divider|Add0~9\ = CARRY((\freq_divider|cnt\(4) & !\freq_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(4),
	datad => VCC,
	cin => \freq_divider|Add0~7\,
	combout => \freq_divider|Add0~8_combout\,
	cout => \freq_divider|Add0~9\);

-- Location: LCCOMB_X2_Y16_N2
\freq_divider|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~1_combout\ = (\freq_divider|Add0~8_combout\ & !\freq_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Add0~8_combout\,
	datad => \freq_divider|Equal0~8_combout\,
	combout => \freq_divider|cnt~1_combout\);

-- Location: FF_X2_Y16_N3
\freq_divider|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(4));

-- Location: LCCOMB_X2_Y16_N16
\freq_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~10_combout\ = (\freq_divider|cnt\(5) & (!\freq_divider|Add0~9\)) # (!\freq_divider|cnt\(5) & ((\freq_divider|Add0~9\) # (GND)))
-- \freq_divider|Add0~11\ = CARRY((!\freq_divider|Add0~9\) # (!\freq_divider|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(5),
	datad => VCC,
	cin => \freq_divider|Add0~9\,
	combout => \freq_divider|Add0~10_combout\,
	cout => \freq_divider|Add0~11\);

-- Location: FF_X2_Y16_N17
\freq_divider|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(5));

-- Location: LCCOMB_X2_Y16_N18
\freq_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~12_combout\ = (\freq_divider|cnt\(6) & (\freq_divider|Add0~11\ $ (GND))) # (!\freq_divider|cnt\(6) & (!\freq_divider|Add0~11\ & VCC))
-- \freq_divider|Add0~13\ = CARRY((\freq_divider|cnt\(6) & !\freq_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(6),
	datad => VCC,
	cin => \freq_divider|Add0~11\,
	combout => \freq_divider|Add0~12_combout\,
	cout => \freq_divider|Add0~13\);

-- Location: LCCOMB_X2_Y16_N0
\freq_divider|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~2_combout\ = (\freq_divider|Add0~12_combout\ & !\freq_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Add0~12_combout\,
	datad => \freq_divider|Equal0~8_combout\,
	combout => \freq_divider|cnt~2_combout\);

-- Location: FF_X2_Y16_N1
\freq_divider|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(6));

-- Location: LCCOMB_X2_Y16_N20
\freq_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~14_combout\ = (\freq_divider|cnt\(7) & (!\freq_divider|Add0~13\)) # (!\freq_divider|cnt\(7) & ((\freq_divider|Add0~13\) # (GND)))
-- \freq_divider|Add0~15\ = CARRY((!\freq_divider|Add0~13\) # (!\freq_divider|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(7),
	datad => VCC,
	cin => \freq_divider|Add0~13\,
	combout => \freq_divider|Add0~14_combout\,
	cout => \freq_divider|Add0~15\);

-- Location: FF_X2_Y16_N21
\freq_divider|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(7));

-- Location: LCCOMB_X1_Y16_N30
\freq_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~4_combout\ = (!\freq_divider|cnt\(4) & (\freq_divider|cnt\(6) & (!\freq_divider|cnt\(7) & !\freq_divider|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(4),
	datab => \freq_divider|cnt\(6),
	datac => \freq_divider|cnt\(7),
	datad => \freq_divider|cnt\(5),
	combout => \freq_divider|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y15_N18
\freq_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~3_combout\ = (\freq_divider|cnt\(8) & (!\freq_divider|cnt\(12) & (!\freq_divider|cnt\(10) & !\freq_divider|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(8),
	datab => \freq_divider|cnt\(12),
	datac => \freq_divider|cnt\(10),
	datad => \freq_divider|cnt\(11),
	combout => \freq_divider|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y15_N0
\freq_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~26_combout\ = (\freq_divider|cnt\(13) & (!\freq_divider|Add0~25\)) # (!\freq_divider|cnt\(13) & ((\freq_divider|Add0~25\) # (GND)))
-- \freq_divider|Add0~27\ = CARRY((!\freq_divider|Add0~25\) # (!\freq_divider|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(13),
	datad => VCC,
	cin => \freq_divider|Add0~25\,
	combout => \freq_divider|Add0~26_combout\,
	cout => \freq_divider|Add0~27\);

-- Location: LCCOMB_X2_Y15_N2
\freq_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~28_combout\ = (\freq_divider|cnt\(14) & (\freq_divider|Add0~27\ $ (GND))) # (!\freq_divider|cnt\(14) & (!\freq_divider|Add0~27\ & VCC))
-- \freq_divider|Add0~29\ = CARRY((\freq_divider|cnt\(14) & !\freq_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(14),
	datad => VCC,
	cin => \freq_divider|Add0~27\,
	combout => \freq_divider|Add0~28_combout\,
	cout => \freq_divider|Add0~29\);

-- Location: LCCOMB_X1_Y15_N8
\freq_divider|cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~4_combout\ = (!\freq_divider|Equal0~8_combout\ & \freq_divider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~8_combout\,
	datad => \freq_divider|Add0~28_combout\,
	combout => \freq_divider|cnt~4_combout\);

-- Location: FF_X1_Y15_N9
\freq_divider|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(14));

-- Location: LCCOMB_X2_Y15_N4
\freq_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~30_combout\ = (\freq_divider|cnt\(15) & (!\freq_divider|Add0~29\)) # (!\freq_divider|cnt\(15) & ((\freq_divider|Add0~29\) # (GND)))
-- \freq_divider|Add0~31\ = CARRY((!\freq_divider|Add0~29\) # (!\freq_divider|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(15),
	datad => VCC,
	cin => \freq_divider|Add0~29\,
	combout => \freq_divider|Add0~30_combout\,
	cout => \freq_divider|Add0~31\);

-- Location: LCCOMB_X1_Y15_N16
\freq_divider|cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~5_combout\ = (!\freq_divider|Equal0~8_combout\ & \freq_divider|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~8_combout\,
	datad => \freq_divider|Add0~30_combout\,
	combout => \freq_divider|cnt~5_combout\);

-- Location: FF_X1_Y15_N17
\freq_divider|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(15));

-- Location: LCCOMB_X2_Y15_N6
\freq_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~32_combout\ = (\freq_divider|cnt\(16) & (\freq_divider|Add0~31\ $ (GND))) # (!\freq_divider|cnt\(16) & (!\freq_divider|Add0~31\ & VCC))
-- \freq_divider|Add0~33\ = CARRY((\freq_divider|cnt\(16) & !\freq_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(16),
	datad => VCC,
	cin => \freq_divider|Add0~31\,
	combout => \freq_divider|Add0~32_combout\,
	cout => \freq_divider|Add0~33\);

-- Location: FF_X2_Y15_N7
\freq_divider|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(16));

-- Location: LCCOMB_X2_Y15_N8
\freq_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~34_combout\ = (\freq_divider|cnt\(17) & (!\freq_divider|Add0~33\)) # (!\freq_divider|cnt\(17) & ((\freq_divider|Add0~33\) # (GND)))
-- \freq_divider|Add0~35\ = CARRY((!\freq_divider|Add0~33\) # (!\freq_divider|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(17),
	datad => VCC,
	cin => \freq_divider|Add0~33\,
	combout => \freq_divider|Add0~34_combout\,
	cout => \freq_divider|Add0~35\);

-- Location: FF_X2_Y15_N9
\freq_divider|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(17));

-- Location: LCCOMB_X2_Y15_N10
\freq_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~36_combout\ = (\freq_divider|cnt\(18) & (\freq_divider|Add0~35\ $ (GND))) # (!\freq_divider|cnt\(18) & (!\freq_divider|Add0~35\ & VCC))
-- \freq_divider|Add0~37\ = CARRY((\freq_divider|cnt\(18) & !\freq_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(18),
	datad => VCC,
	cin => \freq_divider|Add0~35\,
	combout => \freq_divider|Add0~36_combout\,
	cout => \freq_divider|Add0~37\);

-- Location: FF_X2_Y15_N11
\freq_divider|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(18));

-- Location: LCCOMB_X2_Y15_N12
\freq_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~38_combout\ = (\freq_divider|cnt\(19) & (!\freq_divider|Add0~37\)) # (!\freq_divider|cnt\(19) & ((\freq_divider|Add0~37\) # (GND)))
-- \freq_divider|Add0~39\ = CARRY((!\freq_divider|Add0~37\) # (!\freq_divider|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(19),
	datad => VCC,
	cin => \freq_divider|Add0~37\,
	combout => \freq_divider|Add0~38_combout\,
	cout => \freq_divider|Add0~39\);

-- Location: FF_X2_Y15_N13
\freq_divider|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(19));

-- Location: LCCOMB_X2_Y15_N14
\freq_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~40_combout\ = (\freq_divider|cnt\(20) & (\freq_divider|Add0~39\ $ (GND))) # (!\freq_divider|cnt\(20) & (!\freq_divider|Add0~39\ & VCC))
-- \freq_divider|Add0~41\ = CARRY((\freq_divider|cnt\(20) & !\freq_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(20),
	datad => VCC,
	cin => \freq_divider|Add0~39\,
	combout => \freq_divider|Add0~40_combout\,
	cout => \freq_divider|Add0~41\);

-- Location: FF_X2_Y15_N15
\freq_divider|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(20));

-- Location: LCCOMB_X2_Y15_N16
\freq_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~42_combout\ = (\freq_divider|cnt\(21) & (!\freq_divider|Add0~41\)) # (!\freq_divider|cnt\(21) & ((\freq_divider|Add0~41\) # (GND)))
-- \freq_divider|Add0~43\ = CARRY((!\freq_divider|Add0~41\) # (!\freq_divider|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(21),
	datad => VCC,
	cin => \freq_divider|Add0~41\,
	combout => \freq_divider|Add0~42_combout\,
	cout => \freq_divider|Add0~43\);

-- Location: FF_X2_Y15_N17
\freq_divider|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(21));

-- Location: LCCOMB_X2_Y15_N18
\freq_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~44_combout\ = (\freq_divider|cnt\(22) & (\freq_divider|Add0~43\ $ (GND))) # (!\freq_divider|cnt\(22) & (!\freq_divider|Add0~43\ & VCC))
-- \freq_divider|Add0~45\ = CARRY((\freq_divider|cnt\(22) & !\freq_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(22),
	datad => VCC,
	cin => \freq_divider|Add0~43\,
	combout => \freq_divider|Add0~44_combout\,
	cout => \freq_divider|Add0~45\);

-- Location: FF_X2_Y15_N19
\freq_divider|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(22));

-- Location: LCCOMB_X2_Y15_N20
\freq_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~46_combout\ = (\freq_divider|cnt\(23) & (!\freq_divider|Add0~45\)) # (!\freq_divider|cnt\(23) & ((\freq_divider|Add0~45\) # (GND)))
-- \freq_divider|Add0~47\ = CARRY((!\freq_divider|Add0~45\) # (!\freq_divider|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(23),
	datad => VCC,
	cin => \freq_divider|Add0~45\,
	combout => \freq_divider|Add0~46_combout\,
	cout => \freq_divider|Add0~47\);

-- Location: FF_X2_Y15_N21
\freq_divider|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(23));

-- Location: LCCOMB_X2_Y15_N22
\freq_divider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~48_combout\ = (\freq_divider|cnt\(24) & (\freq_divider|Add0~47\ $ (GND))) # (!\freq_divider|cnt\(24) & (!\freq_divider|Add0~47\ & VCC))
-- \freq_divider|Add0~49\ = CARRY((\freq_divider|cnt\(24) & !\freq_divider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(24),
	datad => VCC,
	cin => \freq_divider|Add0~47\,
	combout => \freq_divider|Add0~48_combout\,
	cout => \freq_divider|Add0~49\);

-- Location: FF_X2_Y15_N23
\freq_divider|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(24));

-- Location: LCCOMB_X2_Y15_N24
\freq_divider|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~50_combout\ = \freq_divider|Add0~49\ $ (\freq_divider|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_divider|cnt\(25),
	cin => \freq_divider|Add0~49\,
	combout => \freq_divider|Add0~50_combout\);

-- Location: FF_X2_Y15_N25
\freq_divider|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(25));

-- Location: LCCOMB_X2_Y15_N26
\freq_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~0_combout\ = (!\freq_divider|cnt\(16) & (!\freq_divider|cnt\(17) & (!\freq_divider|cnt\(18) & !\freq_divider|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(16),
	datab => \freq_divider|cnt\(17),
	datac => \freq_divider|cnt\(18),
	datad => \freq_divider|cnt\(19),
	combout => \freq_divider|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y15_N28
\freq_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~1_combout\ = (!\freq_divider|cnt\(23) & (!\freq_divider|cnt\(21) & (!\freq_divider|cnt\(20) & !\freq_divider|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(23),
	datab => \freq_divider|cnt\(21),
	datac => \freq_divider|cnt\(20),
	datad => \freq_divider|cnt\(22),
	combout => \freq_divider|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y15_N30
\freq_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~2_combout\ = (!\freq_divider|cnt\(24) & (!\freq_divider|cnt\(25) & (\freq_divider|Equal0~0_combout\ & \freq_divider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(24),
	datab => \freq_divider|cnt\(25),
	datac => \freq_divider|Equal0~0_combout\,
	datad => \freq_divider|Equal0~1_combout\,
	combout => \freq_divider|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y15_N30
\freq_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~6_combout\ = (\freq_divider|cnt\(14) & (!\freq_divider|cnt\(13) & (\freq_divider|cnt\(9) & \freq_divider|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(14),
	datab => \freq_divider|cnt\(13),
	datac => \freq_divider|cnt\(9),
	datad => \freq_divider|cnt\(15),
	combout => \freq_divider|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y15_N24
\freq_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~5_combout\ = (\freq_divider|cnt\(0) & (\freq_divider|cnt\(2) & (\freq_divider|cnt\(3) & \freq_divider|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(0),
	datab => \freq_divider|cnt\(2),
	datac => \freq_divider|cnt\(3),
	datad => \freq_divider|cnt\(1),
	combout => \freq_divider|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y15_N12
\freq_divider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~7_combout\ = (\freq_divider|Equal0~6_combout\ & \freq_divider|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~6_combout\,
	datad => \freq_divider|Equal0~5_combout\,
	combout => \freq_divider|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y15_N22
\freq_divider|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~8_combout\ = (\freq_divider|Equal0~4_combout\ & (\freq_divider|Equal0~3_combout\ & (\freq_divider|Equal0~2_combout\ & \freq_divider|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|Equal0~4_combout\,
	datab => \freq_divider|Equal0~3_combout\,
	datac => \freq_divider|Equal0~2_combout\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|Equal0~8_combout\);

-- Location: LCCOMB_X2_Y16_N22
\freq_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~16_combout\ = (\freq_divider|cnt\(8) & (\freq_divider|Add0~15\ $ (GND))) # (!\freq_divider|cnt\(8) & (!\freq_divider|Add0~15\ & VCC))
-- \freq_divider|Add0~17\ = CARRY((\freq_divider|cnt\(8) & !\freq_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(8),
	datad => VCC,
	cin => \freq_divider|Add0~15\,
	combout => \freq_divider|Add0~16_combout\,
	cout => \freq_divider|Add0~17\);

-- Location: LCCOMB_X1_Y15_N10
\freq_divider|cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~3_combout\ = (!\freq_divider|Equal0~8_combout\ & \freq_divider|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~8_combout\,
	datad => \freq_divider|Add0~16_combout\,
	combout => \freq_divider|cnt~3_combout\);

-- Location: FF_X1_Y15_N11
\freq_divider|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(8));

-- Location: LCCOMB_X2_Y16_N24
\freq_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~18_combout\ = (\freq_divider|cnt\(9) & (!\freq_divider|Add0~17\)) # (!\freq_divider|cnt\(9) & ((\freq_divider|Add0~17\) # (GND)))
-- \freq_divider|Add0~19\ = CARRY((!\freq_divider|Add0~17\) # (!\freq_divider|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(9),
	datad => VCC,
	cin => \freq_divider|Add0~17\,
	combout => \freq_divider|Add0~18_combout\,
	cout => \freq_divider|Add0~19\);

-- Location: LCCOMB_X2_Y16_N4
\freq_divider|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|cnt~0_combout\ = (\freq_divider|Add0~18_combout\ & !\freq_divider|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Add0~18_combout\,
	datad => \freq_divider|Equal0~8_combout\,
	combout => \freq_divider|cnt~0_combout\);

-- Location: FF_X2_Y16_N5
\freq_divider|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(9));

-- Location: LCCOMB_X2_Y16_N26
\freq_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~20_combout\ = (\freq_divider|cnt\(10) & (\freq_divider|Add0~19\ $ (GND))) # (!\freq_divider|cnt\(10) & (!\freq_divider|Add0~19\ & VCC))
-- \freq_divider|Add0~21\ = CARRY((\freq_divider|cnt\(10) & !\freq_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(10),
	datad => VCC,
	cin => \freq_divider|Add0~19\,
	combout => \freq_divider|Add0~20_combout\,
	cout => \freq_divider|Add0~21\);

-- Location: FF_X2_Y16_N27
\freq_divider|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(10));

-- Location: LCCOMB_X2_Y16_N28
\freq_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~22_combout\ = (\freq_divider|cnt\(11) & (!\freq_divider|Add0~21\)) # (!\freq_divider|cnt\(11) & ((\freq_divider|Add0~21\) # (GND)))
-- \freq_divider|Add0~23\ = CARRY((!\freq_divider|Add0~21\) # (!\freq_divider|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(11),
	datad => VCC,
	cin => \freq_divider|Add0~21\,
	combout => \freq_divider|Add0~22_combout\,
	cout => \freq_divider|Add0~23\);

-- Location: FF_X2_Y16_N29
\freq_divider|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(11));

-- Location: LCCOMB_X2_Y16_N30
\freq_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~24_combout\ = (\freq_divider|cnt\(12) & (\freq_divider|Add0~23\ $ (GND))) # (!\freq_divider|cnt\(12) & (!\freq_divider|Add0~23\ & VCC))
-- \freq_divider|Add0~25\ = CARRY((\freq_divider|cnt\(12) & !\freq_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(12),
	datad => VCC,
	cin => \freq_divider|Add0~23\,
	combout => \freq_divider|Add0~24_combout\,
	cout => \freq_divider|Add0~25\);

-- Location: FF_X2_Y16_N31
\freq_divider|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(12));

-- Location: FF_X2_Y15_N1
\freq_divider|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|cnt\(13));

-- Location: LCCOMB_X1_Y15_N6
\freq_divider|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|LessThan0~3_combout\ = (!\freq_divider|cnt\(14)) # (!\freq_divider|cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|cnt\(13),
	datac => \freq_divider|cnt\(14),
	combout => \freq_divider|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y16_N28
\freq_divider|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|LessThan0~1_combout\ = (!\freq_divider|cnt\(6) & (((!\freq_divider|cnt\(4) & !\freq_divider|cnt\(3))) # (!\freq_divider|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(4),
	datab => \freq_divider|cnt\(3),
	datac => \freq_divider|cnt\(6),
	datad => \freq_divider|cnt\(5),
	combout => \freq_divider|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y15_N0
\freq_divider|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|LessThan0~0_combout\ = (!\freq_divider|cnt\(9) & (!\freq_divider|cnt\(12) & (!\freq_divider|cnt\(10) & !\freq_divider|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(9),
	datab => \freq_divider|cnt\(12),
	datac => \freq_divider|cnt\(10),
	datad => \freq_divider|cnt\(11),
	combout => \freq_divider|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y16_N26
\freq_divider|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|LessThan0~2_combout\ = (\freq_divider|LessThan0~0_combout\ & (((\freq_divider|LessThan0~1_combout\) # (!\freq_divider|cnt\(7))) # (!\freq_divider|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|cnt\(8),
	datab => \freq_divider|LessThan0~1_combout\,
	datac => \freq_divider|cnt\(7),
	datad => \freq_divider|LessThan0~0_combout\,
	combout => \freq_divider|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y16_N0
\freq_divider|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|LessThan0~4_combout\ = (!\freq_divider|cnt\(15) & (\freq_divider|Equal0~2_combout\ & ((\freq_divider|LessThan0~3_combout\) # (\freq_divider|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|LessThan0~3_combout\,
	datab => \freq_divider|cnt\(15),
	datac => \freq_divider|LessThan0~2_combout\,
	datad => \freq_divider|Equal0~2_combout\,
	combout => \freq_divider|LessThan0~4_combout\);

-- Location: FF_X1_Y16_N1
\freq_divider|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \freq_divider|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|clk_out~q\);

-- Location: CLKCTRL_G1
\freq_divider|clk_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_divider|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_divider|clk_out~clkctrl_outclk\);

-- Location: IOIBUF_X67_Y5_N22
\dip[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(7),
	o => \dip[7]~input_o\);

-- Location: IOIBUF_X67_Y5_N15
\dip[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(6),
	o => \dip[6]~input_o\);

-- Location: IOIBUF_X67_Y5_N8
\dip[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(5),
	o => \dip[5]~input_o\);

-- Location: IOIBUF_X67_Y6_N15
\dip[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(4),
	o => \dip[4]~input_o\);

-- Location: LCCOMB_X16_Y11_N18
\dip_switch|bin~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~6_combout\ = (\dip[7]~input_o\ & ((\dip[6]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\)) # (!\dip[6]~input_o\ & (\dip[5]~input_o\ $ (\dip[4]~input_o\))))) # (!\dip[7]~input_o\ & ((\dip[6]~input_o\ & (!\dip[5]~input_o\ & 
-- !\dip[4]~input_o\)) # (!\dip[6]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~6_combout\);

-- Location: IOIBUF_X67_Y7_N22
\dip[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(3),
	o => \dip[3]~input_o\);

-- Location: LCCOMB_X16_Y11_N24
\dip_switch|bin~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~4_combout\ = (\dip[6]~input_o\ & ((\dip[7]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\)) # (!\dip[7]~input_o\ & (!\dip[5]~input_o\ & !\dip[4]~input_o\)))) # (!\dip[6]~input_o\ & (\dip[5]~input_o\ $ (((\dip[7]~input_o\ & 
-- \dip[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~4_combout\);

-- Location: LCCOMB_X16_Y11_N22
\dip_switch|bin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~3_combout\ = (\dip[7]~input_o\ & ((\dip[6]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\)) # (!\dip[6]~input_o\ & ((\dip[5]~input_o\) # (\dip[4]~input_o\))))) # (!\dip[7]~input_o\ & ((\dip[6]~input_o\ & (!\dip[5]~input_o\ & 
-- !\dip[4]~input_o\)) # (!\dip[6]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~3_combout\);

-- Location: IOIBUF_X67_Y9_N8
\dip[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(2),
	o => \dip[2]~input_o\);

-- Location: LCCOMB_X19_Y11_N20
\dip_switch|bin~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~17_combout\ = (\dip[3]~input_o\ & ((\dip_switch|bin~4_combout\) # ((\dip[2]~input_o\)))) # (!\dip[3]~input_o\ & (((\dip_switch|bin~3_combout\ & !\dip[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[3]~input_o\,
	datab => \dip_switch|bin~4_combout\,
	datac => \dip_switch|bin~3_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~17_combout\);

-- Location: LCCOMB_X16_Y11_N4
\dip_switch|bin~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~7_combout\ = (\dip[7]~input_o\ & (\dip[6]~input_o\ $ (((!\dip[4]~input_o\) # (!\dip[5]~input_o\))))) # (!\dip[7]~input_o\ & ((\dip[6]~input_o\ & (!\dip[5]~input_o\ & !\dip[4]~input_o\)) # (!\dip[6]~input_o\ & (\dip[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~7_combout\);

-- Location: LCCOMB_X19_Y11_N18
\dip_switch|bin~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~18_combout\ = (\dip_switch|bin~17_combout\ & (((\dip_switch|bin~7_combout\) # (!\dip[2]~input_o\)))) # (!\dip_switch|bin~17_combout\ & (\dip_switch|bin~6_combout\ & ((\dip[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~6_combout\,
	datab => \dip_switch|bin~17_combout\,
	datac => \dip_switch|bin~7_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~18_combout\);

-- Location: FF_X21_Y11_N25
\dip_switch|bin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip_switch|bin~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(14));

-- Location: LCCOMB_X16_Y11_N8
\dip_switch|bin~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~38_combout\ = ((!\dip[6]~input_o\ & !\dip[5]~input_o\)) # (!\dip[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	combout => \dip_switch|bin~38_combout\);

-- Location: LCCOMB_X16_Y11_N20
\dip_switch|bin~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~19_combout\ = (\dip[6]~input_o\ & ((\dip[7]~input_o\ & (!\dip[5]~input_o\ & \dip[4]~input_o\)) # (!\dip[7]~input_o\ & (\dip[5]~input_o\ & !\dip[4]~input_o\)))) # (!\dip[6]~input_o\ & (\dip[4]~input_o\ $ (((\dip[7]~input_o\ & 
-- !\dip[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~19_combout\);

-- Location: LCCOMB_X16_Y11_N2
\dip_switch|bin~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~20_combout\ = (\dip[6]~input_o\ & (!\dip[4]~input_o\ & (\dip[7]~input_o\ $ (!\dip[5]~input_o\)))) # (!\dip[6]~input_o\ & (\dip[7]~input_o\ & (!\dip[5]~input_o\ & \dip[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~20_combout\);

-- Location: LCCOMB_X16_Y11_N12
\dip_switch|bin~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~21_combout\ = (\dip[7]~input_o\ & (!\dip[5]~input_o\ & ((\dip[6]~input_o\) # (!\dip[4]~input_o\)))) # (!\dip[7]~input_o\ & (\dip[5]~input_o\ & ((\dip[4]~input_o\) # (!\dip[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~21_combout\);

-- Location: LCCOMB_X19_Y11_N26
\dip_switch|bin~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~23_combout\ = (\dip_switch|bin~21_combout\ & (!\dip_switch|bin~19_combout\ & ((!\dip[3]~input_o\)))) # (!\dip_switch|bin~21_combout\ & (\dip_switch|bin~20_combout\ & ((\dip_switch|bin~19_combout\) # (\dip[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~19_combout\,
	datab => \dip_switch|bin~20_combout\,
	datac => \dip_switch|bin~21_combout\,
	datad => \dip[3]~input_o\,
	combout => \dip_switch|bin~23_combout\);

-- Location: LCCOMB_X19_Y11_N16
\dip_switch|bin~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~22_combout\ = (\dip_switch|bin~20_combout\ & (((!\dip[3]~input_o\)))) # (!\dip_switch|bin~20_combout\ & ((\dip_switch|bin~21_combout\ & (\dip_switch|bin~19_combout\ & !\dip[3]~input_o\)) # (!\dip_switch|bin~21_combout\ & 
-- ((\dip[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~19_combout\,
	datab => \dip_switch|bin~20_combout\,
	datac => \dip_switch|bin~21_combout\,
	datad => \dip[3]~input_o\,
	combout => \dip_switch|bin~22_combout\);

-- Location: LCCOMB_X19_Y11_N8
\dip_switch|bin~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~24_combout\ = (\dip_switch|bin~19_combout\ & ((\dip[3]~input_o\) # ((!\dip_switch|bin~20_combout\ & !\dip_switch|bin~21_combout\)))) # (!\dip_switch|bin~19_combout\ & (\dip_switch|bin~20_combout\ & ((!\dip[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~19_combout\,
	datab => \dip_switch|bin~20_combout\,
	datac => \dip_switch|bin~21_combout\,
	datad => \dip[3]~input_o\,
	combout => \dip_switch|bin~24_combout\);

-- Location: LCCOMB_X19_Y11_N6
\dip_switch|bin~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~36_combout\ = \dip_switch|bin~23_combout\ $ ((((!\dip_switch|bin~22_combout\ & !\dip[2]~input_o\)) # (!\dip_switch|bin~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~23_combout\,
	datab => \dip_switch|bin~22_combout\,
	datac => \dip_switch|bin~24_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~36_combout\);

-- Location: LCCOMB_X19_Y11_N4
\dip_switch|bin~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~35_combout\ = \dip_switch|bin~20_combout\ $ ((((!\dip_switch|bin~19_combout\ & !\dip[3]~input_o\)) # (!\dip_switch|bin~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~19_combout\,
	datab => \dip_switch|bin~20_combout\,
	datac => \dip_switch|bin~21_combout\,
	datad => \dip[3]~input_o\,
	combout => \dip_switch|bin~35_combout\);

-- Location: LCCOMB_X16_Y11_N10
\dip_switch|bin~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~37_combout\ = (\dip[7]~input_o\ & ((\dip[6]~input_o\ & (\dip[5]~input_o\ & \dip[4]~input_o\)) # (!\dip[6]~input_o\ & (!\dip[5]~input_o\)))) # (!\dip[7]~input_o\ & (\dip[6]~input_o\ & ((\dip[5]~input_o\) # (\dip[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[6]~input_o\,
	datac => \dip[5]~input_o\,
	datad => \dip[4]~input_o\,
	combout => \dip_switch|bin~37_combout\);

-- Location: LCCOMB_X21_Y11_N10
\dip_switch|bin~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~30_combout\ = (\dip_switch|bin~36_combout\ & (\dip_switch|bin~37_combout\ & (\dip_switch|bin~38_combout\ $ (!\dip_switch|bin~35_combout\)))) # (!\dip_switch|bin~36_combout\ & (!\dip_switch|bin~38_combout\ & (\dip_switch|bin~35_combout\ & 
-- !\dip_switch|bin~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~38_combout\,
	datab => \dip_switch|bin~36_combout\,
	datac => \dip_switch|bin~35_combout\,
	datad => \dip_switch|bin~37_combout\,
	combout => \dip_switch|bin~30_combout\);

-- Location: FF_X21_Y11_N11
\dip_switch|bin[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \dip_switch|bin~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(15));

-- Location: LCCOMB_X19_Y11_N30
\dip_switch|bin~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~25_combout\ = (\dip_switch|bin~23_combout\ & (\dip_switch|bin~22_combout\ $ (((!\dip[2]~input_o\))))) # (!\dip_switch|bin~23_combout\ & (\dip_switch|bin~22_combout\ & ((\dip[2]~input_o\) # (!\dip_switch|bin~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~23_combout\,
	datab => \dip_switch|bin~22_combout\,
	datac => \dip_switch|bin~24_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~25_combout\);

-- Location: LCCOMB_X19_Y11_N24
\dip_switch|bin~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~26_combout\ = (\dip_switch|bin~24_combout\ & (((!\dip_switch|bin~22_combout\ & !\dip[2]~input_o\)))) # (!\dip_switch|bin~24_combout\ & (\dip_switch|bin~23_combout\ & ((\dip_switch|bin~22_combout\) # (\dip[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~23_combout\,
	datab => \dip_switch|bin~22_combout\,
	datac => \dip_switch|bin~24_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~26_combout\);

-- Location: LCCOMB_X19_Y11_N22
\dip_switch|bin~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~27_combout\ = (\dip_switch|bin~23_combout\ & (((!\dip[2]~input_o\)))) # (!\dip_switch|bin~23_combout\ & ((\dip_switch|bin~24_combout\ & (\dip_switch|bin~22_combout\ & !\dip[2]~input_o\)) # (!\dip_switch|bin~24_combout\ & 
-- ((\dip[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~23_combout\,
	datab => \dip_switch|bin~22_combout\,
	datac => \dip_switch|bin~24_combout\,
	datad => \dip[2]~input_o\,
	combout => \dip_switch|bin~27_combout\);

-- Location: IOIBUF_X67_Y10_N22
\dip[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(1),
	o => \dip[1]~input_o\);

-- Location: LCCOMB_X19_Y11_N12
\dip_switch|bin~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~28_combout\ = \dip_switch|bin~26_combout\ $ (((\dip_switch|bin~25_combout\ & ((\dip_switch|bin~27_combout\) # (\dip[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~25_combout\,
	datab => \dip_switch|bin~26_combout\,
	datac => \dip_switch|bin~27_combout\,
	datad => \dip[1]~input_o\,
	combout => \dip_switch|bin~28_combout\);

-- Location: FF_X21_Y11_N5
\dip_switch|bin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip_switch|bin~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(12));

-- Location: LCCOMB_X21_Y11_N30
\dip_switch|bin~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~29_combout\ = (\dip_switch|bin~36_combout\ & ((\dip_switch|bin~38_combout\ & (!\dip_switch|bin~35_combout\ & \dip_switch|bin~37_combout\)) # (!\dip_switch|bin~38_combout\ & (\dip_switch|bin~35_combout\ & !\dip_switch|bin~37_combout\)))) # 
-- (!\dip_switch|bin~36_combout\ & (\dip_switch|bin~37_combout\ $ (((\dip_switch|bin~38_combout\) # (!\dip_switch|bin~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~38_combout\,
	datab => \dip_switch|bin~36_combout\,
	datac => \dip_switch|bin~35_combout\,
	datad => \dip_switch|bin~37_combout\,
	combout => \dip_switch|bin~29_combout\);

-- Location: FF_X21_Y11_N31
\dip_switch|bin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \dip_switch|bin~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(13));

-- Location: LCCOMB_X21_Y11_N4
\seg_driver|WideOr13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr13~0_combout\ = (\dip_switch|bin\(14) & (!\dip_switch|bin\(15) & ((!\dip_switch|bin\(13)) # (!\dip_switch|bin\(12))))) # (!\dip_switch|bin\(14) & (\dip_switch|bin\(15) $ (((\dip_switch|bin\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(14),
	datab => \dip_switch|bin\(15),
	datac => \dip_switch|bin\(12),
	datad => \dip_switch|bin\(13),
	combout => \seg_driver|WideOr13~0_combout\);

-- Location: LCCOMB_X20_Y11_N8
\seg_driver|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux1~0_combout\ = (\seg_driver|sel_out\(0) & ((\seg_driver|sel_out\(3) & ((\seg_driver|sel_out\(2)))) # (!\seg_driver|sel_out\(3) & (\seg_driver|sel_out\(1))))) # (!\seg_driver|sel_out\(0) & (((\seg_driver|sel_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(1),
	datab => \seg_driver|sel_out\(0),
	datac => \seg_driver|sel_out\(2),
	datad => \seg_driver|sel_out\(3),
	combout => \seg_driver|Mux1~0_combout\);

-- Location: FF_X20_Y11_N9
\seg_driver|sel_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \seg_driver|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|sel_out\(2));

-- Location: LCCOMB_X20_Y11_N12
\seg_driver|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux3~0_combout\ = (\seg_driver|sel_out\(2) & (((\seg_driver|sel_out\(0))))) # (!\seg_driver|sel_out\(2) & ((\seg_driver|sel_out\(1) & ((\seg_driver|sel_out\(0)))) # (!\seg_driver|sel_out\(1) & (!\seg_driver|sel_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(3),
	datab => \seg_driver|sel_out\(2),
	datac => \seg_driver|sel_out\(0),
	datad => \seg_driver|sel_out\(1),
	combout => \seg_driver|Mux3~0_combout\);

-- Location: FF_X20_Y11_N13
\seg_driver|sel_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \seg_driver|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|sel_out\(0));

-- Location: LCCOMB_X20_Y11_N10
\seg_driver|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux0~0_combout\ = (\seg_driver|sel_out\(0) & ((\seg_driver|sel_out\(1) & ((\seg_driver|sel_out\(3)))) # (!\seg_driver|sel_out\(1) & (\seg_driver|sel_out\(2))))) # (!\seg_driver|sel_out\(0) & (((\seg_driver|sel_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(0),
	datab => \seg_driver|sel_out\(2),
	datac => \seg_driver|sel_out\(3),
	datad => \seg_driver|sel_out\(1),
	combout => \seg_driver|Mux0~0_combout\);

-- Location: FF_X20_Y11_N11
\seg_driver|sel_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \seg_driver|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|sel_out\(3));

-- Location: LCCOMB_X20_Y11_N6
\seg_driver|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux2~0_combout\ = (\seg_driver|sel_out\(3) & (((\seg_driver|sel_out\(1))))) # (!\seg_driver|sel_out\(3) & ((\seg_driver|sel_out\(2) & (\seg_driver|sel_out\(1))) # (!\seg_driver|sel_out\(2) & ((!\seg_driver|sel_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(3),
	datab => \seg_driver|sel_out\(2),
	datac => \seg_driver|sel_out\(1),
	datad => \seg_driver|sel_out\(0),
	combout => \seg_driver|Mux2~0_combout\);

-- Location: FF_X20_Y11_N7
\seg_driver|sel_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \seg_driver|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|sel_out\(1));

-- Location: LCCOMB_X19_Y11_N28
\dip_switch|bin~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~32_combout\ = (\dip_switch|bin~26_combout\ & ((\dip_switch|bin~27_combout\ $ (!\dip[1]~input_o\)))) # (!\dip_switch|bin~26_combout\ & (\dip_switch|bin~27_combout\ & ((\dip[1]~input_o\) # (!\dip_switch|bin~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~25_combout\,
	datab => \dip_switch|bin~26_combout\,
	datac => \dip_switch|bin~27_combout\,
	datad => \dip[1]~input_o\,
	combout => \dip_switch|bin~32_combout\);

-- Location: FF_X21_Y11_N29
\dip_switch|bin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip_switch|bin~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(10));

-- Location: LCCOMB_X19_Y11_N14
\dip_switch|bin~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~33_combout\ = (\dip_switch|bin~25_combout\ & (((!\dip_switch|bin~27_combout\ & !\dip[1]~input_o\)))) # (!\dip_switch|bin~25_combout\ & (\dip_switch|bin~26_combout\ & ((\dip_switch|bin~27_combout\) # (\dip[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~25_combout\,
	datab => \dip_switch|bin~26_combout\,
	datac => \dip_switch|bin~27_combout\,
	datad => \dip[1]~input_o\,
	combout => \dip_switch|bin~33_combout\);

-- Location: FF_X21_Y11_N3
\dip_switch|bin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip_switch|bin~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(11));

-- Location: LCCOMB_X19_Y11_N2
\dip_switch|bin~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~31_combout\ = (\dip_switch|bin~25_combout\ & (!\dip[1]~input_o\ & ((\dip_switch|bin~26_combout\) # (\dip_switch|bin~27_combout\)))) # (!\dip_switch|bin~25_combout\ & (\dip_switch|bin~26_combout\ $ (((\dip[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~25_combout\,
	datab => \dip_switch|bin~26_combout\,
	datac => \dip_switch|bin~27_combout\,
	datad => \dip[1]~input_o\,
	combout => \dip_switch|bin~31_combout\);

-- Location: FF_X21_Y11_N15
\dip_switch|bin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip_switch|bin~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(9));

-- Location: IOIBUF_X67_Y14_N22
\dip[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dip(0),
	o => \dip[0]~input_o\);

-- Location: FF_X21_Y11_N9
\dip_switch|bin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	asdata => \dip[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(8));

-- Location: LCCOMB_X21_Y11_N14
\seg_driver|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr6~0_combout\ = (\dip_switch|bin\(10) & (!\dip_switch|bin\(11) & ((!\dip_switch|bin\(8)) # (!\dip_switch|bin\(9))))) # (!\dip_switch|bin\(10) & (\dip_switch|bin\(11) $ ((\dip_switch|bin\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(10),
	datab => \dip_switch|bin\(11),
	datac => \dip_switch|bin\(9),
	datad => \dip_switch|bin\(8),
	combout => \seg_driver|WideOr6~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\seg_driver|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux10~0_combout\ = (\seg_driver|sel_out\(1) & (\seg_driver|WideOr13~0_combout\)) # (!\seg_driver|sel_out\(1) & ((\seg_driver|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|WideOr13~0_combout\,
	datab => \seg_driver|sel_out\(1),
	datad => \seg_driver|WideOr6~0_combout\,
	combout => \seg_driver|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y11_N6
\dip_switch|bin~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~11_combout\ = (\dip[4]~input_o\) # (\dip[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dip[4]~input_o\,
	datad => \dip[3]~input_o\,
	combout => \dip_switch|bin~11_combout\);

-- Location: LCCOMB_X16_Y11_N28
\dip_switch|bin~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~39_combout\ = (\dip[7]~input_o\ & (\dip[6]~input_o\ & ((\dip[5]~input_o\) # (\dip_switch|bin~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip[7]~input_o\,
	datab => \dip[5]~input_o\,
	datac => \dip[6]~input_o\,
	datad => \dip_switch|bin~11_combout\,
	combout => \dip_switch|bin~39_combout\);

-- Location: LCCOMB_X22_Y11_N0
\dip_switch|bin[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin[17]~feeder_combout\ = \dip_switch|bin~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dip_switch|bin~39_combout\,
	combout => \dip_switch|bin[17]~feeder_combout\);

-- Location: FF_X22_Y11_N1
\dip_switch|bin[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \dip_switch|bin[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(17));

-- Location: LCCOMB_X20_Y11_N0
\seg_driver|dig_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[2]~2_combout\ = (\seg_driver|sel_out\(0) & ((\seg_driver|sel_out\(1) & (!\seg_driver|sel_out\(2) & !\seg_driver|sel_out\(3))) # (!\seg_driver|sel_out\(1) & (\seg_driver|sel_out\(2) $ (\seg_driver|sel_out\(3)))))) # 
-- (!\seg_driver|sel_out\(0) & (!\seg_driver|sel_out\(1) & (!\seg_driver|sel_out\(2) & !\seg_driver|sel_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(0),
	datab => \seg_driver|sel_out\(1),
	datac => \seg_driver|sel_out\(2),
	datad => \seg_driver|sel_out\(3),
	combout => \seg_driver|dig_out[2]~2_combout\);

-- Location: FF_X20_Y11_N29
\seg_driver|dig_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|Mux10~0_combout\,
	asdata => \dip_switch|bin\(17),
	sclr => \seg_driver|sel_out\(3),
	sload => \seg_driver|sel_out\(2),
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(1));

-- Location: LCCOMB_X22_Y11_N2
\dip_switch|bin~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dip_switch|bin~34_combout\ = (\dip_switch|bin~38_combout\ & (\dip_switch|bin~37_combout\ & ((!\dip_switch|bin~36_combout\) # (!\dip_switch|bin~35_combout\)))) # (!\dip_switch|bin~38_combout\ & ((\dip_switch|bin~35_combout\ & 
-- ((!\dip_switch|bin~37_combout\))) # (!\dip_switch|bin~35_combout\ & (!\dip_switch|bin~36_combout\ & \dip_switch|bin~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin~38_combout\,
	datab => \dip_switch|bin~35_combout\,
	datac => \dip_switch|bin~36_combout\,
	datad => \dip_switch|bin~37_combout\,
	combout => \dip_switch|bin~34_combout\);

-- Location: FF_X22_Y11_N3
\dip_switch|bin[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|clk_out~clkctrl_outclk\,
	d => \dip_switch|bin~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dip_switch|bin\(16));

-- Location: LCCOMB_X20_Y11_N20
\seg_driver|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux6~0_combout\ = (!\dip_switch|bin\(16) & \seg_driver|sel_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dip_switch|bin\(16),
	datad => \seg_driver|sel_out\(2),
	combout => \seg_driver|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y11_N20
\seg_driver|WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr12~0_combout\ = (\dip_switch|bin\(14) & ((\dip_switch|bin\(15)) # ((\dip_switch|bin\(13) & \dip_switch|bin\(12))))) # (!\dip_switch|bin\(14) & ((\dip_switch|bin\(13)) # ((\dip_switch|bin\(12) & !\dip_switch|bin\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(13),
	datab => \dip_switch|bin\(14),
	datac => \dip_switch|bin\(12),
	datad => \dip_switch|bin\(15),
	combout => \seg_driver|WideOr12~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\seg_driver|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr5~0_combout\ = (\dip_switch|bin\(8) & ((\dip_switch|bin\(9)) # (\dip_switch|bin\(11) $ (!\dip_switch|bin\(10))))) # (!\dip_switch|bin\(8) & ((\dip_switch|bin\(10) & ((\dip_switch|bin\(11)))) # (!\dip_switch|bin\(10) & 
-- (\dip_switch|bin\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(9),
	datab => \dip_switch|bin\(8),
	datac => \dip_switch|bin\(11),
	datad => \dip_switch|bin\(10),
	combout => \seg_driver|WideOr5~0_combout\);

-- Location: LCCOMB_X20_Y11_N2
\seg_driver|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux9~0_combout\ = (!\seg_driver|sel_out\(2) & ((\seg_driver|sel_out\(1) & (!\seg_driver|WideOr12~0_combout\)) # (!\seg_driver|sel_out\(1) & ((!\seg_driver|WideOr5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(2),
	datab => \seg_driver|sel_out\(1),
	datac => \seg_driver|WideOr12~0_combout\,
	datad => \seg_driver|WideOr5~0_combout\,
	combout => \seg_driver|Mux9~0_combout\);

-- Location: LCCOMB_X20_Y11_N30
\seg_driver|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux9~1_combout\ = (\seg_driver|sel_out\(3)) # ((\seg_driver|Mux9~0_combout\) # ((!\dip_switch|bin\(17) & \seg_driver|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(3),
	datab => \dip_switch|bin\(17),
	datac => \seg_driver|Mux6~0_combout\,
	datad => \seg_driver|Mux9~0_combout\,
	combout => \seg_driver|Mux9~1_combout\);

-- Location: FF_X20_Y11_N31
\seg_driver|dig_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|Mux9~1_combout\,
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(2));

-- Location: LCCOMB_X21_Y11_N0
\seg_driver|WideOr11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr11~0_combout\ = (\dip_switch|bin\(12)) # ((\dip_switch|bin\(13) & ((\dip_switch|bin\(15)))) # (!\dip_switch|bin\(13) & (\dip_switch|bin\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(13),
	datab => \dip_switch|bin\(14),
	datac => \dip_switch|bin\(12),
	datad => \dip_switch|bin\(15),
	combout => \seg_driver|WideOr11~0_combout\);

-- Location: LCCOMB_X21_Y11_N26
\seg_driver|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr4~0_combout\ = (\dip_switch|bin\(8)) # ((\dip_switch|bin\(9) & (\dip_switch|bin\(11))) # (!\dip_switch|bin\(9) & ((\dip_switch|bin\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(9),
	datab => \dip_switch|bin\(11),
	datac => \dip_switch|bin\(8),
	datad => \dip_switch|bin\(10),
	combout => \seg_driver|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y11_N18
\seg_driver|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux8~2_combout\ = (!\seg_driver|sel_out\(2) & ((\seg_driver|sel_out\(1) & (!\seg_driver|WideOr11~0_combout\)) # (!\seg_driver|sel_out\(1) & ((!\seg_driver|WideOr4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(2),
	datab => \seg_driver|sel_out\(1),
	datac => \seg_driver|WideOr11~0_combout\,
	datad => \seg_driver|WideOr4~0_combout\,
	combout => \seg_driver|Mux8~2_combout\);

-- Location: LCCOMB_X20_Y11_N4
\seg_driver|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux8~3_combout\ = (\seg_driver|sel_out\(3)) # ((\seg_driver|Mux8~2_combout\) # ((\seg_driver|sel_out\(2) & !\dip_switch|bin\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(2),
	datab => \dip_switch|bin\(16),
	datac => \seg_driver|sel_out\(3),
	datad => \seg_driver|Mux8~2_combout\,
	combout => \seg_driver|Mux8~3_combout\);

-- Location: FF_X20_Y11_N5
\seg_driver|dig_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|Mux8~3_combout\,
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(3));

-- Location: LCCOMB_X21_Y11_N24
\seg_driver|WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr10~0_combout\ = (\dip_switch|bin\(13) & ((\dip_switch|bin\(15)) # ((\dip_switch|bin\(12) & \dip_switch|bin\(14))))) # (!\dip_switch|bin\(13) & (\dip_switch|bin\(14) $ (((!\dip_switch|bin\(15) & \dip_switch|bin\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(15),
	datab => \dip_switch|bin\(12),
	datac => \dip_switch|bin\(14),
	datad => \dip_switch|bin\(13),
	combout => \seg_driver|WideOr10~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\seg_driver|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr3~0_combout\ = (\dip_switch|bin\(9) & ((\dip_switch|bin\(11)) # ((\dip_switch|bin\(8) & \dip_switch|bin\(10))))) # (!\dip_switch|bin\(9) & (\dip_switch|bin\(10) $ (((\dip_switch|bin\(8) & !\dip_switch|bin\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(8),
	datab => \dip_switch|bin\(11),
	datac => \dip_switch|bin\(9),
	datad => \dip_switch|bin\(10),
	combout => \seg_driver|WideOr3~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\seg_driver|WideOr3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr3~1_combout\ = (\seg_driver|sel_out\(0)) # (!\seg_driver|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_driver|sel_out\(0),
	datad => \seg_driver|WideOr3~0_combout\,
	combout => \seg_driver|WideOr3~1_combout\);

-- Location: LCCOMB_X22_Y11_N20
\seg_driver|dig_out[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[4]~0_combout\ = (\seg_driver|sel_out\(1) & (!\seg_driver|WideOr10~0_combout\)) # (!\seg_driver|sel_out\(1) & ((\seg_driver|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(1),
	datab => \seg_driver|WideOr10~0_combout\,
	datad => \seg_driver|WideOr3~1_combout\,
	combout => \seg_driver|dig_out[4]~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\seg_driver|Decoder2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Decoder2~0_combout\ = (\dip_switch|bin\(17)) # (!\dip_switch|bin\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dip_switch|bin\(16),
	datad => \dip_switch|bin\(17),
	combout => \seg_driver|Decoder2~0_combout\);

-- Location: FF_X22_Y11_N21
\seg_driver|dig_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|dig_out[4]~0_combout\,
	asdata => \seg_driver|Decoder2~0_combout\,
	sload => \seg_driver|sel_out\(2),
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(4));

-- Location: LCCOMB_X21_Y11_N12
\seg_driver|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr9~0_combout\ = (\dip_switch|bin\(14) & (((\dip_switch|bin\(15))))) # (!\dip_switch|bin\(14) & (\dip_switch|bin\(13) & ((\dip_switch|bin\(15)) # (!\dip_switch|bin\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(13),
	datab => \dip_switch|bin\(14),
	datac => \dip_switch|bin\(12),
	datad => \dip_switch|bin\(15),
	combout => \seg_driver|WideOr9~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\seg_driver|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr2~0_combout\ = (\dip_switch|bin\(10) & (((\dip_switch|bin\(11))))) # (!\dip_switch|bin\(10) & (\dip_switch|bin\(9) & ((\dip_switch|bin\(11)) # (!\dip_switch|bin\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(9),
	datab => \dip_switch|bin\(11),
	datac => \dip_switch|bin\(8),
	datad => \dip_switch|bin\(10),
	combout => \seg_driver|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y11_N24
\seg_driver|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux6~1_combout\ = (!\seg_driver|sel_out\(2) & ((\seg_driver|sel_out\(1) & (\seg_driver|WideOr9~0_combout\)) # (!\seg_driver|sel_out\(1) & ((\seg_driver|WideOr2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(1),
	datab => \seg_driver|WideOr9~0_combout\,
	datac => \seg_driver|WideOr2~0_combout\,
	datad => \seg_driver|sel_out\(2),
	combout => \seg_driver|Mux6~1_combout\);

-- Location: LCCOMB_X20_Y11_N22
\seg_driver|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|Mux6~2_combout\ = (\seg_driver|sel_out\(3)) # ((!\seg_driver|Mux6~1_combout\ & ((!\seg_driver|Mux6~0_combout\) # (!\dip_switch|bin\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(3),
	datab => \dip_switch|bin\(17),
	datac => \seg_driver|Mux6~0_combout\,
	datad => \seg_driver|Mux6~1_combout\,
	combout => \seg_driver|Mux6~2_combout\);

-- Location: FF_X20_Y11_N23
\seg_driver|dig_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|Mux6~2_combout\,
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(5));

-- Location: LCCOMB_X20_Y11_N16
\seg_driver|dig_out[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[6]~5_combout\ = (\seg_driver|sel_out\(0) & (!\seg_driver|sel_out\(1) & (\seg_driver|sel_out\(2) $ (\seg_driver|sel_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(2),
	datab => \seg_driver|sel_out\(3),
	datac => \seg_driver|sel_out\(0),
	datad => \seg_driver|sel_out\(1),
	combout => \seg_driver|dig_out[6]~5_combout\);

-- Location: LCCOMB_X20_Y11_N14
\seg_driver|dig_out[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[6]~4_combout\ = (\seg_driver|sel_out\(0) & ((\seg_driver|sel_out\(2) & ((\seg_driver|sel_out\(3)) # (\seg_driver|sel_out\(1)))) # (!\seg_driver|sel_out\(2) & (\seg_driver|sel_out\(3) $ (!\seg_driver|sel_out\(1)))))) # 
-- (!\seg_driver|sel_out\(0) & ((\seg_driver|sel_out\(2)) # ((\seg_driver|sel_out\(3)) # (\seg_driver|sel_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(0),
	datab => \seg_driver|sel_out\(2),
	datac => \seg_driver|sel_out\(3),
	datad => \seg_driver|sel_out\(1),
	combout => \seg_driver|dig_out[6]~4_combout\);

-- Location: LCCOMB_X21_Y11_N6
\seg_driver|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr1~0_combout\ = (\dip_switch|bin\(10) & ((\dip_switch|bin\(11)) # (\dip_switch|bin\(9) $ (\dip_switch|bin\(8))))) # (!\dip_switch|bin\(10) & (\dip_switch|bin\(9) & ((\dip_switch|bin\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(9),
	datab => \dip_switch|bin\(10),
	datac => \dip_switch|bin\(8),
	datad => \dip_switch|bin\(11),
	combout => \seg_driver|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\seg_driver|WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr8~0_combout\ = (\dip_switch|bin\(15) & ((\dip_switch|bin\(13)) # ((\dip_switch|bin\(14))))) # (!\dip_switch|bin\(15) & (\dip_switch|bin\(14) & (\dip_switch|bin\(13) $ (\dip_switch|bin\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(15),
	datab => \dip_switch|bin\(13),
	datac => \dip_switch|bin\(12),
	datad => \dip_switch|bin\(14),
	combout => \seg_driver|WideOr8~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\seg_driver|dig_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[6]~3_combout\ = (\seg_driver|sel_out\(1) & ((\seg_driver|WideOr8~0_combout\))) # (!\seg_driver|sel_out\(1) & (\seg_driver|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(1),
	datac => \seg_driver|WideOr1~0_combout\,
	datad => \seg_driver|WideOr8~0_combout\,
	combout => \seg_driver|dig_out[6]~3_combout\);

-- Location: LCCOMB_X19_Y11_N0
\seg_driver|dig_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[6]~6_combout\ = (\seg_driver|dig_out[6]~5_combout\ & (((!\seg_driver|dig_out[6]~3_combout\)) # (!\seg_driver|dig_out[6]~4_combout\))) # (!\seg_driver|dig_out[6]~5_combout\ & ((\seg_driver|dig_out[6]~4_combout\ & 
-- (\seg_driver|dig_out\(6))) # (!\seg_driver|dig_out[6]~4_combout\ & ((!\seg_driver|dig_out[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|dig_out[6]~5_combout\,
	datab => \seg_driver|dig_out[6]~4_combout\,
	datac => \seg_driver|dig_out\(6),
	datad => \seg_driver|dig_out[6]~3_combout\,
	combout => \seg_driver|dig_out[6]~6_combout\);

-- Location: FF_X19_Y11_N1
\seg_driver|dig_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|dig_out[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(6));

-- Location: LCCOMB_X21_Y11_N18
\seg_driver|WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr7~0_combout\ = (\dip_switch|bin\(13) & (((\dip_switch|bin\(15))))) # (!\dip_switch|bin\(13) & (\dip_switch|bin\(14) $ (((\dip_switch|bin\(12) & !\dip_switch|bin\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(14),
	datab => \dip_switch|bin\(12),
	datac => \dip_switch|bin\(15),
	datad => \dip_switch|bin\(13),
	combout => \seg_driver|WideOr7~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\seg_driver|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr0~0_combout\ = (\dip_switch|bin\(9) & (((\dip_switch|bin\(11))))) # (!\dip_switch|bin\(9) & (\dip_switch|bin\(10) $ (((\dip_switch|bin\(8) & !\dip_switch|bin\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dip_switch|bin\(8),
	datab => \dip_switch|bin\(11),
	datac => \dip_switch|bin\(10),
	datad => \dip_switch|bin\(9),
	combout => \seg_driver|WideOr0~0_combout\);

-- Location: LCCOMB_X22_Y11_N12
\seg_driver|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|WideOr0~1_combout\ = (\seg_driver|sel_out\(0)) # (!\seg_driver|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_driver|sel_out\(0),
	datad => \seg_driver|WideOr0~0_combout\,
	combout => \seg_driver|WideOr0~1_combout\);

-- Location: LCCOMB_X22_Y11_N22
\seg_driver|dig_out[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_driver|dig_out[7]~1_combout\ = (\seg_driver|sel_out\(1) & (!\seg_driver|WideOr7~0_combout\)) # (!\seg_driver|sel_out\(1) & ((\seg_driver|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_driver|sel_out\(1),
	datab => \seg_driver|WideOr7~0_combout\,
	datad => \seg_driver|WideOr0~1_combout\,
	combout => \seg_driver|dig_out[7]~1_combout\);

-- Location: FF_X22_Y11_N23
\seg_driver|dig_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \seg_driver|dig_out[7]~1_combout\,
	asdata => \seg_driver|Decoder2~0_combout\,
	sload => \seg_driver|sel_out\(2),
	ena => \seg_driver|dig_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_driver|dig_out\(7));

ww_dig_out(0) <= \dig_out[0]~output_o\;

ww_dig_out(1) <= \dig_out[1]~output_o\;

ww_dig_out(2) <= \dig_out[2]~output_o\;

ww_dig_out(3) <= \dig_out[3]~output_o\;

ww_dig_out(4) <= \dig_out[4]~output_o\;

ww_dig_out(5) <= \dig_out[5]~output_o\;

ww_dig_out(6) <= \dig_out[6]~output_o\;

ww_dig_out(7) <= \dig_out[7]~output_o\;

ww_sel_out(0) <= \sel_out[0]~output_o\;

ww_sel_out(1) <= \sel_out[1]~output_o\;

ww_sel_out(2) <= \sel_out[2]~output_o\;

ww_sel_out(3) <= \sel_out[3]~output_o\;
END structure;


