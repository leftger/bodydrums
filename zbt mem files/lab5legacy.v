`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:25 11/15/2015 
// Design Name: 
// Module Name:    lab5legacy 
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
module lab5legacy(in, out
    );
   input in;
   output out;
   always @* begin
      output = 1;
   end

endmodule
///////////////////////////////////////////////////////////////////////////////
//
// Record/playback
//
///////////////////////////////////////////////////////////////////////////////
/*
module recorder(
  input wire clock,	           // 27mhz system clock
  input wire reset,                // 1 to reset to initial state
  input wire playback,             // 1 for playback, 0 for record
  input wire ready,                // 1 when AC97 data is available
  input wire filter,               // 1 when using low-pass filter
  input wire [11:0] from_ac97_data, // 8-bit PCM data from mic
  output reg [11:0] to_ac97_data    // 8-bit PCM data to headphone
);  

   parameter MAX_ADDR = 16'b1111_1111_1111_1111; //max memory size
   parameter MAX_COUNTER = 7; //max counter before loop
   
   reg [15:0] highestaddr; //highest address written
   reg [15:0] currentaddr; //current memory address
   
   reg lastplayback; //last state of playback
   
   reg [2:0] counter; //counter
   
   //bram
   wire [7:0] mem_out; //memory out
   reg [7:0] mem_in; //memory in i guess
   mybram #(.LOGSIZE(16),.WIDTH(8)) terrib(.addr(currentaddr),.clk(clock),
      .we(~playback),.din(mem_in),.dout(mem_out));
      
   //filter
   reg [7:0] filterinput;
   wire [17:0] filteroutput;
   fir31 filtah(.clock(clock),.reset(reset),.ready(ready),
         .x(filterinput),
         .y(filteroutput));

   always @ (posedge clock) begin
      if(reset) begin //reset
         currentaddr <= 0;
         highestaddr <= 0;
         counter <= 0;
      end else begin
         //resetting memory address
         lastplayback <= playback; //keep track of prev state
         if (lastplayback != playback) begin //change in state... 
            currentaddr <= 0; //reset current address!
            if (~playback) begin //record, reset highest address
            highestaddr <= 0; //reset!!
            end
         end

         //when data is available????
         if (ready) begin //when AC97 data is available
            
            //increment counter
            if (counter >= MAX_COUNTER) begin //reset counter
               counter <= 0;
            end else begin
               counter <= counter + 1; //increment
            end
            
            if (playback) begin //playback
               if (filter) begin //filter on
                  to_ac97_data <= filteroutput[14:7]; //from filter
               end else begin //filter off
                  to_ac97_data <= mem_out; //from mem directly
               end
               if (counter == 0) begin //if we reach 8th cycle, increment address
                  if (currentaddr >= highestaddr) begin //if @ highest addr
                     currentaddr <= 0; //loop from beginning again
                  end else begin
                     currentaddr <= currentaddr + 1; //increment currenta ddrses
                  end
                  filterinput <= mem_out;//zero_expanded mem output
               end else filterinput <= 8'b0;//zero_expanded mem output
            end 
            else begin //record
               if (highestaddr < MAX_ADDR) begin //recording not memory filled
                  to_ac97_data <= mem_in; //play back the mem out?!?
                  filterinput <= from_ac97_data; //filter input is data
                  if (filter) begin //filter on
                     mem_in <= filteroutput[17:10]; //from filter
                  end else begin //filter off
                     mem_in <= from_ac97_data; //from data directly
                  end
                  if (counter == 0) begin //increment addresses
                     highestaddr <= highestaddr + 1; //increment highest address
                     currentaddr <= currentaddr + 1; //increment current address
                  end
               end else begin //recording done, no sound pls
                  to_ac97_data <= 8'b0;
               end
            end //end if (playback)
            
         end //end if (ready)
         
      end //end if not reset
   end //end @posedge clock
endmodule
*/
///////////////////////////////////////////////////////////////////////////////
//
// Verilog equivalent to a BRAM, tools will infer the right thing!
// number of locations = 1<<LOGSIZE, width in bits = WIDTH.
// default is a 16K x 1 memory.
//
///////////////////////////////////////////////////////////////////////////////
/*
module mybram #(parameter LOGSIZE=14, WIDTH=1)
              (input wire [LOGSIZE-1:0] addr,
               input wire clk,
               input wire [WIDTH-1:0] din,
               output reg [WIDTH-1:0] dout,
               input wire we);
   // let the tools infer the right number of BRAMs
   (* ram_style = "block" *)
   reg [WIDTH-1:0] mem[(1<<LOGSIZE)-1:0];
   always @(posedge clk) begin
     if (we) mem[addr] <= din;
     dout <= mem[addr];
   end
endmodule
*/
///////////////////////////////////////////////////////////////////////////////
//
// 31-tap FIR filter, 8-bit signed data, 10-bit signed coefficients.
// ready is asserted whenever ther   /*from default   
   // test: playback 750hz tone, or loopback using incoming data
   //wire [19:0] tone;
   //tone750hz xxx(.clock(clock),.ready(ready),.pcm_data(tone));
   //e is a new sample on the X input,
// the Y output should also be sampled at the same time.  Assumes at
// least 32 clocks between ready assertions.  Note that since the
// coefficients have been scaled by 2**10, so has the output (it's
// expanded from 8 bits to 18 bits).  To get an 8-bit result from the
// filter just divide by 2**10, ie, use Y[17:10].
/*
When the fir31 module is used as a reconstruction filter, it's input 
is a zero-expanded set of samples from the recording memory. "Zero 
expansion" is a type of up-sampling where one data sample is used 
from memory, followed by in our case seven samples of 0. The filter 
will interpolate between the memory samples, smoothly filling in values
 in place of the zeros. In this mode, the filter has a gain of 1/8 which 
 we can compensate for by multiplying its output by 8. This is accomplished 
 by simpling moving 3 bits to the right when selecting which output bits to use. 
*/
//
///////////////////////////////////////////////////////////////////////////////

/*
module fir31(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y 
);
   reg signed [7:0] sample [31:0]; //32 element array each 8 bits wide
   reg [4:0] offset; //offset for sample array
   reg [4:0] s_index; //index within sample array
   reg signed [17:0] accumulator;
   wire signed [9:0] coeff; //coeff from coeffs31
   coeffs31 needsaname(.index(s_index),.coeff(coeff)); // index 5 bits, coeff 10 bits

   always @(posedge clock) begin
      if (reset) begin //reset
         offset <= 5'b0;
         s_index <= 0;
         y <= 0;
      end else begin
         if (ready) begin //should this only happen the first time ready is asserted?
            offset <= offset + 1'b1; //increment offset
            sample[offset[4:0]] <= x[7:0]; //assign x to the new offset
            s_index <= 0; //reset index
            accumulator <= 18'b0;//reset accumulator
            
         end 
         if (s_index <= 30) begin //do running sum calculation, increment the index
            accumulator <= (accumulator + (coeff * sample[offset-s_index]));
            s_index <= s_index + 1;
         end else if (s_index == 31) begin //at the end, the accumulator has the value y needs
            y <= accumulator;
         end
      end
   end
 
endmodule
*/
///////////////////////////////////////////////////////////////////////////////
//
// Coefficients for a 31-tap low-pass FIR filter with Wn=.125 (eg, 3kHz for a
// 48kHz sample rate).  Since we're doing integer arithmetic, we've scaled
// the coefficients by 2**10
// Matlab command: round(fir1(30,.125)*1024)
//
///////////////////////////////////////////////////////////////////////////////
/*
module coeffs31(
  input wire [4:0] index,
  output reg signed [9:0] coeff
);
  // tools will turn this into a 31x10 ROM
  always @(index)
    case (index)
      5'd0:  coeff = -10'sd1;
      5'd1:  coeff = -10'sd1;
      5'd2:  coeff = -10'sd3;
      5'd3:  coeff = -10'sd5;
      5'd4:  coeff = -10'sd6;
      5'd5:  coeff = -10'sd7;
      5'd6:  coeff = -10'sd5;
      5'd7:  coeff = 10'sd0;
      5'd8:  coeff = 10'sd10;
      5'd9:  coeff = 10'sd26;
      5'd10: coeff = 10'sd46;
      5'd11: coeff = 10'sd69;
      5'd12: coeff = 10'sd91;
      5'd13: coeff = 10'sd110;
      5'd14: coeff = 10'sd123;
      5'd15: coeff = 10'sd128;
      5'd16: coeff = 10'sd123;
      5'd17: coeff = 10'sd110;
      5'd18: coeff = 10'sd91;
      5'd19: coeff = 10'sd69;
      5'd20: coeff = 10'sd46;
      5'd21: coeff = 10'sd26;
      5'd22: coeff = 10'sd10;
      5'd23: coeff = 10'sd0;
      5'd24: coeff = -10'sd5;
      5'd25: coeff = -10'sd7;
      5'd26: coeff = -10'sd6;
      5'd27: coeff = -10'sd5;
      5'd28: coeff = -10'sd3;
      5'd29: coeff = -10'sd1;
      5'd30: coeff = -10'sd1;
      default: coeff = 10'hXXX;
    endcase
endmodule
*/