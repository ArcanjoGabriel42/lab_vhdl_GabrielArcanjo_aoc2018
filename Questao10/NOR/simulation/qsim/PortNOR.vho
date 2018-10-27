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

-- DATE "10/04/2018 09:35:08"

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

ENTITY 	PortNOR IS
    PORT (
	Input_a : IN std_logic;
	Input_b : IN std_logic;
	Output : OUT std_logic
	);
END PortNOR;

-- Design Ports Information
-- Output	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_a	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input_b	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PortNOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input_a : std_logic;
SIGNAL ww_Input_b : std_logic;
SIGNAL ww_Output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Input_b~input_o\ : std_logic;
SIGNAL \Input_a~input_o\ : std_logic;
SIGNAL \Output~0_combout\ : std_logic;
SIGNAL \ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \ALT_INV_Input_a~input_o\ : std_logic;
SIGNAL \ALT_INV_Input_b~input_o\ : std_logic;

BEGIN

ww_Input_a <= Input_a;
ww_Input_b <= Input_b;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Output~0_combout\ <= NOT \Output~0_combout\;
\ALT_INV_Input_a~input_o\ <= NOT \Input_a~input_o\;
\ALT_INV_Input_b~input_o\ <= NOT \Input_b~input_o\;

-- Location: IOOBUF_X89_Y8_N5
\Output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Output~0_combout\,
	devoe => ww_devoe,
	o => ww_Output);

-- Location: IOIBUF_X89_Y8_N38
\Input_b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_b,
	o => \Input_b~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\Input_a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input_a,
	o => \Input_a~input_o\);

-- Location: LABCELL_X88_Y8_N0
\Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Output~0_combout\ = ( \Input_a~input_o\ ) # ( !\Input_a~input_o\ & ( \Input_b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input_b~input_o\,
	datae => \ALT_INV_Input_a~input_o\,
	combout => \Output~0_combout\);

-- Location: LABCELL_X64_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


