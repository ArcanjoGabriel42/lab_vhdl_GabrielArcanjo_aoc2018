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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2018 13:11:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          NotAnd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY NotAnd_vhd_vec_tst IS
END NotAnd_vhd_vec_tst;
ARCHITECTURE NotAnd_arch OF NotAnd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Input_a : STD_LOGIC;
SIGNAL Input_b : STD_LOGIC;
SIGNAL Output : STD_LOGIC;
COMPONENT NotAnd
	PORT (
	Input_a : IN STD_LOGIC;
	Input_b : IN STD_LOGIC;
	Output : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : NotAnd
	PORT MAP (
-- list connections between master ports and signals
	Input_a => Input_a,
	Input_b => Input_b,
	Output => Output
	);

-- Input_a
t_prcs_Input_a: PROCESS
BEGIN
LOOP
	Input_a <= '0';
	WAIT FOR 10000 ps;
	Input_a <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a;

-- Input_b
t_prcs_Input_b: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		Input_b <= '0';
		WAIT FOR 30000 ps;
		Input_b <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	Input_b <= '0';
	WAIT FOR 30000 ps;
	Input_b <= '1';
WAIT;
END PROCESS t_prcs_Input_b;
END NotAnd_arch;
