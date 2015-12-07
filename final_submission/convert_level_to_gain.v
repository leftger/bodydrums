`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2015 09:47:22 PM
// Design Name: 
// Module Name: convert_level_to_gain
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module convert_level_to_gain
    (input clock,
    input reset,
    input start,
    input reg [8:0] input_level,
    output reg output_gain);
    
    always @(posedge clock) begin
       if (reset) begin
       
       end
       
       case (input_level)
       
       
       
       endcase
    end
endmodule
