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
-- Generated on "10/25/2018 19:08:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Shifter2L
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Shifter2L_vhd_vec_tst IS
END Shifter2L_vhd_vec_tst;
ARCHITECTURE Shifter2L_arch OF Shifter2L_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Input_a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Shifter2L
	PORT (
	Input_a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Shifter2L
	PORT MAP (
-- list connections between master ports and signals
	Input_a => Input_a,
	Output => Output
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
WAIT;
END PROCESS t_prcs_Input_a_13;
-- Input_a[12]
t_prcs_Input_a_12: PROCESS
BEGIN
	Input_a(12) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_12;
-- Input_a[11]
t_prcs_Input_a_11: PROCESS
BEGIN
	Input_a(11) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_11;
-- Input_a[10]
t_prcs_Input_a_10: PROCESS
BEGIN
	Input_a(10) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_10;
-- Input_a[9]
t_prcs_Input_a_9: PROCESS
BEGIN
	Input_a(9) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_9;
-- Input_a[8]
t_prcs_Input_a_8: PROCESS
BEGIN
	Input_a(8) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_8;
-- Input_a[7]
t_prcs_Input_a_7: PROCESS
BEGIN
	Input_a(7) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_7;
-- Input_a[6]
t_prcs_Input_a_6: PROCESS
BEGIN
	Input_a(6) <= '0';
	WAIT FOR 640000 ps;
	Input_a(6) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_6;
-- Input_a[5]
t_prcs_Input_a_5: PROCESS
BEGIN
	Input_a(5) <= '0';
	WAIT FOR 320000 ps;
	Input_a(5) <= '1';
	WAIT FOR 320000 ps;
	Input_a(5) <= '0';
	WAIT FOR 320000 ps;
	Input_a(5) <= '1';
WAIT;
END PROCESS t_prcs_Input_a_5;
-- Input_a[4]
t_prcs_Input_a_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Input_a(4) <= '0';
		WAIT FOR 160000 ps;
		Input_a(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Input_a(4) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_4;
-- Input_a[3]
t_prcs_Input_a_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Input_a(3) <= '0';
		WAIT FOR 80000 ps;
		Input_a(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Input_a(3) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_3;
-- Input_a[2]
t_prcs_Input_a_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Input_a(2) <= '0';
		WAIT FOR 40000 ps;
		Input_a(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Input_a(2) <= '0';
WAIT;
END PROCESS t_prcs_Input_a_2;
-- Input_a[1]
t_prcs_Input_a_1: PROCESS
BEGIN
LOOP
	Input_a(1) <= '0';
	WAIT FOR 20000 ps;
	Input_a(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_1;
-- Input_a[0]
t_prcs_Input_a_0: PROCESS
BEGIN
LOOP
	Input_a(0) <= '0';
	WAIT FOR 10000 ps;
	Input_a(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_a_0;
END Shifter2L_arch;
