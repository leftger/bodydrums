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
module compression_gain_computer #(parameter COMPRESSION_RATIO=5, THRESHOLD=20,
    THRESHOLD_TIMES_4=80)
    (input clock,
    input reset,
    input start,
    input [1:0] compression_amount,
    input signed [8:0] input_db,
    output reg signed [8:0] output_gain,
    output reg done);
    
    reg [1:0] state;
    reg [8:0] threshold_amount;
    reg signed [10:0] modified_db;
    
    parameter IDLE=2'b00;
    parameter INPUT_LESS_THAN_THRESHOLD=2'b01;
    parameter INPUT_GREATER_THAN_THRESHOLD=2'b10;    
    
    parameter MAKE_UP_GAIN=10;
    
    always @(posedge clock) begin
       
       if (reset) begin 
          state <= 2'00;
          threshold_amount <= (THRESHOLD << compression_amount);
       end
       
       case (state)
       
       IDLE: begin
          if (start) begin
             done <= 1'b0;
             if (input_db >= threshold_amount) state <= INPUT_LESS_THAN_THRESHOLD;     
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 output_gain <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD;
             end
             
          end
       end
       
       OUTPUT_LESS_THAN_THRESHOLD: begin
          output_gain <= input_db;
          done <= 1'b1;
          state <= IDLE;
       end
       
       OUTPUT_GREATER_THAN_THRESHOLD: begin
          output_gain <= output_gain >> compression_amount;
          done <= 1'b1;
          state <= IDLE;
       end
       
       
       default: begin
          if (reset || start) begin
             done <= 1'b0;
             if (input_db >= THRESHOLD) state <= INPUT_LESS_THAN_THRESHOLD;
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 output_gain <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD
             end
          end
       end
       
       endcase
    end

endmodule
