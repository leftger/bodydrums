`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2015 01:11:03 AM
// Design Name: 
// Module Name: rectangle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rectangle
    #( parameter WIDTH = 64,
    			 HEIGHT = 64,
    			 COLOR = 24'hFF_FF_FF)
    (input [10:0] x,
    input [10:0] hcount,
    input [9:0] y,
    input [9:0] vcount,
    output reg [23:0] pixel
    );

    always @ * begin
    	if((hcount >= x && hcount < (x + WIDTH)) &&
    		(vcount >= y && vcount < (y+HEIGHT)))
    		pixel = COLOR;
    	else pixel = 0;
    end

endmodule
