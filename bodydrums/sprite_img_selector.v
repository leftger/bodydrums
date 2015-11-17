`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:01 11/17/2015 
// Design Name: 
// Module Name:    sprite_img_selector 
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
module sprite_img_selector(
    input [13:0] sprites,
    output [3:0] selected
    );
	 
	 always @(*) begin
		case(sprites)
			14'b00000000000001 : selected = 1;
			14'b0000000000001x : selected = 2;
			14'b000000000001xx : selected = 3;
			14'b00000000001xxx : selected = 4;
			14'b0000000001xxxx : selected = 5;
			14'b000000001xxxxx : selected = 6;
			14'b00000001xxxxxx : selected = 7;
			14'b0000001xxxxxxx : selected = 8;
			14'b000001xxxxxxxx : selected = 9;
			14'b00001xxxxxxxxx : selected = 10;
			14'b0001xxxxxxxxxx : selected = 11;
			14'b001xxxxxxxxxxx : selected = 12;
			14'b01xxxxxxxxxxxx : selected = 13;
			14'b1xxxxxxxxxxxxx : selected = 14;
			default: selected = 0;
	 end
endmodule
