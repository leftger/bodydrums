`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2015 01:11:03 AM
// Design Name: 
// Module Name: circle
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


module circle
	#(parameter RADIUS = 10,
				COLOR = 24'hFF_FF_FF)
	(input clk,
    input [10:0] x,
    input [10:0] hcount,
    input [9:0] y,
    input [9:0] vcount,
    output reg [23:0] pixel
    );

	reg [10:0] radiussquared;
	reg [10:0] deltax;
	reg [9:0] deltay;
	reg [15:0] deltaxsquared;
	reg [14:0] deltaysquared;

	initial begin
		radiussquared = RADIUS * RADIUS; // RADIUS is a parameter
		deltax = 0;
		deltay = 0;
		pixel = 0;
	end

	always @ (posedge clk) begin // generate round puck
		// compute x-xcenter and y-ycenter
		deltax <= (hcount > (x+RADIUS)) ? (hcount-(x+RADIUS)) : ((x+RADIUS)-hcount);
		deltay <= (vcount > (y+RADIUS)) ? (vcount-(y+RADIUS)) : ((y+RADIUS)-vcount);
		deltaxsquared <= deltax * deltax;
		deltaysquared <= deltay * deltay;
		// check if distance is less than radius squared
		if(deltaxsquared+deltaysquared <= radiussquared)
			pixel <= COLOR;
		else pixel <= 0;
	end

endmodule
