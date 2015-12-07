`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:42:07 12/02/2015 
// Design Name: 
// Module Name:    blink_fo 
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

/*
1 for approx 1/4 of a second
0 for the rest of the second
used to control blinking display
*/
module blink_fo(
    reset,
    clk,
    blink_fo
    );
    
    input reset;
    input clk;
    output reg blink_fo;
    
    parameter [22:0] MAX_ONE = 23'b111_1111_1111_1111_1111_1111;
    reg [24:0] counter; // > 1sec but whatever
    
    always @(posedge clk) begin
      if (reset) begin //reset
         blink_fo <= 0;
         counter <= 25'b0;
      end else begin //logic
         counter <= counter + 1; //increment counter
         if (counter < MAX_ONE) begin // 1/4 of the time
            blink_fo <= 1; //assert 1
         end else begin 
            blink_fo <= 0; // 3/4 of the time assert 0
         end
      end //if reset
    end //always

endmodule
