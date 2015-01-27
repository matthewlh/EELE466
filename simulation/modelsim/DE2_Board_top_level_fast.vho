-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "01/27/2015 14:02:14"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2_Board_top_level IS
    PORT (
	CLOCK_27 : IN std_logic;
	CLOCK_50 : IN std_logic;
	EXT_CLOCK : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(35 DOWNTO 0);
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	AUD_XCK : OUT std_logic;
	AUD_BCLK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCL : OUT std_logic;
	UART_RXD : IN std_logic;
	UART_TXD : OUT std_logic;
	PS2_CLK : OUT std_logic;
	PS2_DAT : INOUT std_logic;
	I2C_SCLK : OUT std_logic;
	I2C_SDAT : INOUT std_logic;
	ENET_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	ENET_CLK : OUT std_logic;
	ENET_CMD : OUT std_logic;
	ENET_CS_N : OUT std_logic;
	ENET_INT : IN std_logic;
	ENET_RD_N : OUT std_logic;
	ENET_WR_N : OUT std_logic;
	ENET_RST_N : OUT std_logic;
	TD_DATA : IN std_logic_vector(7 DOWNTO 0);
	TD_HS : IN std_logic;
	TD_VS : IN std_logic;
	TD_CLK27 : IN std_logic;
	TD_RESET : OUT std_logic;
	OTG_ADDR : OUT std_logic_vector(1 DOWNTO 0);
	OTG_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	OTG_CS_N : OUT std_logic;
	OTG_RD_N : OUT std_logic;
	OTG_WR_N : OUT std_logic;
	OTG_RST_N : OUT std_logic;
	OTG_INT0 : IN std_logic;
	OTG_INT1 : IN std_logic;
	OTG_DREQ0 : IN std_logic;
	OTG_DREQ1 : IN std_logic;
	OTG_DACK0_N : OUT std_logic;
	OTG_DACK1_N : OUT std_logic;
	OTG_FSPEED : INOUT std_logic;
	OTG_LSPEED : INOUT std_logic;
	IRDA_TXD : OUT std_logic;
	IRDA_RXD : IN std_logic;
	DRAM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_BA_0 : OUT std_logic;
	DRAM_BA_1 : OUT std_logic;
	DRAM_LDQM : OUT std_logic;
	DRAM_UDQM : OUT std_logic;
	DRAM_RAS_N : OUT std_logic;
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CLK : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_WE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	FL_ADDR : OUT std_logic_vector(21 DOWNTO 0);
	FL_DQ : INOUT std_logic_vector(7 DOWNTO 0);
	FL_CE_N : OUT std_logic;
	FL_OE_N : OUT std_logic;
	FL_RST_N : OUT std_logic;
	FL_WE_N : OUT std_logic;
	SD_DAT : INOUT std_logic;
	SD_DAT3 : OUT std_logic;
	SD_CMD : OUT std_logic;
	SD_CLK : OUT std_logic
	);
END DE2_Board_top_level;

-- Design Ports Information
-- DRAM_DQ[0]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[1]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[2]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[4]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[5]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[6]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[7]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[8]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[9]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[10]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[11]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[12]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[13]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[14]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[15]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[33]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[34]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[35]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[0]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[4]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[7]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[8]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[9]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[10]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[11]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[12]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[13]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[14]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[15]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[16]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[17]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[18]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[19]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[20]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[21]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[22]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[23]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[24]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[25]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[26]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[27]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[28]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[29]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[30]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[31]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[32]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[33]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[34]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[35]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PS2_DAT	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[6]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[7]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[8]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[9]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[10]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[11]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[12]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[13]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[14]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_DATA[15]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[2]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[3]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[4]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[5]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[6]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[7]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[8]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[9]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[10]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[11]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[12]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[13]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[14]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DATA[15]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_FSPEED	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_LSPEED	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[0]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[0]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[1]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[2]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[3]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[4]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[5]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[6]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[7]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_DAT	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_CLOCK	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_EN	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ON	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_BLON	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_XCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACDAT	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_ADCLRCL	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RXD	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PS2_CLK	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SCLK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_CLK	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_CMD	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_CS_N	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_INT	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET_RD_N	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_WR_N	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENET_RST_N	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TD_DATA[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_RESET	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_ADDR[0]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_ADDR[1]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_CS_N	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_RD_N	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_WR_N	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_RST_N	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_INT0	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_INT1	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_DREQ0	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_DREQ1	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_DACK0_N	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OTG_DACK1_N	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRDA_TXD	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IRDA_RXD	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[1]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[2]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[3]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[4]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[5]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[6]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[7]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[8]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[9]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[10]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[11]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_BA_0	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_BA_1	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_LDQM	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_UDQM	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_RAS_N	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CAS_N	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CKE	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CLK	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_WE_N	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CS_N	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[0]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[1]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[2]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[3]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[4]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[6]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[7]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[8]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[9]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[10]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[11]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[12]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[13]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[14]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[15]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[16]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[17]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[18]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[19]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[20]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[21]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_CE_N	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_OE_N	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_RST_N	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_WE_N	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_DAT3	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CMD	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CLK	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE2_Board_top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_27 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_EXT_CLOCK : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_ADCLRCL : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_ENET_CLK : std_logic;
SIGNAL ww_ENET_CMD : std_logic;
SIGNAL ww_ENET_CS_N : std_logic;
SIGNAL ww_ENET_INT : std_logic;
SIGNAL ww_ENET_RD_N : std_logic;
SIGNAL ww_ENET_WR_N : std_logic;
SIGNAL ww_ENET_RST_N : std_logic;
SIGNAL ww_TD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TD_HS : std_logic;
SIGNAL ww_TD_VS : std_logic;
SIGNAL ww_TD_CLK27 : std_logic;
SIGNAL ww_TD_RESET : std_logic;
SIGNAL ww_OTG_ADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OTG_CS_N : std_logic;
SIGNAL ww_OTG_RD_N : std_logic;
SIGNAL ww_OTG_WR_N : std_logic;
SIGNAL ww_OTG_RST_N : std_logic;
SIGNAL ww_OTG_INT0 : std_logic;
SIGNAL ww_OTG_INT1 : std_logic;
SIGNAL ww_OTG_DREQ0 : std_logic;
SIGNAL ww_OTG_DREQ1 : std_logic;
SIGNAL ww_OTG_DACK0_N : std_logic;
SIGNAL ww_OTG_DACK1_N : std_logic;
SIGNAL ww_IRDA_TXD : std_logic;
SIGNAL ww_IRDA_RXD : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_DRAM_BA_0 : std_logic;
SIGNAL ww_DRAM_BA_1 : std_logic;
SIGNAL ww_DRAM_LDQM : std_logic;
SIGNAL ww_DRAM_UDQM : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_FL_ADDR : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_FL_CE_N : std_logic;
SIGNAL ww_FL_OE_N : std_logic;
SIGNAL ww_FL_RST_N : std_logic;
SIGNAL ww_FL_WE_N : std_logic;
SIGNAL ww_SD_DAT3 : std_logic;
SIGNAL ww_SD_CMD : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[16]~52_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector15~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector8~5_combout\ : std_logic;
SIGNAL \lcd_display_0|state.RESET3~regout\ : std_logic;
SIGNAL \lcd_display_0|state.RESET2~regout\ : std_logic;
SIGNAL \lcd_display_0|next_command.RESET3~regout\ : std_logic;
SIGNAL \lcd_display_0|state~34_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.RESET2~regout\ : std_logic;
SIGNAL \lcd_display_0|state~37_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector17~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector19~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector18~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector7~2_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector5~2_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector9~3_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \lcd_display_0|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[10]~feeder_combout\ : std_logic;
SIGNAL \lcd_display_0|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_display_0|LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[11]~feeder_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[15]~50_combout\ : std_logic;
SIGNAL \lcd_display_0|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[15]~51\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[16]~53\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[17]~54_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[17]~55\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[18]~56_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[18]~57\ : std_logic;
SIGNAL \lcd_display_0|CLK_COUNT_400HZ[19]~58_combout\ : std_logic;
SIGNAL \lcd_display_0|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_display_0|LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_400HZ_Enable~feeder_combout\ : std_logic;
SIGNAL \lcd_display_0|CLK_400HZ_Enable~regout\ : std_logic;
SIGNAL \lcd_display_0|state.RESET1~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector26~0_combout\ : std_logic;
SIGNAL \lcd_display_0|LCD_RS~0_combout\ : std_logic;
SIGNAL \lcd_display_0|state.DROP_LCD_E~regout\ : std_logic;
SIGNAL \lcd_display_0|state.HOLD~regout\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector24~0_combout\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector23~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Equal2~0_combout\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector22~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector17~1_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \lcd_display_0|state~29_combout\ : std_logic;
SIGNAL \lcd_display_0|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector15~1_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.Print_String~regout\ : std_logic;
SIGNAL \lcd_display_0|state~28_combout\ : std_logic;
SIGNAL \lcd_display_0|state.Print_String~regout\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \lcd_display_0|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector25~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector9~2_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector9~4_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector8~7_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector8~6_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector21~0_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \lcd_display_0|state~32_combout\ : std_logic;
SIGNAL \lcd_display_0|state.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector13~0_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \lcd_display_0|state~33_combout\ : std_logic;
SIGNAL \lcd_display_0|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector14~0_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \lcd_display_0|state~30_combout\ : std_logic;
SIGNAL \lcd_display_0|state.MODE_SET~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector7~4_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector7~5_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector6~12_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector12~0_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.FUNC_SET~regout\ : std_logic;
SIGNAL \lcd_display_0|state~36_combout\ : std_logic;
SIGNAL \lcd_display_0|state.FUNC_SET~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector20~0_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \lcd_display_0|state~35_combout\ : std_logic;
SIGNAL \lcd_display_0|state.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector6~13_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector6~3_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector6~15_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector6~14_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector16~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector16~1_combout\ : std_logic;
SIGNAL \lcd_display_0|next_command.LINE2~regout\ : std_logic;
SIGNAL \lcd_display_0|state~31_combout\ : std_logic;
SIGNAL \lcd_display_0|state.LINE2~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector5~3_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector5~4_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector5~5_combout\ : std_logic;
SIGNAL \lcd_display_0|DATA_BUS_VALUE[5]~0_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector4~3_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector4~10_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector4~9_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector3~3_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector3~2_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector3~4_combout\ : std_logic;
SIGNAL \lcd_display_0|Selector2~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \hex2_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex2_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex2_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex6_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \lcd_display_0|LCD_E~0_combout\ : std_logic;
SIGNAL \lcd_display_0|LCD_E~regout\ : std_logic;
SIGNAL \lcd_display_0|Selector1~0_combout\ : std_logic;
SIGNAL \lcd_display_0|LCD_RS~regout\ : std_logic;
SIGNAL \lcd_display_0|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_display_0|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \lcd_display_0|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lcd_display_0|ALT_INV_state.Print_String~regout\ : std_logic;
SIGNAL \hex6_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex4_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

BEGIN

ww_CLOCK_27 <= CLOCK_27;
ww_CLOCK_50 <= CLOCK_50;
ww_EXT_CLOCK <= EXT_CLOCK;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK <= ww_VGA_BLANK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC <= ww_VGA_SYNC;
AUD_XCK <= ww_AUD_XCK;
AUD_BCLK <= ww_AUD_BCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_DACLRCK <= ww_AUD_DACLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_ADCLRCL <= ww_AUD_ADCLRCL;
ww_UART_RXD <= UART_RXD;
UART_TXD <= ww_UART_TXD;
PS2_CLK <= ww_PS2_CLK;
I2C_SCLK <= ww_I2C_SCLK;
ENET_CLK <= ww_ENET_CLK;
ENET_CMD <= ww_ENET_CMD;
ENET_CS_N <= ww_ENET_CS_N;
ww_ENET_INT <= ENET_INT;
ENET_RD_N <= ww_ENET_RD_N;
ENET_WR_N <= ww_ENET_WR_N;
ENET_RST_N <= ww_ENET_RST_N;
ww_TD_DATA <= TD_DATA;
ww_TD_HS <= TD_HS;
ww_TD_VS <= TD_VS;
ww_TD_CLK27 <= TD_CLK27;
TD_RESET <= ww_TD_RESET;
OTG_ADDR <= ww_OTG_ADDR;
OTG_CS_N <= ww_OTG_CS_N;
OTG_RD_N <= ww_OTG_RD_N;
OTG_WR_N <= ww_OTG_WR_N;
OTG_RST_N <= ww_OTG_RST_N;
ww_OTG_INT0 <= OTG_INT0;
ww_OTG_INT1 <= OTG_INT1;
ww_OTG_DREQ0 <= OTG_DREQ0;
ww_OTG_DREQ1 <= OTG_DREQ1;
OTG_DACK0_N <= ww_OTG_DACK0_N;
OTG_DACK1_N <= ww_OTG_DACK1_N;
IRDA_TXD <= ww_IRDA_TXD;
ww_IRDA_RXD <= IRDA_RXD;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA_0 <= ww_DRAM_BA_0;
DRAM_BA_1 <= ww_DRAM_BA_1;
DRAM_LDQM <= ww_DRAM_LDQM;
DRAM_UDQM <= ww_DRAM_UDQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_WE_N <= ww_DRAM_WE_N;
DRAM_CS_N <= ww_DRAM_CS_N;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_CE_N <= ww_SRAM_CE_N;
FL_ADDR <= ww_FL_ADDR;
FL_CE_N <= ww_FL_CE_N;
FL_OE_N <= ww_FL_OE_N;
FL_RST_N <= ww_FL_RST_N;
FL_WE_N <= ww_FL_WE_N;
SD_DAT3 <= ww_SD_DAT3;
SD_CMD <= ww_SD_CMD;
SD_CLK <= ww_SD_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\lcd_display_0|ALT_INV_state.Print_String~regout\ <= NOT \lcd_display_0|state.Print_String~regout\;
\hex6_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex6_decoder|Mux0~0_combout\;
\hex4_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex4_decoder|Mux0~0_combout\;
\hex1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex1_decoder|Mux0~0_combout\;
\hex0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex0_decoder|Mux0~0_combout\;
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;

-- Location: LCCOMB_X33_Y6_N14
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y6_N10
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X30_Y6_N2
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X30_Y6_N10
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & 
-- ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X29_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X29_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X29_Y5_N4
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\SW~combout\(17) & (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\SW~combout\(17) & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\SW~combout\(17) & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X30_Y5_N18
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X30_Y5_N22
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X31_Y5_N14
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X31_Y5_N16
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X31_Y5_N18
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X32_Y5_N22
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X34_Y5_N22
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X34_Y5_N26
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X36_Y7_N20
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \SW~combout\(13) $ (VCC)
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\SW~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(13),
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X36_Y7_N24
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\SW~combout\(15) & ((GND) # (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\SW~combout\(15) & 
-- (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\SW~combout\(15)) # (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(15),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X1_Y16_N10
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\SW~combout\(4) & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\SW~combout\(4) & 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\SW~combout\(4) & !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X1_Y16_N12
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X2_Y16_N6
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\) # (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\)))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\ & 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\)))
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\ & 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\ & !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X2_Y17_N20
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\SW~combout\(3) & (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\SW~combout\(3) & 
-- (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\SW~combout\(3) & !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCFF_X1_Y26_N13
\lcd_display_0|CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[16]~52_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(16));

-- Location: LCFF_X1_Y26_N7
\lcd_display_0|CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[13]~46_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(13));

-- Location: LCFF_X1_Y27_N25
\lcd_display_0|CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[6]~32_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(6));

-- Location: LCFF_X1_Y27_N21
\lcd_display_0|CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[4]~28_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(4));

-- Location: LCFF_X1_Y27_N17
\lcd_display_0|CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(2));

-- Location: LCFF_X1_Y27_N13
\lcd_display_0|CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X1_Y27_N12
\lcd_display_0|CLK_COUNT_400HZ[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[0]~20_combout\ = \lcd_display_0|CLK_COUNT_400HZ\(0) $ (VCC)
-- \lcd_display_0|CLK_COUNT_400HZ[0]~21\ = CARRY(\lcd_display_0|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \lcd_display_0|CLK_COUNT_400HZ[0]~20_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[0]~21\);

-- Location: LCCOMB_X1_Y27_N16
\lcd_display_0|CLK_COUNT_400HZ[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[2]~24_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(2) & (\lcd_display_0|CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(2) & (!\lcd_display_0|CLK_COUNT_400HZ[1]~23\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[2]~25\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(2) & !\lcd_display_0|CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[1]~23\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[2]~24_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[2]~25\);

-- Location: LCCOMB_X1_Y27_N20
\lcd_display_0|CLK_COUNT_400HZ[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[4]~28_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(4) & (\lcd_display_0|CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(4) & (!\lcd_display_0|CLK_COUNT_400HZ[3]~27\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[4]~29\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(4) & !\lcd_display_0|CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[3]~27\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[4]~28_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[4]~29\);

-- Location: LCCOMB_X1_Y27_N24
\lcd_display_0|CLK_COUNT_400HZ[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[6]~32_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(6) & (\lcd_display_0|CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(6) & (!\lcd_display_0|CLK_COUNT_400HZ[5]~31\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[6]~33\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(6) & !\lcd_display_0|CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[5]~31\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[6]~32_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[6]~33\);

-- Location: LCCOMB_X1_Y26_N6
\lcd_display_0|CLK_COUNT_400HZ[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[13]~46_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(13) & (!\lcd_display_0|CLK_COUNT_400HZ[12]~45\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(13) & ((\lcd_display_0|CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[13]~47\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[12]~45\) # (!\lcd_display_0|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[12]~45\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[13]~46_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[13]~47\);

-- Location: LCCOMB_X1_Y26_N12
\lcd_display_0|CLK_COUNT_400HZ[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[16]~52_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(16) & (\lcd_display_0|CLK_COUNT_400HZ[15]~51\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(16) & (!\lcd_display_0|CLK_COUNT_400HZ[15]~51\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[16]~53\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(16) & !\lcd_display_0|CLK_COUNT_400HZ[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[15]~51\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[16]~52_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[16]~53\);

-- Location: LCCOMB_X32_Y6_N0
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\SW~combout\(17) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X32_Y6_N30
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\SW~combout\(16) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(16),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X32_Y6_N8
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\SW~combout\(15) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(15),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X32_Y6_N14
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\SW~combout\(14) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X31_Y6_N20
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X32_Y6_N6
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\SW~combout\(14) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X28_Y6_N18
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\SW~combout\(13) & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X31_Y6_N4
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X28_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\SW~combout\(13) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X30_Y6_N20
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\SW~combout\(12) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(12),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X29_Y6_N8
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW~combout\(11),
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~77_combout\);

-- Location: LCCOMB_X29_Y6_N10
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\);

-- Location: LCCOMB_X29_Y6_N2
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\);

-- Location: LCCOMB_X29_Y5_N14
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X29_Y5_N30
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X29_Y5_N12
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\SW~combout\(15) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(15),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X31_Y5_N2
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\SW~combout\(14) & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X31_Y5_N12
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X31_Y5_N10
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X31_Y5_N6
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X31_Y5_N24
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\SW~combout\(13) & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X32_Y5_N12
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X32_Y5_N10
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X32_Y5_N6
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X33_Y5_N26
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \SW~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \SW~combout\(12),
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X33_Y5_N20
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X33_Y5_N24
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \SW~combout\(11),
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X35_Y5_N20
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\);

-- Location: LCCOMB_X35_Y5_N24
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2_combout\ = (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2_combout\);

-- Location: LCCOMB_X34_Y5_N10
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X34_Y5_N12
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5_combout\);

-- Location: LCCOMB_X34_Y5_N8
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\);

-- Location: LCCOMB_X34_Y5_N14
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\);

-- Location: LCCOMB_X36_Y7_N8
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\SW~combout\(17) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X36_Y7_N2
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\SW~combout\(16) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(16),
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X36_Y7_N14
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X36_Y7_N12
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\SW~combout\(14) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X36_Y7_N10
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X37_Y7_N24
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\SW~combout\(12) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X2_Y16_N20
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW~combout\(1),
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X1_Y16_N0
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\ = (\SW~combout\(3) & \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(3),
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\);

-- Location: LCCOMB_X2_Y17_N0
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \SW~combout\(4),
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\);

-- Location: LCCOMB_X2_Y17_N16
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LCCOMB_X2_Y17_N28
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \SW~combout\(2),
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\);

-- Location: LCCOMB_X1_Y17_N14
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \SW~combout\(1),
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\);

-- Location: LCCOMB_X5_Y27_N6
\lcd_display_0|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector15~0_combout\ = (\lcd_display_0|state.LINE2~regout\) # ((\lcd_display_0|state.MODE_SET~regout\) # ((\lcd_display_0|next_command.Print_String~regout\ & !\lcd_display_0|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|next_command.Print_String~regout\,
	datab => \lcd_display_0|LCD_RS~0_combout\,
	datac => \lcd_display_0|state.LINE2~regout\,
	datad => \lcd_display_0|state.MODE_SET~regout\,
	combout => \lcd_display_0|Selector15~0_combout\);

-- Location: LCCOMB_X4_Y27_N24
\lcd_display_0|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector8~5_combout\ = (\lcd_display_0|state.MODE_SET~regout\) # ((\lcd_display_0|DATA_BUS_VALUE\(1) & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|DATA_BUS_VALUE\(1),
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|state.HOLD~regout\,
	datad => \lcd_display_0|state.MODE_SET~regout\,
	combout => \lcd_display_0|Selector8~5_combout\);

-- Location: LCFF_X3_Y27_N7
\lcd_display_0|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~34_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.RESET3~regout\);

-- Location: LCFF_X3_Y27_N17
\lcd_display_0|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~37_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.RESET2~regout\);

-- Location: LCFF_X3_Y27_N9
\lcd_display_0|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector19~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.RESET3~regout\);

-- Location: LCCOMB_X3_Y27_N6
\lcd_display_0|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~34_combout\ = (\lcd_display_0|next_command.RESET3~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|next_command.RESET3~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~34_combout\);

-- Location: LCFF_X3_Y27_N31
\lcd_display_0|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector18~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.RESET2~regout\);

-- Location: LCCOMB_X3_Y27_N16
\lcd_display_0|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~37_combout\ = (!\lcd_display_0|next_command.RESET2~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.RESET2~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~37_combout\);

-- Location: LCCOMB_X5_Y27_N8
\lcd_display_0|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector17~0_combout\ = (\lcd_display_0|next_command.RETURN_HOME~regout\ & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.RETURN_HOME~regout\,
	datac => \lcd_display_0|state.DROP_LCD_E~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|Selector17~0_combout\);

-- Location: LCCOMB_X3_Y27_N8
\lcd_display_0|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector19~0_combout\ = (\lcd_display_0|state.RESET2~regout\) # ((\lcd_display_0|next_command.RESET3~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RESET2~regout\,
	datab => \lcd_display_0|state.HOLD~regout\,
	datac => \lcd_display_0|next_command.RESET3~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|Selector19~0_combout\);

-- Location: LCCOMB_X3_Y27_N30
\lcd_display_0|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector18~0_combout\ = (\lcd_display_0|state.RESET1~regout\ & ((\lcd_display_0|next_command.RESET2~regout\) # ((!\lcd_display_0|state.HOLD~regout\ & !\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RESET1~regout\,
	datab => \lcd_display_0|state.HOLD~regout\,
	datac => \lcd_display_0|next_command.RESET2~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|Selector18~0_combout\);

-- Location: LCCOMB_X31_Y6_N26
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X31_Y6_N6
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X30_Y6_N28
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X30_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X30_Y6_N26
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X32_Y5_N0
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X32_Y6_N2
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW~combout\(17))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X32_Y6_N4
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW~combout\(16))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \SW~combout\(16),
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X32_Y6_N20
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\SW~combout\(14))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X32_Y5_N2
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\SW~combout\(13)))) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X3_Y27_N12
\lcd_display_0|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector7~2_combout\ = (\lcd_display_0|CHAR_COUNT\(1) & (!\lcd_display_0|CHAR_COUNT\(4) & ((!\lcd_display_0|CHAR_COUNT\(2))))) # (!\lcd_display_0|CHAR_COUNT\(1) & (\lcd_display_0|CHAR_COUNT\(4) $ (((\lcd_display_0|CHAR_COUNT\(0)) # 
-- (\lcd_display_0|CHAR_COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datab => \lcd_display_0|CHAR_COUNT\(1),
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector7~2_combout\);

-- Location: LCCOMB_X3_Y27_N14
\lcd_display_0|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector5~2_combout\ = (\lcd_display_0|CHAR_COUNT\(2) & (!\lcd_display_0|CHAR_COUNT\(4))) # (!\lcd_display_0|CHAR_COUNT\(2) & ((\lcd_display_0|CHAR_COUNT\(1) & ((!\lcd_display_0|CHAR_COUNT\(0)))) # (!\lcd_display_0|CHAR_COUNT\(1) & 
-- (\lcd_display_0|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datab => \lcd_display_0|CHAR_COUNT\(1),
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector5~2_combout\);

-- Location: LCCOMB_X4_Y27_N6
\lcd_display_0|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector9~3_combout\ = (\lcd_display_0|state.DISPLAY_CLEAR~regout\) # ((\lcd_display_0|DATA_BUS_VALUE\(0) & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|DATA_BUS_VALUE\(0),
	datab => \lcd_display_0|state.DISPLAY_CLEAR~regout\,
	datac => \lcd_display_0|state.DROP_LCD_E~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|Selector9~3_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y27_N4
\lcd_display_0|CHAR_COUNT[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CHAR_COUNT[0]~5_combout\ = \lcd_display_0|CHAR_COUNT\(0) $ (VCC)
-- \lcd_display_0|CHAR_COUNT[0]~6\ = CARRY(\lcd_display_0|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CHAR_COUNT\(0),
	datad => VCC,
	combout => \lcd_display_0|CHAR_COUNT[0]~5_combout\,
	cout => \lcd_display_0|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X3_Y27_N24
\lcd_display_0|state.RESET1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd_display_0|state.RESET1~feeder_combout\);

-- Location: LCCOMB_X1_Y27_N14
\lcd_display_0|CLK_COUNT_400HZ[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[1]~22_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(1) & (!\lcd_display_0|CLK_COUNT_400HZ[0]~21\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(1) & ((\lcd_display_0|CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[1]~23\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[0]~21\) # (!\lcd_display_0|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[0]~21\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[1]~22_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[1]~23\);

-- Location: LCFF_X1_Y27_N15
\lcd_display_0|CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X1_Y27_N18
\lcd_display_0|CLK_COUNT_400HZ[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[3]~26_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(3) & (!\lcd_display_0|CLK_COUNT_400HZ[2]~25\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(3) & ((\lcd_display_0|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[3]~27\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[2]~25\) # (!\lcd_display_0|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[2]~25\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[3]~26_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[3]~27\);

-- Location: LCFF_X1_Y27_N19
\lcd_display_0|CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[3]~26_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X1_Y27_N22
\lcd_display_0|CLK_COUNT_400HZ[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[5]~30_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(5) & (!\lcd_display_0|CLK_COUNT_400HZ[4]~29\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(5) & ((\lcd_display_0|CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[5]~31\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[4]~29\) # (!\lcd_display_0|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[4]~29\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[5]~30_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[5]~31\);

-- Location: LCFF_X1_Y27_N23
\lcd_display_0|CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[5]~30_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X1_Y27_N26
\lcd_display_0|CLK_COUNT_400HZ[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[7]~34_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(7) & (!\lcd_display_0|CLK_COUNT_400HZ[6]~33\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(7) & ((\lcd_display_0|CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[7]~35\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[6]~33\) # (!\lcd_display_0|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[6]~33\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[7]~34_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[7]~35\);

-- Location: LCFF_X1_Y27_N27
\lcd_display_0|CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[7]~34_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X1_Y27_N28
\lcd_display_0|CLK_COUNT_400HZ[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[8]~36_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(8) & (\lcd_display_0|CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(8) & (!\lcd_display_0|CLK_COUNT_400HZ[7]~35\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[8]~37\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(8) & !\lcd_display_0|CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[7]~35\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[8]~36_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[8]~37\);

-- Location: LCFF_X1_Y27_N29
\lcd_display_0|CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[8]~36_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X1_Y27_N30
\lcd_display_0|CLK_COUNT_400HZ[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[9]~38_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(9) & (!\lcd_display_0|CLK_COUNT_400HZ[8]~37\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(9) & ((\lcd_display_0|CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[9]~39\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[8]~37\) # (!\lcd_display_0|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[8]~37\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[9]~38_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[9]~39\);

-- Location: LCFF_X1_Y27_N31
\lcd_display_0|CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[9]~38_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X1_Y26_N0
\lcd_display_0|CLK_COUNT_400HZ[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[10]~40_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(10) & (\lcd_display_0|CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(10) & (!\lcd_display_0|CLK_COUNT_400HZ[9]~39\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[10]~41\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(10) & !\lcd_display_0|CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[9]~39\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[10]~40_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[10]~41\);

-- Location: LCCOMB_X1_Y27_N8
\lcd_display_0|CLK_COUNT_400HZ[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[10]~feeder_combout\ = \lcd_display_0|CLK_COUNT_400HZ[10]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_display_0|CLK_COUNT_400HZ[10]~40_combout\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[10]~feeder_combout\);

-- Location: LCFF_X1_Y27_N9
\lcd_display_0|CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[10]~feeder_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X1_Y27_N2
\lcd_display_0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LessThan0~2_combout\ = (!\lcd_display_0|CLK_COUNT_400HZ\(7) & (!\lcd_display_0|CLK_COUNT_400HZ\(8) & ((!\lcd_display_0|CLK_COUNT_400HZ\(5)) # (!\lcd_display_0|CLK_COUNT_400HZ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(6),
	datab => \lcd_display_0|CLK_COUNT_400HZ\(7),
	datac => \lcd_display_0|CLK_COUNT_400HZ\(5),
	datad => \lcd_display_0|CLK_COUNT_400HZ\(8),
	combout => \lcd_display_0|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y27_N4
\lcd_display_0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LessThan0~3_combout\ = ((!\lcd_display_0|CLK_COUNT_400HZ\(10) & ((\lcd_display_0|LessThan0~2_combout\) # (!\lcd_display_0|CLK_COUNT_400HZ\(9))))) # (!\lcd_display_0|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(11),
	datab => \lcd_display_0|CLK_COUNT_400HZ\(9),
	datac => \lcd_display_0|CLK_COUNT_400HZ\(10),
	datad => \lcd_display_0|LessThan0~2_combout\,
	combout => \lcd_display_0|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y26_N2
\lcd_display_0|CLK_COUNT_400HZ[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[11]~42_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(11) & (!\lcd_display_0|CLK_COUNT_400HZ[10]~41\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(11) & ((\lcd_display_0|CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[11]~43\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[10]~41\) # (!\lcd_display_0|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[10]~41\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[11]~42_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[11]~43\);

-- Location: LCCOMB_X1_Y27_N6
\lcd_display_0|CLK_COUNT_400HZ[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[11]~feeder_combout\ = \lcd_display_0|CLK_COUNT_400HZ[11]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_display_0|CLK_COUNT_400HZ[11]~42_combout\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[11]~feeder_combout\);

-- Location: LCFF_X1_Y27_N7
\lcd_display_0|CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[11]~feeder_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X1_Y26_N4
\lcd_display_0|CLK_COUNT_400HZ[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[12]~44_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(12) & (\lcd_display_0|CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(12) & (!\lcd_display_0|CLK_COUNT_400HZ[11]~43\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[12]~45\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(12) & !\lcd_display_0|CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[11]~43\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[12]~44_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[12]~45\);

-- Location: LCFF_X1_Y26_N5
\lcd_display_0|CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[12]~44_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X1_Y26_N8
\lcd_display_0|CLK_COUNT_400HZ[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[14]~48_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(14) & (\lcd_display_0|CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(14) & (!\lcd_display_0|CLK_COUNT_400HZ[13]~47\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[14]~49\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(14) & !\lcd_display_0|CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[13]~47\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[14]~48_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[14]~49\);

-- Location: LCFF_X1_Y26_N9
\lcd_display_0|CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[14]~48_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X1_Y26_N10
\lcd_display_0|CLK_COUNT_400HZ[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[15]~50_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(15) & (!\lcd_display_0|CLK_COUNT_400HZ[14]~49\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(15) & ((\lcd_display_0|CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[15]~51\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[14]~49\) # (!\lcd_display_0|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[14]~49\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[15]~50_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[15]~51\);

-- Location: LCFF_X1_Y26_N11
\lcd_display_0|CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[15]~50_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X1_Y26_N26
\lcd_display_0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LessThan0~1_combout\ = ((!\lcd_display_0|CLK_COUNT_400HZ\(15)) # (!\lcd_display_0|CLK_COUNT_400HZ\(14))) # (!\lcd_display_0|CLK_COUNT_400HZ\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(13),
	datac => \lcd_display_0|CLK_COUNT_400HZ\(14),
	datad => \lcd_display_0|CLK_COUNT_400HZ\(15),
	combout => \lcd_display_0|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y26_N14
\lcd_display_0|CLK_COUNT_400HZ[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[17]~54_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(17) & (!\lcd_display_0|CLK_COUNT_400HZ[16]~53\)) # (!\lcd_display_0|CLK_COUNT_400HZ\(17) & ((\lcd_display_0|CLK_COUNT_400HZ[16]~53\) # (GND)))
-- \lcd_display_0|CLK_COUNT_400HZ[17]~55\ = CARRY((!\lcd_display_0|CLK_COUNT_400HZ[16]~53\) # (!\lcd_display_0|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[16]~53\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[17]~54_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[17]~55\);

-- Location: LCFF_X1_Y26_N15
\lcd_display_0|CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[17]~54_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X1_Y26_N16
\lcd_display_0|CLK_COUNT_400HZ[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[18]~56_combout\ = (\lcd_display_0|CLK_COUNT_400HZ\(18) & (\lcd_display_0|CLK_COUNT_400HZ[17]~55\ $ (GND))) # (!\lcd_display_0|CLK_COUNT_400HZ\(18) & (!\lcd_display_0|CLK_COUNT_400HZ[17]~55\ & VCC))
-- \lcd_display_0|CLK_COUNT_400HZ[18]~57\ = CARRY((\lcd_display_0|CLK_COUNT_400HZ\(18) & !\lcd_display_0|CLK_COUNT_400HZ[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \lcd_display_0|CLK_COUNT_400HZ[17]~55\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[18]~56_combout\,
	cout => \lcd_display_0|CLK_COUNT_400HZ[18]~57\);

-- Location: LCFF_X1_Y26_N17
\lcd_display_0|CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[18]~56_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X1_Y26_N18
\lcd_display_0|CLK_COUNT_400HZ[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_COUNT_400HZ[19]~58_combout\ = \lcd_display_0|CLK_COUNT_400HZ[18]~57\ $ (\lcd_display_0|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd_display_0|CLK_COUNT_400HZ\(19),
	cin => \lcd_display_0|CLK_COUNT_400HZ[18]~57\,
	combout => \lcd_display_0|CLK_COUNT_400HZ[19]~58_combout\);

-- Location: LCFF_X1_Y26_N19
\lcd_display_0|CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_COUNT_400HZ[19]~58_combout\,
	sclr => \lcd_display_0|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X1_Y26_N28
\lcd_display_0|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LessThan0~0_combout\ = (!\lcd_display_0|CLK_COUNT_400HZ\(16) & (!\lcd_display_0|CLK_COUNT_400HZ\(17) & (!\lcd_display_0|CLK_COUNT_400HZ\(18) & !\lcd_display_0|CLK_COUNT_400HZ\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(16),
	datab => \lcd_display_0|CLK_COUNT_400HZ\(17),
	datac => \lcd_display_0|CLK_COUNT_400HZ\(18),
	datad => \lcd_display_0|CLK_COUNT_400HZ\(19),
	combout => \lcd_display_0|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y27_N10
\lcd_display_0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LessThan0~4_combout\ = ((!\lcd_display_0|LessThan0~1_combout\ & ((\lcd_display_0|CLK_COUNT_400HZ\(12)) # (!\lcd_display_0|LessThan0~3_combout\)))) # (!\lcd_display_0|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CLK_COUNT_400HZ\(12),
	datab => \lcd_display_0|LessThan0~3_combout\,
	datac => \lcd_display_0|LessThan0~1_combout\,
	datad => \lcd_display_0|LessThan0~0_combout\,
	combout => \lcd_display_0|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y27_N0
\lcd_display_0|CLK_400HZ_Enable~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CLK_400HZ_Enable~feeder_combout\ = \lcd_display_0|LessThan0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_display_0|LessThan0~4_combout\,
	combout => \lcd_display_0|CLK_400HZ_Enable~feeder_combout\);

-- Location: LCFF_X1_Y27_N1
\lcd_display_0|CLK_400HZ_Enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CLK_400HZ_Enable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CLK_400HZ_Enable~regout\);

-- Location: LCFF_X3_Y27_N25
\lcd_display_0|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state.RESET1~feeder_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.RESET1~regout\);

-- Location: LCCOMB_X2_Y27_N14
\lcd_display_0|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector26~0_combout\ = (\lcd_display_0|CHAR_COUNT\(0) & \lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|state.RESET1~regout\,
	combout => \lcd_display_0|Selector26~0_combout\);

-- Location: LCCOMB_X5_Y27_N28
\lcd_display_0|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LCD_RS~0_combout\ = (!\lcd_display_0|state.DROP_LCD_E~regout\ & !\lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|state.DROP_LCD_E~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|LCD_RS~0_combout\);

-- Location: LCFF_X5_Y27_N9
\lcd_display_0|state.DROP_LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \lcd_display_0|LCD_RS~0_combout\,
	sload => VCC,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.DROP_LCD_E~regout\);

-- Location: LCFF_X4_Y27_N25
\lcd_display_0|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \lcd_display_0|state.DROP_LCD_E~regout\,
	sload => VCC,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.HOLD~regout\);

-- Location: LCCOMB_X2_Y27_N6
\lcd_display_0|CHAR_COUNT[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CHAR_COUNT[1]~7_combout\ = (\lcd_display_0|CHAR_COUNT\(1) & (!\lcd_display_0|CHAR_COUNT[0]~6\)) # (!\lcd_display_0|CHAR_COUNT\(1) & ((\lcd_display_0|CHAR_COUNT[0]~6\) # (GND)))
-- \lcd_display_0|CHAR_COUNT[1]~8\ = CARRY((!\lcd_display_0|CHAR_COUNT[0]~6\) # (!\lcd_display_0|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(1),
	datad => VCC,
	cin => \lcd_display_0|CHAR_COUNT[0]~6\,
	combout => \lcd_display_0|CHAR_COUNT[1]~7_combout\,
	cout => \lcd_display_0|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X2_Y27_N8
\lcd_display_0|CHAR_COUNT[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CHAR_COUNT[2]~9_combout\ = (\lcd_display_0|CHAR_COUNT\(2) & (\lcd_display_0|CHAR_COUNT[1]~8\ $ (GND))) # (!\lcd_display_0|CHAR_COUNT\(2) & (!\lcd_display_0|CHAR_COUNT[1]~8\ & VCC))
-- \lcd_display_0|CHAR_COUNT[2]~10\ = CARRY((\lcd_display_0|CHAR_COUNT\(2) & !\lcd_display_0|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|CHAR_COUNT\(2),
	datad => VCC,
	cin => \lcd_display_0|CHAR_COUNT[1]~8\,
	combout => \lcd_display_0|CHAR_COUNT[2]~9_combout\,
	cout => \lcd_display_0|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X2_Y27_N30
\lcd_display_0|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector24~0_combout\ = (\lcd_display_0|CHAR_COUNT\(2) & \lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|CHAR_COUNT\(2),
	datad => \lcd_display_0|state.RESET1~regout\,
	combout => \lcd_display_0|Selector24~0_combout\);

-- Location: LCFF_X2_Y27_N9
\lcd_display_0|CHAR_COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CHAR_COUNT[2]~9_combout\,
	sdata => \lcd_display_0|Selector24~0_combout\,
	sload => \lcd_display_0|ALT_INV_state.Print_String~regout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CHAR_COUNT\(2));

-- Location: LCCOMB_X2_Y27_N10
\lcd_display_0|CHAR_COUNT[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CHAR_COUNT[3]~11_combout\ = (\lcd_display_0|CHAR_COUNT\(3) & (!\lcd_display_0|CHAR_COUNT[2]~10\)) # (!\lcd_display_0|CHAR_COUNT\(3) & ((\lcd_display_0|CHAR_COUNT[2]~10\) # (GND)))
-- \lcd_display_0|CHAR_COUNT[3]~12\ = CARRY((!\lcd_display_0|CHAR_COUNT[2]~10\) # (!\lcd_display_0|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(3),
	datad => VCC,
	cin => \lcd_display_0|CHAR_COUNT[2]~10\,
	combout => \lcd_display_0|CHAR_COUNT[3]~11_combout\,
	cout => \lcd_display_0|CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X2_Y27_N20
\lcd_display_0|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector23~0_combout\ = (\lcd_display_0|CHAR_COUNT\(3) & \lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(3),
	datad => \lcd_display_0|state.RESET1~regout\,
	combout => \lcd_display_0|Selector23~0_combout\);

-- Location: LCFF_X2_Y27_N11
\lcd_display_0|CHAR_COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CHAR_COUNT[3]~11_combout\,
	sdata => \lcd_display_0|Selector23~0_combout\,
	sload => \lcd_display_0|ALT_INV_state.Print_String~regout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CHAR_COUNT\(3));

-- Location: LCCOMB_X5_Y27_N22
\lcd_display_0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Equal2~0_combout\ = (\lcd_display_0|CHAR_COUNT\(1) & (\lcd_display_0|CHAR_COUNT\(0) & (\lcd_display_0|CHAR_COUNT\(3) & \lcd_display_0|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(1),
	datab => \lcd_display_0|CHAR_COUNT\(0),
	datac => \lcd_display_0|CHAR_COUNT\(3),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Equal2~0_combout\);

-- Location: LCCOMB_X2_Y27_N12
\lcd_display_0|CHAR_COUNT[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|CHAR_COUNT[4]~13_combout\ = \lcd_display_0|CHAR_COUNT[3]~12\ $ (!\lcd_display_0|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd_display_0|CHAR_COUNT\(4),
	cin => \lcd_display_0|CHAR_COUNT[3]~12\,
	combout => \lcd_display_0|CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X2_Y27_N26
\lcd_display_0|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector22~0_combout\ = (\lcd_display_0|CHAR_COUNT\(4) & \lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datad => \lcd_display_0|state.RESET1~regout\,
	combout => \lcd_display_0|Selector22~0_combout\);

-- Location: LCFF_X2_Y27_N13
\lcd_display_0|CHAR_COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CHAR_COUNT[4]~13_combout\,
	sdata => \lcd_display_0|Selector22~0_combout\,
	sload => \lcd_display_0|ALT_INV_state.Print_String~regout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CHAR_COUNT\(4));

-- Location: LCCOMB_X5_Y27_N2
\lcd_display_0|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector17~1_combout\ = (\lcd_display_0|Selector17~0_combout\) # ((\lcd_display_0|Equal2~0_combout\ & (\lcd_display_0|CHAR_COUNT\(4) & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector17~0_combout\,
	datab => \lcd_display_0|Equal2~0_combout\,
	datac => \lcd_display_0|CHAR_COUNT\(4),
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector17~1_combout\);

-- Location: LCFF_X5_Y27_N3
\lcd_display_0|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector17~1_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X5_Y27_N24
\lcd_display_0|state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~29_combout\ = (\lcd_display_0|state.HOLD~regout\ & \lcd_display_0|next_command.RETURN_HOME~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|state.HOLD~regout\,
	datad => \lcd_display_0|next_command.RETURN_HOME~regout\,
	combout => \lcd_display_0|state~29_combout\);

-- Location: LCFF_X5_Y27_N25
\lcd_display_0|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~29_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X5_Y27_N10
\lcd_display_0|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector15~1_combout\ = (\lcd_display_0|Selector15~0_combout\) # ((\lcd_display_0|state.RETURN_HOME~regout\) # ((!\lcd_display_0|Equal2~0_combout\ & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector15~0_combout\,
	datab => \lcd_display_0|Equal2~0_combout\,
	datac => \lcd_display_0|state.RETURN_HOME~regout\,
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector15~1_combout\);

-- Location: LCFF_X5_Y27_N11
\lcd_display_0|next_command.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector15~1_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.Print_String~regout\);

-- Location: LCCOMB_X5_Y27_N18
\lcd_display_0|state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~28_combout\ = (\lcd_display_0|state.HOLD~regout\ & \lcd_display_0|next_command.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|state.HOLD~regout\,
	datad => \lcd_display_0|next_command.Print_String~regout\,
	combout => \lcd_display_0|state~28_combout\);

-- Location: LCFF_X5_Y27_N19
\lcd_display_0|state.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~28_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.Print_String~regout\);

-- Location: LCFF_X2_Y27_N5
\lcd_display_0|CHAR_COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CHAR_COUNT[0]~5_combout\,
	sdata => \lcd_display_0|Selector26~0_combout\,
	sload => \lcd_display_0|ALT_INV_state.Print_String~regout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CHAR_COUNT\(0));

-- Location: LCCOMB_X2_Y27_N24
\lcd_display_0|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector25~0_combout\ = (\lcd_display_0|CHAR_COUNT\(1) & \lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(1),
	datad => \lcd_display_0|state.RESET1~regout\,
	combout => \lcd_display_0|Selector25~0_combout\);

-- Location: LCFF_X2_Y27_N7
\lcd_display_0|CHAR_COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|CHAR_COUNT[1]~7_combout\,
	sdata => \lcd_display_0|Selector25~0_combout\,
	sload => \lcd_display_0|ALT_INV_state.Print_String~regout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|CHAR_COUNT\(1));

-- Location: LCCOMB_X3_Y27_N28
\lcd_display_0|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector9~2_combout\ = (\lcd_display_0|CHAR_COUNT\(0) & (!\lcd_display_0|CHAR_COUNT\(4) & (!\lcd_display_0|CHAR_COUNT\(1)))) # (!\lcd_display_0|CHAR_COUNT\(0) & (((!\lcd_display_0|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datab => \lcd_display_0|CHAR_COUNT\(1),
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector9~2_combout\);

-- Location: LCCOMB_X4_Y27_N10
\lcd_display_0|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector9~4_combout\ = (\lcd_display_0|Selector9~3_combout\) # ((\lcd_display_0|Selector9~2_combout\ & (!\lcd_display_0|CHAR_COUNT\(3) & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector9~3_combout\,
	datab => \lcd_display_0|Selector9~2_combout\,
	datac => \lcd_display_0|CHAR_COUNT\(3),
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector9~4_combout\);

-- Location: LCFF_X4_Y27_N11
\lcd_display_0|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector9~4_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X3_Y27_N10
\lcd_display_0|Selector8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector8~7_combout\ = (\lcd_display_0|CHAR_COUNT\(2)) # (\lcd_display_0|CHAR_COUNT\(4) $ (((\lcd_display_0|CHAR_COUNT\(1) & !\lcd_display_0|CHAR_COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datab => \lcd_display_0|CHAR_COUNT\(1),
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector8~7_combout\);

-- Location: LCCOMB_X4_Y27_N16
\lcd_display_0|Selector8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector8~6_combout\ = (\lcd_display_0|Selector8~5_combout\) # ((\lcd_display_0|state.Print_String~regout\ & (!\lcd_display_0|CHAR_COUNT\(3) & !\lcd_display_0|Selector8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector8~5_combout\,
	datab => \lcd_display_0|state.Print_String~regout\,
	datac => \lcd_display_0|CHAR_COUNT\(3),
	datad => \lcd_display_0|Selector8~7_combout\,
	combout => \lcd_display_0|Selector8~6_combout\);

-- Location: LCFF_X4_Y27_N17
\lcd_display_0|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector8~6_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X4_Y27_N2
\lcd_display_0|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector21~0_combout\ = (\lcd_display_0|state.DISPLAY_OFF~regout\) # ((\lcd_display_0|next_command.DISPLAY_CLEAR~regout\ & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.DISPLAY_OFF~regout\,
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|next_command.DISPLAY_CLEAR~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|Selector21~0_combout\);

-- Location: LCFF_X4_Y27_N3
\lcd_display_0|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector21~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X4_Y27_N26
\lcd_display_0|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~32_combout\ = (\lcd_display_0|next_command.DISPLAY_CLEAR~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.DISPLAY_CLEAR~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~32_combout\);

-- Location: LCFF_X4_Y27_N27
\lcd_display_0|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~32_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X4_Y27_N12
\lcd_display_0|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector13~0_combout\ = (\lcd_display_0|state.DISPLAY_CLEAR~regout\) # ((\lcd_display_0|next_command.DISPLAY_ON~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.HOLD~regout\,
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|next_command.DISPLAY_ON~regout\,
	datad => \lcd_display_0|state.DISPLAY_CLEAR~regout\,
	combout => \lcd_display_0|Selector13~0_combout\);

-- Location: LCFF_X4_Y27_N13
\lcd_display_0|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector13~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.DISPLAY_ON~regout\);

-- Location: LCCOMB_X4_Y27_N8
\lcd_display_0|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~33_combout\ = (\lcd_display_0|state.HOLD~regout\ & \lcd_display_0|next_command.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|state.HOLD~regout\,
	datad => \lcd_display_0|next_command.DISPLAY_ON~regout\,
	combout => \lcd_display_0|state~33_combout\);

-- Location: LCFF_X4_Y27_N9
\lcd_display_0|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~33_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.DISPLAY_ON~regout\);

-- Location: LCCOMB_X4_Y27_N0
\lcd_display_0|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector14~0_combout\ = (\lcd_display_0|state.DISPLAY_ON~regout\) # ((\lcd_display_0|next_command.MODE_SET~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.HOLD~regout\,
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|next_command.MODE_SET~regout\,
	datad => \lcd_display_0|state.DISPLAY_ON~regout\,
	combout => \lcd_display_0|Selector14~0_combout\);

-- Location: LCFF_X4_Y27_N1
\lcd_display_0|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector14~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.MODE_SET~regout\);

-- Location: LCCOMB_X5_Y27_N30
\lcd_display_0|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~30_combout\ = (\lcd_display_0|next_command.MODE_SET~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|next_command.MODE_SET~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~30_combout\);

-- Location: LCFF_X5_Y27_N31
\lcd_display_0|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~30_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.MODE_SET~regout\);

-- Location: LCCOMB_X4_Y27_N30
\lcd_display_0|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector7~4_combout\ = (\lcd_display_0|state.DISPLAY_ON~regout\) # ((\lcd_display_0|state.MODE_SET~regout\) # ((\lcd_display_0|DATA_BUS_VALUE\(2) & !\lcd_display_0|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.DISPLAY_ON~regout\,
	datab => \lcd_display_0|state.MODE_SET~regout\,
	datac => \lcd_display_0|DATA_BUS_VALUE\(2),
	datad => \lcd_display_0|LCD_RS~0_combout\,
	combout => \lcd_display_0|Selector7~4_combout\);

-- Location: LCCOMB_X4_Y27_N18
\lcd_display_0|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector7~5_combout\ = (\lcd_display_0|Selector7~4_combout\) # ((\lcd_display_0|Selector7~2_combout\ & (\lcd_display_0|state.Print_String~regout\ & !\lcd_display_0|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector7~2_combout\,
	datab => \lcd_display_0|state.Print_String~regout\,
	datac => \lcd_display_0|CHAR_COUNT\(3),
	datad => \lcd_display_0|Selector7~4_combout\,
	combout => \lcd_display_0|Selector7~5_combout\);

-- Location: LCFF_X4_Y27_N19
\lcd_display_0|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector7~5_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X2_Y27_N28
\lcd_display_0|Selector6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector6~12_combout\ = ((\lcd_display_0|DATA_BUS_VALUE\(3) & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\)))) # (!\lcd_display_0|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|DATA_BUS_VALUE\(3),
	datab => \lcd_display_0|state.RESET1~regout\,
	datac => \lcd_display_0|state.HOLD~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|Selector6~12_combout\);

-- Location: LCCOMB_X3_Y27_N4
\lcd_display_0|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector12~0_combout\ = (\lcd_display_0|state.RESET3~regout\) # ((\lcd_display_0|next_command.FUNC_SET~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RESET3~regout\,
	datab => \lcd_display_0|state.HOLD~regout\,
	datac => \lcd_display_0|next_command.FUNC_SET~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|Selector12~0_combout\);

-- Location: LCFF_X3_Y27_N5
\lcd_display_0|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector12~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.FUNC_SET~regout\);

-- Location: LCCOMB_X3_Y27_N22
\lcd_display_0|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~36_combout\ = (\lcd_display_0|next_command.FUNC_SET~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|next_command.FUNC_SET~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~36_combout\);

-- Location: LCFF_X3_Y27_N23
\lcd_display_0|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~36_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.FUNC_SET~regout\);

-- Location: LCCOMB_X3_Y27_N2
\lcd_display_0|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector20~0_combout\ = (\lcd_display_0|state.FUNC_SET~regout\) # ((\lcd_display_0|next_command.DISPLAY_OFF~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.HOLD~regout\,
	datab => \lcd_display_0|state.FUNC_SET~regout\,
	datac => \lcd_display_0|next_command.DISPLAY_OFF~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|Selector20~0_combout\);

-- Location: LCFF_X3_Y27_N3
\lcd_display_0|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector20~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X3_Y27_N0
\lcd_display_0|state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~35_combout\ = (\lcd_display_0|next_command.DISPLAY_OFF~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.DISPLAY_OFF~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~35_combout\);

-- Location: LCFF_X3_Y27_N1
\lcd_display_0|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~35_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X3_Y27_N26
\lcd_display_0|Selector6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector6~13_combout\ = (\lcd_display_0|state.RESET2~regout\) # ((\lcd_display_0|state.FUNC_SET~regout\) # ((\lcd_display_0|state.DISPLAY_ON~regout\) # (\lcd_display_0|state.DISPLAY_OFF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RESET2~regout\,
	datab => \lcd_display_0|state.FUNC_SET~regout\,
	datac => \lcd_display_0|state.DISPLAY_ON~regout\,
	datad => \lcd_display_0|state.DISPLAY_OFF~regout\,
	combout => \lcd_display_0|Selector6~13_combout\);

-- Location: LCCOMB_X2_Y27_N22
\lcd_display_0|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector6~3_combout\ = (!\lcd_display_0|CHAR_COUNT\(4) & ((!\lcd_display_0|CHAR_COUNT\(1)) # (!\lcd_display_0|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datac => \lcd_display_0|CHAR_COUNT\(2),
	datad => \lcd_display_0|CHAR_COUNT\(1),
	combout => \lcd_display_0|Selector6~3_combout\);

-- Location: LCCOMB_X2_Y27_N0
\lcd_display_0|Selector6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector6~15_combout\ = (!\lcd_display_0|CHAR_COUNT\(3) & (\lcd_display_0|Selector6~3_combout\ & (\lcd_display_0|CHAR_COUNT\(0) & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(3),
	datab => \lcd_display_0|Selector6~3_combout\,
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector6~15_combout\);

-- Location: LCCOMB_X2_Y27_N18
\lcd_display_0|Selector6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector6~14_combout\ = (\lcd_display_0|state.RESET3~regout\) # ((\lcd_display_0|Selector6~12_combout\) # ((\lcd_display_0|Selector6~13_combout\) # (\lcd_display_0|Selector6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RESET3~regout\,
	datab => \lcd_display_0|Selector6~12_combout\,
	datac => \lcd_display_0|Selector6~13_combout\,
	datad => \lcd_display_0|Selector6~15_combout\,
	combout => \lcd_display_0|Selector6~14_combout\);

-- Location: LCFF_X2_Y27_N19
\lcd_display_0|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector6~14_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X5_Y27_N14
\lcd_display_0|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector16~0_combout\ = (\lcd_display_0|next_command.LINE2~regout\ & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.LINE2~regout\,
	datac => \lcd_display_0|state.DROP_LCD_E~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|Selector16~0_combout\);

-- Location: LCCOMB_X5_Y27_N0
\lcd_display_0|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector16~1_combout\ = (\lcd_display_0|Selector16~0_combout\) # ((!\lcd_display_0|CHAR_COUNT\(4) & (\lcd_display_0|state.Print_String~regout\ & \lcd_display_0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(4),
	datab => \lcd_display_0|state.Print_String~regout\,
	datac => \lcd_display_0|Selector16~0_combout\,
	datad => \lcd_display_0|Equal2~0_combout\,
	combout => \lcd_display_0|Selector16~1_combout\);

-- Location: LCFF_X5_Y27_N1
\lcd_display_0|next_command.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector16~1_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|next_command.LINE2~regout\);

-- Location: LCCOMB_X5_Y27_N4
\lcd_display_0|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|state~31_combout\ = (\lcd_display_0|next_command.LINE2~regout\ & \lcd_display_0|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|next_command.LINE2~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|state~31_combout\);

-- Location: LCFF_X5_Y27_N5
\lcd_display_0|state.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|state~31_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|state.LINE2~regout\);

-- Location: LCCOMB_X5_Y27_N20
\lcd_display_0|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector5~3_combout\ = (!\lcd_display_0|state.RETURN_HOME~regout\ & (!\lcd_display_0|state.MODE_SET~regout\ & (!\lcd_display_0|state.LINE2~regout\ & !\lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.RETURN_HOME~regout\,
	datab => \lcd_display_0|state.MODE_SET~regout\,
	datac => \lcd_display_0|state.LINE2~regout\,
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector5~3_combout\);

-- Location: LCCOMB_X4_Y27_N4
\lcd_display_0|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector5~4_combout\ = (!\lcd_display_0|state.DISPLAY_ON~regout\ & (!\lcd_display_0|state.DISPLAY_CLEAR~regout\ & (!\lcd_display_0|state.DISPLAY_OFF~regout\ & \lcd_display_0|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.DISPLAY_ON~regout\,
	datab => \lcd_display_0|state.DISPLAY_CLEAR~regout\,
	datac => \lcd_display_0|state.DISPLAY_OFF~regout\,
	datad => \lcd_display_0|Selector5~3_combout\,
	combout => \lcd_display_0|Selector5~4_combout\);

-- Location: LCCOMB_X4_Y27_N20
\lcd_display_0|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector5~5_combout\ = (\lcd_display_0|Selector5~4_combout\) # ((\lcd_display_0|Selector5~2_combout\ & (!\lcd_display_0|CHAR_COUNT\(3) & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|Selector5~2_combout\,
	datab => \lcd_display_0|CHAR_COUNT\(3),
	datac => \lcd_display_0|Selector5~4_combout\,
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector5~5_combout\);

-- Location: LCCOMB_X4_Y27_N14
\lcd_display_0|DATA_BUS_VALUE[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|DATA_BUS_VALUE[5]~0_combout\ = (!\lcd_display_0|state.DROP_LCD_E~regout\ & (\lcd_display_0|CLK_400HZ_Enable~regout\ & !\lcd_display_0|state.HOLD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|CLK_400HZ_Enable~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|DATA_BUS_VALUE[5]~0_combout\);

-- Location: LCFF_X4_Y27_N21
\lcd_display_0|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector5~5_combout\,
	ena => \lcd_display_0|DATA_BUS_VALUE[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X3_Y27_N20
\lcd_display_0|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector4~3_combout\ = (\lcd_display_0|CHAR_COUNT\(0) & !\lcd_display_0|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_display_0|CHAR_COUNT\(0),
	datad => \lcd_display_0|CHAR_COUNT\(4),
	combout => \lcd_display_0|Selector4~3_combout\);

-- Location: LCCOMB_X3_Y27_N18
\lcd_display_0|Selector4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector4~10_combout\ = (\lcd_display_0|CHAR_COUNT\(3)) # ((\lcd_display_0|CHAR_COUNT\(1)) # ((\lcd_display_0|Selector4~3_combout\) # (\lcd_display_0|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(3),
	datab => \lcd_display_0|CHAR_COUNT\(1),
	datac => \lcd_display_0|Selector4~3_combout\,
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector4~10_combout\);

-- Location: LCCOMB_X4_Y27_N22
\lcd_display_0|Selector4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector4~9_combout\ = (\lcd_display_0|Selector5~4_combout\) # ((\lcd_display_0|state.Print_String~regout\ & \lcd_display_0|Selector4~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_display_0|state.Print_String~regout\,
	datac => \lcd_display_0|Selector5~4_combout\,
	datad => \lcd_display_0|Selector4~10_combout\,
	combout => \lcd_display_0|Selector4~9_combout\);

-- Location: LCFF_X4_Y27_N23
\lcd_display_0|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector4~9_combout\,
	ena => \lcd_display_0|DATA_BUS_VALUE[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X5_Y27_N26
\lcd_display_0|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector3~3_combout\ = (\lcd_display_0|state.LINE2~regout\) # ((\lcd_display_0|DATA_BUS_VALUE\(6) & ((\lcd_display_0|state.DROP_LCD_E~regout\) # (\lcd_display_0|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|DATA_BUS_VALUE\(6),
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|state.LINE2~regout\,
	datad => \lcd_display_0|state.HOLD~regout\,
	combout => \lcd_display_0|Selector3~3_combout\);

-- Location: LCCOMB_X5_Y27_N16
\lcd_display_0|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector3~2_combout\ = (\lcd_display_0|CHAR_COUNT\(1) & (((!\lcd_display_0|CHAR_COUNT\(4) & !\lcd_display_0|CHAR_COUNT\(2))))) # (!\lcd_display_0|CHAR_COUNT\(1) & (((!\lcd_display_0|CHAR_COUNT\(0) & !\lcd_display_0|CHAR_COUNT\(4))) # 
-- (!\lcd_display_0|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(1),
	datab => \lcd_display_0|CHAR_COUNT\(0),
	datac => \lcd_display_0|CHAR_COUNT\(4),
	datad => \lcd_display_0|CHAR_COUNT\(2),
	combout => \lcd_display_0|Selector3~2_combout\);

-- Location: LCCOMB_X5_Y27_N12
\lcd_display_0|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector3~4_combout\ = (\lcd_display_0|Selector3~3_combout\) # ((!\lcd_display_0|CHAR_COUNT\(3) & (\lcd_display_0|Selector3~2_combout\ & \lcd_display_0|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|CHAR_COUNT\(3),
	datab => \lcd_display_0|Selector3~3_combout\,
	datac => \lcd_display_0|Selector3~2_combout\,
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector3~4_combout\);

-- Location: LCFF_X5_Y27_N13
\lcd_display_0|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector3~4_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X4_Y27_N28
\lcd_display_0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector2~0_combout\ = (\lcd_display_0|state.LINE2~regout\) # ((\lcd_display_0|state.RETURN_HOME~regout\) # ((\lcd_display_0|DATA_BUS_VALUE\(7) & !\lcd_display_0|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.LINE2~regout\,
	datab => \lcd_display_0|state.RETURN_HOME~regout\,
	datac => \lcd_display_0|DATA_BUS_VALUE\(7),
	datad => \lcd_display_0|LCD_RS~0_combout\,
	combout => \lcd_display_0|Selector2~0_combout\);

-- Location: LCFF_X4_Y27_N29
\lcd_display_0|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector2~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|DATA_BUS_VALUE\(7));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: LCCOMB_X32_Y6_N22
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \SW~combout\(15) $ (VCC)
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\SW~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X32_Y6_N24
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\SW~combout\(16) & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\SW~combout\(16) & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\SW~combout\(16) & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(16),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X32_Y6_N26
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\SW~combout\(17) & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\SW~combout\(17) & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\SW~combout\(17) & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y6_N28
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X33_Y6_N0
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X33_Y6_N2
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X33_Y6_N4
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X32_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\SW~combout\(14) & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X33_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X33_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X33_Y6_N18
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X33_Y6_N20
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y6_N0
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X31_Y6_N2
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X32_Y6_N10
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\SW~combout\(15)))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \SW~combout\(15),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X32_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X28_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\SW~combout\(13) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X31_Y6_N8
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X31_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X31_Y6_N14
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X31_Y6_N16
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & 
-- ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X31_Y6_N18
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y6_N22
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X31_Y6_N28
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X30_Y6_N0
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X31_Y6_N30
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X31_Y6_N24
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X30_Y6_N18
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\SW~combout\(12) & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(12),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X30_Y6_N4
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X30_Y6_N6
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X30_Y6_N8
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X30_Y6_N12
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X30_Y6_N14
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X29_Y6_N0
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\);

-- Location: LCCOMB_X30_Y6_N22
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X30_Y6_N24
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\);

-- Location: LCCOMB_X29_Y6_N4
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\);

-- Location: LCCOMB_X28_Y6_N6
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\);

-- Location: LCCOMB_X30_Y6_N30
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ = (\SW~combout\(12) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\);

-- Location: LCCOMB_X29_Y6_N30
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\ = (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW~combout\(11),
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[48]~78_combout\);

-- Location: LCCOMB_X29_Y6_N14
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X29_Y6_N18
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[51]~82_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y6_N20
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[52]~81_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y6_N22
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~80_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X29_Y6_N24
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[54]~79_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X29_Y6_N26
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X29_Y6_N6
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\) # ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~85_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[49]~84_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\);

-- Location: LCCOMB_X28_Y6_N30
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\SW~combout\(13))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \SW~combout\(13),
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X28_Y6_N8
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[50]~83_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X29_Y6_N28
\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\SW~combout\(11)))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \SW~combout\(11),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X28_Y2_N0
\hex0_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux6~0_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (!\SW~combout\(10))))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\SW~combout\(10) & 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y2_N6
\hex0_decoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux5~0_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\SW~combout\(10) & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))) # (!\SW~combout\(10) & 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\)))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ 
-- & (\SW~combout\(10) $ (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y2_N20
\hex0_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux4~0_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # (!\SW~combout\(10))))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & (!\SW~combout\(10) & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y2_N22
\hex0_decoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux3~0_combout\ = (\SW~combout\(10) & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))) # (!\SW~combout\(10) & 
-- ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & !\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y2_N12
\hex0_decoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux2~0_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & (((!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ & \SW~combout\(10))))) # 
-- (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\ & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\)) 
-- # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & ((\SW~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y2_N18
\hex0_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux1~0_combout\ = (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (\SW~combout\(10) & (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ & (!\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\ 
-- & ((\SW~combout\(10)) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y2_N16
\hex0_decoder|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux0~0_combout\ = (\SW~combout\(10) & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\) # (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\)))) # (!\SW~combout\(10) & ((\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\ $ (\bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[58]~87_combout\,
	datab => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datac => \SW~combout\(10),
	datad => \bit8_to_3xBCD_data|Mod0|auto_generated|divider|divider|StageOut[57]~86_combout\,
	combout => \hex0_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y5_N0
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \SW~combout\(15) $ (VCC)
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\SW~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(15),
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y5_N2
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\SW~combout\(16) & (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\SW~combout\(16) & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\SW~combout\(16) & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X29_Y5_N6
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y5_N16
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\SW~combout\(17) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(17),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X29_Y5_N28
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\SW~combout\(16) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X29_Y5_N26
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X31_Y5_N0
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\SW~combout\(14) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X30_Y5_N20
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X30_Y5_N24
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y5_N26
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y5_N20
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW~combout\(16))) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X29_Y5_N22
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\SW~combout\(15))) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \SW~combout\(15),
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X31_Y5_N4
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\SW~combout\(14) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X31_Y5_N8
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\SW~combout\(13) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X31_Y5_N20
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y5_N22
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y5_N26
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # ((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X31_Y5_N28
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\SW~combout\(14)))) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \SW~combout\(14),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X32_Y5_N4
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\SW~combout\(13) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X33_Y5_N0
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \SW~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \SW~combout\(12),
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X32_Y5_N24
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X32_Y5_N26
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X32_Y5_N28
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y5_N30
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X34_Y5_N16
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X34_Y5_N18
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X34_Y5_N20
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X34_Y5_N24
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X34_Y5_N28
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X35_Y5_N18
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\);

-- Location: LCCOMB_X35_Y5_N0
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\) # 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\)))
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\) # 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X34_Y5_N4
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X34_Y5_N6
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X35_Y5_N22
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X35_Y5_N28
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\ = (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X35_Y5_N2
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & 
-- (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\) # (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\)))
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\ & !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X35_Y5_N4
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\) # (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\) # 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\)))))
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\) # (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X35_Y5_N6
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6_combout\ & !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~5_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X35_Y5_N8
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4_combout\) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X35_Y5_N10
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X35_Y5_N12
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2_combout\) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[54]~2_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X35_Y5_N14
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X35_Y5_N26
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\) # ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[48]~1_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\);

-- Location: LCCOMB_X35_Y5_N16
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\) # ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~9_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datac => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\);

-- Location: LCCOMB_X33_Y5_N2
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X33_Y5_N28
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X33_Y5_N14
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\SW~combout\(12) & \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X33_Y5_N22
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \SW~combout\(11),
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X33_Y5_N4
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\) # 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X33_Y5_N6
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X33_Y5_N8
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X33_Y5_N10
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & !\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y5_N12
\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X35_Y5_N30
\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\) # ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	combout => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\);

-- Location: LCCOMB_X64_Y5_N4
\hex1_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux6~0_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ $ (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y5_N6
\hex1_decoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux5~0_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & ((\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\)) # (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\))))) # (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y5_N16
\hex1_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux4~0_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\ & 
-- ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\) # (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y5_N26
\hex1_decoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux3~0_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)) # (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ $ 
-- ((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y5_N12
\hex1_decoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux2~0_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & (((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)))) # (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ 
-- & ((!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\))) # (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ & 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y5_N14
\hex1_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux1~0_combout\ = (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\ & 
-- ((!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ & (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ $ (!\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y5_N0
\hex1_decoder|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux0~0_combout\ = (\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\) # 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\ $ (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\)))) # 
-- (!\bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\) # 
-- (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\ $ (\bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datab => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datac => \bit8_to_3xBCD_data|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_data|Mod1|auto_generated|divider|divider|StageOut[59]~13_combout\,
	combout => \hex1_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y7_N22
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\SW~combout\(14) & (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\SW~combout\(14) & 
-- (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\SW~combout\(14) & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X36_Y7_N26
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\SW~combout\(16) & (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\SW~combout\(16) & 
-- ((\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\SW~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(16),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X36_Y7_N28
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\SW~combout\(17) & (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\SW~combout\(17) & 
-- (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\SW~combout\(17) & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(17),
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X36_Y7_N30
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X37_Y7_N0
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X37_Y7_N22
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X36_Y7_N16
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\SW~combout\(15) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(15),
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X36_Y7_N18
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & 
-- !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X36_Y7_N4
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\SW~combout\(13) & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(13),
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X37_Y7_N2
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\SW~combout\(12) & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X37_Y7_N8
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\) # 
-- (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X37_Y7_N10
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\ & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X37_Y7_N12
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- ((\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\) # (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X37_Y7_N14
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\ & 
-- !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\)) # (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X37_Y7_N16
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & 
-- ((\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\) # (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X37_Y7_N18
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\ & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X37_Y7_N20
\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X64_Y7_N8
\hex2_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_decoder|Mux6~0_combout\ = (\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \hex2_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\hex2_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_decoder|Mux4~0_combout\ = (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \hex2_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\hex2_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2_decoder|Mux1~0_combout\ = (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (!\bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \hex2_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y16_N6
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \SW~combout\(2) $ (VCC)
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datad => VCC,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X1_Y16_N8
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\SW~combout\(3) & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\SW~combout\(3) & 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\SW~combout\(3) & !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(3),
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X1_Y16_N14
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X1_Y16_N16
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X1_Y16_N18
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X2_Y16_N2
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X1_Y16_N4
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2_combout\);

-- Location: LCCOMB_X1_Y16_N26
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X1_Y16_N28
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X1_Y16_N24
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \SW~combout\(4),
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5_combout\);

-- Location: LCCOMB_X2_Y16_N28
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X2_Y16_N30
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\ = (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW~combout\(1),
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\);

-- Location: LCCOMB_X2_Y16_N4
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\) # 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\)))
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\) # 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[48]~1_combout\,
	datad => VCC,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X2_Y16_N8
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- (((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\) # (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\)))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\) # 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\)))))
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & 
-- ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\) # (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X2_Y16_N10
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6_combout\ & 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5_combout\ & !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[51]~5_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X2_Y16_N12
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4_combout\) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X2_Y16_N14
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3_combout\ & 
-- !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X2_Y16_N16
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2_combout\) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[54]~2_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X2_Y16_N18
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X1_Y16_N2
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \SW~combout\(2),
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\);

-- Location: LCCOMB_X2_Y16_N22
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\)))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[49]~9_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\);

-- Location: LCCOMB_X2_Y16_N0
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\SW~combout\(1)))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \SW~combout\(1),
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\);

-- Location: LCCOMB_X2_Y16_N24
\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\) # ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\)))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	combout => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\);

-- Location: LCCOMB_X1_Y17_N20
\hex4_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux6~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ $ (!\SW~combout\(0))))) # (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\SW~combout\(0) & 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ $ (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y17_N22
\hex4_decoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux5~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & ((\SW~combout\(0) & ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\))) # (!\SW~combout\(0) & 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\)))) # (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ 
-- & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ $ (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y17_N16
\hex4_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux4~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ & 
-- ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\) # (!\SW~combout\(0))))) # (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N26
\hex4_decoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux3~0_combout\ = (\SW~combout\(0) & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ $ ((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\)))) # (!\SW~combout\(0) & 
-- ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & !\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\)) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\hex4_decoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux2~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & (((!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ & \SW~combout\(0))))) # 
-- (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ & ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\)) 
-- # (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & ((\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y17_N18
\hex4_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux1~0_combout\ = (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (\SW~combout\(0) & (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\ $ 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\)))) # (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ & (!\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\ 
-- & ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\) # (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y17_N0
\hex4_decoder|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux0~0_combout\ = (\SW~combout\(0) & ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\) # (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ $ 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\)))) # (!\SW~combout\(0) & ((\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\) # 
-- (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\ $ (\bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[58]~12_combout\,
	datab => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[57]~11_combout\,
	datac => \bit8_to_3xBCD_addr|Mod0|auto_generated|divider|divider|StageOut[59]~13_combout\,
	datad => \SW~combout\(0),
	combout => \hex4_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y17_N18
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \SW~combout\(2) $ (VCC)
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datad => VCC,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X2_Y17_N22
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\SW~combout\(4) & (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\SW~combout\(4) & 
-- (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\SW~combout\(4) & !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X2_Y17_N24
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X2_Y17_N26
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X2_Y17_N14
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & 
-- !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\);

-- Location: LCCOMB_X2_Y17_N30
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \SW~combout\(3),
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\);

-- Location: LCCOMB_X2_Y17_N2
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\);

-- Location: LCCOMB_X1_Y17_N24
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\ = (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \SW~combout\(1),
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\);

-- Location: LCCOMB_X2_Y17_N4
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\) # 
-- (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~6_combout\,
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[30]~7_combout\,
	datad => VCC,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X2_Y17_N6
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\ & 
-- (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\ & !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~4_combout\,
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[31]~5_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X2_Y17_N8
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\) # (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~3_combout\,
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[32]~2_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X2_Y17_N10
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\ & 
-- (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\ & !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~0_combout\,
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|StageOut[33]~1_combout\,
	datad => VCC,
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X2_Y17_N12
\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X1_Y15_N0
\hex5_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux6~0_combout\ = (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \hex5_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y15_N14
\hex5_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux4~0_combout\ = (\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \hex5_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\hex5_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux1~0_combout\ = (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \hex5_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y17_N30
\hex6_decoder|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux6~0_combout\ = (\SW~combout\(2) & (!\SW~combout\(1) & (\SW~combout\(0) $ (!\SW~combout\(3))))) # (!\SW~combout\(2) & (\SW~combout\(0) & (\SW~combout\(1) $ (!\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y17_N28
\hex6_decoder|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux5~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & ((\SW~combout\(3)))) # (!\SW~combout\(0) & (\SW~combout\(2))))) # (!\SW~combout\(1) & (\SW~combout\(2) & (\SW~combout\(0) $ (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y17_N2
\hex6_decoder|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux4~0_combout\ = (\SW~combout\(2) & (\SW~combout\(3) & ((\SW~combout\(1)) # (!\SW~combout\(0))))) # (!\SW~combout\(2) & (\SW~combout\(1) & (!\SW~combout\(0) & !\SW~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N4
\hex6_decoder|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux3~0_combout\ = (\SW~combout\(0) & (\SW~combout\(1) $ ((!\SW~combout\(2))))) # (!\SW~combout\(0) & ((\SW~combout\(1) & (!\SW~combout\(2) & \SW~combout\(3))) # (!\SW~combout\(1) & (\SW~combout\(2) & !\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\hex6_decoder|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux2~0_combout\ = (\SW~combout\(1) & (\SW~combout\(0) & ((!\SW~combout\(3))))) # (!\SW~combout\(1) & ((\SW~combout\(2) & ((!\SW~combout\(3)))) # (!\SW~combout\(2) & (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y17_N12
\hex6_decoder|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux1~0_combout\ = (\SW~combout\(1) & (!\SW~combout\(3) & ((\SW~combout\(0)) # (!\SW~combout\(2))))) # (!\SW~combout\(1) & (\SW~combout\(0) & (\SW~combout\(2) $ (!\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\hex6_decoder|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_decoder|Mux0~0_combout\ = (\SW~combout\(0) & ((\SW~combout\(3)) # (\SW~combout\(1) $ (\SW~combout\(2))))) # (!\SW~combout\(0) & ((\SW~combout\(1)) # (\SW~combout\(2) $ (\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \SW~combout\(0),
	datac => \SW~combout\(2),
	datad => \SW~combout\(3),
	combout => \hex6_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y27_N16
\lcd_display_0|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|LCD_E~0_combout\ = (\lcd_display_0|state.HOLD~regout\ & (((\lcd_display_0|LCD_E~regout\)))) # (!\lcd_display_0|state.HOLD~regout\ & ((\lcd_display_0|CLK_400HZ_Enable~regout\ & ((!\lcd_display_0|state.DROP_LCD_E~regout\))) # 
-- (!\lcd_display_0|CLK_400HZ_Enable~regout\ & (\lcd_display_0|LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.HOLD~regout\,
	datab => \lcd_display_0|CLK_400HZ_Enable~regout\,
	datac => \lcd_display_0|LCD_E~regout\,
	datad => \lcd_display_0|state.DROP_LCD_E~regout\,
	combout => \lcd_display_0|LCD_E~0_combout\);

-- Location: LCFF_X2_Y27_N17
\lcd_display_0|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|LCD_E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|LCD_E~regout\);

-- Location: LCCOMB_X2_Y27_N2
\lcd_display_0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_display_0|Selector1~0_combout\ = (\lcd_display_0|state.Print_String~regout\) # ((\lcd_display_0|LCD_RS~regout\ & ((\lcd_display_0|state.HOLD~regout\) # (\lcd_display_0|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_display_0|state.HOLD~regout\,
	datab => \lcd_display_0|state.DROP_LCD_E~regout\,
	datac => \lcd_display_0|LCD_RS~regout\,
	datad => \lcd_display_0|state.Print_String~regout\,
	combout => \lcd_display_0|Selector1~0_combout\);

-- Location: LCFF_X2_Y27_N3
\lcd_display_0|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \lcd_display_0|Selector1~0_combout\,
	ena => \lcd_display_0|CLK_400HZ_Enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_display_0|LCD_RS~regout\);

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(0));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(1));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(2));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(3));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(4));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(5));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(6));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(7));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(8));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(9));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(10));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(11));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(12));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(13));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(14));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => DRAM_DQ(15));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(0),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(1),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(2),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(3),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(4),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(5),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(6),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|DATA_BUS_VALUE\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(7));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(1));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(2));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(11));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(14));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(15));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(17));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(19));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(22));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(23));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(25));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(26));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(27));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(28));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(30));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(31));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(32));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(33));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(34));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(35));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(3));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(5));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(7));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(8));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(9));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(10));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(11));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(12));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(13));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(14));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(15));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(16));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(17));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(18));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(19));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(20));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(21));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(22));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(23));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(24));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(25));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(26));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(27));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(28));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(29));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(30));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(31));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(32));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(33));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(34));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_1(35));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_DAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => PS2_DAT);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => I2C_SDAT);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(3));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(5));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(6));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(7));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(8));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(9));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(10));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(11));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(12));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(13));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(14));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_DATA[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ENET_DATA(15));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(2));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(3));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(4));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(5));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(6));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(7));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(8));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(9));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(10));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(11));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(12));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(13));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(14));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DATA[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_DATA(15));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_FSPEED~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_FSPEED);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_LSPEED~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => OTG_LSPEED);

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(0));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(1));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(2));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(3));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(6));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(7));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(8));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(9));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(10));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(11));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(12));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(13));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(14));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SRAM_DQ(15));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(0));

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(1));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(2));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(3));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(4));

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(5));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(6));

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => FL_DQ(7));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_DAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => SD_DAT);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_27);

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_CLOCK);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(8));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex0_decoder|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex1_decoder|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex2_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bit8_to_3xBCD_data|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex4_decoder|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex5_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex5_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex5_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex5_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bit8_to_3xBCD_addr|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hex6_decoder|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SW~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_EN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|LCD_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_EN);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd_display_0|LCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ON);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_BLON~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_BLON);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_XCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_XCK);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_BCLK);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACDAT);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_DACLRCK);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_AUD_ADCDAT);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_ADCLRCL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AUD_ADCLRCL);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UART_RXD);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TXD);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PS2_CLK);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_I2C_SCLK);

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_CLK);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_CMD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_CMD);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_CS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_CS_N);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENET_INT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ENET_INT);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_RD_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_RD_N);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_WR_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_WR_N);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENET_RST_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENET_RST_N);

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(0));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(1));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(2));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(3));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(4));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(5));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(6));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_DATA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_DATA(7));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_HS);

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_VS);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TD_CLK27~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TD_CLK27);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TD_RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TD_RESET);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_ADDR(0));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_ADDR(1));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_CS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_CS_N);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_RD_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_RD_N);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_WR_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_WR_N);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_RST_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_RST_N);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OTG_INT0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OTG_INT0);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OTG_INT1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OTG_INT1);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OTG_DREQ0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OTG_DREQ0);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OTG_DREQ1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OTG_DREQ1);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DACK0_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_DACK0_N);

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OTG_DACK1_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OTG_DACK1_N);

-- Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IRDA_TXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IRDA_TXD);

-- Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IRDA_RXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IRDA_RXD);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(0));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(1));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(2));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(3));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(4));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(5));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(6));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(7));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(8));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(9));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(10));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_ADDR(11));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_BA_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_BA_0);

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_BA_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_BA_1);

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_LDQM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_LDQM);

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_UDQM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_UDQM);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_RAS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_RAS_N);

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CAS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_CAS_N);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CKE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_CKE);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_CLK);

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_WE_N);

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DRAM_CS_N);

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N);

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N);

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(0));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(1));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(2));

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(3));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(4));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(5));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(6));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(7));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(8));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(9));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(10));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(11));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(12));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(13));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(14));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(15));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(16));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(17));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(18));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(19));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(20));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_ADDR(21));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_CE_N);

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_OE_N);

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_RST_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_RST_N);

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FL_WE_N);

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_DAT3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_DAT3);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CMD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_CMD);

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SD_CLK);
END structure;


