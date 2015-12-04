`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:15 12/02/2015 
// Design Name: 
// Module Name:    test_gain_calculator 
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
module test_gain_calculator();
   reg clk,reset,ready;	// fir31 signals
   reg signed [11:0] x;
   wire signed [11:0] y;
   reg [20:0] scount;     // keep track of which sample we're at
   reg [5:0] cycle;      // wait 64 clocks between samples
   integer fin,fout,code; 
   wire done;   
   reg [1:0] limiter_setting=2'b01;
   
   
   // Shamelessly stealing code from lab 5 to test the gain calculator functions
   // (making sure it performs EXACTLY how we expect them to)
   
   
   
   
   


endmodule
