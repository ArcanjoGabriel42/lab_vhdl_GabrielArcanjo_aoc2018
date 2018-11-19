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

-- DATE "10/27/2018 12:32:16"

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

ENTITY 	Mux4 IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	C : IN std_logic_vector(1 DOWNTO 0);
	D : IN std_logic_vector(1 DOWNTO 0);
	Se : IN std_logic_vector(1 DOWNTO 0);
	Output : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END Mux4;

ARCHITECTURE structure OF Mux4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Se : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(1 DOWNTO 0);
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \Se[0]~input_o\ : std_logic;
SIGNAL \Se[1]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Se[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Se[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_Se <= Se;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_C[1]~input_o\ <= NOT \C[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Se[1]~input_o\ <= NOT \Se[1]~input_o\;
\ALT_INV_Se[0]~input_o\ <= NOT \Se[0]~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_C[0]~input_o\ <= NOT \C[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;

\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
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
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\C[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

\Se[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Se(0),
	o => \Se[0]~input_o\);

\Se[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Se(1),
	o => \Se[1]~input_o\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Se[0]~input_o\ & ( \Se[1]~input_o\ & ( \D[0]~input_o\ ) ) ) # ( !\Se[0]~input_o\ & ( \Se[1]~input_o\ & ( \C[0]~input_o\ ) ) ) # ( \Se[0]~input_o\ & ( !\Se[1]~input_o\ & ( \B[0]~input_o\ ) ) ) # ( !\Se[0]~input_o\ & ( !\Se[1]~input_o\ 
-- & ( \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_C[0]~input_o\,
	datad => \ALT_INV_D[0]~input_o\,
	datae => \ALT_INV_Se[0]~input_o\,
	dataf => \ALT_INV_Se[1]~input_o\,
	combout => \Mux1~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\C[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Se[0]~input_o\ & ( \Se[1]~input_o\ & ( \D[1]~input_o\ ) ) ) # ( !\Se[0]~input_o\ & ( \Se[1]~input_o\ & ( \C[1]~input_o\ ) ) ) # ( \Se[0]~input_o\ & ( !\Se[1]~input_o\ & ( \B[1]~input_o\ ) ) ) # ( !\Se[0]~input_o\ & ( !\Se[1]~input_o\ 
-- & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_C[1]~input_o\,
	datad => \ALT_INV_D[1]~input_o\,
	datae => \ALT_INV_Se[0]~input_o\,
	dataf => \ALT_INV_Se[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_Output(0) <= \Output[0]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;
END structure;


