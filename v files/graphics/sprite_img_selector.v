`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// sprite_img_selector Module
//
///////////////////////////////////////////////////////////////////////////////

module sprite_img_selector(
	 input clk,
    input [13:0] sprites,
    output reg [3:0] selected
    );
	 
	 always @(posedge clk) begin
		case(sprites)
			14'b00000000000001 : selected <= 1;
			14'b00000000000010 : selected <= 2;
			14'b00000000000100 : selected <= 3;
			14'b00000000001000 : selected <= 4;
			14'b00000000010000 : selected <= 5;
			14'b00000000100000 : selected <= 6;
			14'b00000001000000 : selected <= 7;
			14'b00000010000000 : selected <= 8;
			14'b00000100000000 : selected <= 9;
			14'b00001000000000 : selected <= 10;
			14'b00010000000000 : selected <= 11;
			14'b00100000000000 : selected <= 12;
			14'b01000000000000 : selected <= 13;
			14'b10000000000000 : selected <= 14;
			default: selected <= 0;
		endcase
	 end
endmodule
