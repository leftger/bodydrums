`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:02:53 11/29/2015
// Design Name:   hud_digits
// Module Name:   /afs/athena.mit.edu/user/g/r/grosas/6.111/Final_Project/bodydrums/bodydrums/hud_digits_tb.v
// Project Name:  bodydrums
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hud_digits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hud_digits_tb;

	// Inputs
	reg clk;
	reg write;
	reg [3:0] num;
	reg [3:0] blob;
	reg [10:0] hcount;
	reg [9:0] vcount;

	// Outputs
	wire [23:0] pixel;

	// Instantiate the Unit Under Test (UUT)
	hud_digits uut (
		.clk(clk), 
		.write(write), 
		.num(num), 
		.blob(blob), 
		.hcount(hcount), 
		.vcount(vcount), 
		.pixel(pixel)
	);
	
	integer i, j;
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		num = 0;
		blob = 0;
		hcount = 0;
		vcount = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i = 0; i < 1024; i=i+1)begin
		// at each clock, left shift the data
		// note syntax for test bench "for" loop - no "always"
		// note the blcokign assignment (immediate)
			for(j = 0; j < 768; j=j+1) begin
				@(posedge clk) begin
					#10 vcount = j; hcount = i;
				end
			end
		end
			
		#10 $finish;
	end
	
	
	
endmodule

