`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2015 11:00:02 PM
// Design Name: 
// Module Name: variable_gain
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module variable_gain
    (input clock,
    input reset,
    input start,
    input [11:0] incoming_sample,
    input [8:0] input_gain,
    output reg [11:0] output_sample,
    output reg done);
    
    reg signed [8:0] modified_input_gain;
    reg signed [8:0] modified_input_sample;
    reg signed [12:0] multiplication_factor;
    
    reg signed [24:0] scaled_sample;
    
    
    reg [1:0] state;
    
    // States that the variable_gain machine can be in.
    parameter IDLE=2'b00;
    parameter FIND_GAIN=2'b01;
    parameter APPLY_GAIN=2'b10;
    parameter DIVIDE_AND_OUTPUT=2'b11;
    
    always @(posedge clock) begin
       
       // If the module needs to be reset, then bring all registers
       // to a known state.
       if (reset) begin
          output_sample <= 12'h000;
          done <= 1'b0;
          state <= IDLE;
          modified_input_gain <= 9'h000;
          modified_input_sample <= 9'h000;
          multiplication_factor <= 9'sd256;
          scaled_sample <= 25'b0;
          
       end
       
       case (state)
       
       IDLE: begin
          if (start) begin
             modified_input_gain <= input_gain >>> 1;
             modified_input_sample <= input_sample;
             done <= 1'b0;
             state <= FIND_GAIN;
          end
       end
       
       FIND_GAIN: begin
          if (modified_input_gain > 20) begin
             multiplication_factor <= 13'sd2560;
          end
          
          else if (modified_input_gain < -20) begin
             multiplication_factor <= 13'sd2560;
          end
          
          else begin
             case (modified_input_gain)
             9'sd20: multiplication_factor <= 13'sd2560;
             9'sd19: multiplication_factor <= 13'sd2281;
             9'sd18: multiplication_factor <= 13'sd2033;
             9'sd17: multiplication_factor <= 13'sd1812;
             9'sd16: multiplication_factor <= 13'sd1615;
             9'sd15: multiplication_factor <= 13'sd1439;
             9'sd14: multiplication_factor <= 13'sd1283;
             9'sd13: multiplication_factor <= 13'sd1143;
             9'sd12: multiplication_factor <= 13'sd1019;
             9'sd11: multiplication_factor <= 13'sd908;
             9'sd10: multiplication_factor <= 13'sd809;
             9'sd9: multiplication_factor <= 13'sd721;
             9'sd8: multiplication_factor <= 13'sd643;
             9'sd7: multiplication_factor <= 13'sd573;
             9'sd6: multiplication_factor <= 13'sd510;
             9'sd5: multiplication_factor <= 13'sd455;
             9'sd4: multiplication_factor <= 13'sd405;
             9'sd3: multiplication_factor <= 13'sd361;
             9'sd2: multiplication_factor <= 13'sd322;
             9'sd1: multiplication_factor <= 13'sd287;
             9'sd0: multiplication_factor <= 13'sd256;
             -9'sd1: multiplication_factor <= 13'sd228;
             -(9'sd2): multiplication_factor <= 13'sd203;
             -(9'sd3): multiplication_factor <= 13'sd181;
             -(9'sd4): multiplication_factor <= 13'sd161;
             -(9'sd5): multiplication_factor <= 13'sd143;
             -(9'sd6): multiplication_factor <= 13'sd128;
             -(9'sd7): multiplication_factor <= 13'sd114;
             -(9'sd8): multiplication_factor <= 13'sd102;
             -(9'sd9): multiplication_factor <= 13'sd91;
             -(9'sd10): multiplication_factor <= 13'sd81;
             -(9'sd11): multiplication_factor <= 13'sd72;
             -(9'sd12): multiplication_factor <= 13'sd64;
             -(9'sd13): multiplication_factor <= 13'sd57;
             -(9'sd14): multiplication_factor <= 13'sd51;
             -(9'sd15): multiplication_factor <= 13'sd46;
             -(9'sd16): multiplication_factor <= 13'sd41;
             -(9'sd17): multiplication_factor <= 13'sd36;
             -(9'sd18): multiplication_factor <= 13'sd32;
             -(9'sd19): multiplication_factor <= 13'sd29;
             -9'sd20: multiplication_factor <= 13'sd26;
             default: modified_input_gain <= 13'sd256;
             endcase
          end
          
          state <= APPLY_GAIN;
          
       end
       
       APPLY_GAIN: begin
          scaled_sample <= modified_input_sample * multiplication_factor;
          state <= DIVIDE_AND_OUTPUT;
       end
       
       DIVIDE_AND_OUTPUT: begin
          modified_sample <= scaled_sample[24:13];
          state <= IDLE;
          done <= 1'b1;
       end
       
       endcase
    end
endmodule