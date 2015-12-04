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
module compression_level_detector #(parameter ATTACK_TIME_CONSTANT=1022, 
    RELEASE_TIME_CONSTANT=1022, THRESHOLD=20, MAKE_UP_GAIN=10)
    (input clock,
    input reset,
    input start,
    input signed [8:0] input_db,
    input signed [8:0] stored_db,
    output reg signed [8:0] output_level,
    output reg done);
    
    // States
    reg [1:0] state;
    parameter IDLE=2'b00;
    parameter DECIDE=2'b01;
    parameter OUTPUT=2'b10;
    
    // Calculate the complementary time constants for the Level Detector
    parameter OTHER_ATTACK_TIME_CONSTANT=(1024 - ATTACK_TIME_CONSTANT);
    parameter OTHER_RELEASE_TIME_CONSTANT=(1024 - RELEASE_TIME_CONSTANT);
    
    // Registers to hold temporary calculated values
    reg signed [18:0] last_output_db;
    reg signed [18:0] modified_input_db;
    reg signed [36:0] part_of_output;
    reg signed [36:0] other_part_of_output;
    reg signed [36:0] combined_output;
    
    // The attack time constant and release time constants are out of 1024;
    // A time constant of 0.998, for example, is signified by
    // ATTACK_TIME_CONSTANT = 1022
    always @(posedge clock) begin
       if (reset) begin
          last_output_db <= 19'b0;
          modified_input_db <= 19'b0;
          part_of_output <= 19'b0;
          other_part_of_output <= 19'b0;
          combined_output <= 36'b0;
          state <= IDLE;
       end
       
       case (state)
       IDLE: begin
          if (start) begin
             modified_input_db <= input_db << 10;
             done <= 1'b0;
             state <= DECIDE;
          end
       end
       
       DECIDE: begin
          if (modified_input_db > last_output_db) begin
             part_of_output <= ATTACK_TIME_CONSTANT * last_output_db;
             other_part_of_output <= OTHER_ATTACK_TIME_CONSTANT * modified_input_db;
          end
          else if (modified_input_db <= last_output_db) begin
             part_of_output <= RELEASE_TIME_CONSTANT * last_output_db;
             other_part_of_output <= OTHER_RELEASE_TIME_CONSTANT * modified_input_db;
          end
          state <= OUTPUT;
       end
       
       OUTPUT: begin
          combined_output <= (part_of_output + other_part_of_output);
          last_output_db <= combined_output[36:19];
          output_level <= combined_output[36:28];
          state <= IDLE;
          done <= 1'b1;
       end
       
       default: begin
          if (start) begin
             modified_input_db <= input_db << 10;
             done <= 1'b0;
             state <= DECIDE;
          end
       end
       
       endcase
       
    
    end
endmodule
