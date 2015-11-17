`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:29 11/15/2015 
// Design Name: 
// Module Name:    hud_blob 
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
module hud_blob
	#(parameter WIDTH = 512, HEIGHT = 240)
	(input pixel_clk,
    input [10:0] x,hcount,
	 input [9:0] y,vcount,
	 output reg [23:0] pixel);
	 
	 wire [16:0] image_addr;
	 wire [1:0] image_bits;
	 wire [7:0] red_mapped;
	 
	 
	 always@ (posedge pixel_clk) begin
		if ((hcount >= x && hcount < (x+WIDTH)) &&
			(vcount >= y && vcount < (y+HEIGHT)))
			pixel <= {red_mapped, 8'b0, 8'b0};
		else pixel <= 0;
	 end
	 
	 // calculate rom address and read the location
	 assign image_addr = (hcount-x) + (vcount-y) * WIDTH;
	 
	 hud_img rom2(.clka(pixel_clk), .addra(image_addr),
		.douta(image_bits));
		
		// use color map to create 8bits R, 8bits G, 8 bits B;
	red_hud rcm (.clka(pixel_clk), .addra(image_bits), .douta(red_mapped));

endmodule
