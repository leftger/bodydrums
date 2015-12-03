module max_freq_amp (
	input [10:0] hcount,
	input [9:0] amplitude,
	output reg [12:0] max_freq,
	output reg [9:0] max_amp
	);
	
	wire [11:0] freq;
	assign freq = 3 * hcount;
	
	if(hcount == 0) begin
		max_freq <= 4*hcount;
		max_amp <= amplitude;
	end else if(amplitude[9:0] > max_amp) begin
		max_freq <= 4*hcount;
		max_amp <= amplitude;
	end

endmodule
