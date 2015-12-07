`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:05 11/16/2015 
// Design Name: 
// Module Name:    limiter_module 
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
module limiter_module #(parameter SAMPLING_RATE=24000)
    (input clock,
    input reset,
    input start,
    input signed [11:0] incoming_sample,
    input [1:0] limiting_amount,
    input enable,
    output reg signed [11:0] modified_sample,
    output reg done
    );
    
    // Note: since we are using a signed 12-bit encoding, remember that
    // the encoded bit values can be from -(2^(n-1)) = -2048 to 
    // 2^(n-1) - 1 = 2047 (where n is the number of bits)
    
    
    // This module implements "hard limiting", which clips the signal at
    // a certain amplitude threshold that we set with the switches (limiting_amount)
    
    reg [11:0] last_sample;
    
    always @(posedge clock) begin
       if (reset) begin
          modified_sample <= 12'h000;
          done <= 1'b0;
          last_sample <= 12'h000;
       end
       
       
       case (enable)
       1'b0: begin
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       1'b1: begin
          if (start) begin
             // Take one clock cycle up. Compare the last sample to this sample.
             // If they are not the same, then our results need to be
             // recalculated in the next clock cycle.
             case(limiting_amount)
                
             // In this setting, the limiter should do nothing.
             2'b00: begin
                 modified_sample <= incoming_sample;
             end
                
             // This is the "90% limiting" setting.
             // If the incoming sample is larger than 90% of the maximum amplitude
             // we can encode, then we cut it off at 90%.
             2'b01: begin
                if (incoming_sample > 1024) modified_sample <= 1024;
                else if (incoming_sample < -1024) modified_sample <= -1024;
                else modified_sample <= incoming_sample;
             end
             
             // This is the "75% limiting" setting.
             // If the incoming sample is larger than 75% of the maximum amplitude
             // we can encode, then we cut it off at 75%.
             2'b10: begin
                if (incoming_sample > 512) modified_sample <= 512;
                else if (incoming_sample < -512) modified_sample <= -512;
                else modified_sample <= incoming_sample;
             end
                
             // This is the "50% limiting" setting.
             // If the incoming sample is larger than 50% of the maximum amplitude
             // we can encode, then we cut it off at 50%.
             2'b11: begin
                if (incoming_sample > 256) modified_sample <= 256;
                else if (incoming_sample < -256) modified_sample <= -256;
                else modified_sample <= incoming_sample;
             end
             endcase
             // In any case, it should take us one clock cycle to do
             // the compare. We can now assert done.
             done <= 1'b1;
          end
       end
       endcase
    end
endmodule
