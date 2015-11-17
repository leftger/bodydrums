for K = 0:9

%Because the image we gave matlab above specifies only one value per pixel
%rather than usual three (red,blue,green), MATLAB colors each pixel from
%blue to red based on the value at that pixel.

% Getting 8 bit data
%When you store an 8 bit bitmap, things get a little more complicated.  Now
%each pixel in the image only gets one 8 bit value.  But, you need to send
%the monitor an r,g, and b!  How can this work?
%
%8 bit bitmaps include a table which specifies the rgb values for each of
%the 8 bits in the image.
%
%So each pixel is represented by one byte, and that byte is an index into a
%table where each index specifies an r, g, and b value separately.
%
%Because of this, now we need to load both the image and it's colormap.
outputString = sprintf('%d',K)
[picture color_table] = imread(strcat(outputString,'.bmp'));


%Note that this doesn't fix the indexing (and it can't, since MATLAB won't
%let you have indexes below 1)

%another way to look at the color table is like this (don't worry about how
%to make this graph)


% Turning a 2D image into a 1D memory array
%The code above is all well and good for the color table, since it's 1-D
%(well, at least you can break it into 3 1-D arrays).  But what about a 2D
%array?  We need to turn it into a 1-D array:

picture_size = size(picture);       %figure out how big the image is
num_rows = picture_size(1);
num_columns = picture_size(2);

pixel_columns = zeros(picture_size(1)*picture_size(2),1,'uint8');  %pre-allocate a space for a new column vector

for r = 1:num_rows
    for c = 1:num_columns
        pixel_columns((r-1)*num_columns+c) = picture(r,c);    %pixel# = (y*numColumns)+x
    end
end



%You can instantiate BRAMs to take their values from a file you feed them
%when you flash the FPGA.  You can use this technique to send them
%colortables, image data, anything.  Here's how to send the red component
%of the color table of the last example

data = dec2bin(pixel_columns,2);     %convert the binary data to 6 bit binary #s

%open a file
output_name = strcat(outputString,'_image.coe');
file = fopen(output_name,'w');

%write the header info
fprintf(file,'memory_initialization_radix=2;\n');
fprintf(file,'memory_initialization_vector=\n');
fclose(file);

%put commas in the data
rowxcolumn = size(data);
rows = rowxcolumn(1);
columns = rowxcolumn(2);
output = data;
for i = 1:(rows-1)
    output(i,(columns+1)) = ',';
end
output(rows,(columns+1)) = ';';

%append the numeric values to the file
dlmwrite(output_name,output,'-append','delimiter','', 'newline', 'pc');

%You're done!
end