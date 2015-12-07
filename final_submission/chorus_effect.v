`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:17 12/07/2015 
// Design Name: 
// Module Name:    chorus_effect 
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
module chorus_effect
    (input clock,
    input reset,
    input start,
    input enable,
    input signed [11:0] incoming_sample,
    output signed [11:0] modified_sample,
    output done);
    
    
    // The Chorus effect is achieved by concatenating 4 echo modules,
    // each of which having a different delay_amount.
    
    
    // 30 ms delay
    wire signed [11:0] delay_sample_1;
    wire delay_1_done;
    delay_module delay_1(.clock(clock), .reset(reset), .start(start),
        .incoming_sample(incoming_sample), .delay_amount(5'b00011),
        .enable(enable), .modified_sample(delay_sample_1),
        .done(delay_1_done));
    
    
    
    // 70 ms delay
    wire signed [11:0] delay_sample_2;
    wire delay_2_done;
    delay_module delay_2(.clock(clock), .reset(reset), .start(delay_1_done),
        .incoming_sample(delay_sample_1), .delay_amount(5'b00111),
        .enable(enable), .modified_sample(delay_sample_2),
        .done(delay_2_done));
    
    
    // 150 ms delay
    wire signed [11:0] delay_sample_3;
    wire delay_3_done;
    delay_module delay_3(.clock(clock), .reset(reset), .start(delay_2_done),
        .incoming_sample(delay_sample_2), .delay_amount(5'b01111),
        .enable(enable), .modified_sample(delay_sample_3),
        .done(delay_3_done));
    
    
    // 310 ms delay
    delay_module delay_4(.clock(clock), .reset(reset), .start(delay_3_done),
        .incoming_sample(delay_sample_3), .delay_amount(5'b11111),
        .enable(enable), .modified_sample(modified_sample),
        .done(done));
    

endmodule
