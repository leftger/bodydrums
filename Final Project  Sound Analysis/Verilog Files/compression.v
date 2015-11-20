`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:06 11/15/2015 
// Design Name: 
// Module Name:    compression 
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
module compression #(parameter SAMPLING_RATE=24000)
    (input wire clock,reset,ready,
    input wire signed [11:0] incoming_sample,
    input [1:0] compression_amount,
    output reg signed [11:0] modified_sample
    );
    
    reg signed [11:0] last_output_sample=12'h000;
    
    reg signed [11:0] current_sample;
    
    
    
    
    
    always @(posedge clock) begin
       current_sample <= incoming_sample;
       if (ready || reset) begin
          
          
          
          
          
       end       
    end
    
    
    
    

endmodule
