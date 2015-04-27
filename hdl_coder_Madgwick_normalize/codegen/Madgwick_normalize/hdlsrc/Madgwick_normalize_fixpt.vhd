-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_normalize\codegen\Madgwick_normalize\hdlsrc\Madgwick_normalize_fixpt.vhd
-- Created: 2015-04-27 15:06:35
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Design base rate: 1
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
-- ax                            ceout         1
-- ay                            ceout         1
-- az                            ceout         1
-- aw                            ceout         1
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Madgwick_normalize_fixpt
-- Source Path: Madgwick_normalize_fixpt
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Madgwick_normalize_fixpt IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clkenable                         :   IN    std_logic;
        ax1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        ay1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        az1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        aw1                               :   IN    std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        ceout                             :   OUT   std_logic;
        ax                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        ay                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        az                                :   OUT   std_logic_vector(23 DOWNTO 0);  -- sfix24_En12
        aw                                :   OUT   std_logic_vector(23 DOWNTO 0)  -- sfix24_En12
        );
END Madgwick_normalize_fixpt;


ARCHITECTURE rtl OF Madgwick_normalize_fixpt IS

  -- Constants
  CONSTANT One                            : unsigned(1 DOWNTO 0) := to_unsigned(2#10#, 2);  -- ufix2
  CONSTANT C_divbyzero_p                  : unsigned(1 DOWNTO 0) := to_unsigned(2#11#, 2);  -- ufix2

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL ax1_signed                       : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL ax_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL ay1_signed                       : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL ay_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL az1_signed                       : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL az_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL aw1_signed                       : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL aw_1                             : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL ax_tmp                           : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL ay_tmp                           : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL az_tmp                           : signed(23 DOWNTO 0);  -- sfix24_En12
  SIGNAL aw_tmp                           : signed(23 DOWNTO 0);  -- sfix24_En12

BEGIN
  ax1_signed <= signed(ax1);

  enb <= clkenable;

  in_0_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      ax_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        ax_1 <= ax1_signed;
      END IF;
    END IF;
  END PROCESS in_0_pipe_process;


  ay1_signed <= signed(ay1);

  in_1_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      ay_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        ay_1 <= ay1_signed;
      END IF;
    END IF;
  END PROCESS in_1_pipe_process;


  az1_signed <= signed(az1);

  in_2_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      az_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        az_1 <= az1_signed;
      END IF;
    END IF;
  END PROCESS in_2_pipe_process;


  aw1_signed <= signed(aw1);

  in_3_pipe_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      aw_1 <= to_signed(16#000000#, 24);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        aw_1 <= aw1_signed;
      END IF;
    END IF;
  END PROCESS in_3_pipe_process;


  Madgwick_normalize_fixpt_1_output : PROCESS (ax_1, ay_1, az_1, aw_1)
    VARIABLE dotproduct : unsigned(31 DOWNTO 0);
    VARIABLE mul_temp : signed(47 DOWNTO 0);
    VARIABLE add_cast : signed(48 DOWNTO 0);
    VARIABLE mul_temp_0 : signed(47 DOWNTO 0);
    VARIABLE add_cast_0 : signed(48 DOWNTO 0);
    VARIABLE add_temp : signed(48 DOWNTO 0);
    VARIABLE add_cast_1 : signed(49 DOWNTO 0);
    VARIABLE mul_temp_1 : signed(47 DOWNTO 0);
    VARIABLE add_cast_2 : signed(49 DOWNTO 0);
    VARIABLE add_temp_0 : signed(49 DOWNTO 0);
    VARIABLE add_cast_3 : signed(50 DOWNTO 0);
    VARIABLE mul_temp_2 : signed(47 DOWNTO 0);
    VARIABLE add_cast_4 : signed(50 DOWNTO 0);
    VARIABLE add_temp_1 : signed(50 DOWNTO 0);
    VARIABLE cast : unsigned(23 DOWNTO 0);
    VARIABLE cast_0 : unsigned(31 DOWNTO 0);
    VARIABLE cast_1 : signed(32 DOWNTO 0);
    VARIABLE mul_temp_3 : signed(56 DOWNTO 0);
    VARIABLE cast_2 : signed(55 DOWNTO 0);
    VARIABLE cast_3 : unsigned(23 DOWNTO 0);
    VARIABLE cast_4 : unsigned(31 DOWNTO 0);
    VARIABLE cast_5 : signed(32 DOWNTO 0);
    VARIABLE mul_temp_4 : signed(56 DOWNTO 0);
    VARIABLE cast_6 : signed(55 DOWNTO 0);
    VARIABLE cast_7 : unsigned(23 DOWNTO 0);
    VARIABLE cast_8 : unsigned(31 DOWNTO 0);
    VARIABLE cast_9 : signed(32 DOWNTO 0);
    VARIABLE mul_temp_5 : signed(56 DOWNTO 0);
    VARIABLE cast_10 : signed(55 DOWNTO 0);
    VARIABLE cast_11 : unsigned(23 DOWNTO 0);
    VARIABLE cast_12 : unsigned(31 DOWNTO 0);
    VARIABLE cast_13 : signed(32 DOWNTO 0);
    VARIABLE mul_temp_6 : signed(56 DOWNTO 0);
    VARIABLE cast_14 : signed(55 DOWNTO 0);
  BEGIN
    --HDL code generation from MATLAB function: Madgwick_normalize_fixpt
    --'Madgwick_normalize_fixpt:22' aw = fi(aw*rsr_result, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:21' az = fi(az*rsr_result, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:20' ay = fi(ay*rsr_result, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:19' ax = fi(ax*rsr_result, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:39' c = fi( c1, numerictype( c1 ), fimath( a ) );
    --'Madgwick_normalize_fixpt:38' c1 = divide( divideType( a1, b1 ), a1, b1 );
    --'Madgwick_normalize_fixpt:37' b1 = fi( b, 'RoundMode', 'fix' );
    --'Madgwick_normalize_fixpt:36' a1 = fi( a, 'RoundMode', 'fix' );
    --'Madgwick_normalize_fixpt:35' if isfi( a ) && isfi( b )
    --'Madgwick_normalize_fixpt:34' coder.inline( 'always' );
    --'Madgwick_normalize_fixpt:29' OUTPUT_Y = fi(fi_div(fi(1, 0, 1, 0, fm), sqrt( INPUT_X )), 0, 24, 23, fm);
    -- recipricol square root
    
--'Madgwick_normalize_fixpt:27' fm = fimath('RoundingMethod', 'Floor', 'OverflowAction', 'Wrap', 'ProductMode', 'FullPrecision', 'MaxProductWordLength', 128, 'SumMode', 'FullPrecision', 'MaxSumWordLength', 128);
    --'Madgwick_normalize_fixpt:18' rsr_result = fi(f13_RSR( dotproduct ), 0, 32, 16, fm);
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    --                                                                          %
    --       Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4        %
    --                                                                          %
    --%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
--'Madgwick_normalize_fixpt:9' fm = fimath('RoundingMethod', 'Floor', 'OverflowAction', 'Wrap', 'ProductMode', 'FullPrecision', 'MaxProductWordLength', 128, 'SumMode', 'FullPrecision', 'MaxSumWordLength', 128);
    --'Madgwick_normalize_fixpt:11' aw = fi(aw_1, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:12' ax = fi(ax_1, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:13' ay = fi(ay_1, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:14' az = fi(az_1, 1, 24, 12, fm);
    --'Madgwick_normalize_fixpt:16' dotproduct = fi(ax*ax + ay*ay + az*az + aw*aw, 0, 32, 16, fm);
    mul_temp := ax_1 * ax_1;
    add_cast := resize(mul_temp, 49);
    mul_temp_0 := ay_1 * ay_1;
    add_cast_0 := resize(mul_temp_0, 49);
    add_temp := add_cast + add_cast_0;
    add_cast_1 := resize(add_temp, 50);
    mul_temp_1 := az_1 * az_1;
    add_cast_2 := resize(mul_temp_1, 50);
    add_temp_0 := add_cast_1 + add_cast_2;
    add_cast_3 := resize(add_temp_0, 51);
    mul_temp_2 := aw_1 * aw_1;
    add_cast_4 := resize(mul_temp_2, 51);
    add_temp_1 := add_cast_3 + add_cast_4;
    dotproduct := unsigned(add_temp_1(39 DOWNTO 8));
    --'Madgwick_normalize_fixpt:17' if dotproduct~=fi(0, 0, 1, 0, fm)
    IF dotproduct /= 0 THEN 
      cast := to_unsigned(16#000000#, 24);
      cast_0 := resize(cast(23 DOWNTO 7), 32);
      cast_1 := signed(resize(cast_0, 33));
      mul_temp_3 := ax_1 * cast_1;
      cast_2 := mul_temp_3(55 DOWNTO 0);
      ax_tmp <= cast_2(39 DOWNTO 16);
    ELSE 
      ax_tmp <= ax_1;
    END IF;
    IF dotproduct /= 0 THEN 
      cast_3 := to_unsigned(16#000000#, 24);
      cast_4 := resize(cast_3(23 DOWNTO 7), 32);
      cast_5 := signed(resize(cast_4, 33));
      mul_temp_4 := ay_1 * cast_5;
      cast_6 := mul_temp_4(55 DOWNTO 0);
      ay_tmp <= cast_6(39 DOWNTO 16);
    ELSE 
      ay_tmp <= ay_1;
    END IF;
    IF dotproduct /= 0 THEN 
      cast_7 := to_unsigned(16#000000#, 24);
      cast_8 := resize(cast_7(23 DOWNTO 7), 32);
      cast_9 := signed(resize(cast_8, 33));
      mul_temp_5 := az_1 * cast_9;
      cast_10 := mul_temp_5(55 DOWNTO 0);
      az_tmp <= cast_10(39 DOWNTO 16);
    ELSE 
      az_tmp <= az_1;
    END IF;
    IF dotproduct /= 0 THEN 
      cast_11 := to_unsigned(16#000000#, 24);
      cast_12 := resize(cast_11(23 DOWNTO 7), 32);
      cast_13 := signed(resize(cast_12, 33));
      mul_temp_6 := aw_1 * cast_13;
      cast_14 := mul_temp_6(55 DOWNTO 0);
      aw_tmp <= cast_14(39 DOWNTO 16);
    ELSE 
      aw_tmp <= aw_1;
    END IF;
  END PROCESS Madgwick_normalize_fixpt_1_output;


  ax <= std_logic_vector(ax_tmp);

  ay <= std_logic_vector(ay_tmp);

  az <= std_logic_vector(az_tmp);

  aw <= std_logic_vector(aw_tmp);

  ceout <= clkenable;

END rtl;

