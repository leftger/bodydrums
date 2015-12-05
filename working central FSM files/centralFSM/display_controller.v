`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:07 12/02/2015 
// Design Name: 
// Module Name:    display_controller 
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
module display_controller(
    input reset,
    input clk,
    input [63:0] display_data,
    input [16:0] blink_data,
    input [16:0] blank_data,
    output [63:0] my_hex_data,
    );

   always @(posedge clk) begin
   end
endmodule
