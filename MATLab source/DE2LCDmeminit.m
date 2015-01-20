%--------------------------------------------------------------------------
% Matlab script to create an Altera .mif file for the LCD memory
%--------------------------------------------------------------------------
%--
%-- Company:            Montana State University
%-- Author/Engineer:    Professor Ross Snider
%--                     Associate Professor
%--                     Electrical and Computer Engineering
%--                     Montana State University
%--                     610 Cobleigh Hall
%--                     Bozeman, MT 59717
%--                     rksnider@ece.montana.edu
%--                     www.ece.montana.edu/rosss
%--
%-- Create Date:        01/17/2011
%-- Design Name:        DE2_LCD_meminit.m
%-- Target Devices:     Altera DE2 Evaluation Board
%-- Tool versions:      MATLAB Version 7.10.0.499(R2010a) and Quartus II 10.0
%-- Description:        Matlab script to create an Altera .mif file for 
%--                     memory initialization for the LCD project.
%-- Dependencies:       None
%-- Revision:           1.00
%-- Revision 1.00 -     File Created
%-- 
%-- Additional Comments: Currently Working.
%--
%--------------------------------------------------------------------------


%-----------------------------------------------------
% First line string (max 16 characters)
%-----------------------------------------------------
line1_string = 'Matthew Handley';
%-----------------------------------------------------
% Second line string (max 16 characters)
%-----------------------------------------------------
line2_string = 'David Keltgen';


%-----------------------------------------------------
% Check string1
%-----------------------------------------------------
if length(line1_string) > 16
    line1_string = line1_string(1:16);
end
if length(line1_string) < 16
    Ns = length(line1_string);
    for k = Ns+1 : 16
       line1_string = [line1_string ' '];
    end
end
%-----------------------------------------------------
% Check string2
%-----------------------------------------------------
if length(line2_string) > 16
    line2_string = line2_string(1:16);
end
if length(line2_string) < 16
    Ns = length(line2_string);
    for k = Ns+1 : 16
       line2_string = [line2_string ' '];
    end
end
%-----------------------------------------------------
% Create the LCD string (max 32 characters)
%-----------------------------------------------------
lcd_string=[line1_string line2_string];
%-----------------------------------------------------
% Convert LCD string to decimal ascii values
%-----------------------------------------------------
lcd_dec = double(lcd_string);
%-----------------------------------------------------
% Convert decimal ascii values to fixed-pt
%-----------------------------------------------------
lcd_fixpt = fi(lcd_dec, 0, 8, 0);
%-----------------------------------------------------
% Create the .mif file
%-----------------------------------------------------
fixpt2alteramif(lcd_fixpt,'lcd.mif');















