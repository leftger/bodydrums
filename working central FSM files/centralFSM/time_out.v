`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:11 12/02/2015 
// Design Name: 
// Module Name:    time_out 
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
//calculates elapsed time of song
module song_timing(
    input reset,
    input clk,
    input start_song, //resets and starts incrementation, from fsm
    input song_done, //pauses incrementation, from memory
    input pause_song, //pauses incrementation, from fsm
    output [7:0] seconds //seconds elapsed since start_song, for graphx/display
    );
   
   reg [24:0] counter; //1 sec counter
   parameter DELAY = 27000000 -1;
   
   always @(posedge clk) begin
      if (reset) begin //reset
         seconds <= 4'b0;
         counter <= 25'b0;
      end else begin //else
         if (start_song) begin //reset seconds, counter if start_song
            seconds <= 4'b0;
            counter <= 25'b0;
         end
         else if (~song_done & ~pause_song) begin //if song not done/paused, increment freely
            if (counter > DELAY) begin //1 second
               counter <= 0; //reset counter
               if (seconds == 8'hFF) seconds <= 8'hFF; //prevent overflow
               else seconds <= seconds + 1; //else increment seconds
            end else begin //increment counter
               counter <= counter + 1; 
            end
         end
      end
   end

endmodule
