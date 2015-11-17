//memory processor
/*
determines when to write to memory and what should be written/read from memory
a translator between ac97 and the zbt memory output.
does not handle address calculation.
*/

module memprocessor(reset, clk, ready, /*clkmultik,*/ audio_in, start_song, 
      song_choice, record_mode, pause_song, 
        mem_read0, mem_read1, song_done,
        we0, we1, mem_write, audio_out);

    input reset; //reset, from switches
    input clk; // system clock, system
    input ready; //when data is available from ac97, from ac97 modules
    //input clkmultik; //uhm
    input [11:0] audio_in; //audio that comes from ac97 that is written to memory, from ac97 modules
    input start_song; //reset what goes in/out??? from fsm
    input [3:0] song_choice; //from fsm
    input pause_song; //stop song, leaving everything where it is..., from fsm
    input record_mode; //from fsm, 1 if record, 0 if playback, no fail-safe in this module, from fsm
    
    input song_done; //from addresscalculator
    input [35:0] mem_read0;  //memory read from ram 0
    input [35:0] mem_read1;  //memory read from ram 1
    
    output reg [35:0] mem_write;//memory that will be written to memory
    output reg [11:0] audio_out;//audio that will go out to speaker
    output reg we0; //write enable to zbt bank 0
    output reg we1; //write enable to zbt bank 1
    
    reg [35:0] last_read_mem; //memory bus to read audio from (prevents out of order audio samples)
    reg [1:0] counter3; //asserted every 3 24hz clock cycles
    reg every_other_ac97; //makes sure we sample only every other time data is available from ac97
    
    always @(posedge clk) begin
        if (reset) begin //reset eerything to 0
            mem_write <= 36'b0;
            audio_out <= audio_in;
            we0 <= 0;
            we1 <= 0;
            last_read_mem <= 0;
            counter3 <= 0;
            every_other_ac97 <= 0;
        end else begin
        
            //every other time ac97 data is available
            if (ready) every_other_ac97 <= ~every_other_ac97;
            
            //write logic
            //write if not paused, song not done, record mode, every other ready asserted, and counter3 == 0
            if (~pause_song & ~song_done & record_mode & ready & every_other_ac97 & counter3 == 0) begin
                if (song_choice[3]) begin //write to correct zbt SRAM
                    we1 <= 1;
                    we0 <= 0;
                end else begin
                    we0 <= 1;
                    we1 <= 0;
                end
            end else begin //else do not write!
                we0 <= 0;
                we1 <= 0;
            end //end writing logic
            
            //rest of the logic - what to write, what audio is
            if (ready & every_other_ac97 & ~pause_song & ~song_done) begin //if every other ready asserted and song not paused or done
            
                if (counter3 == 2) begin //counter3 ==2, update memory and reset counter3 to 0
                    //read new memory, make sure you read from correct bank, update last_read_mem
                    if (song_choice[3]) last_read_mem <= mem_read1; 
                    else last_read_mem <= mem_read0;
                    
                    counter3 <= 0; //reset counter3 to 0 
                end else counter3 <= counter3 + 1; //increment counter3
                
                case (counter3) //which part of last_read_mem you should be reading from for audio
                    2'b00: audio_out <= last_read_mem[35:24];
                    2'b01: audio_out <= last_read_mem[23:12];
                    2'b10: audio_out <= last_read_mem[11:0];
                    default: audio_out <= 12'b0; //invalid?
                endcase
                
                //update what will be written to memory, shift the mem_write
                mem_write <= {mem_write[23:0],audio_in};
            end
        end
    end
    
    
endmodule //    

