///////////////////////////////////////////////////////////////////////////////
//
// 31-tap FIR filter, 12-bit signed data, 10-bit signed coefficients.
// ready is asserted whenever there is a new sample on the X input,
// the Y output should also be sampled at the same time.  Assumes at
// least 32 clocks between ready assertions.  Note that since the
// coefficients have been scaled by 2**10, so has the output (it's
// expanded from 12 bits to 22 bits).  To get a 12-bit result from the
// filter just divide by 2**10, ie, use Y[21:10].
//
///////////////////////////////////////////////////////////////////////////////

module fir31_12khz_cutoff
  (input clock,
  input reset,
  input start,
  input wire signed [11:0] x,
  output reg signed [11:0] y,
  output reg done);
  
  reg signed [11:0] sample [31:0];
  reg [4:0] offset=5'b00000;
  
  reg signed [21:0] accumulator;
  reg [4:0] index;
  wire signed [9:0] coeff;
  
  // Load the lookup table for the coefficients of the
  // fir filter 
  coeffs31_12khz_cutoff impulse_response(.index(index), .coeff(coeff));
  
  always @(posedge clock) begin
     
     // If ready or hardware reset asserted, reset everything.
     if (start || reset) begin
        accumulator <= 22'h0;
        index <= 5'd0;
        offset <= offset + 1;
        sample[offset] <= x;
        done <= 1'b0;
        
     end
     
     // Else do the accumulation operation for the next 31 cycles after
     // Ready is asserted.
     else if (index < 5'd31) begin
        accumulator <= accumulator + coeff*sample[offset-index];
        index <= index + 1;
        done <= 1'b0;
        
     end
     // Otherwise, latch y to whatever the accumulator value is
     // until the next ready signal is asserted.
     else if (index == 5'd31) begin
         y <= accumulator[21:10];
         done <= 1'b1;
     end
     
  end
endmodule

///////////////////////////////////////////////////////////////////////////////
//
// Coefficients for a 31-tap low-pass FIR filter with Wn=0.5 (eg, 12kHz for a
// 48kHz sample rate).  Since we're doing integer arithmetic, we've scaled
// the coefficients by 2**10
// Matlab command: round(fir1(30,0.5)*1024)
//
///////////////////////////////////////////////////////////////////////////////

module coeffs31_12khz_cutoff(
  input wire [4:0] index,
  output reg signed [9:0] coeff
);
  // tools will turn this into a 31x10 ROM
  always @(index)
    case (index)
      5'd0:  coeff = -10'sd2;
      5'd1:  coeff = 10'sd0;
      5'd2:  coeff = 10'sd3;
      5'd3:  coeff = 10'sd0;
      5'd4:  coeff = -10'sd7;
      5'd5:  coeff = 10'sd0;
      5'd6:  coeff = 10'sd14;
      5'd7:  coeff = 10'sd0;
      5'd8:  coeff = -10'sd27;
      5'd9:  coeff = 10'sd0;
      5'd10: coeff = 10'sd50;
      5'd11: coeff = 10'sd0;
      5'd12: coeff = -10'sd99;
      5'd13: coeff = 10'sd0;
      5'd14: coeff = 10'sd323;
      5'd15: coeff = 10'sd513;
      5'd16: coeff = 10'sd323;
      5'd17: coeff = 10'sd0;
      5'd18: coeff = -10'sd99;
      5'd19: coeff = 10'sd0;
      5'd20: coeff = 10'sd50;
      5'd21: coeff = 10'sd0;
      5'd22: coeff = -10'sd27;
      5'd23: coeff = 10'sd0;
      5'd24: coeff = 10'sd14;
      5'd25: coeff = 10'sd0;
      5'd26: coeff = -10'sd7;
      5'd27: coeff = 10'sd0;
      5'd28: coeff = 10'sd3;
      5'd29: coeff = 10'sd0;
      5'd30: coeff = -10'sd2;
      default: coeff = 10'hXXX;
    endcase
endmodule
