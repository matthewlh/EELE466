----------------------------------------------------------------------------------
--
-- Author(s):        David Keltgen
-- 					 	Matthew Handley
--
-- Create Date:      09/10/2010
-- Modified Date:		01/20/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DE2_HEX_DECODER is 
	port(
		INPUT_CODE		: in STD_LOGIC_VECTOR(3 downto 0);
		OUTPUT_DISPLAY	: out STD_LOGIC_VECTOR(6 downto 0)
	);
	  
end entity;

architecture DE2_HEX_DECODER_arch  of DE2_HEX_DECODER is

signal data : STD_LOGIC_VECTOR(7 downto 0);

begin

	--Processes
	CASE_Proc : process (INPUT_CODE)
		begin
	
			case (INPUT_CODE) is
				when x"0" => data <= x"FC";
				when x"1" => data <= x"60";
				when x"2" => data <= x"DA";
				when x"3" => data <= x"F2";
				when x"4" => data <= x"66";
				when x"5" => data <= x"B6";
				when x"6" => data <= x"BE";
				when x"7" => data <= x"E0";
				when x"8" => data <= x"FE";
				when x"9" => data <= x"F6";
				when x"A" => data <= x"EE";
				when x"B" => data <= x"3E";
				when x"C" => data <= x"1A";
				when x"D" => data <= x"7A";
				when x"E" => data <= x"9E";
				when x"F" => data <= x"8E";
			end case;
			
	end process;
	
	OUTPUT_DISPLAY <= data(7 downto 1);
	
end architecture;