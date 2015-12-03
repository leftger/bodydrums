//central fsm
/* :)
controls the whole system
outputs to audio module, graphics module, and memory module
3 states:
standby state
playback state
record state
*/

module addresscalculator(reset, clk, ready, //from fpga, input
            //from user inputs, input
            song_choice, start_song, pause_song, //from audio module, input
            //to audio module, output
            mem_address, song_done,//from graphics module, input
            //to graphics module, output
            song_done,//from memory module, input
            record_mode, song_choice, start_song, pause_song//to memory module, output
            );
endmodule