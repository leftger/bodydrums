
///////////////////////////////////////////////////////////////////////////////
//
// mit_logo_blob Module
//
///////////////////////////////////////////////////////////////////////////////

module mit_logo_blob
	#(parameter WIDTH = 110, HEIGHT = 59)
	(input pixel_clk,
	input [10:0] x,hcount,
	input [9:0] y,vcount,
	output reg [23:0] pixel
	);
	
	wire [12:0] image_addr;
	wire [7:0] red_mapped, green_mapped, blue_mapped;
	wire [1:0] image_bits;


	 always@ (posedge pixel_clk) begin
		if ((hcount >= x && hcount < (x+WIDTH)) &&
			(vcount >= y && vcount < (y+HEIGHT)))
			 pixel <= {red_mapped, green_mapped, blue_mapped};
 		else pixel <= 0;
	 end
	 
	 // calculate rom address and read the location
	 assign image_addr = (hcount-x) + (vcount-y) * WIDTH;


	 mit_logo_rom rom1(pixel_clk, image_addr, image_bits);
	 // use color map to create 8bits R, 8bits G, 8 bits B;
	 mit_logo_red rcm (pixel_clk, image_bits, red_mapped);
	 mit_logo_green gcm (pixel_clk, image_bits, green_mapped);
	 mit_logo_blue bcm (pixel_clk, image_bits, blue_mapped);

endmodule
