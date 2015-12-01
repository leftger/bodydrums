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
    (input wire clock, reset, start,
    input wire signed [11:0] incoming_sample,
    input [1:0] compression_amount,
    output reg signed [11:0] modified_sample);
    
    reg signed [11:0] last_output_sample=12'h000;
    
    reg signed [11:0] current_sample;
    
    reg signed [8:0] sample_db;
    
    
    reg [1:0] state;
    
    reg db_convert_done;
    signed_binary_12bit_to_dB converter(.clock(clock), .reset(reset),
        .start(start), .input_binary(incoming_sample), .output_db(sample_db),
        .done(db_convert_done));
        
    
    reg gain_computer_done;
    reg [8:0] computed_gain;
    compression_gain_computer gain_computer(.clock(clock), .reset(reset),
        .start(db_convert_done), .compression_amount(compression_amount),
        .input_db(sample_db),.output_gain(computed_gain), 
        .done(gain_computer_done));
        
    reg [8:0] calculated_level_db;
    reg level_detector_done;
    
    
    
    
    always @(posedge clock) begin
       current_sample <= incoming_sample;
       if (ready) begin
          
          
          
          
          
          
       end       
    end
    
    
    
    

endmodule
