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
-- Generated on "10/23/2018 20:23:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Somador4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Somador4_vhd_vec_tst IS
END Somador4_vhd_vec_tst;
ARCHITECTURE Somador4_arch OF Somador4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Somador4
	PORT (
	Input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Somador4
	PORT MAP (
-- list connections between master ports and signals
	Input => Input,
	saida => saida
	);
-- Input[7]
t_prcs_Input_7: PROCESS
BEGIN
	Input(7) <= '1';
WAIT;
END PROCESS t_prcs_Input_7;
-- Input[6]
t_prcs_Input_6: PROCESS
BEGIN
	Input(6) <= '0';
	WAIT FOR 640000 ps;
	Input(6) <= '1';
WAIT;
END PROCESS t_prcs_Input_6;
-- Input[5]
t_prcs_Input_5: PROCESS
BEGIN
	Input(5) <= '0';
	WAIT FOR 320000 ps;
	Input(5) <= '1';
	WAIT FOR 320000 ps;
	Input(5) <= '0';
	WAIT FOR 320000 ps;
	Input(5) <= '1';
WAIT;
END PROCESS t_prcs_Input_5;
-- Input[4]
t_prcs_Input_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Input(4) <= '0';
		WAIT FOR 160000 ps;
		Input(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Input(4) <= '0';
WAIT;
END PROCESS t_prcs_Input_4;
-- Input[3]
t_prcs_Input_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Input(3) <= '0';
		WAIT FOR 80000 ps;
		Input(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Input(3) <= '0';
WAIT;
END PROCESS t_prcs_Input_3;
-- Input[2]
t_prcs_Input_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Input(2) <= '0';
		WAIT FOR 40000 ps;
		Input(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Input(2) <= '0';
WAIT;
END PROCESS t_prcs_Input_2;
-- Input[1]
t_prcs_Input_1: PROCESS
BEGIN
LOOP
	Input(1) <= '0';
	WAIT FOR 20000 ps;
	Input(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_1;
-- Input[0]
t_prcs_Input_0: PROCESS
BEGIN
LOOP
	Input(0) <= '0';
	WAIT FOR 10000 ps;
	Input(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Input_0;
END Somador4_arch;
