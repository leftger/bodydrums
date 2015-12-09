///////////////////////////////////////////////////////////////////////////////
//
// audio_FSM Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module audio_FSM
    (input clock,
    input reset,
    input playback,
    input new_sample_ready,
    input delay_enable,
    input [4:0] amount_of_delay,
    input chorus_enable,
    input compression_enable,
    input [1:0] compression_amount,
    input soft_limiter_enable,
    input hard_limiter_enable,
    input [1:0] hard_limiter_amount,
    input distortion_enable,
    input [2:0] distortion_amount,
    input signed [11:0] samples_in,
    output signed [11:0] to_ac97_data,
    output sample_ready);
    
    reg start_effects_modules;
    
    wire signed [11:0] delay_applied_sample;
    wire delay_done;
    delay_module delay(.clock(clock), .reset(reset), .start(start_effects_modules),
        .incoming_sample(samples_in), .delay_amount(amount_of_delay), 
        .enable(delay_enable), .modified_sample(delay_applied_sample),
        .done(delay_done));
    
    
    wire signed [11:0] chorus_applied_sample;
    wire chorus_done;
    chorus_effect chorus(.clock(clock), .reset(reset), .start(delay_done),
        .incoming_sample(delay_applied_sample), .enable(chorus_enable), 
        .modified_sample(chorus_applied_sample), .done(chorus_done));
    
    
    wire compression_done;
    wire signed [11:0] compression_applied_sample;
    compression compress(.clock(clock), .reset(reset), .start(chorus_done),
        .incoming_sample(chorus_applied_sample), 
        .compression_amount(compression_amount), .soft_limiter(soft_limiter_enable),
        .enable(compression_enable), .modified_sample(compression_applied_sample),
        .done(compression_done));
    
    
    wire hard_limiter_done;
    wire signed [11:0] hard_limiter_applied;
    limiter_module hard_limiter(.clock(clock), .reset(reset),
        .start(compression_done), .incoming_sample(compression_applied_sample),
        .limiting_amount(hard_limiter_amount), .enable(hard_limiter_enable), 
        .modified_sample(hard_limiter_applied), .done(hard_limiter_done));
        
    bitcrusher buttcrush(.clock(clock), .reset(reset), .start(hard_limiter_done),
        .enable(distortion_enable), .bits_to_crush(distortion_amount),
        .incoming_sample(hard_limiter_applied),.modified_sample(to_ac97_data),
        .done(sample_ready));
    
    always @(posedge clock) begin
       if (reset) begin
          start_effects_modules <= 1'b0;
       end
       
       start_effects_modules <= playback && new_sample_ready;
       
    end
    
endmodule


///////////////////////////////////////////////////////////////////////////////
//
// to_fft_selector Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module to_fft_selector #(parameter PLAYBACK = 1'b1,
	parameter RECORD = 1'b0)(
	input [11:0] from_fir_germain,
	input [11:0] from_ac97_audio,
	input [1:0] input_mode,
	output reg [11:0] to_fft);

	always @(input_mode) begin
		case(input_mode)
			1:

	end

endmodule


///////////////////////////////////////////////////////////////////////////////
//
// signed_binary_12bit_to_dB Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module signed_binary_12bit_to_dB
    (input clock,
    input reset,
    input start,
    input signed [11:0] input_binary,
    output reg signed [8:0] output_db,
    output reg done);
    
    // This module takes a 12-bit integer and converts it to NEGATIVE dB.
    // The maximum dB value we expect is 0dB. Anything else is considered to be
    // a NEGATIVE NUMBER even though it's encoded as a positive integer.
    // This module implements an algorithm that calculates dB of a binary number
    // to a precision of 0.5 dB (maximum error is found to be 0.5dB, which is
    // fine for this project).
    
    reg [11:0] absolute_value_input;
    reg [3:0] msb=4'd11;
    reg [3:0] r;
    
    wire [8:0] g_R;
    wire [8:0] effective_g_M;
    reg [1:0] state;
    
    parameter IDLE=2'b00;
    parameter FIND_MSB=2'b01;
    parameter OUTPUT=2'b10;
    
    lookup_g_R lookup1(.r(r), .g_R(g_R));
    lookup_effective_g_M lookup2(.msb(msb), .effective_g_M(effective_g_M));
    
    always @(posedge clock) begin
       if (reset) begin
          absolute_value_input <= 12'b0;
          msb <= 4'd11;
          r <= 4'b0;
          state <= IDLE;
       end
       
       case (state)
       // We want to take the input and find the absolute value of it.
       IDLE: begin
          done <= 1'b0;
          if (start) begin
             if (input_binary[11] == 1'b1) begin
                absolute_value_input <= -input_binary;
             end
             else begin
                absolute_value_input <= input_binary;
             end
             state <= FIND_MSB;
             msb <= 4'd11;
          end
       end
       
       // Find the most important bits (the most significant one and the four
       // bits after that (if there are any)
       FIND_MSB: begin
          if (absolute_value_input[11] == 1'b1) begin
             if (msb > 3) r <= absolute_value_input[10:7];
             // Account for the edge cases of msb being less than
             // or equal to 3
             else if (msb == 3) r <= {1'b0, absolute_value_input[10:8]};
             else if (msb == 2) r <= {2'b0, absolute_value_input[10:7]};
             else if (msb == 1) r <= {3'b0, absolute_value_input[10]};
             state <= OUTPUT;
          end
          else begin
             absolute_value_input <= absolute_value_input << 1;
             if (msb > 0) msb <= msb - 1;
             else begin
                msb <= 0;
                r <= 4'b0;
                state <= OUTPUT;
             end
          end
       end
       // Once the corresponding values have been found in their
       // lookup tables, you can combine them and divide by 4 to get
       // the actual magnitude of the sample in dB.
       OUTPUT: begin
          output_db <= (effective_g_M - g_R) / 4;
          done <= 1'b1;
          state <= IDLE;
       end
       default: begin
          if (start) begin
             if (input_binary[11] == 1'b1) begin
                absolute_value_input <= -input_binary;
             end
             else begin
                absolute_value_input <= input_binary;
             end
             state <= FIND_MSB;
             msb <= 4'd11;
             done <= 1'b0;
          end
       end
       endcase
    end
endmodule

// These are the lookup tables for the signed_binary_to_dB module.

module lookup_g_R
    (input [3:0] r,
    output reg [8:0] g_R);
    
    always @(r) begin
       case (r)
       4'd0: g_R = 9'd0;
       4'd1: g_R = 9'd2;
       4'd2: g_R = 9'd4;
       4'd3: g_R = 9'd6;
       4'd4: g_R = 9'd8;
       4'd5: g_R = 9'd9;
       4'd6: g_R = 9'd11;
       4'd7: g_R = 9'd13;
       4'd8: g_R = 9'd14;
       4'd9: g_R = 9'd16;
       4'd10: g_R = 9'd17;
       4'd11: g_R = 9'd18;
       4'd12: g_R = 9'd19;
       4'd13: g_R = 9'd21;
       4'd14: g_R = 9'd22;
       4'd15: g_R = 9'd23;
       endcase
    end
endmodule

module lookup_effective_g_M
    (input [3:0] msb,
    output reg [8:0] effective_g_M);
    
    always @(msb) begin
       case (msb)
       4'd0: effective_g_M = 9'd265;
       4'd1: effective_g_M = 9'd241;
       4'd2: effective_g_M = 9'd217;
       4'd3: effective_g_M = 9'd193;
       4'd4: effective_g_M = 9'd169;
       4'd5: effective_g_M = 9'd145;
       4'd6: effective_g_M = 9'd120;
       4'd7: effective_g_M = 9'd96;
       4'd8: effective_g_M = 9'd72;
       4'd9: effective_g_M = 9'd48;
       4'd10: effective_g_M = 9'd24;
       4'd11: effective_g_M = 9'd0;
       default: effective_g_M = 9'd0;
       endcase
    end
endmodule



///////////////////////////////////////////////////////////////////////////////
//
// bitcrusher Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////



module bitcrusher
    (input clock,
    input reset,
    input start,
    input enable,
    input [2:0] bits_to_crush,
    input signed [11:0] incoming_sample,
    output reg signed [11:0] modified_sample,
    output reg done);
    
    reg state;
    parameter  IDLE=1'b0;
    parameter  BITCRUSH=1'b1;
    
    reg signed [11:0] sample_to_bitcrush=12'b000;

    
    
    always @(posedge clock) begin
       if (reset) begin
          modified_sample <= 12'h000;
          done <= 1'b0;
          sample_to_bitcrush <= 12'h000;
          state <= IDLE;
       end
       
       if (start) begin
          case (enable)
          
          1'b0: begin
             modified_sample <= incoming_sample;
             state <= IDLE;
             done <= 1'b1;
             
          end
          1'b1: begin
             case (state)
                   
                IDLE: begin
                   done <= 1'b0;
                   if (bits_to_crush>=3'b001) begin
                      sample_to_bitcrush <= incoming_sample >>> bits_to_crush;
                      state <= BITCRUSH;
                   end
                   else begin
                      modified_sample <= incoming_sample;
                      state <= IDLE;
                   end
                   
                end
                BITCRUSH: begin
                   modified_sample <= sample_to_bitcrush <<< bits_to_crush;
                   done <= 1'b1;
                   state <= IDLE;
                end
             endcase
          end
          endcase
       end
    end
endmodule



///////////////////////////////////////////////////////////////////////////////
//
// Chorus_effect Module
//
///////////////////////////////////////////////////////////////////////////////

module chorus_effect
    (input clock,
    input reset,
    input start,
    input enable,
    input signed [11:0] incoming_sample,
    output signed [11:0] modified_sample,
    output done);
    
    
    // The Chorus effect is achieved by concatenating 4 echo modules,
    // each of which having a different delay_amount.
    
    
    // 30 ms delay
    wire signed [11:0] delay_sample_1;
    wire delay_1_done;
    delay_module delay_1(.clock(clock), .reset(reset), .start(start),
        .incoming_sample(incoming_sample), .delay_amount(5'b00011),
        .enable(enable), .modified_sample(delay_sample_1),
        .done(delay_1_done));
    
    
    
    // 70 ms delay
    wire signed [11:0] delay_sample_2;
    wire delay_2_done;
    delay_module delay_2(.clock(clock), .reset(reset), .start(delay_1_done),
        .incoming_sample(delay_sample_1), .delay_amount(5'b00111),
        .enable(enable), .modified_sample(delay_sample_2),
        .done(delay_2_done));
    
    
    // 150 ms delay
    wire signed [11:0] delay_sample_3;
    wire delay_3_done;
    delay_module delay_3(.clock(clock), .reset(reset), .start(delay_2_done),
        .incoming_sample(delay_sample_2), .delay_amount(5'b01111),
        .enable(enable), .modified_sample(delay_sample_3),
        .done(delay_3_done));
    
    
    // 310 ms delay
    delay_module delay_4(.clock(clock), .reset(reset), .start(delay_3_done),
        .incoming_sample(delay_sample_3), .delay_amount(5'b11111),
        .enable(enable), .modified_sample(modified_sample),
        .done(done));
    

endmodule



///////////////////////////////////////////////////////////////////////////////
//
// compression Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module compression #(parameter SAMPLING_RATE=24000)
    (input clock, 
    input reset, 
    input start,
    input signed [11:0] incoming_sample,
    input [1:0] compression_amount,
    input soft_limiter,
    input enable,
    output reg signed [11:0] modified_sample,
    output reg done);
    
    wire db_convert_done;
    wire signed [8:0] sample_db;
    
    reg start_compression;
    
    wire signed [11:0] outgoing_sample;
    wire compression_done;
    
    // Always check to see if compression is enabled.
    // If it is not enabled, the input samples should be the same
    // as the output samples.
    always @(posedge clock) begin
       if (reset) begin
          start_compression <= 1'b0;
          modified_sample <= 12'h000;
          done <= 1'b0;
          
       end
       
       case (enable)
       1'b0: begin
          start_compression <= 1'b0;
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       
       // If compression is enabled, check to see if the compression
       // amount is not zero. If it is actually a number, we can 
       // start up the compression module and wait until the
       // compression module is finished to output the done signal.
       1'b1: begin
          if (compression_amount == 2'b00) begin
             modified_sample <= incoming_sample;
             start_compression <= 1'b0;
             done <= 1'b1;
          end
          else begin
             start_compression <= 1'b1;
             modified_sample <= outgoing_sample;
             done <= compression_done;
          end
       
       end
       endcase
    end
    
    signed_binary_12bit_to_dB converter(.clock(clock), .reset(reset),
        .start(start_compression), .input_binary(incoming_sample), .output_db(sample_db),
        .done(db_convert_done));
        
    
    wire gain_computer_done;
    wire signed [8:0] computed_db;
    wire signed [8:0] computed_level;
    compression_gain_computer gain_computer(.clock(clock), .reset(reset),
        .start(db_convert_done), .compression_amount(compression_amount),
        .input_db(sample_db), .output_db(computed_db),
        .output_level(computed_level), .done(gain_computer_done));
        
    
    wire level_detector_done;
    wire signed [8:0] calculated_gain;
    compression_level_detector level_detector(.clock(clock), .reset(reset),
        .start(gain_computer_done), .soft_limiter(soft_limiter), 
        .input_level(computed_level), .output_gain(calculated_gain), 
        .done(level_detector_done));
    
    
    
    variable_gain apply_gain(.clock(clock), .reset(reset), .start(level_detector_done), 
       .incoming_sample(incoming_sample), .input_gain(calculated_gain), 
       .compressed_sample(outgoing_sample), .done(compression_done));
   
endmodule



`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// compression_gain_computer Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module compression_gain_computer #(parameter THRESHOLD=18)
    (input clock,
    input reset,
    input start,
    input [1:0] compression_amount,
    input signed [8:0] input_db,
    output reg signed [8:0] output_db,
    output reg signed [8:0] output_level,
    output reg done);
    
    reg [1:0] state;
    reg [8:0] threshold_amount;
    reg signed [10:0] modified_db;
    
    reg [8:0] calculate_threshold_gain;
    
    parameter IDLE=2'b00;
    parameter INPUT_LESS_THAN_THRESHOLD=2'b01;
    parameter INPUT_GREATER_THAN_THRESHOLD=2'b10;
    parameter COMPUTE_LEVEL=2'b11;
    
    
    parameter LIMITER=1'b1;
    parameter COMPRESSOR=1'b0;
    
    
    always @(posedge clock) begin
       
       if (reset) begin 
          state <= IDLE;
          threshold_amount <= (THRESHOLD << compression_amount);
          output_db <= 9'h000;
          done <= 1'b0;
       end
       
       case (state)
       
       IDLE: begin
          done <= 1'b0;
          if (start) begin
             if (input_db >= THRESHOLD) state <= INPUT_LESS_THAN_THRESHOLD;     
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 calculate_threshold_gain <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD;
             end
          end
       end
       
       INPUT_LESS_THAN_THRESHOLD: begin
          output_db <= input_db;
          state <= COMPUTE_LEVEL;
       end
       
       INPUT_GREATER_THAN_THRESHOLD: begin
          output_db <= calculate_threshold_gain >> compression_amount;
          state <= COMPUTE_LEVEL;
       end
       
       COMPUTE_LEVEL: begin
          output_level <= input_db - output_db;
          done <= 1'b1;
          state <= IDLE;
       end
       
       default: begin
          if (start) begin
             done <= 1'b0;
             if (input_db >= THRESHOLD) state <= INPUT_LESS_THAN_THRESHOLD;
             else begin
             // Remember that input_db represents a NEGATIVE number in dB, 
             // and that the maximum value we can encode in dB is 0dB.
                 output_db <= (threshold_amount + (input_db - THRESHOLD));
                 state <= INPUT_GREATER_THAN_THRESHOLD;
             end
          end
       end
       
       endcase
       
      
    end

endmodule


`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// delayModule (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module delay_module #(parameter SAMPLING_RATE=24000, SAMPLES=240)
    (input clock,
    input reset,
    input start,
    input signed [11:0] incoming_sample,
    input [4:0] delay_amount,
    input enable,
    output reg signed [11:0] modified_sample=12'h000,
    output reg done);
    
    // Need to store anywhere between 10 ms worth of samples and
    // 320 ms worth of samples into BRAM. A better implementation would just pull
    // past samples from the ZBT memory, but I'm assuming that I don't have any
    // access to the ZBT memory.
    
    reg [12:0] addr=13'h0000;
    
    reg [12:0] current_pointer=12'h000;
    reg [12:0] delayed_pointer=12'h000;
    
    
    reg write=1'b0;
    reg signed [11:0] mem_in=12'h000;
    wire signed [11:0] mem_out;
    
    
    reg [12:0] wait_for_memory=13'h0000;
    
    // This reg stores a version of the stored, delayed sample that is multiplied by 7.
    
    reg signed [14:0] stored_sample=15'h0000;
    
    // To have a delay from 10 ms to 320 ms, need to count
    // up to 32 *0.01 s * 240 samples per 0.01 s = 7680 samples. This means
    // we need log(7680) / log(2) = about 13 bits for the memory address bank.
    // Of course, that means we have 8192 memory locations by 12 bits 
    // worth of memory to work with.
    
    mybram #(.LOGSIZE(13),.WIDTH(12))
       store_delay_samples(.addr(addr),.clk(clock),
       .we(write),.din(mem_in),.dout(mem_out));
       
    reg [2:0] delay_state=3'b000;
    
    parameter IDLE=3'b000;
    parameter READ_DELAYED_SAMPLE=3'b001;
    parameter SCALE_DELAYED_SAMPLE=3'b010;
    parameter COMBINE_DELAYED_SAMPLE=3'b100;
    parameter WAIT_ONE_SAMPLE=3'b101;
    parameter WAIT_ANOTHER_SAMPLE=3'b110;
    
    parameter GARBAGE_MEMORY=3'b111;
    
    // This thing has 5 states:
    // 00: do nothing until ready is asserted.
    // 01: start up the delay effects, write current sample into memory location
    // 02: read sample from delayed memory location
    // 03: combine sample from delayed memory location with current sample.
    
    always @(posedge clock) begin
       
       
       // If we change any parameters, we should engage reset and bring the echo
       // module back to normal.
       if (reset) begin
          current_pointer <= 12'h000;
          delayed_pointer <= 12'h000;
          modified_sample <= 12'h000;
          addr <= 12'h000;
          write <= 1'b0;
          stored_sample <= 15'h0000;
          done <= 1'b0;
          wait_for_memory <= 12'b0;
       end
       
       
       case(enable)
       
       1'b0: begin
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       1'b1: begin
       
          // If we don't set a delay amount in, then the incoming and outgoing
          // samples should be exactly the same.
          if (delay_amount == 5'b0) begin
             modified_sample <= incoming_sample;
             done <= 1'b1;
          end
       
          // The way echo works is through this difference equation:
          // y[n] = x[n] + c*y[n-m], where m is delay_amount,
          // x[n] is incoming_sample, y is modified_sample, and 
          // c = a coefficient between 0 and 1 (I used 7/8).
          else begin
             case(delay_state)
                IDLE: begin
                   if (start) begin
                      done <= 1'b0;
                      current_pointer <= current_pointer + 13'h1;
                      delayed_pointer <= current_pointer - (SAMPLES*delay_amount);
                      write <= 1'b0;
                      if (wait_for_memory < (SAMPLES*delay_amount)) begin
                         wait_for_memory <= wait_for_memory + 13'h1;
                         delay_state <= GARBAGE_MEMORY;
                      end
                      else delay_state <= READ_DELAYED_SAMPLE;
                   end
                end
                
                READ_DELAYED_SAMPLE: begin
                   addr <= delayed_pointer;
                   write <= 1'b0;
                   delay_state <= WAIT_ONE_SAMPLE;
                end
                
                SCALE_DELAYED_SAMPLE: begin
                   stored_sample <= mem_out;
                   delay_state <= COMBINE_DELAYED_SAMPLE;
                end
                
                WAIT_ONE_SAMPLE: delay_state <= WAIT_ANOTHER_SAMPLE;
                
                WAIT_ANOTHER_SAMPLE: delay_state <= SCALE_DELAYED_SAMPLE;
                
                
                COMBINE_DELAYED_SAMPLE: begin
                   modified_sample <= (incoming_sample >>> 1) + (stored_sample >>> 1);
                   addr <= current_pointer;
                   write <= 1'b1;
                   mem_in <= (incoming_sample >>> 1) + (stored_sample >>> 1);
                   delay_state <= IDLE;
                   done <= 1'b1;
                end
             
                GARBAGE_MEMORY: begin
                   addr <= current_pointer;
                   write <= 1'b1;
                   mem_in <= incoming_sample >>> 1;
                   modified_sample <= incoming_sample >>> 1;
                   delay_state <= IDLE;
                   done <= 1'b1;
                end
             
                default: begin
                   if (start) begin
                      done <= 1'b0;
                      current_pointer <= current_pointer + 12'd1;
                      delayed_pointer <= current_pointer - (SAMPLES*delay_amount);
                      write <= 1'b0; 
                      if (wait_for_memory < (SAMPLES*delay_amount)) begin
                         wait_for_memory <= wait_for_memory + 13'h1;
                         delay_state <= GARBAGE_MEMORY;
                      end
                      else delay_state <= READ_DELAYED_SAMPLE;
                   end
                end
             endcase
          end
       end
       endcase
    end
endmodule


`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// limiter Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////

module limiter_module #(parameter SAMPLING_RATE=24000)
    (input clock,
    input reset,
    input start,
    input signed [11:0] incoming_sample,
    input [1:0] limiting_amount,
    input enable,
    output reg signed [11:0] modified_sample,
    output reg done
    );
    
    // Note: since we are using a signed 12-bit encoding, remember that
    // the encoded bit values can be from -(2^(n-1)) = -2048 to 
    // 2^(n-1) - 1 = 2047 (where n is the number of bits)
    
    
    // This module implements "hard limiting", which clips the signal at
    // a certain amplitude threshold that we set with the switches (limiting_amount)
    
    reg [11:0] last_sample;
    
    always @(posedge clock) begin
       if (reset) begin
          modified_sample <= 12'h000;
          done <= 1'b0;
          last_sample <= 12'h000;
       end
       
       
       case (enable)
       1'b0: begin
          modified_sample <= incoming_sample;
          done <= 1'b1;
       end
       
       1'b1: begin
          if (start) begin
             // Take one clock cycle up. Compare the last sample to this sample.
             // If they are not the same, then our results need to be
             // recalculated in the next clock cycle.
             case(limiting_amount)
                
             // In this setting, the limiter should do nothing.
             2'b00: begin
                 modified_sample <= incoming_sample;
             end
                
             // This is the "90% limiting" setting.
             // If the incoming sample is larger than 90% of the maximum amplitude
             // we can encode, then we cut it off at 90%.
             2'b01: begin
                if (incoming_sample > 1024) modified_sample <= 1024;
                else if (incoming_sample < -1024) modified_sample <= -1024;
                else modified_sample <= incoming_sample;
             end
             
             // This is the "75% limiting" setting.
             // If the incoming sample is larger than 75% of the maximum amplitude
             // we can encode, then we cut it off at 75%.
             2'b10: begin
                if (incoming_sample > 512) modified_sample <= 512;
                else if (incoming_sample < -512) modified_sample <= -512;
                else modified_sample <= incoming_sample;
             end
                
             // This is the "50% limiting" setting.
             // If the incoming sample is larger than 50% of the maximum amplitude
             // we can encode, then we cut it off at 50%.
             2'b11: begin
                if (incoming_sample > 256) modified_sample <= 256;
                else if (incoming_sample < -256) modified_sample <= -256;
                else modified_sample <= incoming_sample;
             end
             endcase
             // In any case, it should take us one clock cycle to do
             // the compare. We can now assert done.
             done <= 1'b1;
          end
       end
       endcase
    end
endmodule



`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
//
// variable_gain Module (Written by Germain Martinez)
//
///////////////////////////////////////////////////////////////////////////////



module variable_gain
    (input clock,
    input reset,
    input start,
    input signed [11:0] incoming_sample,
    input signed [8:0] input_gain,
    output reg signed [11:0] compressed_sample,
    output reg done);
    
    reg signed [8:0] modified_input_gain;
    reg signed [8:0] modified_input_sample;
    reg signed [12:0] multiplication_factor;
    
    reg signed [24:0] scaled_sample;
    
    
    reg [1:0] state;
    
    // States that the variable_gain machine can be in.
    parameter IDLE=2'b00;
    parameter FIND_GAIN=2'b01;
    parameter APPLY_GAIN=2'b10;
    parameter DIVIDE_AND_OUTPUT=2'b11;
    
    always @(posedge clock) begin
       
       // If the module needs to be reset, then bring all registers
       // to a known state.
       if (reset) begin
          compressed_sample <= 12'h000;
          done <= 1'b0;
          state <= IDLE;
          modified_input_gain <= 9'h000;
          modified_input_sample <= 9'h000;
          multiplication_factor <= 9'sd256;
          scaled_sample <= 25'b0;
          
       end
       
       case (state)
       
       
       
       IDLE: begin
          
          if (start) begin
             modified_input_gain <= input_gain >>> 1;
             state <= FIND_GAIN;
             done <= 1'b0;
          end
       end
       
       // Now we convert the dB gain into a "binary" gain that we can actually use.
       
       FIND_GAIN: begin
          if (modified_input_gain > 20) begin
             multiplication_factor <= 13'sd2560;
          end
          
          else if (modified_input_gain < -20) begin
             multiplication_factor <= 13'sd2560;
          end
          
          else begin
             case (modified_input_gain)
             9'sd20: multiplication_factor <= 13'sd2560;
             9'sd19: multiplication_factor <= 13'sd2281;
             9'sd18: multiplication_factor <= 13'sd2033;
             9'sd17: multiplication_factor <= 13'sd1812;
             9'sd16: multiplication_factor <= 13'sd1615;
             9'sd15: multiplication_factor <= 13'sd1439;
             9'sd14: multiplication_factor <= 13'sd1283;
             9'sd13: multiplication_factor <= 13'sd1143;
             9'sd12: multiplication_factor <= 13'sd1019;
             9'sd11: multiplication_factor <= 13'sd908;
             9'sd10: multiplication_factor <= 13'sd809;
             9'sd9: multiplication_factor <= 13'sd721;
             9'sd8: multiplication_factor <= 13'sd643;
             9'sd7: multiplication_factor <= 13'sd573;
             9'sd6: multiplication_factor <= 13'sd510;
             9'sd5: multiplication_factor <= 13'sd455;
             9'sd4: multiplication_factor <= 13'sd405;
             9'sd3: multiplication_factor <= 13'sd361;
             9'sd2: multiplication_factor <= 13'sd322;
             9'sd1: multiplication_factor <= 13'sd287;
             9'sd0: multiplication_factor <= 13'sd256;
             -9'sd1: multiplication_factor <= 13'sd228;
             -(9'sd2): multiplication_factor <= 13'sd203;
             -(9'sd3): multiplication_factor <= 13'sd181;
             -(9'sd4): multiplication_factor <= 13'sd161;
             -(9'sd5): multiplication_factor <= 13'sd143;
             -(9'sd6): multiplication_factor <= 13'sd128;
             -(9'sd7): multiplication_factor <= 13'sd114;
             -(9'sd8): multiplication_factor <= 13'sd102;
             -(9'sd9): multiplication_factor <= 13'sd91;
             -(9'sd10): multiplication_factor <= 13'sd81;
             -(9'sd11): multiplication_factor <= 13'sd72;
             -(9'sd12): multiplication_factor <= 13'sd64;
             -(9'sd13): multiplication_factor <= 13'sd57;
             -(9'sd14): multiplication_factor <= 13'sd51;
             -(9'sd15): multiplication_factor <= 13'sd46;
             -(9'sd16): multiplication_factor <= 13'sd41;
             -(9'sd17): multiplication_factor <= 13'sd36;
             -(9'sd18): multiplication_factor <= 13'sd32;
             -(9'sd19): multiplication_factor <= 13'sd29;
             -9'sd20: multiplication_factor <= 13'sd26;
             default: multiplication_factor <= 13'sd256;
             endcase
          end
          
          state <= APPLY_GAIN;
          
       end
       
       // One clock cycle for multiplies (because they can take a lot of time, especially with
       // 12-bit by 13-bit multiplies.
       APPLY_GAIN: begin
          scaled_sample <= incoming_sample * multiplication_factor;
          state <= DIVIDE_AND_OUTPUT;
       end
       
       
       // Divide by 128.
       DIVIDE_AND_OUTPUT: begin
          compressed_sample <= scaled_sample[19:8];
          state <= IDLE;
          done <= 1'b1;
       end
       
       endcase
    end
endmodule



///////////////////////////////////////////////////////////////////////////////
//
// AC97 Module (taken from lab5a)
//
///////////////////////////////////////////////////////////////////////////////
// assemble/disassemble AC97 serial frames
module ac97 (ready,
             command_address, command_data, command_valid,
             left_data, left_valid,
             right_data, right_valid,
             left_in_data, right_in_data,
             ac97_sdata_out, ac97_sdata_in, ac97_synch, ac97_bit_clock);

   output ready;
   input [7:0] command_address;
   input [15:0] command_data;
   input command_valid;
   input [19:0] left_data, right_data;
   input left_valid, right_valid;
   output [19:0] left_in_data, right_in_data;

   input ac97_sdata_in;
   input ac97_bit_clock;
   output ac97_sdata_out;
   output ac97_synch;

   reg ready;

   reg ac97_sdata_out;
   reg ac97_synch;

   reg [7:0] bit_count;

   reg [19:0] l_cmd_addr;
   reg [19:0] l_cmd_data;
   reg [19:0] l_left_data, l_right_data;
   reg l_cmd_v, l_left_v, l_right_v;
   reg [19:0] left_in_data, right_in_data;

   initial begin
      ready <= 1'b0;
      // synthesis attribute init of ready is "0";
      ac97_sdata_out <= 1'b0;
      // synthesis attribute init of ac97_sdata_out is "0";
      ac97_synch <= 1'b0;
      // synthesis attribute init of ac97_synch is "0";

      bit_count <= 8'h00;
      // synthesis attribute init of bit_count is "0000";
      l_cmd_v <= 1'b0;
      // synthesis attribute init of l_cmd_v is "0";
      l_left_v <= 1'b0;
      // synthesis attribute init of l_left_v is "0";
      l_right_v <= 1'b0;
      // synthesis attribute init of l_right_v is "0";

      left_in_data <= 20'h00000;
      // synthesis attribute init of left_in_data is "00000";
      right_in_data <= 20'h00000;
      // synthesis attribute init of right_in_data is "00000";
   end

   always @(posedge ac97_bit_clock) begin
      // Generate the sync signal
      if (bit_count == 255)
        ac97_synch <= 1'b1;
      if (bit_count == 15)
        ac97_synch <= 1'b0;

      // Generate the ready signal
      if (bit_count == 128)
        ready <= 1'b1;
      if (bit_count == 2)
        ready <= 1'b0;

      // Latch user data at the end of each frame. This ensures that the
      // first frame after reset will be empty.
      if (bit_count == 255)
        begin
           l_cmd_addr <= {command_address, 12'h000};
           l_cmd_data <= {command_data, 4'h0};
           l_cmd_v <= command_valid;
           l_left_data <= left_data;
           l_left_v <= left_valid;
           l_right_data <= right_data;
           l_right_v <= right_valid;
        end

      if ((bit_count >= 0) && (bit_count <= 15))
        // Slot 0: Tags
        case (bit_count[3:0])
          4'h0: ac97_sdata_out <= 1'b1;      // Frame valid
          4'h1: ac97_sdata_out <= l_cmd_v;   // Command address valid
          4'h2: ac97_sdata_out <= l_cmd_v;   // Command data valid
          4'h3: ac97_sdata_out <= l_left_v;  // Left data valid
	  4'h4: ac97_sdata_out <= l_right_v; // Right data valid
          default: ac97_sdata_out <= 1'b0;
        endcase

      else if ((bit_count >= 16) && (bit_count <= 35))
        // Slot 1: Command address (8-bits, left justified)
        ac97_sdata_out <= l_cmd_v ? l_cmd_addr[35-bit_count] : 1'b0;

      else if ((bit_count >= 36) && (bit_count <= 55))
        // Slot 2: Command data (16-bits, left justified)
        ac97_sdata_out <= l_cmd_v ? l_cmd_data[55-bit_count] : 1'b0;

      else if ((bit_count >= 56) && (bit_count <= 75))
        begin
           // Slot 3: Left channel
           ac97_sdata_out <= l_left_v ? l_left_data[19] : 1'b0;
           l_left_data <= { l_left_data[18:0], l_left_data[19] };
        end
      else if ((bit_count >= 76) && (bit_count <= 95))
        // Slot 4: Right channel
           ac97_sdata_out <= l_right_v ? l_right_data[95-bit_count] : 1'b0;
      else
        ac97_sdata_out <= 1'b0;

      bit_count <= bit_count+1;

   end // always @ (posedge ac97_bit_clock)

   always @(negedge ac97_bit_clock) begin
      if ((bit_count >= 57) && (bit_count <= 76))
        // Slot 3: Left channel
        left_in_data <= { left_in_data[18:0], ac97_sdata_in };
      else if ((bit_count >= 77) && (bit_count <= 96))
        // Slot 4: Right channel
        right_in_data <= { right_in_data[18:0], ac97_sdata_in };
   end

endmodule



///////////////////////////////////////////////////////////////////////////////
//
// ac97commands Module (taken from lab5a)
//
///////////////////////////////////////////////////////////////////////////////
// issue initialization commands to AC97
module ac97commands (clock, ready, command_address, command_data,
                     command_valid, volume, source);

   input clock;
   input ready;
   output [7:0] command_address;
   output [15:0] command_data;
   output command_valid;
   input [4:0] volume;
   input [2:0] source;

   reg [23:0] command;
   reg command_valid;

   reg [3:0] state;

   initial begin
      command <= 4'h0;
      // synthesis attribute init of command is "0";
      command_valid <= 1'b0;
      // synthesis attribute init of command_valid is "0";
      state <= 16'h0000;
      // synthesis attribute init of state is "0000";
   end

   assign command_address = command[23:16];
   assign command_data = command[15:0];

   wire [4:0] vol;
   assign vol = 31-volume;  // convert to attenuation

   always @(posedge clock) begin
      if (ready) state <= state+1;

      case (state)
        4'h0: // Read ID
          begin
             command <= 24'h80_0000;
             command_valid <= 1'b1;
          end
        4'h1: // Read ID
          command <= 24'h80_0000;
        4'h3: // headphone volume
          command <= { 8'h04, 3'b000, vol, 3'b000, vol };
        4'h5: // PCM volume
          command <= 24'h18_0808;
        4'h6: // Record source select
          command <= { 8'h1A, 5'b00000, source, 5'b00000, source};
        4'h7: // Record gain = max
	  command <= 24'h1C_0F0F;
        4'h9: // set +20db mic gain
          command <= 24'h0E_8048;
        4'hA: // Set beep volume
          command <= 24'h0A_0000;
        4'hB: // PCM out bypass mix1
          command <= 24'h20_8000;
        default:
          command <= 24'h80_0000;
      endcase // case(state)
   end // always @ (posedge clock)
endmodule // ac97commands



///////////////////////////////////////////////////////////////////////////////
//
// generate PCM data for 750hz sine wave (assuming f(ready) = 48khz)
//
///////////////////////////////////////////////////////////////////////////////

module tone750hz (clock, ready, pcm_data);
   input clock;
   input ready;
   output [19:0] pcm_data;
   
   reg [8:0] index;
   reg [19:0] pcm_data;

   initial begin
      // synthesis attribute init of old_ready is "0";
      index <= 8'h00;
      // synthesis attribute init of index is "00";
      pcm_data <= 20'h00000;
      // synthesis attribute init of pcm_data is "00000";
   end
   
   always @(posedge clock) begin
      if (ready) index <= index+1;
   end
   
   // one cycle of a sinewave in 64 20-bit samples
   always @(index) begin
      case (index[5:0])
        6'h00: pcm_data <= 20'h00000;
        6'h01: pcm_data <= 20'h0C8BD;
        6'h02: pcm_data <= 20'h18F8B;
        6'h03: pcm_data <= 20'h25280;
        6'h04: pcm_data <= 20'h30FBC;
        6'h05: pcm_data <= 20'h3C56B;
        6'h06: pcm_data <= 20'h471CE;
        6'h07: pcm_data <= 20'h5133C;
        6'h08: pcm_data <= 20'h5A827;
        6'h09: pcm_data <= 20'h62F20;
        6'h0A: pcm_data <= 20'h6A6D9;
        6'h0B: pcm_data <= 20'h70E2C;
        6'h0C: pcm_data <= 20'h7641A;
        6'h0D: pcm_data <= 20'h7A7D0;
        6'h0E: pcm_data <= 20'h7D8A5;
        6'h0F: pcm_data <= 20'h7F623;
        6'h10: pcm_data <= 20'h7FFFF;
        6'h11: pcm_data <= 20'h7F623;
        6'h12: pcm_data <= 20'h7D8A5;
        6'h13: pcm_data <= 20'h7A7D0;
        6'h14: pcm_data <= 20'h7641A;
        6'h15: pcm_data <= 20'h70E2C;
        6'h16: pcm_data <= 20'h6A6D9;
        6'h17: pcm_data <= 20'h62F20;
        6'h18: pcm_data <= 20'h5A827;
        6'h19: pcm_data <= 20'h5133C;
        6'h1A: pcm_data <= 20'h471CE;
        6'h1B: pcm_data <= 20'h3C56B;
        6'h1C: pcm_data <= 20'h30FBC;
        6'h1D: pcm_data <= 20'h25280;
        6'h1E: pcm_data <= 20'h18F8B;
        6'h1F: pcm_data <= 20'h0C8BD;
        6'h20: pcm_data <= 20'h00000;
        6'h21: pcm_data <= 20'hF3743;
        6'h22: pcm_data <= 20'hE7075;
        6'h23: pcm_data <= 20'hDAD80;
        6'h24: pcm_data <= 20'hCF044;
        6'h25: pcm_data <= 20'hC3A95;
        6'h26: pcm_data <= 20'hB8E32;
        6'h27: pcm_data <= 20'hAECC4;
        6'h28: pcm_data <= 20'hA57D9;
        6'h29: pcm_data <= 20'h9D0E0;
        6'h2A: pcm_data <= 20'h95927;
        6'h2B: pcm_data <= 20'h8F1D4;
        6'h2C: pcm_data <= 20'h89BE6;
        6'h2D: pcm_data <= 20'h85830;
        6'h2E: pcm_data <= 20'h8275B;
        6'h2F: pcm_data <= 20'h809DD;
        6'h30: pcm_data <= 20'h80000;
        6'h31: pcm_data <= 20'h809DD;
        6'h32: pcm_data <= 20'h8275B;
        6'h33: pcm_data <= 20'h85830;
        6'h34: pcm_data <= 20'h89BE6;
        6'h35: pcm_data <= 20'h8F1D4;
        6'h36: pcm_data <= 20'h95927;
        6'h37: pcm_data <= 20'h9D0E0;
        6'h38: pcm_data <= 20'hA57D9;
        6'h39: pcm_data <= 20'hAECC4;
        6'h3A: pcm_data <= 20'hB8E32;
        6'h3B: pcm_data <= 20'hC3A95;
        6'h3C: pcm_data <= 20'hCF044;
        6'h3D: pcm_data <= 20'hDAD80;
        6'h3E: pcm_data <= 20'hE7075;
        6'h3F: pcm_data <= 20'hF3743;
      endcase // case(index[5:0])
   end // always @ (index)
endmodule




///////////////////////////////////////////////////////////////////////////////
//
// mybram Module (taken from lab5a)
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module mybram #(parameter LOGSIZE=14, WIDTH=1)
              (input wire [LOGSIZE-1:0] addr,
               input wire clk,
               input wire [WIDTH-1:0] din,
               output reg [WIDTH-1:0] dout,
               input wire we);
   // let the tools infer the right number of BRAMs
   (* ram_style = "block" *)
   reg [WIDTH-1:0] mem[(1<<LOGSIZE)-1:0];
   always @(posedge clk) begin
     if (we) mem[addr] <= din;
     dout <= mem[addr];
   end
endmodule
