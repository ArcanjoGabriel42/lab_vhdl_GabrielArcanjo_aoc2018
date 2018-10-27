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
-- Generated on "10/27/2018 12:32:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4_vhd_vec_tst IS
END Mux4_vhd_vec_tst;
ARCHITECTURE Mux4_arch OF Mux4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL D : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Se : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mux4
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Output : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	Se : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	Output => Output,
	Se => Se
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;
-- C[1]
t_prcs_C_1: PROCESS
BEGIN
	C(1) <= '1';
WAIT;
END PROCESS t_prcs_C_1;
-- C[0]
t_prcs_C_0: PROCESS
BEGIN
	C(0) <= '0';
WAIT;
END PROCESS t_prcs_C_0;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '1';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '1';
WAIT;
END PROCESS t_prcs_D_0;
-- Se[1]
t_prcs_Se_1: PROCESS
BEGIN
LOOP
	Se(1) <= '0';
	WAIT FOR 500000 ps;
	Se(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Se_1;
-- Se[0]
t_prcs_Se_0: PROCESS
BEGIN
LOOP
	Se(0) <= '0';
	WAIT FOR 250000 ps;
	Se(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Se_0;
END Mux4_arch;
