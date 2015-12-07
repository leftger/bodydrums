`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:04 11/30/2015 
// Design Name: 
// Module Name:    compression_gain_computer 
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
module compression_gain_computer #(parameter THRESHOLD=18)
    (input clock,
    input reset,
    input start,
    input [1:0] compression_amount,
    input signed [8:0] input_db,
    output reg signed [8:0] output_db,
    output reg signed [8:0] output_level,
    output reg done);
    
    reg [1:0] state;
    reg [8:0] threshold_amount;
    reg signed [10:0] modified_db;
    
    reg [8:0] calculate_threshold_gain;
    
    parameter IDLE=2'b00;
    parameter INPUT_LESS_THAN_THRESHOLD=2'b01;
    parameter INPUT_GREATER_THAN_THRESHOLD=2'b10;
    parameter COMPUTE_LEVEL=2'b11;
    
    
    parameter LIMITER=1'b1;
    parameter COMPRESSOR=1'b0;
    
    
    always @(posedge clock) begin
       
       if (reset) begin 
          state <= IDLE;
          threshold_amount <= (THRESHOLD << compression_amount);
          output_db <= 9'h000;
          done <= 1'b0;
       end
       
       case (state)
       
       IDLE: begin
          done <= 1'b0;
          if (start) begin
             if (input_db >= THRESHOLD) state <= INPUT_LESS_THAN_THRESHOLD;     
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 calculate_threshold_gain <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD;
             end
          end
       end
       
       INPUT_LESS_THAN_THRESHOLD: begin
          output_db <= input_db;
          state <= COMPUTE_LEVEL;
       end
       
       INPUT_GREATER_THAN_THRESHOLD: begin
          output_db <= calculate_threshold_gain >> compression_amount;
          state <= COMPUTE_LEVEL;
       end
       
       COMPUTE_LEVEL: begin
          output_level <= input_db - output_db;
          done <= 1'b1;
          state <= IDLE;
       end
       
       default: begin
          if (start) begin
             done <= 1'b0;
             if (input_db >= THRESHOLD) state <= INPUT_LESS_THAN_THRESHOLD;
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 output_db <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD;
             end
          end
       end
       
       endcase
       
      
    end

endmodule
