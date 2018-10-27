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
-- Generated on "10/24/2018 15:41:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Somador16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Somador16_vhd_vec_tst IS
END Somador16_vhd_vec_tst;
ARCHITECTURE Somador16_arch OF Somador16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Input_a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Input_b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Somador16
	PORT (
	Input_a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Input_b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Somador16
	PORT MAP (
-- list connections between master ports and signals
	Input_a => Input_a,
	Input_b => Input_b,
	saida => saida
	);
-- Input_a[15]
t_prcs_Input_a_15: PROCESS
BEGIN
	Input_a(15) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_15;
-- Input_a[14]
t_prcs_Input_a_14: PROCESS
BEGIN
	Input_a(14) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_14;
-- Input_a[13]
t_prcs_Input_a_13: PROCESS
BEGIN
	Input_a(13) <= '0';
	WAIT FOR 819200 ps;
	Input_a(13) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_13;
-- Input_a[12]
t_prcs_Input_a_12: PROCESS
BEGIN
	Input_a(12) <= '0';
	WAIT FOR 409600 ps;
	Input_a(12) <= '1';
	WAIT FOR 409600 ps;
	Input_a(12) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_12;
-- Input_a[11]
t_prcs_Input_a_11: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Input_a(11) <= '0';
		WAIT FOR 204800 ps;
		Input_a(11) <= '1';
		WAIT FOR 204800 ps;
	END LOOP;
	Input_a(11) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_11;
-- Input_a[10]
t_prcs_Input_a_10: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		Input_a(10) <= '0';
		WAIT FOR 102400 ps;
		Input_a(10) <= '1';
		WAIT FOR 102400 ps;
	END LOOP;
	Input_a(10) <= '0';
	WAIT FOR 102400 ps;
	Input_a(10) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_10;
-- Input_a[9]
t_prcs_Input_a_9: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		Input_a(9) <= '0';
		WAIT FOR 51200 ps;
		Input_a(9) <= '1';
		WAIT FOR 51200 ps;
	END LOOP;
	Input_a(9) <= '0';
	WAIT FOR 51200 ps;
	Input_a(9) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_9;
-- Input_a[8]
t_prcs_Input_a_8: PROCESS
BEGIN
	FOR i IN 1 TO 19
	LOOP
		Input_a(8) <= '0';
		WAIT FOR 25600 ps;
		Input_a(8) <= '1';
		WAIT FOR 25600 ps;
	END LOOP;
	Input_a(8) <= '0';
	WAIT FOR 25600 ps;
	Input_a(8) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_8;
-- Input_a[7]
t_prcs_Input_a_7: PROCESS
BEGIN
	FOR i IN 1 TO 39
	LOOP
		Input_a(7) <= '0';
		WAIT FOR 12800 ps;
		Input_a(7) <= '1';
		WAIT FOR 12800 ps;
	END LOOP;
	Input_a(7) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_7;
-- Input_a[6]
t_prcs_Input_a_6: PROCESS
BEGIN
	FOR i IN 1 TO 78
	LOOP
		Input_a(6) <= '0';
		WAIT FOR 6400 ps;
		Input_a(6) <= '1';
		WAIT FOR 6400 ps;
	END LOOP;
	Input_a(6) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_6;
-- Input_a[5]
t_prcs_Input_a_5: PROCESS
BEGIN
	FOR i IN 1 TO 156
	LOOP
		Input_a(5) <= '0';
		WAIT FOR 3200 ps;
		Input_a(5) <= '1';
		WAIT FOR 3200 ps;
	END LOOP;
	Input_a(5) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_5;
-- Input_a[4]
t_prcs_Input_a_4: PROCESS
BEGIN
	FOR i IN 1 TO 312
	LOOP
		Input_a(4) <= '0';
		WAIT FOR 1600 ps;
		Input_a(4) <= '1';
		WAIT FOR 1600 ps;
	END LOOP;
	Input_a(4) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_4;
-- Input_a[3]
t_prcs_Input_a_3: PROCESS
BEGIN
LOOP
	Input_a(3) <= '0';
	WAIT FOR 800 ps;
	Input_a(3) <= '1';
	WAIT FOR 800 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_3;
-- Input_a[2]
t_prcs_Input_a_2: PROCESS
BEGIN
LOOP
	Input_a(2) <= '0';
	WAIT FOR 400 ps;
	Input_a(2) <= '1';
	WAIT FOR 400 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_2;
-- Input_a[1]
t_prcs_Input_a_1: PROCESS
BEGIN
LOOP
	Input_a(1) <= '0';
	WAIT FOR 200 ps;
	Input_a(1) <= '1';
	WAIT FOR 200 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_1;
-- Input_a[0]
t_prcs_Input_a_0: PROCESS
BEGIN
LOOP
	Input_a(0) <= '0';
	WAIT FOR 100 ps;
	Input_a(0) <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_0;
-- Input_b[15]
t_prcs_Input_b_15: PROCESS
BEGIN
	Input_b(15) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_15;
-- Input_b[14]
t_prcs_Input_b_14: PROCESS
BEGIN
	Input_b(14) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_14;
-- Input_b[13]
t_prcs_Input_b_13: PROCESS
BEGIN
	Input_b(13) <= '0';
	WAIT FOR 819200 ps;
	Input_b(13) <= '1';
WAIT;
END PROCESS t_prcs_Input_b_13;
-- Input_b[12]
t_prcs_Input_b_12: PROCESS
BEGIN
	Input_b(12) <= '0';
	WAIT FOR 409600 ps;
	Input_b(12) <= '1';
	WAIT FOR 409600 ps;
	Input_b(12) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_12;
-- Input_b[11]
t_prcs_Input_b_11: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Input_b(11) <= '0';
		WAIT FOR 204800 ps;
		Input_b(11) <= '1';
		WAIT FOR 204800 ps;
	END LOOP;
	Input_b(11) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_11;
-- Input_b[10]
t_prcs_Input_b_10: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		Input_b(10) <= '0';
		WAIT FOR 102400 ps;
		Input_b(10) <= '1';
		WAIT FOR 102400 ps;
	END LOOP;
	Input_b(10) <= '0';
	WAIT FOR 102400 ps;
	Input_b(10) <= '1';
WAIT;
END PROCESS t_prcs_Input_b_10;
-- Input_b[9]
t_prcs_Input_b_9: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		Input_b(9) <= '0';
		WAIT FOR 51200 ps;
		Input_b(9) <= '1';
		WAIT FOR 51200 ps;
	END LOOP;
	Input_b(9) <= '0';
	WAIT FOR 51200 ps;
	Input_b(9) <= '1';
WAIT;
END PROCESS t_prcs_Input_b_9;
-- Input_b[8]
t_prcs_Input_b_8: PROCESS
BEGIN
	FOR i IN 1 TO 19
	LOOP
		Input_b(8) <= '0';
		WAIT FOR 25600 ps;
		Input_b(8) <= '1';
		WAIT FOR 25600 ps;
	END LOOP;
	Input_b(8) <= '0';
	WAIT FOR 25600 ps;
	Input_b(8) <= '1';
WAIT;
END PROCESS t_prcs_Input_b_8;
-- Input_b[7]
t_prcs_Input_b_7: PROCESS
BEGIN
	FOR i IN 1 TO 39
	LOOP
		Input_b(7) <= '0';
		WAIT FOR 12800 ps;
		Input_b(7) <= '1';
		WAIT FOR 12800 ps;
	END LOOP;
	Input_b(7) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_7;
-- Input_b[6]
t_prcs_Input_b_6: PROCESS
BEGIN
	FOR i IN 1 TO 78
	LOOP
		Input_b(6) <= '0';
		WAIT FOR 6400 ps;
		Input_b(6) <= '1';
		WAIT FOR 6400 ps;
	END LOOP;
	Input_b(6) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_6;
-- Input_b[5]
t_prcs_Input_b_5: PROCESS
BEGIN
	FOR i IN 1 TO 156
	LOOP
		Input_b(5) <= '0';
		WAIT FOR 3200 ps;
		Input_b(5) <= '1';
		WAIT FOR 3200 ps;
	END LOOP;
	Input_b(5) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_5;
-- Input_b[4]
t_prcs_Input_b_4: PROCESS
BEGIN
	FOR i IN 1 TO 312
	LOOP
		Input_b(4) <= '0';
		WAIT FOR 1600 ps;
		Input_b(4) <= '1';
		WAIT FOR 1600 ps;
	END LOOP;
	Input_b(4) <= '0';
WAIT;
END PROCESS t_prcs_Input_b_4;
-- Input_b[3]
t_prcs_Input_b_3: PROCESS
BEGIN
LOOP
	Input_b(3) <= '0';
	WAIT FOR 800 ps;
	Input_b(3) <= '1';
	WAIT FOR 800 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_b_3;
-- Input_b[2]
t_prcs_Input_b_2: PROCESS
BEGIN
LOOP
	Input_b(2) <= '0';
	WAIT FOR 400 ps;
	Input_b(2) <= '1';
	WAIT FOR 400 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_b_2;
-- Input_b[1]
t_prcs_Input_b_1: PROCESS
BEGIN
LOOP
	Input_b(1) <= '0';
	WAIT FOR 200 ps;
	Input_b(1) <= '1';
	WAIT FOR 200 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_b_1;
-- Input_b[0]
t_prcs_Input_b_0: PROCESS
BEGIN
LOOP
	Input_b(0) <= '0';
	WAIT FOR 100 ps;
	Input_b(0) <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_b_0;
END Somador16_arch;
