-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\z68j959\Documents\GitHub\EELE466\hdl_coder_Madgwick_correction\codegen\Madgwick_correction\hdlsrc\Madgwick_correction_fixpt_pac.vhd
-- Created: 2015-04-13 14:57:29
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE Madgwick_correction_fixpt_pac IS
  TYPE vector_of_std_logic_vector24 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(23 DOWNTO 0);
  TYPE vector_of_signed24 IS ARRAY (NATURAL RANGE <>) OF signed(23 DOWNTO 0);
  TYPE vector_of_std_logic_vector48 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(47 DOWNTO 0);
  TYPE vector_of_signed48 IS ARRAY (NATURAL RANGE <>) OF signed(47 DOWNTO 0);
  TYPE vector_of_std_logic_vector26 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(25 DOWNTO 0);
  TYPE vector_of_signed26 IS ARRAY (NATURAL RANGE <>) OF signed(25 DOWNTO 0);
  TYPE vector_of_std_logic_vector50 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(49 DOWNTO 0);
  TYPE vector_of_signed50 IS ARRAY (NATURAL RANGE <>) OF signed(49 DOWNTO 0);
  TYPE vector_of_unsigned24 IS ARRAY (NATURAL RANGE <>) OF unsigned(23 DOWNTO 0);
  TYPE vector_of_std_logic_vector72 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(71 DOWNTO 0);
  TYPE vector_of_signed72 IS ARRAY (NATURAL RANGE <>) OF signed(71 DOWNTO 0);
  TYPE vector_of_std_logic_vector37 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(36 DOWNTO 0);
  TYPE vector_of_signed37 IS ARRAY (NATURAL RANGE <>) OF signed(36 DOWNTO 0);
  TYPE vector_of_std_logic_vector61 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(60 DOWNTO 0);
  TYPE vector_of_signed61 IS ARRAY (NATURAL RANGE <>) OF signed(60 DOWNTO 0);
  TYPE vector_of_std_logic_vector25 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(24 DOWNTO 0);
  TYPE vector_of_signed25 IS ARRAY (NATURAL RANGE <>) OF signed(24 DOWNTO 0);
  TYPE vector_of_std_logic_vector62 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(61 DOWNTO 0);
  TYPE vector_of_signed62 IS ARRAY (NATURAL RANGE <>) OF signed(61 DOWNTO 0);
  TYPE vector_of_std_logic_vector27 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(26 DOWNTO 0);
  TYPE vector_of_signed27 IS ARRAY (NATURAL RANGE <>) OF signed(26 DOWNTO 0);
  TYPE vector_of_std_logic_vector64 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(63 DOWNTO 0);
  TYPE vector_of_signed64 IS ARRAY (NATURAL RANGE <>) OF signed(63 DOWNTO 0);
  TYPE vector_of_std_logic_vector51 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(50 DOWNTO 0);
  TYPE vector_of_signed51 IS ARRAY (NATURAL RANGE <>) OF signed(50 DOWNTO 0);
  TYPE vector_of_unsigned25 IS ARRAY (NATURAL RANGE <>) OF unsigned(24 DOWNTO 0);
  TYPE vector_of_std_logic_vector49 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(48 DOWNTO 0);
  TYPE vector_of_signed49 IS ARRAY (NATURAL RANGE <>) OF signed(48 DOWNTO 0);
  TYPE vector_of_unsigned49 IS ARRAY (NATURAL RANGE <>) OF unsigned(48 DOWNTO 0);
  TYPE vector_of_std_logic_vector59 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(58 DOWNTO 0);
  TYPE vector_of_signed59 IS ARRAY (NATURAL RANGE <>) OF signed(58 DOWNTO 0);
  TYPE vector_of_std_logic_vector107 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(106 DOWNTO 0);
  TYPE vector_of_signed107 IS ARRAY (NATURAL RANGE <>) OF signed(106 DOWNTO 0);
  TYPE vector_of_std_logic_vector110 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(109 DOWNTO 0);
  TYPE vector_of_signed110 IS ARRAY (NATURAL RANGE <>) OF signed(109 DOWNTO 0);
  TYPE vector_of_std_logic_vector109 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(108 DOWNTO 0);
  TYPE vector_of_signed109 IS ARRAY (NATURAL RANGE <>) OF signed(108 DOWNTO 0);
  TYPE vector_of_unsigned8 IS ARRAY (NATURAL RANGE <>) OF unsigned(7 DOWNTO 0);
  TYPE vector_of_signed63 IS ARRAY (NATURAL RANGE <>) OF signed(62 DOWNTO 0);
END Madgwick_correction_fixpt_pac;

