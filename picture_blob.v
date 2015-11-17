`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:43 11/11/2015 
// Design Name: 
// Module Name:    picture_blob 
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
module picture_blob
	#(parameter WIDTH = 320, HEIGHT = 240)
	(input pixel_clk,
    input [10:0] x,hcount,
	 input [9:0] y,vcount,
	 output reg [23:0] pixel);
	 
	 wire [16:0] image_addr;
	 wire [5:0] image_bits;
	 wire [7:0] red_mapped, green_mapped, blue_mapped;
	 
	 
	 always@ (posedge pixel_clk) begin
		if ((hcount >= x && hcount < (x+WIDTH)) &&
			(vcount >= y && vcount < (y+HEIGHT)))
			pixel <= {red_mapped, green_mapped, blue_mapped};
		else pixel <= 0;
	 end
	 
	 // calculate rom address and read the location
	 assign image_addr = (hcount-x) + (vcount-y) * WIDTH;
	 
	 image_rom rom1(pixel_clk, image_addr,
		image_bits);
		
		// use color map to create 8bits R, 8bits G, 8 bits B;
	red_table rcm (pixel_clk, image_bits, red_mapped);
	green_table gcm (pixel_clk, image_bits, green_mapped);
	blue_table bcm (pixel_clk, image_bits, blue_mapped);

endmodule

/*////////////////////////////////////////////////////
//
// picture_blob: display a picture
//
//////////////////////////////////////////////////


endmodule
*/
