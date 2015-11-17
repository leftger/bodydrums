`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:22 11/17/2015 
// Design Name: 
// Module Name:    hud_digits 
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
module hud_digits(
    input [10:0] clk,
    input [9:0] hcount,
    input vcount,
    output [23:0] pixel
    );
	 wire [10:0] image_addr[13:0];
	 reg [3:0] number [13:0];
	 wire [13:0] overlap;
	 wire [13:0] write_num;
	 wire [3:0] out_num [13:0];
	 
	 genvar i;
	 generate
		 for ( i = 0; i < 13; i = i+1 ) begin : ripple
			 digit_blob un_blob(.x(i*25),.hcount(hcount), .y(767-52),
				 .vcount(vcount),.image_addr(image_addr[i]),
				 .overlap(overlap[i]),.write_num(write_num[i]),
				 .out_num(out_num[i]),.number(number[i]));
		 end
	 endgenerate
	 
	 wire [3:0] selected_sprite;
	 wire [10:0] address_out;
	 wire [3:0] num_sel_out;
	 
	 wire [7:0] red_pixel;
	 
	 assign pixel = {red_pixel,8'b0, 8'b0};
	 
	 digit_selector the_dig (.address(address_out),.num_sel(num_sel_out),
		.clk(clk),.red_pixel(red_pixel));
	 

	 
	 // selects the sprite to pull the address from depending
	 // if the hcount and vcount overlap with the sprite's location
	 sprite_img_selector the_sel(.sprites(overlap),.selected(selected_sprite));



endmodule
