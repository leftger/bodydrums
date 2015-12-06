//central fsm
/* :)
controls the whole system
outputs to audio module, graphics module, and memory module
3 states:
standby state
playback state
record state
*/

module centralFSM(reset, clk,, //from fpga, input
      but_ent, switch,//from user inputs, all sync/deb'd, input
      effects,/*[6:0]*/
      song_name,//to graphics module, output
      song_done,//from memory module, input
      song_choice, start_song, pause_song,//to memory module, output
      effect_values,record_mode,
      record_mode_sel, song_name_sel, effect_values_sel, //from param_select
      state
      );
   //fpga inputs         
   input reset; //reset signal
   input clk; //clock
   input ready; //when data available from ac97
   
   //user inputs, all sync/deb'd, input
   input [7:0] switch; //we only care about switch 7 - 1 if paused
   input but_ent; //start/stop/transition
   reg but_ent_prev;

   
   //to audio module, output   
   output [6:0] effects; //effect choice, a function of user input (necessary?????)
                  // 0: echo
                  // 1: chorus
                  // 2: compression
                  // 3: limiter
                  // 4: distortion
                  // 5: speed up 2x
                  // 6: slow down 2x
   input [16:0] effect_values_sel; //effect values, effects values, from param_select
   output reg [16:0] effect_values; //controlled value
                  // [0:4] echo - 32
                  // [5:9] chorus - 32
                  // [10:11] compression - 4
                  // [12:13] limiter - 4
                  // [14:16] distortion - 8
   
   input record_mode_sel; //1 = record, 0 = playback, from param select
   output reg record_mode; //controlled value
   
   input [3:0] song_name_sel; //song choice, from param_select
   output reg [3:0] song_name; //name of song, #s 1-12, controlled value
   output reg [3:0] song_choice; //calculated from song name, controlled value
   
   output reg start_song; //start record/playback, requires song choice and mode to be set 1 clock cycle before
   reg start_song_prev; //delay for start song
   
   output reg pause_song; //pause song! switch 7 controls in record and playback, otherwise pause is 1
   
   input song_done; //abort! abort! stop dem incrementing, from memory
   
   reg reset_delay; //delay for reset
   
   //fsm
   output reg [1:0] state;    //00: standby
                       //01: playback
                       //10: record
                       //11: n/a - standby
   
    always @(posedge clk) begin
        if (reset) begin
            //delay 1 clock cycle to set params????
            reset_delay <= 1;
        end else if (reset_delay) begin
            reset_delay <= 0;
            but_ent_prev <= but_ent;
            song_choice <= song_name_sel;
            song_name <= song_name_sel; //default is 0 anyways...
            record_mode <= record_mode_sel;
            effect_values <= effect_values_sel;
            pause_song <= 1; //default paused 
            start_song_prev <= 0; //:)
            start_song <= 0; //NO
            state <= 2'b00; //start in standby
            effects <= switch[6:0];
        end else begin //actual fsm logic
            start_song <= start_song_prev; //delayed by 1 clock cycle
            case(state)
                2'b01: begin //playback
                    if (start_song_prev) begin //de-assert start next clock cycle
                        start_song_prev <= 0;
                    //check if we should go back to record
                    end else if (song_done) begin  //return to playback and pause
                        state <= 2'b00;
                        pause_song <= 1;
                    end else if (but_ent_prev == 0 & but_ent == 1) begin //return to playback and pause
                        state <= 2'b00;
                        pause_song <= 1;
                    end else pause_song <= switch_7; //else just update pause
                end
                2'b10: begin //record
                    if (start_song_prev) begin //de-assert start next clock cycle
                        start_song_prev <= 0;
                    //check if we should go back to record
                    end else if (song_done) begin //return to playback and pause
                        state <= 2'b00;
                        pause_song <= 1;
                    end else if (but_ent_prev == 0 & but_ent == 1) begin //return to playback and pause
                        state <= 2'b00;
                        pause_song <= 1;
                    end else pause_song <= switch_7; //else just update pause
                end
                default: begin //same as 2'b00 - standby
                    //TBD: SHOULD VALUES BE SET TO DEFAULT IN THIS STATE FOR GERZAIN?
                    pause_song <= 1; //redundant, but defs needs to be 1
                    if (but_ent_prev == 0 & but_ent == 1) begin //transition state
                        //set values
                        start_song_prev <= 1; //assert start_song on next clock cycle
                        effect_values <= effect_values_sel; //set value
                        song_name <= song_name_sel; //set value
                        effects <= switch[6:0]; //set value
                        
                        if (song_name_sel < 6) song_choice <= song_name_sel; //if so, name is choice
                        else song_choice <= song_name_sel + 2; //correct nums for mem address calculator
                        
                        record_mode <= record_mode_sel; //set value
                        
                        //where to transition to
                        if (record_mode_sel) state <= 2'b10; //record
                        else state <= 2'b01; //playback
                    end //if
                end //default
            endcase
        end //fsm logic
    end //always
   
endmodule
