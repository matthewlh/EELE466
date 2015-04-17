-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\mux1_serializer_block18.vhd
-- Created: 2015-04-13 14:57:29
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: mux1_serializer_block18
-- Source Path: 
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_correction_fixpt_pac.ALL;

ENTITY mux1_serializer_block18 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_4_1                         :   IN    std_logic;
        enb_1_2_1                         :   IN    std_logic;
        enb_1_2_0                         :   IN    std_logic;
        in0                               :   IN    vector_of_std_logic_vector24(0 TO 1);  -- sfix24_En20 [2]
        out0                              :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En20
        );
END mux1_serializer_block18;


ARCHITECTURE rtl OF mux1_serializer_block18 IS

  -- Signals
  SIGNAL in0_signed                       : vector_of_signed24(0 TO 1);  -- sfix24_En20 [2]
  SIGNAL serial_in                        : vector_of_signed24(0 TO 1);  -- sfix24_En20 [2]
  SIGNAL mux1_serializer_bypass_regrsvd   : std_logic;  -- ufix1
  SIGNAL in_vld                           : std_logic;
  SIGNAL mux1_serializer_data             : signed(23 DOWNTO 0);  -- sfix24
  SIGNAL s_s                              : signed(23 DOWNTO 0);  -- sfix24_En20

BEGIN
  outputgen: FOR kk IN 0 TO 1 GENERATE
    in0_signed(kk) <= signed(in0(kk));
  END GENERATE;

  serial_in <= in0_signed;

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
      mux1_serializer_data <= to_signed(16#000000#, 24);
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

