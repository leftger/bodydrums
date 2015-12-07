//address calculator
/* :)
takes in address requests from the FSM
increments the address every 3 cycles of the clock
resets the address to the specified predetermined address location when start_song is asserted
pauses the address when pause_song is asserted
when address reaches maximum for song_choice during write, asserts song_done and stops incrementing til start
when address reaches max address during playback, asserts song_done and stops incrementing til start
*/

module addresscalculator(reset, clk, ready, /*clkmultik,*/ record_mode, 
            song_choice, start_song, pause_song,
            mem_address, song_done, spslsw);
            
    input reset; //reset, from switches
    input clk; // system clock, system
    input ready; //when data is available from ac97, from ac97 modules
    input [3:0] song_choice; //choice of 16 songs, i choose length, from fsm
    input start_song; //start to reset address, from fsm
    input pause_song; //pause to hold address incrementation, from fsm
    input record_mode; //1 if record, 0 if playback, from fsm
    input [1:0] spslsw; 	//speed up, slow down
	 reg everyotherready; //for slowdown
	 
    output reg [18:0] mem_address; //address in memory that should be accessed
    output reg song_done; //when song has reached some kind of max address (depending on mode), also used to suppress changes
    
    //start addresses
    parameter SONG1_ADDR = 0;
    parameter SONG2_ADDR = 240000;
    parameter SONG3_ADDR = 288000;
    parameter SONG4_ADDR = 336000;
    parameter SONG5_ADDR = 384000;
    parameter SONG6_ADDR = 432000;
    //max address
    parameter MAX_ADDR = 480000;
    
    reg [18:0] highest_addr[0:11]; //highest addr recorded for each song
    
    reg [3:0] addr_index; //index within highest_addr we are at
    reg [18:0] song_max; //max addr the song can go to when writing
    reg [1:0] counter3; //makes sure address is incremented every 3 sound bits
    
    reg record_state; //makes sure read/write is constant, fail-safe
    
    always @(posedge clk) begin
        if (reset) begin //reset
            counter3 <= 0;
            song_done <= 1; //not play a song until start is asserted
            highest_addr[0] <= SONG1_ADDR;
            highest_addr[1] <= SONG2_ADDR;
            highest_addr[2] <= SONG3_ADDR;
            highest_addr[3] <= SONG4_ADDR;
            highest_addr[4] <= SONG5_ADDR;
            highest_addr[5] <= SONG5_ADDR;
            highest_addr[6] <= SONG1_ADDR;
            highest_addr[7] <= SONG2_ADDR;
            highest_addr[8] <= SONG3_ADDR;
            highest_addr[9] <= SONG4_ADDR;
            highest_addr[10] <= SONG5_ADDR;
            highest_addr[11] <= SONG6_ADDR;
            record_state <= record_mode; //set record state
				everyotherready <= 0; //set
        end else begin
            if (start_song) begin
            
                record_state <= record_mode; //set record state
                song_done <= 0; //free to start incrementing address, unlocks functionality of code
                
                //uhm long case block :P based on song choice, choose song
                case(song_choice)
                    4'b0000: begin //song 1
                        mem_address <= SONG1_ADDR;
                        song_max <= SONG2_ADDR - 1;
                        if (record_mode) highest_addr[0] <= SONG1_ADDR;
                        addr_index <= 0;
                    end
                    4'b0001: begin //song 2
                        mem_address <= SONG2_ADDR;
                        song_max <= SONG3_ADDR - 1;
                        if (record_mode) highest_addr[1] <= SONG2_ADDR;
                        addr_index <= 1;
                    end
                    4'b0010: begin //song 3
                        mem_address <= SONG3_ADDR;
                        song_max <= SONG4_ADDR - 1;
                        if (record_mode) highest_addr[2] <= SONG3_ADDR;
                        addr_index <= 2;
                    end
                    4'b0011: begin //song 4
                        mem_address <= SONG4_ADDR;
                        song_max <= SONG5_ADDR - 1;
                        if (record_mode) highest_addr[3] <= SONG4_ADDR;
                        addr_index <= 3;
                    end
                    4'b0100: begin //song 5
                        mem_address <= SONG5_ADDR;
                        song_max <= SONG6_ADDR - 1;
                        if (record_mode) highest_addr[4] <= SONG5_ADDR;
                        addr_index <= 4;
                    end
                    4'b0101: begin //song 6
                        mem_address <= SONG6_ADDR;
                        song_max <= MAX_ADDR - 1;
                        if (record_mode) highest_addr[5] <= SONG6_ADDR;
                        addr_index <= 5;
                    end
                    4'b1000: begin //song 7
                        mem_address <= SONG1_ADDR;
                        song_max <= SONG2_ADDR - 1;
                        if (record_mode) highest_addr[6] <= SONG1_ADDR;
                        addr_index <= 6;
                    end
                    4'b1001: begin //song 8
                        mem_address <= SONG2_ADDR;
                        song_max <= SONG3_ADDR - 1;
                        if (record_mode) highest_addr[7] <= SONG2_ADDR;
                        addr_index <= 7;
                    end
                    4'b1010: begin //song 9
                        mem_address <= SONG3_ADDR;
                        song_max <= SONG4_ADDR - 1;
                        if (record_mode) highest_addr[8] <= SONG3_ADDR;
                        addr_index <= 8;
                    end
                    4'b1011: begin //song 10
                        mem_address <= SONG4_ADDR;
                        song_max <= SONG5_ADDR - 1;
                        if (record_mode) highest_addr[9] <= SONG4_ADDR;
                        addr_index <= 9;
                    end
                    4'b1100: begin //song 11
                        mem_address <= SONG5_ADDR;
                        song_max <= SONG6_ADDR - 1;
                        if (record_mode) highest_addr[10] <= SONG5_ADDR;
                        addr_index <= 10;
                    end
                    4'b1101: begin //song 12
                        mem_address <= SONG6_ADDR;
                        song_max <= MAX_ADDR - 1;
                        if (record_mode) highest_addr[11] <= SONG6_ADDR;
                        addr_index <= 11;
                    end
                    default: begin //default. no.
                        mem_address <= MAX_ADDR;
                        song_max <= MAX_ADDR;
                    end
                endcase
            end //start song
            
            //if not paused and not song done and ready increment the address and check if song finished
            else if (~pause_song & ~song_done & ready) begin 
					  // every other!
					  everyotherready <= ~everyotherready;
                //increment counter 
                if (counter3 == 2) counter3 <= 0; //reset
                else counter3 <= counter3 + 1; //increment
                
                //increment memaddress if counter3 == 0 if conditions are met
                if (counter3 == 0) begin
                
                    if (record_state) begin //write
                        if (mem_address < song_max) begin //increment mem_address and highest addr
                            mem_address <= mem_address + 1;
                            highest_addr[addr_index] <= highest_addr[addr_index] + 19'b1;
                        end else begin //if mem_address hit the song max
                            song_done <= 1; //stop incrementing addresses and writing
                        end
                    end 
                    
                    else begin //playback
                        if (mem_address < highest_addr[addr_index]) begin //increment memory address
                            if (spslsw[1] & ~spslsw[0]) begin //speed up
								mem_address <= mem_address + 2;
							end else if (spslsw[0] & ~spslsw[1]) begin //slow down
								if (everyotherready) mem_address <= mem_address + 1;
								end else begin //normal increment
									mem_address <= mem_address + 1;
								end
							end else begin //if mem_addr hits the highest_addr recorded
                            song_done <= 1; //stop incrementing addresses
                        end
                    end
                    
                end //read/write logic
                
            end //incrementing address logic
            
        end //non-reset logic
    end //always block
    
    
endmodule //    
