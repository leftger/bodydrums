`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:25 12/06/2015 
// Design Name: 
// Module Name:    test_bitcrush 
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
module test_bitcrush();
    reg clk,reset,ready;	// fir31 signals
    reg signed [11:0] x;
    wire signed [11:0] y;
    reg [20:0] scount;     // keep track of which sample we're at
    reg [5:0] cycle;      // wait 64 clocks between samples
    integer fin,fout,code; 
    wire done;
    reg [2:0] distortion_amount=3'b111;
    wire [14:0] current_sample;
    
     
    
    // Shamelessly stealing code from lab 5 to test the limiter functions
    // (making sure it performs EXACTLY how we expect them to)
    
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
          //if we reach the end of the input file, we're done
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
    
    reg enable=1'b0;
    wire signed [11:0] bitcrushed;
    
    bitcrusher buttcrush(.clock(clk), .reset(reset), .start(ready),
        .enable(enable), .bits_to_crush(distortion_amount),
        .incoming_sample(x), .modified_sample(y), .done(done));
    
    
    

endmodule
