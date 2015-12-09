`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// compression_level_detector Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module compression_level_detector
    (input clock,
    input reset,
    input start,
    input signed [8:0] input_level,
    input soft_limiter,
    output reg signed [8:0] output_gain,
    output reg done);
    
    // States
    reg [1:0] state;
    parameter IDLE=2'b00;
    parameter DECIDE=2'b01;
    parameter OUTPUT=2'b10;
    
	// This module takes the input_level, which is calculated by compression_gain_computer
	// and puts it through a branching peak detector. When the dB value hits a peak past
	// the threshold after a long period of low amplitude, the level_detector sees 
	// this and adjusts the output gain accordingly so the output signal doesn't have 
	// discontinuities. This is called the "attack". The same scenario applies when 
	// the dB value hits a low point; this is called the "release".
	
    // Registers to hold temporary calculated values
    reg signed [8:0] last_output_gain;
    reg signed [8:0] modified_input_level;
    reg signed [18:0] part_of_output;
    reg signed [18:0] other_part_of_output;
    reg signed [18:0] combined_output;
    
    // Registers to hold attack and release time constants
    reg signed [9:0] attack_time_constant=10'd511;
    reg signed [9:0] release_time_constant=10'd511;
    
    // Register to hold the make-up gain
    reg signed [8:0] make_up_gain=9'd12;
    
    // The attack time constant and release time constants are out of 512;
    // A time constant of 0.998, for example, is signified by
    // ATTACK_TIME_CONSTANT = 510
    always @(posedge clock) begin
       if (reset) begin
          last_output_gain <= 9'b0;
          modified_input_level <= 9'b0;
          part_of_output <= 9'b0;
          other_part_of_output <= 9'b0;
          combined_output <= 19'b0;
          state <= IDLE;
       end
       
       case (state)
       
       // Don't do anything until we receive a new input from the last stage;
       // Waste a clock cycle by saving the input_level.
       IDLE: begin
          done <= 1'b0;
          if (start) begin
             modified_input_level <= input_level;
             state <= DECIDE;
          end
       end
       
       // Now we decide whether this is a peak or not, and adjust the compression
       // gain accordingly. If this is going to be a peak, slowly adjust the gain
       // over the course of the release time constant.
       // If this is not a peak, smooth out the gain level instead over the course of the
       // release time constant.
       DECIDE: begin
          if (modified_input_level > last_output_gain) begin
             part_of_output <= attack_time_constant * last_output_gain;
             other_part_of_output <= (10'sd512 - attack_time_constant) * modified_input_level;
          end
          else if (modified_input_level <= last_output_gain) begin
             part_of_output <= release_time_constant * last_output_gain;
             other_part_of_output <= (10'sd512 - release_time_constant) * modified_input_level;
          end
          state <= OUTPUT;
       end
       
       // Output the calculated level (this will be your actual gain that you apply)
       // The soft_limiter switch determines whether or not we use make-up gain.
       
       OUTPUT: begin
          combined_output <= (part_of_output + other_part_of_output);
          last_output_gain <= combined_output[18:10];
          
          if (soft_limiter) begin
             output_gain <= -combined_output[18:10];
          end
          
          else  begin
             output_gain <= (make_up_gain - combined_output[18:10]);
          end
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
    end
endmodule
