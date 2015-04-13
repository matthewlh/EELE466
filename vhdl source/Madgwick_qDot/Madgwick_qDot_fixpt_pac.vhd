-- -------------------------------------------------------------
-- 

-- File Name: C:\Users\w92p177\Documents\GitHub\EELE466\hdl_coder_Madgwick_qDot\codegen\Madgwick_qDot\hdlsrc\Madgwick_qDot_fixpt_pac.vhd
-- Created: 2015-04-10 14:55:08
-- 
-- Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4
-- 
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE Madgwick_qDot_fixpt_pac IS
  TYPE vector_of_std_logic_vector24 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(23 DOWNTO 0);
  TYPE vector_of_signed24 IS ARRAY (NATURAL RANGE <>) OF signed(23 DOWNTO 0);
  TYPE vector_of_std_logic_vector48 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(47 DOWNTO 0);
  TYPE vector_of_signed48 IS ARRAY (NATURAL RANGE <>) OF signed(47 DOWNTO 0);
END Madgwick_qDot_fixpt_pac;

