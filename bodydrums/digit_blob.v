`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:34 11/17/2015 
// Design Name: 
// Module Name:    digit_blob 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module digit_blob
	#(parameter WIDTH = 25, HEIGHT = 52)
	(input pixel_clk,
	input [10:0] x,hcount,
	input [9:0] y,vcount,
	output [10:0] image_addr,
	output reg overlap
	);
	
	initial begin
		overlap = 0;
	end
	 
	 
	 always@ (posedge pixel_clk) begin
		if ((hcount >= x && hcount < (x+WIDTH)) &&
			(vcount >= y && vcount < (y+HEIGHT)))
			overlap <= 1;
		else overlap <= 0;
	 end
	 
	 // calculate rom address and read the location
	 assign image_addr = (hcount-x) + (vcount-y) * WIDTH;

endmodule
