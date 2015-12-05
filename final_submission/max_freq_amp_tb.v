`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:38:27 12/03/2015
// Design Name:   max_freq_amp
// Module Name:   /afs/athena.mit.edu/user/g/r/grosas/6.111/Final_Project/bodydrums/meshed_fp/max_freq_amp_tb.v
// Project Name:  meshed_fp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: max_freq_amp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module max_freq_amp_tb;

	// Inputs
	reg [10:0] hcount;
	reg [9:0] amplitude;

	// Outputs
	wire [12:0] max_freq;
	wire [9:0] max_amp;

	// Instantiate the Unit Under Test (UUT)
	max_freq_amp uut (
		.hcount(hcount), 
		.amplitude(amplitude), 
		.max_freq(max_freq), 
		.max_amp(max_amp)
	);

	initial begin
		// Initialize Inputs
		hcount = 0;
		amplitude = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

