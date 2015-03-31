-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\mux1_serializer_block10.vhd
-- Created: 2015-03-31 12:39:01
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: mux1_serializer_block10
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_correction_fixpt_pac.ALL;

ENTITY mux1_serializer_block10 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb_1_2_1                         :   IN    std_logic;
        enb_1_2_0                         :   IN    std_logic;
        in0                               :   IN    vector_of_std_logic_vector17(0 TO 1);  -- ufix17_En14 [2]
        out0                              :   OUT   std_logic_vector(16 DOWNTO 0)  -- ufix17_En14
        );
END mux1_serializer_block10;


ARCHITECTURE rtl OF mux1_serializer_block10 IS

  -- Signals
  SIGNAL in0_unsigned                     : vector_of_unsigned17(0 TO 1);  -- ufix17_En14 [2]
  SIGNAL serial_in                        : vector_of_unsigned17(0 TO 1);  -- ufix17_En14 [2]
  SIGNAL mux1_serializer_bypass_regrsvd   : std_logic;  -- ufix1
  SIGNAL in_vld                           : std_logic;
  SIGNAL mux1_serializer_data             : unsigned(16 DOWNTO 0);  -- ufix17
  SIGNAL s_s                              : unsigned(16 DOWNTO 0);  -- ufix17_En14

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
      IF enb_1_2_1 = '1' THEN
        mux1_serializer_bypass_regrsvd <= enb_1_4_1;
      END IF;
    END IF;
  END PROCESS mux1_serializer_bypass_process;

  
  in_vld <= enb_1_4_1 WHEN enb_1_2_1 = '1' ELSE
      mux1_serializer_bypass_regrsvd;

  mux1_serializer_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      mux1_serializer_data <= to_unsigned(2#00000000000000000#, 17);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_2_0 = '1' THEN
        mux1_serializer_data <= serial_in(1);
      END IF;
    END IF;
  END PROCESS mux1_serializer_process;

  
  s_s <= serial_in(0) WHEN in_vld /= '0' ELSE
      mux1_serializer_data;

  out0 <= std_logic_vector(s_s);

END rtl;

