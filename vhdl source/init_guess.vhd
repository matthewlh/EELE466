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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.std_logic_arith.all;
use IEEE.numeric_std.ALL;

entity INIT_GUESS is 
	port(
		CLK				: in 	STD_LOGIC;
		INPUT_X			: in  STD_LOGIC_VECTOR(31 downto 0);
		OUTPUT_Y0		: out STD_LOGIC_VECTOR(31 downto 0)
	);
	  
end entity;

architecture INIT_GUESS_arch of INIT_GUESS is

	------------------------------
	---- Constant Declaration ----
	------------------------------
	
	constant W	: integer := 32;
	constant F	: integer := 16;

	----------------------------
	---- Signal Declaration ----
	----------------------------

	signal Z_std 	: STD_LOGIC_VECTOR( 4 downto 0);		-- Z = number of leading zeros
	signal Z 		: integer range 0 to 32;
	
	signal Beta 	: integer; 									-- Beta = number of bits to shift
	signal odd		: STD_LOGIC;									-- '1' when Beta is odd, '0' when Beta is even
	
	signal Alpha 	: integer; 									-- Beta = number of bits to shift
	
	signal x_a     	: STD_LOGIC_VECTOR(31 DOWNTO 0);    -- x shifted by alpha bits
	signal x_a_uns    : unsigned(31 downto 0);    -- x shifted by alpha bits
	signal x_b		   : STD_LOGIC_VECTOR(31 DOWNTO 0);    -- x shifted by beta bits
	signal x_b_uns		: unsigned(31 downto 0);    -- x shifted by beta bits
	

	-------------------------------
	---- Component Declaration ----
	-------------------------------

	component lzc is
		 port (
			  clk        : in  std_logic;
			  lzc_vector : in  std_logic_vector (31 downto 0);
			  lzc_count  : out std_logic_vector ( 4 downto 0)
		 );
	end component;
	
	component lookup is 
	port(
		CLK				: in  STD_LOGIC;
		ADDRESS			: in  STD_LOGIC_VECTOR(15 downto 0);
		RESULT			: out STD_LOGIC_VECTOR(15 downto 0)
	); 
	end component;

	begin
	
		--------------------------------
		---- Component Instatiation ----
		--------------------------------
		lzc_0 : component lzc
		port map (
			clk			=> CLK,
			lzc_vector	=> INPUT_X,
			lzc_count	=> Z_std
		);
		
--		lookup_0 : component lookup
--		port map (
--			clk			=> CLK,
--			ADDRESS		=> INPUT_X,
--			RESULT		=> Z_std
--		);
		
		
		--------------------------
		---- Signal Assigment ----
		--------------------------
		Z 		<= to_integer(unsigned(Z_std));
		
		Beta 	<= W -F -Z -1;
		
		odd	<= '0' when (Beta mod 2 = 0) else '1';
		
		x_a_uns 	<= shift_left(unsigned(INPUT_X), Alpha);-- to_unsigned(Alpha, 5);
		x_b_uns 	<= shift_right(unsigned(INPUT_X), Beta);-- to_unsigned(Alpha, 5);
		
		
		
		--------------------
		----  Processes ----
		--------------------
		
		calc_alpha : process (CLK, Beta)
			
			begin
				if(rising_edge(CLK)) then
					if(odd = '0') then
						Alpha <= ((-2*Beta) + (Beta/2)); 
					else 
						Alpha <= (-2*Beta) + (Beta/2) + (1/2);
					end if;
				end if;
			end process calc_alpha;
	
end architecture;