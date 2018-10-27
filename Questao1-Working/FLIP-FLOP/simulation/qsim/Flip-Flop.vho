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

-- DATE "10/27/2018 01:29:16"

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

ENTITY 	FLIPFLOPD IS
    PORT (
	Dados_in : IN std_logic;
	Clock : IN std_logic;
	Dados_out : OUT std_logic
	);
END FLIPFLOPD;

ARCHITECTURE structure OF FLIPFLOPD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Dados_in : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Dados_out : std_logic;
SIGNAL \Dados_out~output_o\ : std_logic;
SIGNAL \Dados_in~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Dados_out$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Dados_out$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Dados_in~input_o\ : std_logic;
SIGNAL \ALT_INV_Clock~input_o\ : std_logic;

BEGIN

ww_Dados_in <= Dados_in;
ww_Clock <= Clock;
Dados_out <= ww_Dados_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Dados_out$latch~combout\ <= NOT \Dados_out$latch~combout\;
\ALT_INV_Dados_in~input_o\ <= NOT \Dados_in~input_o\;
\ALT_INV_Clock~input_o\ <= NOT \Clock~input_o\;

\Dados_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dados_out$latch~combout\,
	devoe => ww_devoe,
	o => \Dados_out~output_o\);

\Dados_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dados_in,
	o => \Dados_in~input_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Dados_out$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dados_out$latch~combout\ = ( \Dados_out$latch~combout\ & ( \Clock~input_o\ & ( \Dados_in~input_o\ ) ) ) # ( !\Dados_out$latch~combout\ & ( \Clock~input_o\ & ( \Dados_in~input_o\ ) ) ) # ( \Dados_out$latch~combout\ & ( !\Clock~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Dados_in~input_o\,
	datae => \ALT_INV_Dados_out$latch~combout\,
	dataf => \ALT_INV_Clock~input_o\,
	combout => \Dados_out$latch~combout\);

ww_Dados_out <= \Dados_out~output_o\;
END structure;


