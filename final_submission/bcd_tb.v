`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:31:25 12/05/2015
// Design Name:   bcd
// Module Name:   /afs/athena.mit.edu/user/g/r/grosas/6.111/Final_Project/bodydrums/meshed_fp/bcd_tb.v
// Project Name:  meshed_fp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_tb;

	// Inputs
	reg [12:0] binary;

	// Outputs
	wire [3:0] thousands;
	wire [3:0] hundreds;
	wire [3:0] tens;
	wire [3:0] ones;

	// Instantiate the Unit Under Test (UUT)
	bcd uut (
		.binary(binary), 
		.thousands(thousands), 
		.hundreds(hundreds), 
		.tens(tens), 
		.ones(ones)
	);
	integer i;

	initial begin
		// Initialize Inputs
		binary = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i = 0; i < 9999; i=i+1)begin
			#10 binary = i;
		end
		
		#10 $finish;
	end
      
endmodule

