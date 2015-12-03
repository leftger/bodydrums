`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:54 11/16/2015 
// Design Name: 
// Module Name:    digit_selector 
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
module digit_selector(
    input [10:0] address,
    input [3:0] num_sel,
    input clk,
    output [7:0] red_pixel
    );
	 
	 wire [1:0] zeroes, ones, twos, threes, fours, fives, sixes,
		sevens, eights, nines;
	 reg [1:0]to_color_map;
		
	 zero_img img_cero(.clka(clk),.addra(address),.douta(zeroes));
	 one_img img_uno(.clka(clk),.addra(address),.douta(ones));
	 two_img img_dos(.clka(clk),.addra(address),.douta(twos));
	 three_img img_tres(.clka(clk),.addra(address),.douta(threes));
	 four_img img_cuatro(.clka(clk),.addra(address),.douta(fours));
	 five_img img_cinco(.clka(clk),.addra(address),.douta(fives));
	 six_img img_seis(.clka(clk),.addra(address),.douta(sixes));
	 seven_img img_siete(.clka(clk),.addra(address),.douta(sevens));
	 eight_img img_ocho(.clka(clk),.addra(address),.douta(eights));
	 nine_img img_nueve(.clka(clk),.addra(address),.douta(nines));
	 
	 always @(posedge clk) begin
		case (num_sel)
			0: to_color_map <= zeroes;
			1: to_color_map <= ones;
			2: to_color_map <= twos;
			3: to_color_map <= threes;
			4: to_color_map <= fours;
			5: to_color_map <= fives;
			6: to_color_map <= sixes;
			7: to_color_map <= sevens;
			8: to_color_map <= eights;
			9: to_color_map <= nines;
			default: to_color_map <= 2'b00;
		endcase
	 end
	 
	 red_hud digit_map(.clka(clk),.addra(to_color_map),.douta(red_pixel));
	 
endmodule
