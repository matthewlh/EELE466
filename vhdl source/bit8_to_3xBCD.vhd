----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- Create Date:      01/27/2015
-- Modified Date:		01/27/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity bit8_to_3xBCD is 
	port(
		INPUT_CODE		: in  STD_LOGIC_VECTOR(7 downto 0);
		OUTPUT0			: out STD_LOGIC_VECTOR(3 downto 0);
		OUTPUT1			: out STD_LOGIC_VECTOR(3 downto 0);
		OUTPUT2			: out STD_LOGIC_VECTOR(3 downto 0)
	);
	  
end entity;

architecture bit8_to_3xBCD_arch  of bit8_to_3xBCD is

signal input_int : INTEGER RANGE 0 to 255;

begin

	input_int <= to_integer(unsigned(INPUT_CODE));
	
	OUTPUT0 <= std_logic_vector(to_unsigned((input_int mod 10), 4));
	OUTPUT1 <= std_logic_vector(to_unsigned(((input_int  /  10) mod 10), 4));
	OUTPUT2 <= std_logic_vector(to_unsigned(((input_int  / 100) mod 10), 4));
	
end architecture;