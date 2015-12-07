

////////////////////////////////////////////////////////////////////////////////
//
// hud_display: display the statistics on the screen!!!
//
////////////////////////////////////////////////////////////////////////////////

module hud_display (
   input vclock,	// 65MHz clock
   input reset,		// 1 to initialize module
	input write,
	input [3:0] num,
	input [3:0] blob,
   input [10:0] hcount,	// horizontal index of current pixel (0..1023)
   input [9:0] 	vcount, // vertical index of current pixel (0..767)
   output [23:0] hud_pixel	// pong game's pixel  // r=23:16, g=15:8, b=7:0
   );
	
	wire [23:0] hud_img_pixel;
	
	hud_blob thehud
	(.pixel_clk(vclock),.x(512),.hcount(hcount),.y(0),.vcount(vcount),
	.pixel(hud_img_pixel));
	
	wire [23:0] digit_pixel;

	 hud_digits ma_digs(.clk(vclock),.write(write),.num(num),
		.blob(blob),.hcount(hcount),.vcount(vcount),.pixel(digit_pixel));
	
	assign hud_pixel = hud_img_pixel | digit_pixel;
endmodule
