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
    input clk,
	 input write,
	 input [3:0] num,
	 input [3:0] blob,
    input [10:0] hcount,
    input [9:0] vcount,
    output [23:0] pixel
    );
	 wire [10:0] image_addr[13:0];
	 reg [3:0] number [13:0];
	 wire [13:0] overlap;
	 
	 genvar i;
	 // generate the digit sprites/blobs
	 generate
		 for ( i = 0; i < 14; i = i+1 ) begin : ripple
			 digit_blob un_blob(.x(i*25),.hcount(hcount), .y(767-52),
				 .vcount(vcount),.image_addr(image_addr[i]),
				 .overlap(overlap[i]));
		 end
	 endgenerate
	 
	 // write specified digit to sprite for display
	 
	 always @(posedge clk) begin
		if(write) begin
			case(blob)
				0 : number[0] <= num;
				1 : number[1] <= num;
				2 : number[2] <= num;
				3 : number[3] <= num;
				4 : number[4] <= num;
				5 : number[5] <= num;
				6 : number[6] <= num;
				7 : number[7] <= num;
				8 : number[8] <= num;
				9 : number[9] <= num;
				10 : number[10] <= num;
				11 : number[11] <= num;
				12 : number[12] <= num;
				13 : number[13] <= num;
				default: number[0] <= number[0];
			endcase
		end
	 end
 
	 wire [3:0] selected_sprite;
	 reg [10:0] address_out;
	 reg [3:0] num_sel_out;
	 
	 // selects the sprite to pull the address from depending
	 // if the hcount and vcount overlap with the sprite's location
	 sprite_img_selector the_sel(.clk(clk),.sprites(overlap),.selected(selected_sprite));

	 
	 always @(posedge clk) begin
		case(selected_sprite)
				1 : begin address_out <= image_addr[0];
					num_sel_out <= number[0]; end
				2 : begin address_out <= image_addr[1];
					num_sel_out <= number[1]; end
				3 : begin address_out<= image_addr[2];
					num_sel_out<= number[2]; end
				4 : begin address_out<= image_addr[3];
					num_sel_out<= number[3]; end
				5 : begin address_out<= image_addr[4];
					num_sel_out<= number[4]; end
				6 : begin address_out<= image_addr[5];
					num_sel_out<= number[5]; end
				7 : begin address_out<= image_addr[6];
					num_sel_out<= number[6]; end
				8 : begin address_out<= image_addr[7];
					num_sel_out <=number[7]; end
				9 : begin address_out <=image_addr[8];
					num_sel_out<= number[8]; end
				10 : begin address_out<= image_addr[9];
					num_sel_out<= number[9]; end
				11 : begin address_out<= image_addr[10];
					num_sel_out<= number[10]; end
				12 : begin address_out<= image_addr[11];
					num_sel_out<= number[11]; end
				13 : begin address_out <=image_addr[12];
					num_sel_out<= number[12]; end
				14 : begin address_out <=image_addr[13];
					num_sel_out <=number[13]; end
			default : begin address_out<= 0;
				num_sel_out<= 0; end
		endcase
	 end

	 wire [7:0] red_pixel;
	 
	 assign pixel = {red_pixel,8'b0, 8'b0};
	 
	 // selects which digit to pull from memory to display on the screen
	 // then pulls the pixel out from the color map and pushes it out to
	 // the VGA bus
	 digit_selector the_dig (.address(address_out),.num_sel(num_sel_out),
		.clk(clk),.red_pixel(red_pixel));
	 
endmodule
