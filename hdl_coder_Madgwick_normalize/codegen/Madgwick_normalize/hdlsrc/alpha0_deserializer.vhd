-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_normalize\codegen\Madgwick_normalize\hdlsrc\alpha0_deserializer.vhd
-- Created: 2015-03-31 12:35:49
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: alpha0_deserializer
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_normalize_fixpt_pac.ALL;

ENTITY alpha0_deserializer IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_2_1                         :   IN    std_logic;
        enb                               :   IN    std_logic;
        in0                               :   IN    std_logic_vector(27 DOWNTO 0);  -- sfix28_En18
        out0                              :   OUT   vector_of_std_logic_vector28(0 TO 1)  -- sfix28_En18 [2]
        );
END alpha0_deserializer;


ARCHITECTURE rtl OF alpha0_deserializer IS

  -- Signals
  SIGNAL in0_signed                       : signed(27 DOWNTO 0);  -- sfix28_En18
  SIGNAL alpha0_deserializer_tap_regrsvd  : vector_of_signed28(0 TO 1);  -- sfix28 [2]
  SIGNAL alpha0_deserializer_tapout       : vector_of_signed28(0 TO 1);  -- sfix28_En18 [2]
  SIGNAL bypass_reg_regrsvd               : vector_of_signed28(0 TO 1);  -- sfix28 [2]
  SIGNAL s_s                              : vector_of_signed28(0 TO 1);  -- sfix28_En18 [2]

BEGIN
  in0_signed <= signed(in0);

  alpha0_deserializer_tap_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      alpha0_deserializer_tap_regrsvd <= (OTHERS => to_signed(16#0000000#, 28));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        alpha0_deserializer_tap_regrsvd(0) <= alpha0_deserializer_tap_regrsvd(1);
        alpha0_deserializer_tap_regrsvd(1) <= in0_signed;
      END IF;
    END IF;
  END PROCESS alpha0_deserializer_tap_process;

  alpha0_deserializer_tapout <= alpha0_deserializer_tap_regrsvd;

  bypass_reg_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      bypass_reg_regrsvd <= (OTHERS => to_signed(16#0000000#, 28));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_2_1 = '1' THEN
        bypass_reg_regrsvd <= alpha0_deserializer_tapout;
      END IF;
    END IF;
  END PROCESS bypass_reg_process;

  
  s_s <= alpha0_deserializer_tapout WHEN enb_1_2_1 = '1' ELSE
      bypass_reg_regrsvd;

  outputgen: FOR kk IN 0 TO 1 GENERATE
    out0(kk) <= std_logic_vector(s_s(kk));
  END GENERATE;

END rtl;

