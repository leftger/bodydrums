`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:19 11/16/2015 
// Design Name: 
// Module Name:    delay_module 
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
module delay_module #(parameter SAMPLING_RATE=24000, SAMPLES=240)
    (input clock,
    input reset,
    input ready,
    input signed [11:0] incoming_sample,
    input [4:0] delay_amount,
    output reg signed [11:0] modified_sample,
    output reg done
    );
    
    // Need to store anywhere between 10 ms worth of samples and
    // 320 ms worth of samples into BRAM. A better implementation would just pull
    // past samples from the ZBT memory, but I'm assuming that I don't have any
    // access to the ZBT memory.
    
    reg [12:0] addr=12'h000;
    
    reg write;
    reg signed [11:0] mem_in=12'h000;
    wire signed [11:0] mem_out;
    
    reg [12:0] current_pointer=12'h000;
    reg [12:0] delayed_pointer=12'h000;
    
    // To have a delay from 10 ms to 320 ms, need to count
    // up to 32 *0.01 s * 240 samples per 0.01 s = 7680 samples. This means
    // we need log(7680) / log(2) = about 13 bits for the memory address bank.
    // Of course, that means we have 8192 memory locations by 12 bits 
    // worth of memory to work with.
    
    mybram #(.LOGSIZE(13),.WIDTH(12))
       store_delay_samples(.addr(addr),.clk(clock),
       .we(write),.din(mem_in),.dout(mem_out));
       
    reg [1:0] delay_state=2'b00;
    
    // This thing has 4 states:
    // 00: do nothing until ready is asserted.
    // 01: start up the delay effects, write current sample into memory location
    // 02: read sample from delayed memory location
    // 03: combine sample from delayed memory location with current sample.
    
    always @(posedge clock) begin
       
       if (delay_amount == 5'b0) modified_sample <= incoming_sample;
       
       else begin
          case(delay_state)
             2'b00: begin
                if (reset || ready) begin
                   done <= 1'b0;
                   current_pointer <= current_pointer + 12'd1;
                   delayed_pointer <= current_pointer - (SAMPLES*delay_amount);
                   delay_state <= 2'b01;
                end
             end
          
             2'b01: begin
                addr <= current_pointer;
                write <= 1'b1;
                mem_in <= incoming_sample;
                delay_state <= 2'b10;
             end
             2'b10: begin
                addr <= delayed_pointer;
                write <= 1'b0;
                delay_state <= 2'b11;
             end
             2'b11: begin
                modified_sample <= (incoming_sample / 4) + (mem_out / 4);
                done <= 1'b1;
                delay_state <= 2'b00;
             end
          endcase
       end  
    end

endmodule
