-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\alpha0_deserializer_block21.vhd
-- Created: 2015-04-13 14:57:29
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: alpha0_deserializer_block21
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_correction_fixpt_pac.ALL;

ENTITY alpha0_deserializer_block21 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb_1_2_0                         :   IN    std_logic;
        in0                               :   IN    std_logic_vector(47 DOWNTO 0);  -- sfix48_En34
        out0                              :   OUT   vector_of_std_logic_vector48(0 TO 1)  -- sfix48_En34 [2]
        );
END alpha0_deserializer_block21;


ARCHITECTURE rtl OF alpha0_deserializer_block21 IS

  -- Signals
  SIGNAL in0_signed                       : signed(47 DOWNTO 0);  -- sfix48_En34
  SIGNAL alpha0_deserializer_tap_regrsvd  : vector_of_signed48(0 TO 1);  -- sfix48 [2]
  SIGNAL alpha0_deserializer_tapout       : vector_of_signed48(0 TO 1);  -- sfix48_En34 [2]
  SIGNAL bypass_reg_regrsvd               : vector_of_signed48(0 TO 1);  -- sfix48 [2]
  SIGNAL s_s                              : vector_of_signed48(0 TO 1);  -- sfix48_En34 [2]

BEGIN
  in0_signed <= signed(in0);

  alpha0_deserializer_tap_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      alpha0_deserializer_tap_regrsvd <= (OTHERS => to_signed(0, 48));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_2_0 = '1' THEN
        alpha0_deserializer_tap_regrsvd(0) <= alpha0_deserializer_tap_regrsvd(1);
        alpha0_deserializer_tap_regrsvd(1) <= in0_signed;
      END IF;
    END IF;
  END PROCESS alpha0_deserializer_tap_process;

  alpha0_deserializer_tapout <= alpha0_deserializer_tap_regrsvd;

  bypass_reg_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      bypass_reg_regrsvd <= (OTHERS => to_signed(0, 48));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_1 = '1' THEN
        bypass_reg_regrsvd <= alpha0_deserializer_tapout;
      END IF;
    END IF;
  END PROCESS bypass_reg_process;

  
  s_s <= alpha0_deserializer_tapout WHEN enb_1_4_1 = '1' ELSE
      bypass_reg_regrsvd;

  outputgen: FOR kk IN 0 TO 1 GENERATE
    out0(kk) <= std_logic_vector(s_s(kk));
  END GENERATE;

END rtl;

