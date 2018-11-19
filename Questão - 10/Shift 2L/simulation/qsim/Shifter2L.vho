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

-- DATE "10/25/2018 19:08:57"

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

ENTITY 	Shifter2L IS
    PORT (
	Input_a : IN std_logic_vector(15 DOWNTO 0);
	Output : OUT std_logic_vector(15 DOWNTO 0)
	);
END Shifter2L;

ARCHITECTURE structure OF Shifter2L IS
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
SIGNAL ww_Output : std_logic_vector(15 DOWNTO 0);
SIGNAL \Input_a[14]~input_o\ : std_logic;
SIGNAL \Input_a[15]~input_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[4]~output_o\ : std_logic;
SIGNAL \Output[5]~output_o\ : std_logic;
SIGNAL \Output[6]~output_o\ : std_logic;
SIGNAL \Output[7]~output_o\ : std_logic;
SIGNAL \Output[8]~output_o\ : std_logic;
SIGNAL \Output[9]~output_o\ : std_logic;
SIGNAL \Output[10]~output_o\ : std_logic;
SIGNAL \Output[11]~output_o\ : std_logic;
SIGNAL \Output[12]~output_o\ : std_logic;
SIGNAL \Output[13]~output_o\ : std_logic;
SIGNAL \Output[14]~output_o\ : std_logic;
SIGNAL \Output[15]~output_o\ : std_logic;
SIGNAL \Input_a[0]~input_o\ : std_logic;
SIGNAL \Input_a[1]~input_o\ : std_logic;
SIGNAL \Input_a[2]~input_o\ : std_logic;
SIGNAL \Input_a[3]~input_o\ : std_logic;
SIGNAL \Input_a[4]~input_o\ : std_logic;
SIGNAL \Input_a[5]~input_o\ : std_logic;
SIGNAL \Input_a[6]~input_o\ : std_logic;
SIGNAL \Input_a[7]~input_o\ : std_logic;
SIGNAL \Input_a[8]~input_o\ : std_logic;
SIGNAL \Input_a[9]~input_o\ : std_logic;
SIGNAL \Input_a[10]~input_o\ : std_logic;
SIGNAL \Input_a[11]~input_o\ : std_logic;
SIGNAL \Input_a[12]~input_o\ : std_logic;
SIGNAL \Input_a[13]~input_o\ : std_logic;

BEGIN

ww_Input_a <= Input_a;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[0]~input_o\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[1]~input_o\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[2]~input_o\,
	devoe => ww_devoe,
	o => \Output[4]~output_o\);

\Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[3]~input_o\,
	devoe => ww_devoe,
	o => \Output[5]~output_o\);

\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[4]~input_o\,
	devoe => ww_devoe,
	o => \Output[6]~output_o\);

\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[5]~input_o\,
	devoe => ww_devoe,
	o => \Output[7]~output_o\);

\Output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[6]~input_o\,
	devoe => ww_devoe,
	o => \Output[8]~output_o\);

\Output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[7]~input_o\,
	devoe => ww_devoe,
	o => \Output[9]~output_o\);

\Output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[8]~input_o\,
	devoe => ww_devoe,
	o => \Output[10]~output_o\);

\Output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[9]~input_o\,
	devoe => ww_devoe,
	o => \Output[11]~output_o\);

\Output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[10]~input_o\,
	devoe => ww_devoe,
	o => \Output[12]~output_o\);

\Output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[11]~input_o\,
	devoe => ww_devoe,
	o => \Output[13]~output_o\);

\Output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[12]~input_o\,
	devoe => ww_devoe,
	o => \Output[14]~output_o\);

\Output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Input_a[13]~input_o\,
	devoe => ww_devoe,
	o => \Output[15]~output_o\);

\Input_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(0),
	o => \Input_a[0]~input_o\);

\Input_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(1),
	o => \Input_a[1]~input_o\);

\Input_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(2),
	o => \Input_a[2]~input_o\);

\Input_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(3),
	o => \Input_a[3]~input_o\);

\Input_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(4),
	o => \Input_a[4]~input_o\);

\Input_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(5),
	o => \Input_a[5]~input_o\);

\Input_a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(6),
	o => \Input_a[6]~input_o\);

\Input_a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(7),
	o => \Input_a[7]~input_o\);

\Input_a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(8),
	o => \Input_a[8]~input_o\);

\Input_a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(9),
	o => \Input_a[9]~input_o\);

\Input_a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(10),
	o => \Input_a[10]~input_o\);

\Input_a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(11),
	o => \Input_a[11]~input_o\);

\Input_a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(12),
	o => \Input_a[12]~input_o\);

\Input_a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(13),
	o => \Input_a[13]~input_o\);

\Input_a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(14),
	o => \Input_a[14]~input_o\);

\Input_a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a(15),
	o => \Input_a[15]~input_o\);

ww_Output(0) <= \Output[0]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(4) <= \Output[4]~output_o\;

ww_Output(5) <= \Output[5]~output_o\;

ww_Output(6) <= \Output[6]~output_o\;

ww_Output(7) <= \Output[7]~output_o\;

ww_Output(8) <= \Output[8]~output_o\;

ww_Output(9) <= \Output[9]~output_o\;

ww_Output(10) <= \Output[10]~output_o\;

ww_Output(11) <= \Output[11]~output_o\;

ww_Output(12) <= \Output[12]~output_o\;

ww_Output(13) <= \Output[13]~output_o\;

ww_Output(14) <= \Output[14]~output_o\;

ww_Output(15) <= \Output[15]~output_o\;
END structure;


