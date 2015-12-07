////////////////////////////////////////////////////////////////////////////////
//
// process_audio: process incoming audio samples, generate frequency histogram
//
////////////////////////////////////////////////////////////////////////////////

module process_audio(clock_27mhz,reset,sel,ready,from_ac97_data,haddr,hdata,hwe);
  input clock_27mhz;
  input reset;
  input [3:0] sel;
  input ready;
  input [11:0] from_ac97_data;
  output [9:0] haddr,hdata;
  output hwe;

  wire signed [22:0] xk_re,xk_im;
  wire [13:0] xk_index;

  // IP Core Gen -> Digital Signal Processing -> Transforms -> FFTs
  // -> Fast Fourier Transform v3.2
  // Transform length: 16384
  // Implementation options: Pipelined, Streaming I/O
  // Transform length options: none
  // Input data width: 12
  // Phase factor width: 12
  // Optional pins: CE
  // Scaling options: Unscaled
  // Rounding mode: Truncation
  // Number of stages using Block Ram: 7
  // Output ordering: Bit/Digit Reversed Order
  fft16384u fft(.clk(clock_27mhz), .ce(reset | ready),
                .xn_re(from_ac97_data), .xn_im(12'b0),
                .start(1'b1), .fwd_inv(1'b1), .fwd_inv_we(reset),
                .xk_re(xk_re), .xk_im(xk_im), .xk_index(xk_index));

  wire signed [13:0] xk_re_scaled = xk_re >> sel;
  wire signed [13:0] xk_im_scaled = xk_im >> sel;

  // process fft data
  reg [2:0] state;
  reg [9:0] haddr;
  reg [27:0] rere,imim;
  reg [27:0] mag2;
  reg hwe;
  wire sqrt_done;

  always @ (posedge clock_27mhz) begin
    hwe <= 0;
    if (reset) begin
      state <= 0;
    end
    else case (state)
     3'h0: if (ready) state <= 1;
     3'h1: begin
	     // only process data with index < 1024
	     state <= (xk_index[13:10] == 0) ? 2 : 0;
             haddr <= xk_index[9:0];
             rere <= xk_re_scaled * xk_re_scaled;
             imim <= xk_im_scaled * xk_im_scaled;
           end
     3'h2: begin
	     state <= 3;
             mag2 <= rere + imim;
           end
     3'h3: if (sqrt_done) begin
	     state <= 0;
             hwe <= 1;
           end
    endcase
  end

  wire [13:0] mag;
  sqrt sqmag(clock_27mhz,mag2,state==2,mag,sqrt_done);
  defparam sqmag.NBITS = 28;

  assign hdata = mag;

endmodule

module sqrt(clk,data,start,answer,done);
  parameter NBITS = 8;  // max 32
  parameter MBITS = (NBITS+1)/2;
  input clk,start;
  input [NBITS-1:0] data;
  output [MBITS-1:0] answer;
  output done;

  reg [MBITS-1:0] answer;
  reg busy;
  reg [4:0] bit;

  wire [MBITS-1:0] trial = answer | (1 << bit);

  always @ (posedge clk) begin
    if (busy) begin
      if (bit == 0) busy <= 0;
      else bit <= bit - 1;
      if (trial*trial <= data) answer <= trial;
    end
    else if (start) begin
      busy <= 1;
      answer <= 0;
      bit <= MBITS - 1;
    end
  end

  assign done = ~busy;
endmodule
