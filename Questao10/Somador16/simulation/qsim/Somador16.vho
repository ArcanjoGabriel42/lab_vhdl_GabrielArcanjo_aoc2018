-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/24/2018 15:41:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Somador16 IS
    PORT (
	Input_a : IN std_logic_vector(15 DOWNTO 0);
	Input_b : IN std_logic_vector(15 DOWNTO 0);
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END Somador16;

ARCHITECTURE structure OF Somador16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Input_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \Input_b[0]~input_o\ : std_logic;
SIGNAL \Input_a[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Input_b[1]~input_o\ : std_logic;
SIGNAL \Input_a[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Input_b[2]~input_o\ : std_logic;
SIGNAL \Input_a[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Input_b[3]~input_o\ : std_logic;
SIGNAL \Input_a[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Input_b[4]~input_o\ : std_logic;
SIGNAL \Input_a[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Input_b[5]~input_o\ : std_logic;
SIGNAL \Input_a[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Input_b[6]~input_o\ : std_logic;
SIGNAL \Input_a[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Input_b[7]~input_o\ : std_logic;
SIGNAL \Input_a[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Input_b[8]~input_o\ : std_logic;
SIGNAL \Input_a[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Input_b[9]~input_o\ : std_logic;
SIGNAL \Input_a[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Input_b[10]~input_o\ : std_logic;
SIGNAL \Input_a[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Input_b[11]~input_o\ : std_logic;
SIGNAL \Input_a[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Input_b[12]~input_o\ : std_logic;
SIGNAL \Input_a[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Input_b[13]~input_o\ : std_logic;
SIGNAL \Input_a[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Input_b[14]~input_o\ : std_logic;
SIGNAL \Input_a[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Input_b[15]~input_o\ : std_logic;
SIGNAL \Input_a[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Input_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b[0]~input_o\ : std_logic;

BEGIN

ww_Input_a <= Input_a;
ww_Input_b <= Input_b;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Input_a[15]~input_o\ <= NOT \Input_a[15]~input_o\;
\ALT_INV_Input_b[15]~input_o\ <= NOT \Input_b[15]~input_o\;
\ALT_INV_Input_a[14]~input_o\ <= NOT \Input_a[14]~input_o\;
\ALT_INV_Input_b[14]~input_o\ <= NOT \Input_b[14]~input_o\;
\ALT_INV_Input_a[13]~input_o\ <= NOT \Input_a[13]~input_o\;
\ALT_INV_Input_b[13]~input_o\ <= NOT \Input_b[13]~input_o\;
\ALT_INV_Input_a[12]~input_o\ <= NOT \Input_a[12]~input_o\;
\ALT_INV_Input_b[12]~input_o\ <= NOT \Input_b[12]~input_o\;
\ALT_INV_Input_a[11]~input_o\ <= NOT \Input_a[11]~input_o\;
\ALT_INV_Input_b[11]~input_o\ <= NOT \Input_b[11]~input_o\;
\ALT_INV_Input_a[10]~input_o\ <= NOT \Input_a[10]~input_o\;
\ALT_INV_Input_b[10]~input_o\ <= NOT \Input_b[10]~input_o\;
\ALT_INV_Input_a[9]~input_o\ <= NOT \Input_a[9]~input_o\;
\ALT_INV_Input_b[9]~input_o\ <= NOT \Input_b[9]~input_o\;
\ALT_INV_Input_a[8]~input_o\ <= NOT \Input_a[8]~input_o\;
\ALT_INV_Input_b[8]~input_o\ <= NOT \Input_b[8]~input_o\;
\ALT_INV_Input_a[7]~input_o\ <= NOT \Input_a[7]~input_o\;
\ALT_INV_Input_b[7]~input_o\ <= NOT \Input_b[7]~input_o\;
\ALT_INV_Input_a[6]~input_o\ <= NOT \Input_a[6]~input_o\;
\ALT_INV_Input_b[6]~input_o\ <= NOT \Input_b[6]~input_o\;
\ALT_INV_Input_a[5]~input_o\ <= NOT \Input_a[5]~input_o\;
\ALT_INV_Input_b[5]~input_o\ <= NOT \Input_b[5]~input_o\;
\ALT_INV_Input_a[4]~input_o\ <= NOT \Input_a[4]~input_o\;
\ALT_INV_Input_b[4]~input_o\ <= NOT \Input_b[4]~input_o\;
\ALT_INV_Input_a[3]~input_o\ <= NOT \Input_a[3]~input_o\;
\ALT_INV_Input_b[3]~input_o\ <= NOT \Input_b[3]~input_o\;
\ALT_INV_Input_a[2]~input_o\ <= NOT \Input_a[2]~input_o\;
\ALT_INV_Input_b[2]~input_o\ <= NOT \Input_b[2]~input_o\;
\ALT_INV_Input_a[1]~input_o\ <= NOT \Input_a[1]~input_o\;
\ALT_INV_Input_b[1]~input_o\ <= NOT \Input_b[1]~input_o\;
\ALT_INV_Input_a[0]~input_o\ <= NOT \Input_a[0]~input_o\;
\ALT_INV_Input_b[0]~input_o\ <= NOT \Input_b[0]~input_o\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_sumout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_sumout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~45_sumout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~49_sumout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~53_sumout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~57_sumout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~61_sumout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\Input_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(0),
	o => \Input_b[0]~input_o\);

\Input_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(0),
	o => \Input_a[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \Input_b[0]~input_o\ ) + ( \Input_a[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \Input_b[0]~input_o\ ) + ( \Input_a[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[0]~input_o\,
	dataf => \ALT_INV_Input_a[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Input_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(1),
	o => \Input_b[1]~input_o\);

\Input_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(1),
	o => \Input_a[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Input_b[1]~input_o\ ) + ( \Input_a[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \Input_b[1]~input_o\ ) + ( \Input_a[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[1]~input_o\,
	dataf => \ALT_INV_Input_a[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Input_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(2),
	o => \Input_b[2]~input_o\);

\Input_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(2),
	o => \Input_a[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Input_b[2]~input_o\ ) + ( \Input_a[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \Input_b[2]~input_o\ ) + ( \Input_a[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[2]~input_o\,
	dataf => \ALT_INV_Input_a[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Input_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(3),
	o => \Input_b[3]~input_o\);

\Input_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(3),
	o => \Input_a[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Input_b[3]~input_o\ ) + ( \Input_a[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \Input_b[3]~input_o\ ) + ( \Input_a[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[3]~input_o\,
	dataf => \ALT_INV_Input_a[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Input_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(4),
	o => \Input_b[4]~input_o\);

\Input_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(4),
	o => \Input_a[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \Input_b[4]~input_o\ ) + ( \Input_a[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \Input_b[4]~input_o\ ) + ( \Input_a[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[4]~input_o\,
	dataf => \ALT_INV_Input_a[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Input_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(5),
	o => \Input_b[5]~input_o\);

\Input_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(5),
	o => \Input_a[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Input_b[5]~input_o\ ) + ( \Input_a[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \Input_b[5]~input_o\ ) + ( \Input_a[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[5]~input_o\,
	dataf => \ALT_INV_Input_a[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Input_b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(6),
	o => \Input_b[6]~input_o\);

\Input_a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(6),
	o => \Input_a[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Input_b[6]~input_o\ ) + ( \Input_a[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \Input_b[6]~input_o\ ) + ( \Input_a[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[6]~input_o\,
	dataf => \ALT_INV_Input_a[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Input_b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(7),
	o => \Input_b[7]~input_o\);

\Input_a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(7),
	o => \Input_a[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \Input_b[7]~input_o\ ) + ( \Input_a[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \Input_b[7]~input_o\ ) + ( \Input_a[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[7]~input_o\,
	dataf => \ALT_INV_Input_a[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\Input_b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(8),
	o => \Input_b[8]~input_o\);

\Input_a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(8),
	o => \Input_a[8]~input_o\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \Input_b[8]~input_o\ ) + ( \Input_a[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \Input_b[8]~input_o\ ) + ( \Input_a[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[8]~input_o\,
	dataf => \ALT_INV_Input_a[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\Input_b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(9),
	o => \Input_b[9]~input_o\);

\Input_a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(9),
	o => \Input_a[9]~input_o\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \Input_b[9]~input_o\ ) + ( \Input_a[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \Input_b[9]~input_o\ ) + ( \Input_a[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[9]~input_o\,
	dataf => \ALT_INV_Input_a[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\Input_b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(10),
	o => \Input_b[10]~input_o\);

\Input_a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(10),
	o => \Input_a[10]~input_o\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \Input_b[10]~input_o\ ) + ( \Input_a[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \Input_b[10]~input_o\ ) + ( \Input_a[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[10]~input_o\,
	dataf => \ALT_INV_Input_a[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\Input_b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(11),
	o => \Input_b[11]~input_o\);

\Input_a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(11),
	o => \Input_a[11]~input_o\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \Input_b[11]~input_o\ ) + ( \Input_a[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \Input_b[11]~input_o\ ) + ( \Input_a[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[11]~input_o\,
	dataf => \ALT_INV_Input_a[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\Input_b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(12),
	o => \Input_b[12]~input_o\);

\Input_a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(12),
	o => \Input_a[12]~input_o\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \Input_b[12]~input_o\ ) + ( \Input_a[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \Input_b[12]~input_o\ ) + ( \Input_a[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[12]~input_o\,
	dataf => \ALT_INV_Input_a[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\Input_b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(13),
	o => \Input_b[13]~input_o\);

\Input_a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(13),
	o => \Input_a[13]~input_o\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \Input_b[13]~input_o\ ) + ( \Input_a[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \Input_b[13]~input_o\ ) + ( \Input_a[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[13]~input_o\,
	dataf => \ALT_INV_Input_a[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\Input_b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(14),
	o => \Input_b[14]~input_o\);

\Input_a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(14),
	o => \Input_a[14]~input_o\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \Input_b[14]~input_o\ ) + ( \Input_a[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \Input_b[14]~input_o\ ) + ( \Input_a[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[14]~input_o\,
	dataf => \ALT_INV_Input_a[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\Input_b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b(15),
	o => \Input_b[15]~input_o\);

\Input_a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(15),
	o => \Input_a[15]~input_o\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \Input_b[15]~input_o\ ) + ( \Input_a[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Input_b[15]~input_o\,
	dataf => \ALT_INV_Input_a[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;
END structure;


