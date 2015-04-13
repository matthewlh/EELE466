-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_seqments\codegen\Madgwick_segments\hdlsrc\mux1_serializer_block13.vhd
-- Created: 2015-03-31 13:18:07
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: mux1_serializer_block13
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_segments_fixpt_pac.ALL;

ENTITY mux1_serializer_block13 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_2_1                         :   IN    std_logic;
        enb_1_1_1                         :   IN    std_logic;
        enb                               :   IN    std_logic;
        in0                               :   IN    vector_of_std_logic_vector15(0 TO 1);  -- ufix15_En14 [2]
        out0                              :   OUT   std_logic_vector(14 DOWNTO 0)  -- ufix15_En14
        );
END mux1_serializer_block13;


ARCHITECTURE rtl OF mux1_serializer_block13 IS

  -- Signals
  SIGNAL in0_unsigned                     : vector_of_unsigned15(0 TO 1);  -- ufix15_En14 [2]
  SIGNAL serial_in                        : vector_of_unsigned15(0 TO 1);  -- ufix15_En14 [2]
  SIGNAL mux1_serializer_bypass_regrsvd   : std_logic;  -- ufix1
  SIGNAL in_vld                           : std_logic;
  SIGNAL mux1_serializer_data             : unsigned(14 DOWNTO 0);  -- ufix15
  SIGNAL s_s                              : unsigned(14 DOWNTO 0);  -- ufix15_En14

BEGIN
  outputgen: FOR kk IN 0 TO 1 GENERATE
    in0_unsigned(kk) <= unsigned(in0(kk));
  END GENERATE;

  serial_in <= in0_unsigned;

  mux1_serializer_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      mux1_serializer_bypass_regrsvd <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_1_1 = '1' THEN
        mux1_serializer_bypass_regrsvd <= enb_1_2_1;
      END IF;
    END IF;
  END PROCESS mux1_serializer_bypass_process;

  
  in_vld <= enb_1_2_1 WHEN enb_1_1_1 = '1' ELSE
      mux1_serializer_bypass_regrsvd;

  mux1_serializer_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      mux1_serializer_data <= to_unsigned(2#000000000000000#, 15);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        mux1_serializer_data <= serial_in(1);
      END IF;
    END IF;
  END PROCESS mux1_serializer_process;

  
  s_s <= serial_in(0) WHEN in_vld /= '0' ELSE
      mux1_serializer_data;

  out0 <= std_logic_vector(s_s);

END rtl;
