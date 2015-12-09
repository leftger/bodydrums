///////////////////////////////////////////////////////////////////////////////
//
// max_freq_amp Module
//
///////////////////////////////////////////////////////////////////////////////


module max_freq_amp #(parameter WIDTH = 1024)
	( input [10:0] hcount,
	input [9:0] amplitude,
	output reg [12:0] max_freq,
	output reg [9:0] max_amp
	);
	
	wire [11:0] freq;
	assign freq = 3 * hcount;
	
	always @(*) begin
		if(hcount == 0) begin
			max_freq <= freq;
			max_amp <= amplitude;
		end else if(amplitude > max_amp && hcount < WIDTH) begin
			max_freq <= freq;
			max_amp <= amplitude;
		end
	end

endmodule
