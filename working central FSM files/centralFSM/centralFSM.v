//central fsm
/* :)
controls the whole system
outputs to audio module, graphics module, and memory module
3 states:
standby state
playback state
record state
*/

module centralFSM(reset, clk, ready, //from fpga, input
      but_up, but_down, but_right, but_left, but_ent, 
            but_3, but_2, but_1, but_0, switches/*[7:0]*/, 
            //from user inputs, all sync/deb'd, input
      //N/A from audio module, input
      effects/*[7:0]*/, record_mode, //to audio module, output
      running_time, song_name,//to graphics module, output
      song_done,//from memory module, input
      record_mode, song_choice, start_song, pause_song//to memory module, output
      );
   //fpga inputs         
   input reset; //reset signal
   input clk; //clock
   input ready; //when data available from ac97
   
   //from user inputs, all sync/deb'd, input
   input but_up; //navigate
   input but_down; //navigate
   input but_right; 
   input but_left; 
   input but_ent; 
   input but_3; 
   input but_2; 
   input but_1; 
   input but_0; 
   input [7:0] switches;
   
   //to audio module, output   
   input [6:0] effects; //effect choice
                  // 0: echo
                  // 1: chourus
                  // 2: compression
                  // 3: limiter
                  // 4: distortion
                  // 5: speed up 2x
                  // 6: slow down 2x
   input [16:0] effect_values; //effect values, effects values
                  // [0:4] echo
                  // [5:9] chorus
                  // [10:11] compression
                  // [12:13] limiter
                  // [14:16] distortion
      
   //to graphics module, output
   output [6:0] running_time; //running time in sec, binary
   output [3:0] song_name; //name of song, #s 1-12
   
   //from memory module, input   
   input song_done; //abort! abort! stop dem incrementing
   
   //to memory module, output
   output [3:0] song_choice; //song choice
   output start_song; //start record/playback, requires song choice and mode to be set 1 clock cycle before
   output pause_song; //pause song!
   
   //to memory module and audio module, output
   output record_mode; //1 = record, 0 = playback
   
   //fsm
   reg [1:0] state;  //00: standby
                       //01: playback
                       //10: record
                       //11: n/a - standby
   
   always @(posedge clk) begin
      if (reset) begin
      end else begin
      end
   end
   
endmodule
