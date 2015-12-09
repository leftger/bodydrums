`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// compression Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module compression #(parameter SAMPLING_RATE=24000)
    (input clock, 
    input reset, 
    input start,
    input signed [11:0] incoming_sample,
    input [1:0] compression_amount,
    input soft_limiter,
    input enable,
    output reg signed [11:0] modified_sample,
    output reg done);
    
    wire db_convert_done;
    wire signed [8:0] sample_db;
    
    reg start_compression;
    
    wire signed [11:0] outgoing_sample;
    wire compression_done;
    
    // Always check to see if compression is enabled.
    // If it is not enabled, the input samples should be the same
    // as the output samples.
    always @(posedge clock) begin
       if (reset) begin
          start_compression <= 1'b0;
          modified_sample <= 12'h000;
          done <= 1'b0;
          
       end
       
       case (enable)
       1'b0: begin
          start_compression <= 1'b0;
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       
       // If compression is enabled, check to see if the compression
       // amount is not zero. If it is actually a number, we can 
       // start up the compression module and wait until the
       // compression module is finished to output the done signal.
       1'b1: begin
          if (compression_amount == 2'b00) begin
             modified_sample <= incoming_sample;
             start_compression <= 1'b0;
             done <= 1'b1;
          end
          else begin
             start_compression <= 1'b1;
             modified_sample <= outgoing_sample;
             done <= compression_done;
          end
       
       end
       endcase
    end
    
    signed_binary_12bit_to_dB converter(.clock(clock), .reset(reset),
        .start(start_compression), .input_binary(incoming_sample), .output_db(sample_db),
        .done(db_convert_done));
        
    
    wire gain_computer_done;
    wire signed [8:0] computed_db;
    wire signed [8:0] computed_level;
    compression_gain_computer gain_computer(.clock(clock), .reset(reset),
        .start(db_convert_done), .compression_amount(compression_amount),
        .input_db(sample_db), .output_db(computed_db),
        .output_level(computed_level), .done(gain_computer_done));
        
    
    wire level_detector_done;
    wire signed [8:0] calculated_gain;
    compression_level_detector level_detector(.clock(clock), .reset(reset),
        .start(gain_computer_done), .soft_limiter(soft_limiter), 
        .input_level(computed_level), .output_gain(calculated_gain), 
        .done(level_detector_done));
    
    
    
    variable_gain apply_gain(.clock(clock), .reset(reset), .start(level_detector_done), 
       .incoming_sample(incoming_sample), .input_gain(calculated_gain), 
       .compressed_sample(outgoing_sample), .done(compression_done));
   
endmodule
