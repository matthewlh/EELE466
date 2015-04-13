-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\w92p177\Documents\GitHub\EELE466\hdl_coder_Madgwick_qDot\codegen\Madgwick_qDot\hdlsrc\Madgwick_qDot_fixpt.vhd
-- Created: 2015-04-10 14:55:08
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Design base rate: 0.25
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ceout         1
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- qdot1                         ceout         1
-- qdot2                         ceout         1
-- qdot3                         ceout         1
-- qdot4                         ceout         1
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Madgwick_qDot_fixpt
-- Source Path: Madgwick_qDot_fixpt
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Madgwick_qDot_fixpt_pac.ALL;

ENTITY Madgwick_qDot_fixpt IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clkenable                         :   IN    std_logic;
        q0                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        q1                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        q2                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        q3                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        gx                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        gy                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        gz                                :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        ceout                             :   OUT   std_logic;
        qdot1                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        qdot2                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        qdot3                             :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        qdot4                             :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
        );
END Madgwick_qDot_fixpt;


ARCHITECTURE rtl OF Madgwick_qDot_fixpt IS

  -- Component Declarations
  COMPONENT Madgwick_qDot_fixpt_enb_bypa
    PORT( clk_1                           :   IN    std_logic;
          reset_1                         :   IN    std_logic;
          clkenable_1                     :   IN    std_logic;
          clkenable_2                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT Madgwick_qDot_fixpt_tc
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clkenable                       :   IN    std_logic;
          enb                             :   OUT   std_logic;
          enb_1_1_1                       :   OUT   std_logic;
          enb_1_4_0                       :   OUT   std_logic;
          enb_1_4_1                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT mux1_serializer
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_4_1                       :   IN    std_logic;
          enb_1_1_1                       :   IN    std_logic;
          enb                             :   IN    std_logic;
          in0                             :   IN    vector_of_std_logic_vector24(0 TO 3);  -- sfix24_En12 [4]
          out0                            :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
          );
  END COMPONENT;

  COMPONENT alpha0_deserializer
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_4_1                       :   IN    std_logic;
          enb                             :   IN    std_logic;
          in0                             :   IN    std_logic_vector(47 DOWNTO 0);  -- sfix48_En24
          out0                            :   OUT   vector_of_std_logic_vector48(0 TO 3)  -- sfix48_En24 [4]
          );
  END COMPONENT;

  COMPONENT mux1_serializer_block
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_4_1                       :   IN    std_logic;
          enb_1_1_1                       :   IN    std_logic;
          enb                             :   IN    std_logic;
          in0                             :   IN    vector_of_std_logic_vector24(0 TO 2);  -- sfix24_En12 [3]
          out0                            :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
          );
  END COMPONENT;

  COMPONENT alpha0_deserializer_block
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_4_1                       :   IN    std_logic;
          enb                             :   IN    std_logic;
          in0                             :   IN    std_logic_vector(47 DOWNTO 0);  -- sfix48_En24
          out0                            :   OUT   vector_of_std_logic_vector48(0 TO 2)  -- sfix48_En24 [3]
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Madgwick_qDot_fixpt_enb_bypa
    USE ENTITY work.Madgwick_qDot_fixpt_enb_bypa(rtl);

  FOR ALL : Madgwick_qDot_fixpt_tc
    USE ENTITY work.Madgwick_qDot_fixpt_tc(rtl);

  FOR ALL : mux1_serializer
    USE ENTITY work.mux1_serializer(rtl);

  FOR ALL : alpha0_deserializer
    USE ENTITY work.alpha0_deserializer(rtl);

  FOR ALL : mux1_serializer_block
    USE ENTITY work.mux1_serializer_block(rtl);

  FOR ALL : alpha0_deserializer_block
    USE ENTITY work.alpha0_deserializer_block(rtl);

  -- Signals
  SIGNAL enb_1_4_1                        : std_logic;
  SIGNAL enb_1_1_1                        : std_logic;
  SIGNAL enb                              : std_logic;
  SIGNAL enb_1_4_0                        : std_logic;
  SIGNAL q1_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q1_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q1_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q1_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL clkenable_1                      : std_logic;
  SIGNAL clkenable_regout                 : std_logic;
  SIGNAL clkenable_regout_1               : std_logic;
  SIGNAL clkenable_regout_2               : std_logic;
  SIGNAL clkenable_regout_3               : std_logic;
  SIGNAL q1_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL tmp                              : signed(24 DOWNTO 0);  -- sfix25_En12
  SIGNAL p25tmp_cast                      : signed(24 DOWNTO 0);  -- sfix25_En12
  SIGNAL p25tmp_cast_1                    : signed(25 DOWNTO 0);  -- sfix26_En12
  SIGNAL p25tmp_cast_2                    : signed(25 DOWNTO 0);  -- sfix26_En12
  SIGNAL gx_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gx_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gx_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gx_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gx_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL tmp_1                            : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL q2_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q2_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q2_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q2_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q2_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL c0_serial_0                      : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL c0_serial_0_1                    : vector_of_std_logic_vector24(0 TO 3);  -- ufix24 [4]
  SIGNAL gz_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gy_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gy_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gy_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gy_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gy_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL c0_serial_1                      : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL c0_serial_1_1                    : vector_of_std_logic_vector24(0 TO 3);  -- ufix24 [4]
  SIGNAL q1_2                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL q1_signed                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_2                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL gz_signed                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL tmp_2                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL c0_serialOut_0                   : vector_of_std_logic_vector48(0 TO 3);  -- ufix48 [4]
  SIGNAL q3_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q3_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q3_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q3_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q3_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL c0_serial_0_2                    : vector_of_signed24(0 TO 2);  -- sfix24_En12 [3]
  SIGNAL c0_serial_0_3                    : vector_of_std_logic_vector24(0 TO 2);  -- ufix24 [3]
  SIGNAL c0_serial_1_2                    : vector_of_signed24(0 TO 2);  -- sfix24_En12 [3]
  SIGNAL c0_serial_1_3                    : vector_of_std_logic_vector24(0 TO 2);  -- ufix24 [3]
  SIGNAL q3_2                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL q3_signed                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gx_2                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL gx_signed                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL tmp_3                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL c0_serialOut_0_1                 : vector_of_std_logic_vector48(0 TO 2);  -- ufix48 [3]
  SIGNAL tmp_4                            : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_5                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_6                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL qDot1_1                          : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL p18qDot1_sub_cast                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p18qDot1_sub_cast_1              : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p18qDot1_sub_temp                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p18qDot1_sub_cast_2              : signed(50 DOWNTO 0);  -- sfix51_En24
  SIGNAL p18qDot1_sub_cast_3              : signed(50 DOWNTO 0);  -- sfix51_En24
  SIGNAL p18qDot1_sub_temp_1              : signed(50 DOWNTO 0);  -- sfix51_En24
  SIGNAL p18qDot1_mul_temp                : signed(75 DOWNTO 0);  -- sfix76_En48
  SIGNAL p18qDot1_cast                    : signed(74 DOWNTO 0);  -- sfix75_En48
  SIGNAL q0_regout                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q0_regout_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q0_regout_2                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q0_regout_3                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL q0_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL c0_serial_0_4                    : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL c0_serial_0_5                    : vector_of_std_logic_vector24(0 TO 3);  -- ufix24 [4]
  SIGNAL c0_serial_1_4                    : vector_of_signed24(0 TO 3);  -- sfix24_En12 [4]
  SIGNAL c0_serial_1_5                    : vector_of_std_logic_vector24(0 TO 3);  -- ufix24 [4]
  SIGNAL q0_2                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL q0_signed                        : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL gz_3                             : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL gz_signed_1                      : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL tmp_7                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL c0_serialOut_0_2                 : vector_of_std_logic_vector48(0 TO 3);  -- ufix48 [4]
  SIGNAL tmp_8                            : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_9                            : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_10                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_11                           : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_12                           : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_13                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL qDot2_1                          : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL p17qDot2_sub_cast                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p17qDot2_sub_cast_1              : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p17qDot2_sub_temp                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p17qDot2_mul_temp                : signed(74 DOWNTO 0);  -- sfix75_En48
  SIGNAL p17qDot2_cast                    : signed(73 DOWNTO 0);  -- sfix74_En48
  SIGNAL tmp_14                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_15                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_16                           : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p22tmp_sub_cast                  : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL p22tmp_sub_cast_1                : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL p22tmp_sub_temp                  : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_17                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_18                           : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL tmp_19                           : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL qDot3_1                          : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL p16qDot3_cast                    : signed(74 DOWNTO 0);  -- sfix75_En48
  SIGNAL p16qDot3_cast_1                  : signed(73 DOWNTO 0);  -- sfix74_En48
  SIGNAL tmp_20                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_21                           : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_22                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL tmp_23                           : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_24                           : signed(48 DOWNTO 0);  -- sfix49_En24
  SIGNAL tmp_25                           : signed(47 DOWNTO 0);  -- sfix48_En24
  SIGNAL qDot4_1                          : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL p15qDot4_sub_cast                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p15qDot4_sub_cast_1              : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p15qDot4_sub_temp                : signed(49 DOWNTO 0);  -- sfix50_En24
  SIGNAL p15qDot4_mul_temp                : signed(74 DOWNTO 0);  -- sfix75_En48
  SIGNAL p15qDot4_cast                    : signed(73 DOWNTO 0);  -- sfix74_En48

BEGIN
  UMadgwick_qDot_fixpt_enb_byp : Madgwick_qDot_fixpt_enb_bypa
    PORT MAP( clk_1 => clk,
              reset_1 => reset,
              clkenable_1 => clkenable,
              clkenable_2 => clkenable_1
              );

  UMadgwick_qDot_fixpt_tc_1 : Madgwick_qDot_fixpt_tc
    PORT MAP( clk => clk,
              reset => reset,
              clkenable => clkenable_regout_3,
              enb => enb,
              enb_1_1_1 => enb_1_1_1,
              enb_1_4_0 => enb_1_4_0,
              enb_1_4_1 => enb_1_4_1
              );

  Umux1_serializer_1 : mux1_serializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_0_1,  -- sfix24_En12 [4]
              out0 => q1_2  -- sfix24_En12
              );

  Umux1_serializer_2 : mux1_serializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_1_1,  -- sfix24_En12 [4]
              out0 => gz_2  -- sfix24_En12
              );

  Ualpha0_deserializer_1 : alpha0_deserializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb => enb,
              in0 => std_logic_vector(tmp_2),  -- sfix48_En24
              out0 => c0_serialOut_0  -- sfix48_En24 [4]
              );

  Umux1_serializer_3 : mux1_serializer_block
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_0_3,  -- sfix24_En12 [3]
              out0 => q3_2  -- sfix24_En12
              );

  Umux1_serializer_4 : mux1_serializer_block
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_1_3,  -- sfix24_En12 [3]
              out0 => gx_2  -- sfix24_En12
              );

  Ualpha0_deserializer_2 : alpha0_deserializer_block
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb => enb,
              in0 => std_logic_vector(tmp_3),  -- sfix48_En24
              out0 => c0_serialOut_0_1  -- sfix48_En24 [3]
              );

  Umux1_serializer_5 : mux1_serializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_0_5,  -- sfix24_En12 [4]
              out0 => q0_2  -- sfix24_En12
              );

  Umux1_serializer_6 : mux1_serializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb_1_1_1 => enb_1_1_1,
              enb => enb,
              in0 => c0_serial_1_5,  -- sfix24_En12 [4]
              out0 => gz_3  -- sfix24_En12
              );

  Ualpha0_deserializer_3 : alpha0_deserializer
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_4_1 => enb_1_4_1,
              enb => enb,
              in0 => std_logic_vector(tmp_7),  -- sfix48_En24
              out0 => c0_serialOut_0_2  -- sfix48_En24 [4]
              );

  c_c_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q1_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q1_regout <= signed(q1);
    END IF;
  END PROCESS c_c_process;

  c_c_1_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q1_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q1_regout_1 <= q1_regout;
    END IF;
  END PROCESS c_c_1_process;

  c_c_2_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q1_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q1_regout_2 <= q1_regout_1;
    END IF;
  END PROCESS c_c_2_process;

  c_c_3_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q1_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q1_regout_3 <= q1_regout_2;
    END IF;
  END PROCESS c_c_3_process;

  c_c_4_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      clkenable_regout <= '0';
    ELSIF clk'event AND clk = '1' THEN
      clkenable_regout <= clkenable_1;
    END IF;
  END PROCESS c_c_4_process;

  c_c_5_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      clkenable_regout_1 <= '0';
    ELSIF clk'event AND clk = '1' THEN
      clkenable_regout_1 <= clkenable_regout;
    END IF;
  END PROCESS c_c_5_process;

  c_c_6_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      clkenable_regout_2 <= '0';
    ELSIF clk'event AND clk = '1' THEN
      clkenable_regout_2 <= clkenable_regout_1;
    END IF;
  END PROCESS c_c_6_process;

  c_c_7_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      clkenable_regout_3 <= '0';
    ELSIF clk'event AND clk = '1' THEN
      clkenable_regout_3 <= clkenable_regout_2;
    END IF;
  END PROCESS c_c_7_process;

  in_1_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q1_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        q1_1 <= q1_regout_3;
      END IF;
    END IF;
  END PROCESS in_1_pipe_process;


  --HDL code generation from MATLAB function: Madgwick_qDot_fixpt
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  --                                                                          %
  --       Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4        %
  --                                                                          %
  --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
--'Madgwick_qDot_fixpt:9' fm = fimath('RoundingMethod', 'Floor', 'OverflowAction', 'Wrap', 'ProductMode', 'FullPrecision', 'SumMode', 'FullPrecision');
  -- Rate of change of quaternion from gyroscope
  
--'Madgwick_qDot_fixpt:11' qDot1 = fi(fi(0.5, 0, 24, 24, fm)*(fi_signed(fi_signed(fi_uminus(q1)*gx) - q2*gy) - q3*gz), 1, 24, 12, fm);
  --'Madgwick_qDot_fixpt:31' coder.inline( 'always' );
  --'Madgwick_qDot_fixpt:32' if isfi( a )
  --'Madgwick_qDot_fixpt:33' nt = numerictype( a );
  --'Madgwick_qDot_fixpt:34' new_nt = numerictype( 1, nt.WordLength + 1, nt.FractionLength );
  --'Madgwick_qDot_fixpt:35' y = -fi( a, new_nt, fimath( a ) );
  --'Madgwick_qDot_fixpt:19' coder.inline( 'always' );
  --'Madgwick_qDot_fixpt:20' if isfi( a ) && ~(issigned( a ))
  --'Madgwick_qDot_fixpt:24' else
  --'Madgwick_qDot_fixpt:25' y = a;
  --'Madgwick_qDot_fixpt:19' coder.inline( 'always' );
  --'Madgwick_qDot_fixpt:20' if isfi( a ) && ~(issigned( a ))
  --'Madgwick_qDot_fixpt:24' else
  --'Madgwick_qDot_fixpt:25' y = a;
  p25tmp_cast <= resize(q1_1, 25);
  p25tmp_cast_1 <= resize(p25tmp_cast, 26);
  p25tmp_cast_2 <=  - (p25tmp_cast_1);
  tmp <= p25tmp_cast_2(24 DOWNTO 0);

  c_c_8_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gx_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gx_regout <= signed(gx);
    END IF;
  END PROCESS c_c_8_process;

  c_c_9_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gx_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gx_regout_1 <= gx_regout;
    END IF;
  END PROCESS c_c_9_process;

  c_c_10_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gx_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gx_regout_2 <= gx_regout_1;
    END IF;
  END PROCESS c_c_10_process;

  c_c_11_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gx_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gx_regout_3 <= gx_regout_2;
    END IF;
  END PROCESS c_c_11_process;

  in_4_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gx_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        gx_1 <= gx_regout_3;
      END IF;
    END IF;
  END PROCESS in_4_pipe_process;


  tmp_1 <= tmp * gx_1;

  c_c_12_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q2_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q2_regout <= signed(q2);
    END IF;
  END PROCESS c_c_12_process;

  c_c_13_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q2_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q2_regout_1 <= q2_regout;
    END IF;
  END PROCESS c_c_13_process;

  c_c_14_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q2_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q2_regout_2 <= q2_regout_1;
    END IF;
  END PROCESS c_c_14_process;

  c_c_15_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q2_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q2_regout_3 <= q2_regout_2;
    END IF;
  END PROCESS c_c_15_process;

  in_2_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q2_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        q2_1 <= q2_regout_3;
      END IF;
    END IF;
  END PROCESS in_2_pipe_process;


  c0_serial_0(0) <= q1_1;
  c0_serial_0(1) <= q2_1;
  c0_serial_0(2) <= q2_1;
  c0_serial_0(3) <= q2_1;

  outputgen5: FOR kk IN 0 TO 3 GENERATE
    c0_serial_0_1(kk) <= std_logic_vector(c0_serial_0(kk));
  END GENERATE;

  c_c_16_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gz_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gz_regout <= signed(gz);
    END IF;
  END PROCESS c_c_16_process;

  c_c_17_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gz_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gz_regout_1 <= gz_regout;
    END IF;
  END PROCESS c_c_17_process;

  c_c_18_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gz_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gz_regout_2 <= gz_regout_1;
    END IF;
  END PROCESS c_c_18_process;

  c_c_19_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gz_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gz_regout_3 <= gz_regout_2;
    END IF;
  END PROCESS c_c_19_process;

  in_6_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gz_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        gz_1 <= gz_regout_3;
      END IF;
    END IF;
  END PROCESS in_6_pipe_process;


  c_c_20_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gy_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gy_regout <= signed(gy);
    END IF;
  END PROCESS c_c_20_process;

  c_c_21_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gy_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gy_regout_1 <= gy_regout;
    END IF;
  END PROCESS c_c_21_process;

  c_c_22_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gy_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gy_regout_2 <= gy_regout_1;
    END IF;
  END PROCESS c_c_22_process;

  c_c_23_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gy_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      gy_regout_3 <= gy_regout_2;
    END IF;
  END PROCESS c_c_23_process;

  in_5_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      gy_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        gy_1 <= gy_regout_3;
      END IF;
    END IF;
  END PROCESS in_5_pipe_process;


  c0_serial_1(0) <= gz_1;
  c0_serial_1(1) <= gx_1;
  c0_serial_1(2) <= gz_1;
  c0_serial_1(3) <= gy_1;

  outputgen4: FOR kk IN 0 TO 3 GENERATE
    c0_serial_1_1(kk) <= std_logic_vector(c0_serial_1(kk));
  END GENERATE;

  q1_signed <= signed(q1_2);

  gz_signed <= signed(gz_2);

  tmp_2 <= q1_signed * gz_signed;

  c_c_24_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q3_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q3_regout <= signed(q3);
    END IF;
  END PROCESS c_c_24_process;

  c_c_25_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q3_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q3_regout_1 <= q3_regout;
    END IF;
  END PROCESS c_c_25_process;

  c_c_26_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q3_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q3_regout_2 <= q3_regout_1;
    END IF;
  END PROCESS c_c_26_process;

  c_c_27_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q3_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q3_regout_3 <= q3_regout_2;
    END IF;
  END PROCESS c_c_27_process;

  in_3_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q3_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        q3_1 <= q3_regout_3;
      END IF;
    END IF;
  END PROCESS in_3_pipe_process;


  c0_serial_0_2(0) <= q3_1;
  c0_serial_0_2(1) <= q3_1;
  c0_serial_0_2(2) <= q3_1;

  outputgen3: FOR kk IN 0 TO 2 GENERATE
    c0_serial_0_3(kk) <= std_logic_vector(c0_serial_0_2(kk));
  END GENERATE;

  c0_serial_1_2(0) <= gx_1;
  c0_serial_1_2(1) <= gy_1;
  c0_serial_1_2(2) <= gz_1;

  outputgen2: FOR kk IN 0 TO 2 GENERATE
    c0_serial_1_3(kk) <= std_logic_vector(c0_serial_1_2(kk));
  END GENERATE;

  q3_signed <= signed(q3_2);

  gx_signed <= signed(gx_2);

  tmp_3 <= q3_signed * gx_signed;

  delayMatch_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      tmp_4 <= to_signed(0, 49);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        tmp_4 <= tmp_1;
      END IF;
    END IF;
  END PROCESS delayMatch_process;


  tmp_5 <= signed(c0_serialOut_0(3));

  tmp_6 <= signed(c0_serialOut_0_1(2));

  p18qDot1_sub_cast <= resize(tmp_4, 50);
  p18qDot1_sub_cast_1 <= resize(tmp_5, 50);
  p18qDot1_sub_temp <= p18qDot1_sub_cast - p18qDot1_sub_cast_1;
  p18qDot1_sub_cast_2 <= resize(p18qDot1_sub_temp, 51);
  p18qDot1_sub_cast_3 <= resize(tmp_6, 51);
  p18qDot1_sub_temp_1 <= p18qDot1_sub_cast_2 - p18qDot1_sub_cast_3;
  -- CSD Encoding (8388608) : 100000000000000000000000; Cost (Adders) = 0
  p18qDot1_mul_temp <= resize(p18qDot1_sub_temp_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' 
    & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 76);
  p18qDot1_cast <= p18qDot1_mul_temp(74 DOWNTO 0);
  qDot1_1 <= p18qDot1_cast(59 DOWNTO 36);

  qdot1 <= std_logic_vector(qDot1_1);

  c_c_28_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q0_regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q0_regout <= signed(q0);
    END IF;
  END PROCESS c_c_28_process;

  c_c_29_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q0_regout_1 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q0_regout_1 <= q0_regout;
    END IF;
  END PROCESS c_c_29_process;

  c_c_30_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q0_regout_2 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q0_regout_2 <= q0_regout_1;
    END IF;
  END PROCESS c_c_30_process;

  c_c_31_process: PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q0_regout_3 <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      q0_regout_3 <= q0_regout_2;
    END IF;
  END PROCESS c_c_31_process;

  in_0_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      q0_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_4_0 = '1' THEN
        q0_1 <= q0_regout_3;
      END IF;
    END IF;
  END PROCESS in_0_pipe_process;


  c0_serial_0_4(0) <= q0_1;
  c0_serial_0_4(1) <= q0_1;
  c0_serial_0_4(2) <= q0_1;
  c0_serial_0_4(3) <= q1_1;

  outputgen1: FOR kk IN 0 TO 3 GENERATE
    c0_serial_0_5(kk) <= std_logic_vector(c0_serial_0_4(kk));
  END GENERATE;

  c0_serial_1_4(0) <= gz_1;
  c0_serial_1_4(1) <= gy_1;
  c0_serial_1_4(2) <= gx_1;
  c0_serial_1_4(3) <= gy_1;

  outputgen: FOR kk IN 0 TO 3 GENERATE
    c0_serial_1_5(kk) <= std_logic_vector(c0_serial_1_4(kk));
  END GENERATE;

  q0_signed <= signed(q0_2);

  gz_signed_1 <= signed(gz_3);

  
-- 'Madgwick_qDot_fixpt:14' qDot4 = fi(fi(0.5, 0, 24, 24, fm)*(fi_signed(q0*gz + q1*gy) - q2*gx), 1, 24, 12, fm);
  -- 
  -- 'Madgwick_qDot_fixpt:19' coder.inline( 'always' );
  -- 
  -- 'Madgwick_qDot_fixpt:20' if isfi( a ) && ~(issigned( a ))
  -- 
  -- 'Madgwick_qDot_fixpt:24' else
  -- 
  -- 'Madgwick_qDot_fixpt:25' y = a;
  -- 
  
-- 'Madgwick_qDot_fixpt:13' qDot3 = fi(fi(0.5, 0, 24, 24, fm)*(fi_signed(q0*gy) - q1*gz + q3*gx), 1, 24, 12, fm);
  -- 
  -- 'Madgwick_qDot_fixpt:19' coder.inline( 'always' );
  -- 
  -- 'Madgwick_qDot_fixpt:20' if isfi( a ) && ~(issigned( a ))
  -- 
  -- 'Madgwick_qDot_fixpt:24' else
  -- 
  -- 'Madgwick_qDot_fixpt:25' y = a;
  -- 
  
-- 'Madgwick_qDot_fixpt:12' qDot2 = fi(fi(0.5, 0, 24, 24, fm)*(fi_signed(q0*gx + q2*gz) - q3*gy), 1, 24, 12, fm);
  -- 
  -- 'Madgwick_qDot_fixpt:19' coder.inline( 'always' );
  -- 
  -- 'Madgwick_qDot_fixpt:20' if isfi( a ) && ~(issigned( a ))
  -- 
  -- 'Madgwick_qDot_fixpt:24' else
  -- 
  -- 'Madgwick_qDot_fixpt:25' y = a;
  tmp_7 <= q0_signed * gz_signed_1;

  tmp_8 <= signed(c0_serialOut_0_2(2));

  tmp_9 <= resize(tmp_8, 49);

  tmp_10 <= signed(c0_serialOut_0(2));

  tmp_11 <= resize(tmp_10, 49);

  tmp_12 <= tmp_9 + tmp_11;

  tmp_13 <= signed(c0_serialOut_0_1(1));

  p17qDot2_sub_cast <= resize(tmp_12, 50);
  p17qDot2_sub_cast_1 <= resize(tmp_13, 50);
  p17qDot2_sub_temp <= p17qDot2_sub_cast - p17qDot2_sub_cast_1;
  -- CSD Encoding (8388608) : 100000000000000000000000; Cost (Adders) = 0
  p17qDot2_mul_temp <= resize(p17qDot2_sub_temp & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & 
    '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 75);
  p17qDot2_cast <= p17qDot2_mul_temp(73 DOWNTO 0);
  qDot2_1 <= p17qDot2_cast(59 DOWNTO 36);

  qdot2 <= std_logic_vector(qDot2_1);

  tmp_14 <= signed(c0_serialOut_0_2(1));

  tmp_15 <= signed(c0_serialOut_0(0));

  p22tmp_sub_cast <= resize(tmp_14, 49);
  p22tmp_sub_cast_1 <= resize(tmp_15, 49);
  p22tmp_sub_temp <= p22tmp_sub_cast - p22tmp_sub_cast_1;
  tmp_16 <= resize(p22tmp_sub_temp, 50);

  tmp_17 <= signed(c0_serialOut_0_1(0));

  tmp_18 <= resize(tmp_17, 50);

  tmp_19 <= tmp_16 + tmp_18;

  p16qDot3_cast <= resize(tmp_19 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & 
    '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 75);
  p16qDot3_cast_1 <= p16qDot3_cast(73 DOWNTO 0);
  qDot3_1 <= p16qDot3_cast_1(59 DOWNTO 36);

  qdot3 <= std_logic_vector(qDot3_1);

  tmp_20 <= signed(c0_serialOut_0_2(0));

  tmp_21 <= resize(tmp_20, 49);

  tmp_22 <= signed(c0_serialOut_0_2(3));

  tmp_23 <= resize(tmp_22, 49);

  tmp_24 <= tmp_21 + tmp_23;

  tmp_25 <= signed(c0_serialOut_0(1));

  p15qDot4_sub_cast <= resize(tmp_24, 50);
  p15qDot4_sub_cast_1 <= resize(tmp_25, 50);
  p15qDot4_sub_temp <= p15qDot4_sub_cast - p15qDot4_sub_cast_1;
  -- CSD Encoding (8388608) : 100000000000000000000000; Cost (Adders) = 0
  p15qDot4_mul_temp <= resize(p15qDot4_sub_temp & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & 
    '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 75);
  p15qDot4_cast <= p15qDot4_mul_temp(73 DOWNTO 0);
  qDot4_1 <= p15qDot4_cast(59 DOWNTO 36);

  qdot4 <= std_logic_vector(qDot4_1);

  ceout <= enb_1_4_1;

END rtl;

