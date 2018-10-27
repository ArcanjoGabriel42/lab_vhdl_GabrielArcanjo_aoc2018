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
-- Generated on "10/27/2018 01:29:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FLIPFLOPD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FLIPFLOPD_vhd_vec_tst IS
END FLIPFLOPD_vhd_vec_tst;
ARCHITECTURE FLIPFLOPD_arch OF FLIPFLOPD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Dados_in : STD_LOGIC;
SIGNAL Dados_out : STD_LOGIC;
COMPONENT FLIPFLOPD
	PORT (
	Clock : IN STD_LOGIC;
	Dados_in : IN STD_LOGIC;
	Dados_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FLIPFLOPD
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Dados_in => Dados_in,
	Dados_out => Dados_out
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Dados_in
t_prcs_Dados_in: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		Dados_in <= '0';
		WAIT FOR 35000 ps;
		Dados_in <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	Dados_in <= '0';
WAIT;
END PROCESS t_prcs_Dados_in;
END FLIPFLOPD_arch;
