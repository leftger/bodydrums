`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:13 11/20/2015 
// Design Name: 
// Module Name:    test_binary_to_dB 
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
module test_binary_to_dB();
    reg clk,reset,ready;	// fir31 signals
    reg signed [11:0] x;
    wire signed [8:0] y;
    wire signed [8:0] z;
    wire signed [8:0] w;
    wire signed [8:0] v;
    reg [20:0] scount;     // keep track of which sample we're at
    reg [5:0] cycle;      // wait 64 clocks between samples
    integer fin,fout,code;
    
    
    initial begin
       // open input/output files
       fin = $fopen("inputtest.samples","r"); // This is a 1khz wave added to a 5khz wave
       fout = $fopen("inputtest.output","w");
       if (fin == 0 || fout == 0) begin
          $display("can't open file...");
          $stop;
       end
       
       // initialize state, assert reset for one clock cycle
       scount = 0;
       clk = 0;
       cycle = 0;
       ready = 0;
       x = 0;
       reset = 1;
       #10
       reset = 0;
    end
    
    // clk has 50% duty cycle, 10ns period
    always #5 clk = ~clk;

    always @(posedge clk) begin
       if (cycle == 6'd63) begin
          // assert ready next cycle, read next sample from file
          ready <= 1;
          code = $fscanf(fin,"%d",x);
          // if we reach the end of the input file, we're done
          if (code != 1) begin
             $fclose(fout);
             $stop;
          end
       end
       else begin
          ready <= 0;
       end

       if (ready) begin
          // starting with sample 32, record results in output file
          if (scount > 31) $fdisplay(fout,"%d",y);
          scount <= scount + 1;
       end

       cycle <= cycle+1;
    end
    
    reg [1:0] compression_amount=2'b11;
    wire db_done;
    wire gain_done;
    wire done;
    reg soft_limiter=1'b0;
    
    signed_binary_12bit_to_dB uut(.clock(clk), .reset(reset),
        .start(ready), .input_binary(x), .output_db(y), .done(db_done));
        
    compression_gain_computer another_uut(.clock(clk), .reset(reset),
        .start(db_done), .compression_amount(compression_amount),
        .input_db(y), .output_db(z), .output_level(v),  .done(gain_done));
    
    compression_level_detector third(.clock(clk), .reset(reset), .soft_limiter(soft_limiter),
        .start(gain_done), .input_level(v), .output_gain(w), .done(done));

endmodule
