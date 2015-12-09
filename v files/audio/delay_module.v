`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// delayModule (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module delay_module #(parameter SAMPLING_RATE=24000, SAMPLES=240)
    (input clock,
    input reset,
    input start,
    input signed [11:0] incoming_sample,
    input [4:0] delay_amount,
    input enable,
    output reg signed [11:0] modified_sample=12'h000,
    output reg done);
    
    // Need to store anywhere between 10 ms worth of samples and
    // 320 ms worth of samples into BRAM. A better implementation would just pull
    // past samples from the ZBT memory, but I'm assuming that I don't have any
    // access to the ZBT memory.
    
    reg [12:0] addr=13'h0000;
    
    reg [12:0] current_pointer=12'h000;
    reg [12:0] delayed_pointer=12'h000;
    
    
    reg write=1'b0;
    reg signed [11:0] mem_in=12'h000;
    wire signed [11:0] mem_out;
    
    
    reg [12:0] wait_for_memory=13'h0000;
    
    // This reg stores a version of the stored, delayed sample that is multiplied by 7.
    
    reg signed [14:0] stored_sample=15'h0000;
    
    // To have a delay from 10 ms to 320 ms, need to count
    // up to 32 *0.01 s * 240 samples per 0.01 s = 7680 samples. This means
    // we need log(7680) / log(2) = about 13 bits for the memory address bank.
    // Of course, that means we have 8192 memory locations by 12 bits 
    // worth of memory to work with.
    
    mybram #(.LOGSIZE(13),.WIDTH(12))
       store_delay_samples(.addr(addr),.clk(clock),
       .we(write),.din(mem_in),.dout(mem_out));
       
    reg [2:0] delay_state=3'b000;
    
    parameter IDLE=3'b000;
    parameter READ_DELAYED_SAMPLE=3'b001;
    parameter SCALE_DELAYED_SAMPLE=3'b010;
    parameter COMBINE_DELAYED_SAMPLE=3'b100;
    parameter WAIT_ONE_SAMPLE=3'b101;
    parameter WAIT_ANOTHER_SAMPLE=3'b110;
    
    parameter GARBAGE_MEMORY=3'b111;
    
    // This thing has 7 states:
    // 3'b000: do nothing until start is asserted; when start is asserted,
	//         increment the memory pointers and deassert done.
    // 3'b001: begin the read sample from address from delayed_pointer operation.
    // 3'b010: save mem_out sample into a register.
    // 3'b100: combine sample from delayed memory location with current sample.
    // 3'b101: wait one sample before reading from mem_out.
	// 3'b110: wait another sample before reading from mem_out.
	// 3'b111: scale and combine input sample and the sample from memory;
	//         this sample is output and stored into the memory address
	//         from current_pointer. Latch done to 1'b1.
    
    always @(posedge clock) begin
       
       
       // If we change any parameters, we should engage reset and bring the echo
       // module back to normal.
       if (reset) begin
          current_pointer <= 12'h000;
          delayed_pointer <= 12'h000;
          modified_sample <= 12'h000;
          addr <= 12'h000;
          write <= 1'b0;
          stored_sample <= 15'h0000;
          done <= 1'b0;
          wait_for_memory <= 12'b0;
       end
       
       
       case(enable)
       
       1'b0: begin
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       1'b1: begin
       
          // If we don't set a delay amount in, then the incoming and outgoing
          // samples should be exactly the same.
          if (delay_amount == 5'b0) begin
             modified_sample <= incoming_sample;
             done <= 1'b1;
          end
       
          // The way echo works is through this difference equation:
          // y[n] = c*x[n] + c*y[n-m], where m is delay_amount,
          // x[n] is incoming_sample, y is modified_sample, and 
          // c = a coefficient between 0 and 1 (I used 1/2 for ez math).
          else begin
             case(delay_state)
                IDLE: begin
                   if (start) begin
                      done <= 1'b0;
                      current_pointer <= current_pointer + 13'h1;
                      delayed_pointer <= current_pointer - (SAMPLES*delay_amount);
                      write <= 1'b0;
                      if (wait_for_memory < (SAMPLES*delay_amount)) begin
                         wait_for_memory <= wait_for_memory + 13'h1;
                         delay_state <= GARBAGE_MEMORY;
                      end
                      else delay_state <= READ_DELAYED_SAMPLE;
                   end
                end
                
                READ_DELAYED_SAMPLE: begin
                   addr <= delayed_pointer;
                   write <= 1'b0;
                   delay_state <= WAIT_ONE_SAMPLE;
                end
                
                SCALE_DELAYED_SAMPLE: begin
                   stored_sample <= mem_out;
                   delay_state <= COMBINE_DELAYED_SAMPLE;
                end
                
                WAIT_ONE_SAMPLE: delay_state <= WAIT_ANOTHER_SAMPLE;
                
                WAIT_ANOTHER_SAMPLE: delay_state <= SCALE_DELAYED_SAMPLE;
                
                
                COMBINE_DELAYED_SAMPLE: begin
                   modified_sample <= (incoming_sample >>> 1) + (stored_sample >>> 1);
                   addr <= current_pointer;
                   write <= 1'b1;
                   mem_in <= (incoming_sample >>> 1) + (stored_sample >>> 1);
                   delay_state <= IDLE;
                   done <= 1'b1;
                end
             
                GARBAGE_MEMORY: begin
                   addr <= current_pointer;
                   write <= 1'b1;
                   mem_in <= incoming_sample >>> 1;
                   modified_sample <= incoming_sample >>> 1;
                   delay_state <= IDLE;
                   done <= 1'b1;
                end
             
                default: begin
                   if (start) begin
                      done <= 1'b0;
                      current_pointer <= current_pointer + 12'd1;
                      delayed_pointer <= current_pointer - (SAMPLES*delay_amount);
                      write <= 1'b0; 
                      if (wait_for_memory < (SAMPLES*delay_amount)) begin
                         wait_for_memory <= wait_for_memory + 13'h1;
                         delay_state <= GARBAGE_MEMORY;
                      end
                      else delay_state <= READ_DELAYED_SAMPLE;
                   end
                end
             endcase
          end
       end
       endcase
    end
endmodule
