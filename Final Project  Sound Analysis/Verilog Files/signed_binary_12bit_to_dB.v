`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:46 11/20/2015 
// Design Name: 
// Module Name:    signed_binary_12bit_to_dB 
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
module signed_binary_12bit_to_dB
    (input clock,
    input reset,
    input start,
    input signed [11:0] input_binary,
    output reg signed [8:0] output_db,
    output reg done);
    
    // This module takes a 12-bit integer and converts it to NEGATIVE dB.
    // The maximum dB value we expect is 0dB. Anything else is considered to be
    // a NEGATIVE NUMBER even though it's encoded as a positive integer.
    // This module implements an algorithm that calculates dB of a binary number
    // to a precision of 0.5 dB (maximum error is found to be 0.5dB, which is
    // fine for this project).
    
    reg [11:0] absolute_value_input;
    reg [3:0] msb=4'd11;
    reg [3:0] r;
    
    wire [8:0] g_R;
    wire [8:0] effective_g_M;
    reg [1:0] state;
    
    parameter IDLE=2'b00;
    parameter FIND_MSB=2'b01;
    parameter OUTPUT=2'b10;
    
    lookup_g_R lookup1(.r(r), .g_R(g_R));
    lookup_effective_g_M lookup2(.msb(msb), .effective_g_M(effective_g_M));
    
    always @(posedge clock) begin
       if (reset) begin
          absolute_value_input <= 12'b0;
          msb <= 4'd11;
          r <= 4'b0;
          state <= IDLE;
       end
       
       case (state)
       // We want to take the input and find the absolute value of it.
       IDLE: begin
          done <= 1'b0;
          if (start)begin
             if (input_binary[11] == 1'b1) begin
                absolute_value_input <= -input_binary;
             end
             else begin
                absolute_value_input <= input_binary;
             end
             state <= FIND_MSB;
             msb <= 4'd11;
          end
       end
       
       // Find the most important bits (the most significant one and the four
       // bits after that (if there are any)
       FIND_MSB: begin
          if (absolute_value_input[11] == 1'b1) begin
             if (msb > 3) r <= absolute_value_input[10:7];
             // Account for the edge cases of msb being less than
             // or equal to 3
             else if (msb == 3) r <= {1'b0, absolute_value_input[10:8]};
             else if (msb == 2) r <= {2'b0, absolute_value_input[10:7]};
             else if (msb == 1) r <= {3'b0, absolute_value_input[10]};
             state <= OUTPUT;
          end
          else begin
             absolute_value_input <= absolute_value_input << 1;
             if (msb > 0) msb <= msb - 1;
             else begin
                msb <= 0;
                r <= 4'b0;
                state <= OUTPUT;
             end
          end
       end
       // Once the corresponding values have been found in their
       // lookup tables, you can combine them and divide by 4 to get
       // the actual magnitude of the sample in dB.
       OUTPUT: begin
          output_db <= (effective_g_M - g_R) / 4;
          done <= 1'b1;
          state <= IDLE;
       end
       default: begin
          if (start) begin
             if (input_binary[11] == 1'b1) begin
                absolute_value_input <= -input_binary;
             end
             else begin
                absolute_value_input <= input_binary;
             end
             state <= FIND_MSB;
             msb <= 4'd11;
             done <= 1'b0;
          end
       end
       endcase
    end
endmodule

// These are the lookup tables for the signed_binary_to_dB module.

module lookup_g_R
    (input [3:0] r,
    output reg [8:0] g_R);
    
    always @(r) begin
       case (r)
       4'd0: g_R = 9'd0;
       4'd1: g_R = 9'd2;
       4'd2: g_R = 9'd4;
       4'd3: g_R = 9'd6;
       4'd4: g_R = 9'd8;
       4'd5: g_R = 9'd9;
       4'd6: g_R = 9'd11;
       4'd7: g_R = 9'd13;
       4'd8: g_R = 9'd14;
       4'd9: g_R = 9'd16;
       4'd10: g_R = 9'd17;
       4'd11: g_R = 9'd18;
       4'd12: g_R = 9'd19;
       4'd13: g_R = 9'd21;
       4'd14: g_R = 9'd22;
       4'd15: g_R = 9'd23;
       endcase
    end
endmodule

module lookup_effective_g_M
    (input [3:0] msb,
    output reg [8:0] effective_g_M);
    
    always @(msb) begin
       case (msb)
       4'd0: effective_g_M = 9'd265;
       4'd1: effective_g_M = 9'd241;
       4'd2: effective_g_M = 9'd217;
       4'd3: effective_g_M = 9'd193;
       4'd4: effective_g_M = 9'd169;
       4'd5: effective_g_M = 9'd145;
       4'd6: effective_g_M = 9'd120;
       4'd7: effective_g_M = 9'd96;
       4'd8: effective_g_M = 9'd72;
       4'd9: effective_g_M = 9'd48;
       4'd10: effective_g_M = 9'd24;
       4'd11: effective_g_M = 9'd0;
       default: effective_g_M = 9'd0;
       endcase
    end
endmodule
