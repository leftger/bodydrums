`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// bitcrusher Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////



module bitcrusher
    (input clock,
    input reset,
    input start,
    input enable,
    input [2:0] bits_to_crush,
    input signed [11:0] incoming_sample,
    output reg signed [11:0] modified_sample,
    output reg done);
    
    reg state;
    parameter  IDLE=1'b0;
    parameter  BITCRUSH=1'b1;
    
    reg signed [11:0] sample_to_bitcrush=12'b000;

    
    
    always @(posedge clock) begin
       if (reset) begin
          modified_sample <= 12'h000;
          done <= 1'b0;
          sample_to_bitcrush <= 12'h000;
          state <= IDLE;
       end
       
       if (start) begin
          case (enable)
          
          1'b0: begin
             modified_sample <= incoming_sample;
             state <= IDLE;
             done <= 1'b1;
             
          end
          1'b1: begin
             case (state)
                   
                IDLE: begin
                   done <= 1'b0;
                   if (bits_to_crush>=3'b001) begin
                      sample_to_bitcrush <= incoming_sample >>> bits_to_crush;
                      state <= BITCRUSH;
                   end
                   else begin
                      modified_sample <= incoming_sample;
                      state <= IDLE;
                   end
                   
                end
                BITCRUSH: begin
                   modified_sample <= sample_to_bitcrush <<< bits_to_crush;
                   done <= 1'b1;
                   state <= IDLE;
                end
             endcase
          end
          endcase
       end
    end
endmodule
