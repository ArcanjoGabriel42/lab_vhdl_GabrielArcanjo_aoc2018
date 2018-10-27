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
-- Generated on "10/27/2018 01:25:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FLIPFLOPJK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FLIPFLOPJK_vhd_vec_tst IS
END FLIPFLOPJK_vhd_vec_tst;
ARCHITECTURE FLIPFLOPJK_arch OF FLIPFLOPJK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL NQ : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT FLIPFLOPJK
	PORT (
	Clock : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	NQ : OUT STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FLIPFLOPJK
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	J => J,
	K => K,
	NQ => NQ,
	Q => Q
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 75000 ps;
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 75000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 50000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	Clock <= '0';
	WAIT FOR 75000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 50000 ps;
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
WAIT;
END PROCESS t_prcs_Clock;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 50000 ps;
	J <= '1';
	WAIT FOR 100000 ps;
	J <= '0';
	WAIT FOR 25000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 25000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 75000 ps;
	J <= '1';
	WAIT FOR 100000 ps;
	J <= '0';
	WAIT FOR 50000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 50000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 75000 ps;
	J <= '1';
	WAIT FOR 25000 ps;
	J <= '0';
	WAIT FOR 50000 ps;
	J <= '1';
	WAIT FOR 50000 ps;
	J <= '0';
	WAIT FOR 25000 ps;
	J <= '1';
	WAIT FOR 50000 ps;
	J <= '0';
	WAIT FOR 75000 ps;
	J <= '1';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 75000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 100000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
	WAIT FOR 25000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 100000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 25000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
	WAIT FOR 50000 ps;
	K <= '0';
	WAIT FOR 50000 ps;
	K <= '1';
WAIT;
END PROCESS t_prcs_K;
END FLIPFLOPJK_arch;
