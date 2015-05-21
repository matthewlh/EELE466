import png

#with open('ross.png', 'r') as f:
r = png.Reader('ross.png')
data = list(r.asRGB()[2])

red = open('rom_ross_r.mif', 'w')
green = open('rom_ross_g.mif', 'w')
blue = open('rom_ross_b.mif', 'w')

m = 0

s = """
DEPTH = 12500;
WIDTH = 8;
ADDRESS_RADIX = HEX;
DATA_RADIX = HEX;

CONTENT
BEGIN
"""

red.write(s)
green.write(s)
blue.write(s)

pixel_cnt = 0

for row in data:
    for i  in range(0, len(row), 3):
        #print("{0}, {1}, {2}".format(row[i], row[i+1], row[i+2]))

        
        
        red.write("{0:04X} : {1:02X};\n".format(pixel_cnt, row[i]))
        green.write("{0:04X} : {1:02X};\n".format(pixel_cnt, row[i+1]))
        blue.write("{0:04X} : {1:02X};\n".format(pixel_cnt, row[i+2]))

        pixel_cnt += 1

red.write("END;\n")
green.write("END;\n")
blue.write("END;\n")

red.close()
green.close()
blue.close()


