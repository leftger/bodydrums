`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:59 11/30/2015 
// Design Name: 
// Module Name:    compression_level_detector 
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
module compression_level_detector #(parameter ATTACK_TIME_CONSTANT=9'd495, 
    RELEASE_TIME_CONSTANT=9'd495, THRESHOLD=18, MAKE_UP_GAIN=12)
    (input clock,
    input reset,
    input start,
    input signed [8:0] input_level,
    output reg signed [8:0] output_gain,
    output reg done);
    
    reg signed [8:0] stored_db;
    
    // States
    reg [1:0] state;
    parameter IDLE=2'b00;
    parameter DECIDE=2'b01;
    parameter OUTPUT=2'b10;
    
    // Calculate the complementary time constants for the Level Detector
    parameter COMPLEMENTARY_ATTACK_TIME_CONSTANT=(9'd512 - ATTACK_TIME_CONSTANT);
    parameter COMPLEMENTARY_RELEASE_TIME_CONSTANT=(9'd512 - RELEASE_TIME_CONSTANT);
    
    // Registers to hold temporary calculated values
    reg signed [8:0] last_output_gain;
    reg signed [8:0] modified_input_level;
    reg signed [17:0] part_of_output;
    reg signed [17:0] other_part_of_output;
    reg signed [17:0] combined_output;
    
    // The attack time constant and release time constants are out of 512;
    // A time constant of 0.998, for example, is signified by
    // ATTACK_TIME_CONSTANT = 1022
    always @(posedge clock) begin
       if (reset) begin
          last_output_gain <= 9'b0;
          modified_input_level <= 9'b0;
          part_of_output <= 9'b0;
          other_part_of_output <= 9'b0;
          combined_output <= 18'b0;
          state <= IDLE;
       end
       
       case (state)
       IDLE: begin
          done <= 1'b0;
          if (start) begin
             modified_input_level <= input_level;
             state <= DECIDE;
          end
       end
       
       DECIDE: begin
          if (modified_input_level <= last_output_gain) begin
             part_of_output <= ATTACK_TIME_CONSTANT * last_output_gain;
             other_part_of_output <= COMPLEMENTARY_ATTACK_TIME_CONSTANT * modified_input_level;
          end
          else if (modified_input_level > last_output_gain) begin
             part_of_output <= RELEASE_TIME_CONSTANT * last_output_gain;
             other_part_of_output <= COMPLEMENTARY_RELEASE_TIME_CONSTANT * modified_input_level;
          end
          state <= OUTPUT;
       end
       
       OUTPUT: begin
          combined_output <= (part_of_output + other_part_of_output);
          last_output_gain <= combined_output[17:9];
          output_gain <= combined_output[17:9];
          state <= IDLE;
          done <= 1'b1;
       end
       
       default: begin
          done <= 1'b0;
          if (start) begin
             modified_input_level <= input_level;
             state <= DECIDE;
          end
       end
       
       endcase
       //case (limiter)
       
       //LIMITER: begin
       
       //end
       
       //COMPRESSOR: begin
       
       //end
       
       
       //endcase
    
    end
endmodule
