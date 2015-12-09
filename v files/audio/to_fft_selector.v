`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// to_fft_selector Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module to_fft_selector #(parameter PLAYBACK = 1'b1,
	parameter RECORD = 1'b0)(
	input [11:0] from_fir_germain,
	input [11:0] from_ac97_audio,
	input [1:0] input_mode,
	output reg [11:0] to_fft);

	always @(input_mode) begin
		case(input_mode)
			1:

	end

endmodule
