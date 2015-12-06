`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:29 12/02/2015 
// Design Name: 
// Module Name:    param_select 
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
an fsm that determines parameter selection.
determines song choice, effect choice, and record mode
outputs will be displayed on the 16hex interfance on the labkit.
also determines the whole blink_fo data on the modified display 16 hex module to show user
        where selection is.

    data:       {2'b00,state[1:0],4'b0000,seconds[7:0],4'b0000,000,play_record,4'b0000,songchoice,4'b0000,effectnums[27:0](tbd)}
    blink_data: 0000_0102_0334_4567
    blank_data: 1011_0101_0111_1111
                state(1), seconds(2), play/record(1), songchoice(1), effectnums(7) 
                
    // [0:4] echo - 32
    // [5:9] chorus - 32
    // [10:11] compression - 4
    // [12:13] limiter - 4
    // [14:16] distortion - 8
*/


module param_select(
    input reset,
    input clk,
    input blink_fo,
    input b_up, input b_down, input b_right, input b_left,
    output reg [0:15] blink_fo_data, //will be needed to be updated every clock cycle!!!! 
    output reg [3:0] song_name_sel, output reg [16:0] effect_choice_sel, 
	 output reg record_mode_sel
    );
    
    reg [2:0] blink_state; //what gets modified.... 8 states WHOOT
    //assigned as 0-1-2-3-4-5-6-7 with 1 being the leftmost change and 7 being the rightmost and 0 being none
    
    reg b_up_prev;
    reg b_down_prev;
    reg b_right_prev;
    reg b_left_prev;
   
    always @(posedge clk) begin
        if (reset) begin
            blink_fo_data <= 16'b0000_0000_0000_0000;
            blink_state <= 3'b0; //default blank
            song_name_sel <= 4'b0; //default song 0
            effect_choice_sel <= 17'b0; //default no effect changes
            record_mode_sel <= 1; //default record
            //update prevs
            b_up_prev <= b_up;
            b_down_prev <= b_down;
            b_right_prev <= b_right;
            b_left_prev <= b_left;
        end else begin
        
            //update prevs
            b_up_prev <= b_up;
            b_down_prev <= b_down;
            b_right_prev <= b_right;
            b_left_prev <= b_left;
            
            //handles state transitions (precedence over changes)
            if (b_right == 1 & b_right_prev == 0) begin
                blink_state <= blink_state + 1;
            end else if (b_left == 1 & b_left_prev == 0) begin
                blink_state <= blink_state - 1;
            end 
            
            else begin //handles incrementation changes (based on state)
                //in every case handle:
                //1. assigns blink_fo_data
                //2. checks for up/down updates and updates
                
               case (blink_state) //yeah this may have been a bit bulkier/dense than I thought it would be
                                    //better way for logic???? idk
                3'b000: begin //none
                    blink_fo_data <= 16'b0; //no blink!
                end
                3'b001: begin //play/record, 0-1
                    blink_fo_data <= {5'b0_0000,blink_fo,10'b00_0000_0000};
                    if (b_up == 1 & b_up_prev == 0) begin
                        record_mode_sel <= ~record_mode_sel;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        record_mode_sel <= ~record_mode_sel;
                    end 
                end
                3'b010: begin //song select 0-11
                    blink_fo_data <= {7'b000_0000,blink_fo,8'b0000_0000};
                    //special because max is 11!!!
                    if (b_up == 1 & b_up_prev == 0) begin
                        if (song_name_sel == 11) song_name_sel <= 0;
                        else song_name_sel <= song_name_sel + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        if (song_name_sel == 0) song_name_sel <= 11;
                        else song_name_sel <= song_name_sel - 1;
						  end
                end
                3'b011: begin //echo 0-31 0:4
                    blink_fo_data <= {9'b0_0000_0000,blink_fo,blink_fo,5'b0_0000};
                    if (b_up == 1 & b_up_prev == 0) begin
                        effect_choice_sel[4:0] <= effect_choice_sel[4:0] + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        effect_choice_sel[4:0] <= effect_choice_sel[4:0] - 1;
						  end
                end
                3'b100: begin //chorus 0-31 5:9
                    blink_fo_data <= {11'b0_0000,blink_fo,blink_fo,3'b000};
                    if (b_up == 1 & b_up_prev == 0) begin
                        effect_choice_sel[9:5] <= effect_choice_sel[9:5] + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        effect_choice_sel[9:5] <= effect_choice_sel[9:5] - 1;
						  end	
					 end
                3'b101: begin //compression 0-3 10:11
                    blink_fo_data <= {13'b0_0000_0000_0000,blink_fo,2'b00};
                    if (b_up == 1 & b_up_prev == 0) begin
                        effect_choice_sel[11:10] <= effect_choice_sel[11:10] + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        effect_choice_sel[11:10] <= effect_choice_sel[11:10] - 1;
                    end
					 end
                3'b110: begin //limiter 0-3 12:14
                    blink_fo_data <= {14'b00_0000_0000_0000,blink_fo,1'b0};
                    if (b_up == 1 & b_up_prev == 0) begin
                        effect_choice_sel[13:12] <= effect_choice_sel[13:12] + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        effect_choice_sel[13:12] <= effect_choice_sel[13:12] - 1;
                    end
					 end
                default: //3'b111, 
                        begin //distortion 0-8 14:16
                    blink_fo_data <= {15'b000_0000_0000_0000,blink_fo};
                    if (b_up == 1 & b_up_prev == 0) begin
                        effect_choice_sel[15:14] <= effect_choice_sel[15:14] + 1;
                    end else if (b_down == 1 & b_down_prev == 0) begin
                        effect_choice_sel[15:14] <= effect_choice_sel[15:14] - 1;
						  end	
					 end
            endcase
            end
        end
    end

endmodule
