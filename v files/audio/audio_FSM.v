`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// audio_FSM Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

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
    
    
    wire signed [11:0] chorus_applied_sample;
    wire chorus_done;
    chorus_effect chorus(.clock(clock), .reset(reset), .start(delay_done),
        .incoming_sample(delay_applied_sample), .enable(chorus_enable), 
        .modified_sample(chorus_applied_sample), .done(chorus_done));
    
    
    wire compression_done;
    wire signed [11:0] compression_applied_sample;
    compression compress(.clock(clock), .reset(reset), .start(chorus_done),
        .incoming_sample(chorus_applied_sample), 
        .compression_amount(compression_amount), .soft_limiter(soft_limiter_enable),
        .enable(compression_enable), .modified_sample(compression_applied_sample),
        .done(compression_done));
    
    
    wire hard_limiter_done;
    wire signed [11:0] hard_limiter_applied;
    limiter_module hard_limiter(.clock(clock), .reset(reset),
        .start(compression_done), .incoming_sample(compression_applied_sample),
        .limiting_amount(hard_limiter_amount), .enable(hard_limiter_enable), 
        .modified_sample(hard_limiter_applied), .done(hard_limiter_done));
        
    bitcrusher buttcrush(.clock(clock), .reset(reset), .start(hard_limiter_done),
        .enable(distortion_enable), .bits_to_crush(distortion_amount),
        .incoming_sample(hard_limiter_applied),.modified_sample(to_ac97_data),
        .done(sample_ready));
    
    always @(posedge clock) begin
       if (reset) begin
          start_effects_modules <= 1'b0;
       end
       
       start_effects_modules <= playback && new_sample_ready;
       
    end
    
    
    
    
endmodule
