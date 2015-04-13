-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\w92p177\Documents\GitHub\EELE466\hdl_coder_Madgwick_qDot\codegen\Madgwick_qDot\hdlsrc\mux1_serializer.vhd
-- Created: 2015-04-10 14:55:08
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: mux1_serializer
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_qDot_fixpt_pac.ALL;

ENTITY mux1_serializer IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb_1_1_1                         :   IN    std_logic;
        enb                               :   IN    std_logic;
        in0                               :   IN    vector_of_std_logic_vector24(0 TO 3);  -- sfix24_En12 [4]
        out0                              :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
        );
END mux1_serializer;


ARCHITECTURE rtl OF mux1_serializer IS

  -- Signals
  SIGNAL in0_signed                       : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL serial_in                        : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL mux1_serializer_bypass_regrsvd   : std_logic;  -- ufix1
  SIGNAL in_vld                           : std_logic;
  SIGNAL mux1_serializer_data             : vector_of_signed24(0 TO 2);  -- sfix24 [3]
  SIGNAL mux1_serializer_data_next        : vector_of_signed24(0 TO 2);  -- sfix24_En12 [3]
  SIGNAL s_s                              : signed(23 DOWNTO 0);  -- sfix24_En12

BEGIN
  outputgen: FOR kk IN 0 TO 3 GENERATE
    in0_signed(kk) <= signed(in0(kk));
  END GENERATE;

  serial_in <= in0_signed;

  mux1_serializer_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      mux1_serializer_bypass_regrsvd <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_1_1 = '1' THEN
        mux1_serializer_bypass_regrsvd <= enb_1_4_1;
      END IF;
    END IF;
  END PROCESS mux1_serializer_bypass_process;

  
  in_vld <= enb_1_4_1 WHEN enb_1_1_1 = '1' ELSE
      mux1_serializer_bypass_regrsvd;

  mux1_serializer_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      mux1_serializer_data <= (OTHERS => to_signed(16#000000#, 24));
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        mux1_serializer_data <= mux1_serializer_data_next;
      END IF;
    END IF;
  END PROCESS mux1_serializer_1_process;

  mux1_serializer_1_output : PROCESS (mux1_serializer_data, serial_in, in_vld)
    VARIABLE tempv : vector_of_signed24(0 TO 1);
  BEGIN
    mux1_serializer_data_next <= mux1_serializer_data;
    IF in_vld /= '0' THEN 
      s_s <= serial_in(0);
    ELSE 
      s_s <= mux1_serializer_data(0);
    END IF;
    IF in_vld /= '0' THEN 
      tempv := serial_in(1 TO 2);
    ELSE 
      tempv := mux1_serializer_data(1 TO 2);
    END IF;
    mux1_serializer_data_next(0 TO 1) <= tempv;
    mux1_serializer_data_next(2) <= serial_in(3);
  END PROCESS mux1_serializer_1_output;


  out0 <= std_logic_vector(s_s);

END rtl;

