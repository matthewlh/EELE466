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
		INPUT_CODE		: in  STD_LOGIC_VECTOR(3 downto 0);
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
				when x"0" => data <= x"40";
				when x"1" => data <= x"79";
				when x"2" => data <= x"24";
				when x"3" => data <= x"30";
				when x"4" => data <= x"19";
				when x"5" => data <= x"12";
				when x"6" => data <= x"02";
				when x"7" => data <= x"78";
				when x"8" => data <= x"00";
				when x"9" => data <= x"18";
				when x"A" => data <= x"08";
				when x"B" => data <= x"03";
				when x"C" => data <= x"46";
				when x"D" => data <= x"21";
				when x"E" => data <= x"06";
				when x"F" => data <= x"0E";
			end case;
			
	end process;
	
	OUTPUT_DISPLAY <= data(6 downto 0);
	
end architecture;