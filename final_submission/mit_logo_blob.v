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

	initial begin
		overlap = 0;
	end
	 
	 always@ (posedge pixel_clk) begin
		if ((hcount >= x && hcount < (x+WIDTH)) &&
			(vcount >= y && vcount < (y+HEIGHT)))
			 pixel <= {red_mapped, green_mapped, blue_mapped};
 		else pixel = 0;
	 end
	 
	 // calculate rom address and read the location
	 assign image_addr = (hcount-x) + (vcount-y) * WIDTH;


	 mit_logo_rom rom1(image_addr, pixel_clk, image_bits);
	 // use color map to create 8bits R, 8bits G, 8 bits B;
	 mit_logo_red rcm (image_bits, pixel_clk, red_mapped);
	 mit_logo_green gcm (image_bits, pixel_clk, green_mapped);
	 mit_logo_blue bcm (image_bits, pixel_clk, blue_mapped);

endmodule
