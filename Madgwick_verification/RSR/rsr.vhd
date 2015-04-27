----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- File:					rsr.vhd
--
-- Create Date:      03/16/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RSR is 
	port(
		CLK				: in 	STD_LOGIC;
		INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
		OUTPUT_Y			: out STD_LOGIC_VECTOR(31 downto 0)
	);
	  
end entity;

architecture RSR_arch of RSR is

	----------------------------
	---- Signal Declaration ----
	----------------------------

	signal Y0 : STD_LOGIC_VECTOR(31 downto 0);
	

	-------------------------------
	---- Component Declaration ----
	-------------------------------
	
	Component INIT_GUESS is 
		port(
			CLK				: in 	STD_LOGIC;
			INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
			OUTPUT_Y0		: out STD_LOGIC_VECTOR(31 downto 0)
		);		  
	end Component;

	Component INTERATE is 
		port(
			CLK				: in 	STD_LOGIC;
			INPUT_Y0			: in  STD_LOGIC_VECTOR(31 downto 0);
			OUTPUT_Y			: out STD_LOGIC_VECTOR(31 downto 0)
		);
		  
	end Component;

	begin

		--------------------------------
		---- Component Instatiation ----
		--------------------------------
		INIT_GUESS_0 : component INIT_GUESS
		port map (
			CLK			=> CLK,
			INPUT_X		=> INPUT_X,
			OUTPUT_Y0	=> Y0
		);
		
		INTERATE_0 : component INTERATE
		port map (
			CLK			=> CLK,
			INPUT_Y0		=> Y0,
			OUTPUT_Y		=> OUTPUT_Y
		);
	
end architecture;