
header = """----------------------------------------------------------------------------------
--
-- Author(s):		David Keltgen
--					Matthew Handley
--
-- File:			lookup.vhd
--
-- Create Date:      03/17/2015
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

entity lookup is 
	port(
		CLK				: in  STD_LOGIC;
		ADDRESS			: in  STD_LOGIC_VECTOR(15 downto 0);
		RESULT			: out STD_LOGIC_VECTOR(15 downto 0)
	);
	  
end entity;

architecture lookup_arch of lookup is

	begin
		--------------------------
		---- Signal Assigment ----
		--------------------------
		with ADDRESS select RESULT <=
\t\t\tx"0000" when x"0000",
\t\t\tx"FFFF" when x"0001",
"""

footer = """
end architecture;
"""

with open('lookup.vhd', 'w') as f:

    print "Writing Header"
    f.write(header)

    print "Writing select statement"
    for i in range(2, 0x10000):
        y = (i) ** (-3/2)
        y = int(round(y * (2**16)))

        if (i != 0xFFFF):
            s = """\t\t\tx"{0:04X}" when x"{1:04X}",\n""".format(y, i)
        else:
            s = """\t\t\tx"{0:04X}" when x"{1:04X}";\n""".format(y, i)

        f.write(s)
    
    print "Writing Footer"
    f.write(footer)



print "Done!"
