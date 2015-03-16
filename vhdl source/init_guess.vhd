----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- File:					init_guess.vhd
--
-- Create Date:      03/16/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity INIT_GUESS is 
	port(
		CLK				: in 	STD_LOGIC;
		INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
		OUTPUT_Y0		: out STD_LOGIC_VECTOR(31 downto 0)
	);
	  
end entity;

architecture INIT_GUESS_arch of INIT_GUESS is

	begin
	
end architecture;