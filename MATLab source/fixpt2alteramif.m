function fixpt2alteramif(meminit,filename)
%--------------------------------------------------------------------------
% Write the fixed point values contained in the array meminit 
% to an Altera .mif file
%
%  Input:
%
%  meminit : fixed point array (created using Matlab's fixed-point toolbox)
%            The word size (WIDTH) and number of memory words (DEPTH) will 
%            be automatically determined from the input vector meminit.
%  filename : name of .mif file to be created.  The file name string must
%             end in '.mif'
%
%  Output: A .mif file that can be used to initialize Altera FPGA memory.
%  
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
%-- Design Name:        fixpt2alteramif.m
%-- Target Devices:     Altera DE2 Evaluation Board
%-- Tool versions:      MATLAB Version 7.10.0.499(R2010a) and Quartus II 10.0
%-- Description:        Matlab function to create an Altera .mif file for 
%--                     FPGA memory initialization.
%-- Dependencies:       None
%-- Revision:           1.00
%-- Revision 1.00 -     File Created
%-- 
%-- Additional Comments: Currently Working.
%--
%--------------------------------------------------------------------------
%------------------------------------
% Open File
%------------------------------------
fid = fopen(filename,'w');
%------------------------------------
% Write File Header
%------------------------------------
line = ['DEPTH = ' num2str(length(meminit)) ';'];  % The size of memory in words
fprintf(fid,'%s\n',line);
line = ['WIDTH = ' num2str(meminit.WordLength) ';']; % The size of data in bits
fprintf(fid,'%s\n',line);
line = ['ADDRESS_RADIX = DEC;'];  % The radix for address values
fprintf(fid,'%s\n',line);
line = ['DATA_RADIX = HEX;'];  % The radix for data values
fprintf(fid,'%s\n',line);
line = ['CONTENT'];  
fprintf(fid,'%s\n',line);
line = ['BEGIN'];  
fprintf(fid,'%s\n',line);  % start of (address : data pairs)
%------------------------------------
% Write Memory Data
%------------------------------------
Ndata = length(meminit);
for data_count = 1:Ndata
    c = meminit(data_count);
    line = [num2str(data_count-1) ' : ' c.hex ';   -- ' num2str(data_count-1) ' : ' [char(c)] ];
    fprintf(fid,'%s\n',line);
end
%------------------------------------
% Write File End
%------------------------------------
line = ['END;'];  
fprintf(fid,'%s\n',line);  % start of (address : data pairs)
%------------------------------------
% Close File
%------------------------------------
fclose(fid);






    