-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_normalize\codegen\Madgwick_normalize\hdlsrc\Madgwick_normalize_fixpt_tc.vhd
-- Created: 2015-03-31 12:35:49
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Madgwick_normalize_fixpt_tc
-- Source Path: Madgwick_normalize_fixpt_tc
-- Hierarchy Level: 1
-- 
-- Master clock enable input: clkenable
-- 
-- enb         : identical to clkenable
-- enb_1_1_1   : identical to clkenable
-- enb_1_2_0   : 2x slower than clkenable with last phase
-- enb_1_2_1   : 2x slower than clkenable with phase 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Madgwick_normalize_fixpt_tc IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clkenable                         :   IN    std_logic;
        enb                               :   OUT   std_logic;
        enb_1_1_1                         :   OUT   std_logic;
        enb_1_2_0                         :   OUT   std_logic;
        enb_1_2_1                         :   OUT   std_logic
        );
END Madgwick_normalize_fixpt_tc;


ARCHITECTURE rtl OF Madgwick_normalize_fixpt_tc IS

  -- Signals
  SIGNAL count2                           : std_logic;
  SIGNAL phase_all                        : std_logic;
  SIGNAL phase_0                          : std_logic;
  SIGNAL phase_0_tmp                      : std_logic;
  SIGNAL phase_1                          : std_logic;
  SIGNAL phase_1_tmp                      : std_logic;

BEGIN
  Counter2 : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      count2 <= '1';
    ELSIF clk'event AND clk = '1' THEN
      IF clkenable = '1' THEN
          count2 <= NOT count2;
      END IF;
    END IF; 
  END PROCESS Counter2;

  phase_all <= '1' WHEN clkenable = '1' ELSE '0';

  temp_process1 : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      phase_0 <= '0';
    ELSIF clk'event AND clk = '1' THEN
      IF clkenable = '1' THEN
        phase_0 <= phase_0_tmp;
      END IF;
    END IF; 
  END PROCESS temp_process1;

  phase_0_tmp <= '1' WHEN count2 = '1' AND clkenable = '1' ELSE '0';

  temp_process2 : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      phase_1 <= '1';
    ELSIF clk'event AND clk = '1' THEN
      IF clkenable = '1' THEN
        phase_1 <= phase_1_tmp;
      END IF;
    END IF; 
  END PROCESS temp_process2;

  phase_1_tmp <= '1' WHEN count2 = '0' AND clkenable = '1' ELSE '0';

  enb <=  phase_all AND clkenable;

  enb_1_1_1 <=  phase_all AND clkenable;

  enb_1_2_0 <=  phase_0 AND clkenable;

  enb_1_2_1 <=  phase_1 AND clkenable;


END rtl;

