-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\w92p177\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\alpha0_deserializer_block19.vhd
-- Created: 2015-04-10 14:48:55
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: alpha0_deserializer_block19
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_correction_fixpt_pac.ALL;

ENTITY alpha0_deserializer_block19 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb_1_2_0                         :   IN    std_logic;
        in0                               :   IN    std_logic_vector(48 DOWNTO 0);  -- sfix49_En33
        out0                              :   OUT   vector_of_std_logic_vector49(0 TO 1)  -- sfix49_En33 [2]
        );
END alpha0_deserializer_block19;


ARCHITECTURE rtl OF alpha0_deserializer_block19 IS

  -- Signals
  SIGNAL in0_signed                       : signed(48 DOWNTO 0);  -- sfix49_En33
  SIGNAL alpha0_deserializer_tap_regrsvd  : vector_of_signed49(0 TO 1);  -- sfix49 [2]
  SIGNAL alpha0_deserializer_tapout       : vector_of_signed49(0 TO 1);  -- sfix49_En33 [2]
  SIGNAL bypass_reg_regrsvd               : vector_of_signed49(0 TO 1);  -- sfix49 [2]
  SIGNAL s_s                              : vector_of_signed49(0 TO 1);  -- sfix49_En33 [2]

BEGIN
  in0_signed <= signed(in0);

  alpha0_deserializer_tap_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      alpha0_deserializer_tap_regrsvd <= (OTHERS => to_signed(0, 49));
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
      bypass_reg_regrsvd <= (OTHERS => to_signed(0, 49));
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

