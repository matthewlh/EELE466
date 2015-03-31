-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\alpha0_deserializer_block4.vhd
-- Created: 2015-03-31 12:39:01
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: alpha0_deserializer_block4
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_correction_fixpt_pac.ALL;

ENTITY alpha0_deserializer_block4 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb                               :   IN    std_logic;
        in0                               :   IN    std_logic_vector(41 DOWNTO 0);  -- ufix42_En41
        out0                              :   OUT   vector_of_std_logic_vector42(0 TO 3)  -- ufix42_En41 [4]
        );
END alpha0_deserializer_block4;


ARCHITECTURE rtl OF alpha0_deserializer_block4 IS

  -- Signals
  SIGNAL in0_unsigned                     : unsigned(41 DOWNTO 0);  -- ufix42_En41
  SIGNAL alpha0_deserializer_tap_regrsvd  : vector_of_unsigned42(0 TO 3);  -- ufix42 [4]
  SIGNAL alpha0_deserializer_tapout       : vector_of_unsigned42(0 TO 3);  -- ufix42_En41 [4]
  SIGNAL bypass_reg_regrsvd               : vector_of_unsigned42(0 TO 3);  -- ufix42 [4]
  SIGNAL s_s                              : vector_of_unsigned42(0 TO 3);  -- ufix42_En41 [4]

BEGIN
  in0_unsigned <= unsigned(in0);

  alpha0_deserializer_tap_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      alpha0_deserializer_tap_regrsvd <= (OTHERS => to_unsigned(0, 42));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        alpha0_deserializer_tap_regrsvd(3) <= in0_unsigned;
        alpha0_deserializer_tap_regrsvd(0 TO 2) <= alpha0_deserializer_tap_regrsvd(1 TO 3);
      END IF;
    END IF;
  END PROCESS alpha0_deserializer_tap_process;

  alpha0_deserializer_tapout <= alpha0_deserializer_tap_regrsvd;

  bypass_reg_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      bypass_reg_regrsvd <= (OTHERS => to_unsigned(0, 42));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_1 = '1' THEN
        bypass_reg_regrsvd <= alpha0_deserializer_tapout;
      END IF;
    END IF;
  END PROCESS bypass_reg_process;

  
  s_s <= alpha0_deserializer_tapout WHEN enb_1_4_1 = '1' ELSE
      bypass_reg_regrsvd;

  outputgen: FOR kk IN 0 TO 3 GENERATE
    out0(kk) <= std_logic_vector(s_s(kk));
  END GENERATE;

END rtl;

