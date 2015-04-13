-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\Madgwick_correction_fixpt_en.vhd
-- Created: 2015-04-13 14:57:29
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Madgwick_correction_fixpt_en
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Madgwick_correction_fixpt_en IS
  PORT( clk_1                             :   IN    std_logic;
        reset_1                           :   IN    std_logic;
        clkenable_1                       :   IN    std_logic;
        clkenable_2                       :   OUT   std_logic
        );
END Madgwick_correction_fixpt_en;


ARCHITECTURE rtl OF Madgwick_correction_fixpt_en IS

  -- Signals
  SIGNAL clkenable_3                      : std_logic;
  SIGNAL ctr0_out                         : std_logic;
  SIGNAL ctr1_out                         : std_logic;
  SIGNAL ctr2_out                         : std_logic;
  SIGNAL ctrstate_out                     : std_logic;
  SIGNAL bypass_out                       : std_logic;

BEGIN
  c_c_process: PROCESS (clk_1, reset_1)
  BEGIN
    IF reset_1 = '1' THEN
      ctr0_out <= '0';
    ELSIF clk_1'event AND clk_1 = '1' THEN
      ctr0_out <= clkenable_3 AND clkenable_1;
    END IF;
  END PROCESS c_c_process;

  c_c_1_process: PROCESS (clk_1, reset_1)
  BEGIN
    IF reset_1 = '1' THEN
      ctr1_out <= '0';
    ELSIF clk_1'event AND clk_1 = '1' THEN
      ctr1_out <= ctr0_out;
    END IF;
  END PROCESS c_c_1_process;

  c_c_2_process: PROCESS (clk_1, reset_1)
  BEGIN
    IF reset_1 = '1' THEN
      ctr2_out <= '0';
    ELSIF clk_1'event AND clk_1 = '1' THEN
      ctr2_out <= ctr1_out;
    END IF;
  END PROCESS c_c_2_process;

  ctrstate_out <= NOT clkenable_1 WHEN clkenable_3 = '1' ELSE
                  ctr2_out;

  c_c_3_process: PROCESS (clk_1, reset_1)
  BEGIN
    IF reset_1 = '1' THEN
      clkenable_3 <= '1';
    ELSIF clk_1'event AND clk_1 = '1' THEN
      clkenable_3 <= ctrstate_out;
    END IF;
  END PROCESS c_c_3_process;

  c_c_4_process: PROCESS (clk_1, reset_1)
  BEGIN
    IF reset_1 = '1' THEN
      bypass_out <= '0';
    ELSIF clk_1'event AND clk_1 = '1' THEN
      IF clkenable_3 = '1' THEN
        bypass_out <= clkenable_1;
      END IF;
    END IF;
  END PROCESS c_c_4_process;

  clkenable_2 <= clkenable_1 WHEN clkenable_3 = '1' ELSE
                 bypass_out;

END rtl;

