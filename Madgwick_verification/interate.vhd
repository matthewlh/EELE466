----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- File:					interate.vhd
--
-- Create Date:      03/16/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ITERATE is 
	port(
		CLK				: in 	STD_LOGIC;
		INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
		INPUT_Y0			: in  STD_LOGIC_VECTOR(31 downto 0);
		OUTPUT_Y			: out STD_LOGIC_VECTOR(31 downto 0)
	);
	  
end entity;

architecture ITERATE_arch of ITERATE is

	----------------------------
	---- Signal Declaration ----
	----------------------------
	signal y0_last			: STD_LOGIC_VECTOR(31 downto 0);
	signal y_uns			: unsigned(31 downto 0);
	signal x_uns			: unsigned(31 downto 0);

	begin
		
		--------------------------
		---- Signal Assigment ----
		--------------------------
		x_uns <= unsigned(INPUT_X);
		
		OUTPUT_Y <= STD_LOGIC_VECTOR(y_uns);
	
		--------------------
		----  Processes ----
		--------------------
		iter : process (CLK, INPUT_Y0)
		
		variable y_large : unsigned(127 downto 0);
			
			begin
				if(rising_edge(CLK)) then
					if(y0_last /= INPUT_Y0) then
						y0_last <= INPUT_Y0;
						y_uns <= unsigned(INPUT_Y0);
					else
						y_large := (y_uns * (x"3000000000000" - x_uns * y_uns * y_uns)) / 2;
						y_uns <= y_large(79 downto 48);
					end if;
				end if;
			end process;
	
end architecture;