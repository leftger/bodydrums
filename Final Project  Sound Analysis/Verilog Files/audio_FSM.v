`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:22 12/05/2015 
// Design Name: 
// Module Name:    audio_FSM 
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
module audio_FSM
    (input clock,
    input reset,
    input playback,
    input new_sample_ready,
    input delay_enable,
    input [4:0] amount_of_delay,
    input chorus_enable,
    input compression_enable,
    input [1:0] compression_amount,
    input soft_limiter_enable,
    input hard_limiter_enable,
    input [1:0] hard_limiter_amount,
    input distortion_enable,
    input [2:0] distortion_amount,
    input signed [11:0] samples_in,
    output signed [11:0] to_ac97_data,
    output sample_ready);
    
    reg start_effects_modules;
    
    wire signed [11:0] delay_applied_sample;
    wire delay_done;
    delay_module delay(.clock(clock), .reset(reset), .start(start_effects_modules),
        .incoming_sample(samples_in), .delay_amount(amount_of_delay), 
        .enable(delay_enable), .modified_sample(delay_applied_sample),
        .done(delay_done));
    
    
    wire compression_done;
    wire signed [11:0] compression_applied_sample;
    compression compress(.clock(clock), .reset(reset), .start(delay_done),
        .incoming_sample(delay_applied_sample), 
        .compression_amount(compression_amount), .soft_limiter(soft_limiter_enable),
        .enable(compression_enable), .modified_sample(compression_applied_sample),
        .done(compression_done));
    
    
    wire hard_limiter_done;
    //wire signed [11:0] hard_limiter_applied;
    limiter_module hard_limiter(.clock(clock), .reset(reset),
        .start(compression_done), .incoming_sample(compression_applied_sample),
        .limiting_amount(hard_limiter_amount), .enable(hard_limiter_enable), 
        .modified_sample(to_ac97_data), .done(hard_limiter_done));
        
    //fir31_12khz_cutoff filter(.clock(clock), .reset(reset),
    //    .start(hard_limiter_done), .x(hard_limiter_applied),
    //    .y(to_ac97_data), .done(sample_ready));
    
    always @(posedge clock) begin
       if (reset) begin
          start_effects_modules <= 1'b0;
       end
       
       start_effects_modules <= playback && new_sample_ready;
       
    end
    
    
    
    
endmodule
