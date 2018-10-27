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
-- Generated on "10/27/2018 14:48:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL adress : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL WriteEnable : STD_LOGIC;
COMPONENT RAM
	PORT (
	adress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Enable : IN STD_LOGIC;
	WriteEnable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	adress => adress,
	data_in => data_in,
	data_out => data_out,
	Enable => Enable,
	WriteEnable => WriteEnable
	);
-- adress[7]
t_prcs_adress_7: PROCESS
BEGIN
	adress(7) <= '0';
WAIT;
END PROCESS t_prcs_adress_7;
-- adress[6]
t_prcs_adress_6: PROCESS
BEGIN
	adress(6) <= '0';
WAIT;
END PROCESS t_prcs_adress_6;
-- adress[5]
t_prcs_adress_5: PROCESS
BEGIN
	adress(5) <= '0';
WAIT;
END PROCESS t_prcs_adress_5;
-- adress[4]
t_prcs_adress_4: PROCESS
BEGIN
	adress(4) <= '0';
WAIT;
END PROCESS t_prcs_adress_4;
-- adress[3]
t_prcs_adress_3: PROCESS
BEGIN
	adress(3) <= '0';
	WAIT FOR 400000 ps;
	adress(3) <= '1';
	WAIT FOR 100000 ps;
	adress(3) <= '0';
	WAIT FOR 400000 ps;
	adress(3) <= '1';
WAIT;
END PROCESS t_prcs_adress_3;
-- adress[2]
t_prcs_adress_2: PROCESS
BEGIN
	adress(2) <= '0';
	WAIT FOR 200000 ps;
	adress(2) <= '1';
	WAIT FOR 200000 ps;
	adress(2) <= '0';
	WAIT FOR 300000 ps;
	adress(2) <= '1';
	WAIT FOR 200000 ps;
	adress(2) <= '0';
WAIT;
END PROCESS t_prcs_adress_2;
-- adress[1]
t_prcs_adress_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		adress(1) <= '0';
		WAIT FOR 100000 ps;
		adress(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	adress(1) <= '0';
	WAIT FOR 200000 ps;
	adress(1) <= '1';
	WAIT FOR 100000 ps;
	adress(1) <= '0';
	WAIT FOR 100000 ps;
	adress(1) <= '1';
	WAIT FOR 100000 ps;
	adress(1) <= '0';
WAIT;
END PROCESS t_prcs_adress_1;
-- adress[0]
t_prcs_adress_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		adress(0) <= '0';
		WAIT FOR 50000 ps;
		adress(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	FOR i IN 1 TO 5
	LOOP
		adress(0) <= '0';
		WAIT FOR 50000 ps;
		adress(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_adress_0;
-- data_in[15]
t_prcs_data_in_15: PROCESS
BEGIN
	data_in(15) <= '0';
WAIT;
END PROCESS t_prcs_data_in_15;
-- data_in[14]
t_prcs_data_in_14: PROCESS
BEGIN
	data_in(14) <= '0';
WAIT;
END PROCESS t_prcs_data_in_14;
-- data_in[13]
t_prcs_data_in_13: PROCESS
BEGIN
	data_in(13) <= '0';
WAIT;
END PROCESS t_prcs_data_in_13;
-- data_in[12]
t_prcs_data_in_12: PROCESS
BEGIN
	data_in(12) <= '0';
WAIT;
END PROCESS t_prcs_data_in_12;
-- data_in[11]
t_prcs_data_in_11: PROCESS
BEGIN
	data_in(11) <= '0';
WAIT;
END PROCESS t_prcs_data_in_11;
-- data_in[10]
t_prcs_data_in_10: PROCESS
BEGIN
	data_in(10) <= '0';
WAIT;
END PROCESS t_prcs_data_in_10;
-- data_in[9]
t_prcs_data_in_9: PROCESS
BEGIN
	data_in(9) <= '0';
WAIT;
END PROCESS t_prcs_data_in_9;
-- data_in[8]
t_prcs_data_in_8: PROCESS
BEGIN
	data_in(8) <= '0';
WAIT;
END PROCESS t_prcs_data_in_8;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
	WAIT FOR 800000 ps;
	data_in(4) <= '1';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
	WAIT FOR 400000 ps;
	data_in(3) <= '1';
	WAIT FOR 400000 ps;
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data_in(2) <= '0';
		WAIT FOR 200000 ps;
		data_in(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
LOOP
	data_in(1) <= '0';
	WAIT FOR 100000 ps;
	data_in(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
LOOP
	data_in(0) <= '0';
	WAIT FOR 50000 ps;
	data_in(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_0;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- WriteEnable
t_prcs_WriteEnable: PROCESS
BEGIN
	WriteEnable <= '0';
	WAIT FOR 500000 ps;
	WriteEnable <= '1';
WAIT;
END PROCESS t_prcs_WriteEnable;
END RAM_arch;
