
module labkit_experiment(beep, audio_reset_b, ac97_sdata_out, ac97_sdata_in, ac97_synch,
          ac97_bit_clock,
          
          vga_out_red, vga_out_green, vga_out_blue, vga_out_sync_b,
          vga_out_blank_b, vga_out_pixel_clock, vga_out_hsync,
          vga_out_vsync,

          tv_out_ycrcb, tv_out_reset_b, tv_out_clock, tv_out_i2c_clock,
          tv_out_i2c_data, tv_out_pal_ntsc, tv_out_hsync_b,
          tv_out_vsync_b, tv_out_blank_b, tv_out_subcar_reset,

          tv_in_ycrcb, tv_in_data_valid, tv_in_line_clock1,
          tv_in_line_clock2, tv_in_aef, tv_in_hff, tv_in_aff,
          tv_in_i2c_clock, tv_in_i2c_data, tv_in_fifo_read,
          tv_in_fifo_clock, tv_in_iso, tv_in_reset_b, tv_in_clock,

          ram0_data, ram0_address, ram0_adv_ld, ram0_clk, ram0_cen_b,
          ram0_ce_b, ram0_oe_b, ram0_we_b, ram0_bwe_b, 

          ram1_data, ram1_address, ram1_adv_ld, ram1_clk, ram1_cen_b,
          ram1_ce_b, ram1_oe_b, ram1_we_b, ram1_bwe_b,

          clock_feedback_out, clock_feedback_in,

          flash_data, flash_address, flash_ce_b, flash_oe_b, flash_we_b,
          flash_reset_b, flash_sts, flash_byte_b,

          rs232_txd, rs232_rxd, rs232_rts, rs232_cts,

          mouse_clock, mouse_data, keyboard_clock, keyboard_data,

          clock_27mhz, clock1, clock2,

          disp_blank, disp_data_out, disp_clock, disp_rs, disp_ce_b,
          disp_reset_b, disp_data_in,

          button0, button1, button2, button3, button_enter, button_right,
          button_left, button_down, button_up,

          switch,

          led,
          
          user1, user2, user3, user4,
          
          daughtercard,

          systemace_data, systemace_address, systemace_ce_b,
          systemace_we_b, systemace_oe_b, systemace_irq, systemace_mpbrdy,
          
          analyzer1_data, analyzer1_clock,
          analyzer2_data, analyzer2_clock,
          analyzer3_data, analyzer3_clock,
          analyzer4_data, analyzer4_clock);

   output beep, audio_reset_b, ac97_synch, ac97_sdata_out;
   input  ac97_bit_clock, ac97_sdata_in;
   
   output [7:0] vga_out_red, vga_out_green, vga_out_blue;
   output vga_out_sync_b, vga_out_blank_b, vga_out_pixel_clock,
     vga_out_hsync, vga_out_vsync;

   output [9:0] tv_out_ycrcb;
   output tv_out_reset_b, tv_out_clock, tv_out_i2c_clock, tv_out_i2c_data,
     tv_out_pal_ntsc, tv_out_hsync_b, tv_out_vsync_b, tv_out_blank_b,
     tv_out_subcar_reset;
   
   input  [19:0] tv_in_ycrcb;
   input  tv_in_data_valid, tv_in_line_clock1, tv_in_line_clock2, tv_in_aef,
     tv_in_hff, tv_in_aff;
   output tv_in_i2c_clock, tv_in_fifo_read, tv_in_fifo_clock, tv_in_iso,
     tv_in_reset_b, tv_in_clock;
   inout  tv_in_i2c_data;
        
   inout  [35:0] ram0_data;
   output [18:0] ram0_address;
   output ram0_adv_ld, ram0_clk, ram0_cen_b, ram0_ce_b, ram0_oe_b, ram0_we_b;
   output [3:0] ram0_bwe_b;
   
   inout  [35:0] ram1_data;
   output [18:0] ram1_address;
   output ram1_adv_ld, ram1_clk, ram1_cen_b, ram1_ce_b, ram1_oe_b, ram1_we_b;
   output [3:0] ram1_bwe_b;

   input  clock_feedback_in;
   output clock_feedback_out;
   
   inout  [15:0] flash_data;
   output [23:0] flash_address;
   output flash_ce_b, flash_oe_b, flash_we_b, flash_reset_b, flash_byte_b;
   input  flash_sts;
   
   output rs232_txd, rs232_rts;
   input  rs232_rxd, rs232_cts;

   input  mouse_clock, mouse_data, keyboard_clock, keyboard_data;

   input  clock_27mhz, clock1, clock2;

   output disp_blank, disp_clock, disp_rs, disp_ce_b, disp_reset_b;  
   input  disp_data_in;
   output  disp_data_out;
   
   input  button0, button1, button2, button3, button_enter, button_right,
     button_left, button_down, button_up;
   input  [7:0] switch;
   output [7:0] led;

   inout [31:0] user1, user2, user3, user4;
   
   inout [43:0] daughtercard;

   inout  [15:0] systemace_data;
   output [6:0]  systemace_address;
   output systemace_ce_b, systemace_we_b, systemace_oe_b;
   input  systemace_irq, systemace_mpbrdy;

   output [15:0] analyzer1_data, analyzer2_data, analyzer3_data, 
       analyzer4_data;
   output analyzer1_clock, analyzer2_clock, analyzer3_clock, analyzer4_clock;

   ////////////////////////////////////////////////////////////////////////////
   //
   // I/O Assignments
   //
   ////////////////////////////////////////////////////////////////////////////
   
   // Audio Input and Output
   assign beep= 1'b0;
   //assign audio_reset_b = 1'b0;
   //assign ac97_synch = 1'b0;
   //assign ac97_sdata_out = 1'b0;
   // ac97_sdata_in is an input

   // Video Output
   assign tv_out_ycrcb = 10'h0;
   assign tv_out_reset_b = 1'b0;
   assign tv_out_clock = 1'b0;
   assign tv_out_i2c_clock = 1'b0;
   assign tv_out_i2c_data = 1'b0;
   assign tv_out_pal_ntsc = 1'b0;
   assign tv_out_hsync_b = 1'b1;
   assign tv_out_vsync_b = 1'b1;
   assign tv_out_blank_b = 1'b1;
   assign tv_out_subcar_reset = 1'b0;
   
   // Video Input
   assign tv_in_i2c_clock = 1'b0;
   assign tv_in_fifo_read = 1'b0;
   assign tv_in_fifo_clock = 1'b0;
   assign tv_in_iso = 1'b0;
   assign tv_in_reset_b = 1'b0;
   assign tv_in_clock = 1'b0;
   assign tv_in_i2c_data = 1'bZ;
   // tv_in_ycrcb, tv_in_data_valid, tv_in_line_clock1, tv_in_line_clock2, 
   // tv_in_aef, tv_in_hff, and tv_in_aff are inputs
   
   // SRAMs
   
	/*
   assign ram0_data = 36'hZ;
   assign ram0_address = 19'h0;
   assign ram0_adv_ld = 1'b0;
   assign ram0_we_b = 1'b0;
   assign ram0_clk = 1'b0;
   assign ram0_cen_b = 1'b1;
   */
   
   assign ram0_ce_b = 1'b0;
   assign ram0_oe_b = 1'b0;
   assign ram0_adv_ld = 1'b0;
   assign ram0_bwe_b = 4'h0;
   
   /*
   assign ram1_data = 36'hZ; 
   assign ram1_address = 19'h0;
   assign ram1_adv_ld = 1'b0;
   assign ram0_we_b = 1'b0;
   assign ram1_we_b = 1'b0;
   assign ram1_clk = 1'b0;
   assign ram1_cen_b = 1'b1;
   */
   
   assign ram1_ce_b = 1'b0;
   assign ram1_oe_b = 1'b0;
   assign ram1_adv_ld = 1'b0;
   assign ram1_bwe_b = 4'h0;
   assign clock_feedback_out = 1'b0;
   // clock_feedback_in is an input
   
   // Flash ROM
   assign flash_data = 16'hZ;
   assign flash_address = 24'h0;
   assign flash_ce_b = 1'b1;
   assign flash_oe_b = 1'b1;
   assign flash_we_b = 1'b1;
   assign flash_reset_b = 1'b0;
   assign flash_byte_b = 1'b1;
   // flash_sts is an input

   // RS-232 Interface
   assign rs232_txd = 1'b1;
   assign rs232_rts = 1'b1;
   // rs232_rxd and rs232_cts are inputs

   // PS/2 Ports
   // mouse_clock, mouse_data, keyboard_clock, and keyboard_data are inputs


   // Buttons, Switches, and Individual LEDs
   //lab3 assign led = 8'hFF;
   // button0, button1, button2, button3, button_enter, button_right,
   // button_left, button_down, button_up, and switches are inputs

   // User I/Os
   assign user1 = 32'hZ;
   assign user2 = 32'hZ;
   assign user3 = 32'hZ;
   assign user4 = 32'hZ;

   // Daughtercard Connectors
   assign daughtercard = 44'hZ;

   // SystemACE Microprocessor Port
   assign systemace_data = 16'hZ;
   assign systemace_address = 7'h0;
   assign systemace_ce_b = 1'b1;
   assign systemace_we_b = 1'b1;
   assign systemace_oe_b = 1'b1;
   // systemace_irq and systemace_mpbrdy are inputs

   // Logic Analyzer
   assign analyzer1_data = 16'h0;
   assign analyzer1_clock = 1'b1;
   assign analyzer2_data = 16'h0;
   assign analyzer2_clock = 1'b1;
   assign analyzer3_data = 16'h0;
   assign analyzer3_clock = 1'b1;
   assign analyzer4_data = 16'h0;
   assign analyzer4_clock = 1'b1;
			    
   ////////////////////////////////////////////////////////////////////////////
   //
   // final project: music effects and FFT
   //
   ////////////////////////////////////////////////////////////////////////////

   // use FPGA's digital clock manager to produce a
   // 65MHz clock (actually 64.8MHz)
   wire clock_65mhz_unbuf,clock_65mhz;
   DCM vclk1(.CLKIN(clock_27mhz),.CLKFX(clock_65mhz_unbuf));
   // synthesis attribute CLKFX_DIVIDE of vclk1 is 10
   // synthesis attribute CLKFX_MULTIPLY of vclk1 is 24
   // synthesis attribute CLK_FEEDBACK of vclk1 is NONE
   // synthesis attribute CLKIN_PERIOD of vclk1 is 37
   BUFG vclk2(.O(clock_65mhz),.I(clock_65mhz_unbuf));

   // power-on reset generation
	
   wire power_on_reset;    // remain high for first 16 clocks
   SRL16 reset_sr (.D(1'b0), .CLK(clock_65mhz), .Q(power_on_reset),
		   .A0(1'b1), .A1(1'b1), .A2(1'b1), .A3(1'b1));
   defparam reset_sr.INIT = 16'hFFFF;

   wire [15:0] from_ac97_data, to_ac97_data;
   wire ready;

   // ENTER button is user reset
	wire vb3;
	wire reset;
	debounce bb3(.reset(reset),.clock(clock_27mhz),.noisy(~button3),.clean(vb3));
   assign reset = vb3 | power_on_reset;
   
	     //SYNCHRONIZATION OF switches
     wire [7:0] switch_sync;
     genvar i;
     generate for(i =0; i < 8; i = i+1)
         begin: gen_modules //generate 8 debounce modules
             debounce d(reset,clock_27mhz, switch[i], switch_sync[i]);
         end
     endgenerate
	
    //debounced user inputs
    // button0, button1, button2, button3, button_enter, button_right,
    // button_left, button_down, button_up, and switches are inputs
    wire vup,vdown,vright,vleft;
    debounce bup(.reset(reset),.clock(clock_27mhz),.noisy(~button_up),.clean(vup));
    debounce bdown(.reset(reset),.clock(clock_27mhz),.noisy(~button_down),.clean(vdown));
    debounce bright(.reset(reset),.clock(clock_27mhz),.noisy(~button_right),.clean(vright));
    debounce bleft(.reset(reset),.clock(clock_27mhz),.noisy(~button_left),.clean(vleft));
    wire venter;
    debounce benter(.reset(reset),.clock(clock_27mhz),.noisy(~button_enter),.clean(venter));
    wire vb0,vb1,vb2;
    debounce bb0(.reset(reset),.clock(clock_27mhz),.noisy(~button0),.clean(vb0));
    debounce bb1(.reset(reset),.clock(clock_27mhz),.noisy(~button1),.clean(vb1));
    debounce bb2(.reset(reset),.clock(clock_27mhz),.noisy(~button2),.clean(vb2));
    
	
	wire [12:0] max_freq;
	wire [9:0] max_amp;
   reg [3:0] num, blob;
	reg write;
   reg [1:0] volume_or_selection;
	
   wire [18:0] mem_address; //memory address to write to
   wire [35:0] mem_read0; //read memory from zbt0
   wire [35:0] mem_read1; //read memory from zbt1
   wire [35:0] mem_write; //data to write to memory
   wire we0; //write enable for zbt0
   wire we1; //write enable for zbt1
	
	
	
	//relevant wires/modules
   wire [6:0] effects; //effects chosen, set by switches from central fsm
   wire [3:0] song_name; //song name, chosen from param and set by cfsm
   wire song_done; //song done, FROM MEMORY
   wire [3:0] song_choice; //song choice, from central fsm to memory
   wire start_song; //start song, from cfsm
   wire pause_song; //pause song, from cfsm
   wire [16:0] effect_values; //effect values, chosen from param and set by cfsm
   wire record_mode; //record mode, chosen from param and set by cfsm
   wire record_mode_sel; //variable record mode from param select
   wire [3:0] song_name_sel; //variable song name sel from param select
   wire [16:0] effect_values_sel; //variable effect values sel from param select
   wire [1:0] cfsm_state; //state of central fsm
								//00: standby
                       //01: playback
                       //10: record
                       //11: default - standby
   wire blink_fo; //signal that is 1 for 1/4 of a second, 0 for 3/4, from blinkfo
   wire [7:0] seconds; //seconds elapsed since start of song
   wire [15:0] blink_fo_data; //data sent for modified hex display, from param select
	wire signed [11:0] audio_mem_out;
	
    centralFSM central_fsm (.reset(reset),.clk(clock_27mhz), //from fpga, input
         .but_ent(venter),
         .switch(switch_sync),//from user inputs, all sync/deb'd, input
         .effects(effects),/*[6:0]*/
         .song_name(song_name),//to graphics module, output
         .song_done(song_done),//from memory module, input
         .song_choice(song_choice), 
         .start_song(start_song), 
         .pause_song(pause_song),//to memory module, output
         .effect_values(effect_values),
         .record_mode(record_mode),
         .record_mode_sel(record_mode_sel), 
         .song_name_sel(song_name_sel), 
         .effect_values_sel(effect_values_sel), //from param_select
         .cfsm_state(cfsm_state),
			.vb0(vb0)
         );
    blink_fo blinkfu(
         .reset(reset),
         .clk(clock_27mhz),
         .blink_fo(blink_fo)
         );
    modified_display_16hex disp(reset,clock_27mhz, 
        //data!!!!!!!!
         {2'b00,cfsm_state, //2+2
			4'b0000, //4
			seconds, //8
			4'b0000, //4
			3'b000,record_mode_sel, //3+1
			4'b0000, //4
			song_name_sel, //4 - 32
			4'b0000, //4
         1'b0,effect_values_sel[16:14],//distortion 1+3
         2'b00,effect_values_sel[13:12],//limiter 2+2
         2'b00,effect_values_sel[11:10],//compression 2+2
         3'b000,effect_values_sel[9:5],//chorus 3+5
         3'b000,effect_values_sel[4:0]//echo 3+5
         },
         16'b0100_1010_1000_0000,//for modified hex blank data goes here (preset)
			//16'b0000_0000_0000_0000, //debug
         blink_fo_data,//for modified hex blinkd ata goes here (from paramsel)
         disp_blank, disp_clock, disp_rs, disp_ce_b,
         disp_reset_b, disp_data_out);         
    song_timing stiming(
         .reset(reset),
         .clk(clock_27mhz),
         .start_song(start_song), //resets and starts incrementation, from fsm
         .song_done(song_done), //pauses incrementation, from memory
         .pause_song(pause_song), //pauses incrementation, from fsm
         .seconds(seconds) //8 bits seconds elapsed since start_song, for graphx/display
         );
    param_select parasel(
         .reset(reset),
         .clk(clock_27mhz),
         .blink_fo(blink_fo),
         .b_up(vup), 
         .b_down(vdown), 
         .b_right(vright), 
         .b_left(vleft),
         .blink_fo_data(blink_fo_data), //16 
         .song_name_sel(song_name_sel), //4
         .effect_choice_sel(effect_values_sel), //17
         .record_mode_sel(record_mode_sel) //1
         );
   
   addresscalculator addr_calc(.reset(reset), //in
               .clk(clock_27mhz),.ready(ready),.record_mode(record_mode), //in
               .song_choice(song_choice),.start_song(start_song), //in
               .pause_song(pause_song), //in
               .mem_address(mem_address),.song_done(song_done),
					.spslsw(switch_sync[7:6]));//out
   memprocessor mem_pros(
               .reset(reset),//in
               .clk(clock_27mhz),//in
               .ready(ready),//in
               .audio_in(from_ac97_data),
               .start_song(start_song),//in
               .song_choice(song_choice),
               .record_mode(record_mode),//in
               .pause_song(pause_song),//in
               .mem_read0(mem_read0),//in
               .mem_read1(mem_read1),//in
               .song_done(song_done),//in
               .we0(we0),//out
               .we1(we1),//out
               .mem_write(mem_write),//out
               .audio_out(audio_mem_out)//out
               );//out
   //zbt drivers
   zbt_6111 zbt0(.clk(clock_27mhz),.cen(1'b1),.we(we0),
               .addr(mem_address),.write_data(mem_write),
               .read_data(mem_read0),
               .ram_clk(ram0_clk),.ram_we_b(ram0_we_b),
               .ram_address(ram0_address),.ram_data(ram0_data),
               .ram_cen_b(ram0_cen_b));
   zbt_6111 zbt1(.clk(clock_27mhz),.cen(1'b1),.we(we1),
               .addr(mem_address),.write_data(mem_write),
               .read_data(mem_read1),
               .ram_clk(ram1_clk),.ram_we_b(ram1_we_b),
               .ram_address(ram1_address),.ram_data(ram1_data),
               .ram_cen_b(ram1_cen_b));
	
	
	
   // generate basic XVGA video signals
   wire [10:0] hcount;
   wire [9:0]  vcount;
   wire hsync,vsync,blank;
   xvga xvga1(.vclock(clock_65mhz),.hcount(hcount),.vcount(vcount),
              .hsync(hsync),.vsync(vsync),.blank(blank));

   // feed XVGA signals to user's pong game
   wire [23:0] hud_pixel;
   hud_display hd(.vclock(clock_65mhz),.reset(reset),
		.hcount(hcount),.vcount(vcount),
		.hud_pixel(hud_pixel),.write(write),
		.num(num),.blob(blob));

	 

	 
   // allow user to adjust volume with up/down
   reg [4:0] volume;
   reg old_b2,old_b1;
   always @ (posedge clock_27mhz) begin
     if (reset) volume <= 5'd8;
     else begin
	if (vb2 & ~old_b2 & volume != 5'd31) volume <= volume+1;       
	if (vb1 & ~old_b1 & volume != 5'd0) volume <= volume-1;       
     end
     old_b2 <= vb2;
     old_b1 <= vb1;
   end
	
	initial begin
		num = 0;
		blob = 0;
		write = 0;
		volume = 5'd8;
	end

	// AC97 driver
   modifiedlab5audio a(clock_27mhz, reset, volume, from_ac97_data, to_ac97_data, ready,
	       audio_reset_b, ac97_sdata_out, ac97_sdata_in,
	       ac97_synch, ac97_bit_clock);
	
	wire sample_ready;
	
	// [0:4] echo - 32
    // [5:9] chorus - 32
    // [10:11] compression - 4
    // [12:13] limiter - 4
    // [14:16] distortion - 8
	 
	audio_FSM gs_fsm(.clock(clock_27mhz),.reset(reset),.playback(~record_mode),
		.new_sample_ready(ready),.delay_enable(switch_sync[0]),
		.amount_of_delay(effect_values_sel[4:0]),.chorus_enable(switch_sync[1]),
		.compression_enable(switch_sync[2]),
		.compression_amount(effect_values_sel[11:10]),
		.soft_limiter_enable(switch_sync[3]),
		.hard_limiter_enable(switch_sync[4]),
		.hard_limiter_amount(effect_values_sel[13:12]),
		.distortion_enable(switch_sync[5]),
      .distortion_amount(effect_values_sel[16:14]),
		.samples_in(audio_mem_out),
		.to_ac97_data(to_ac97_data),.sample_ready(sample_ready));
			 
	/*module audio_FSM
    (input clock,
    input reset,
    input playback,
    input new_sample_ready,// sample ready in from AC 97
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
    input signed [11:0] samples_in, // input from memory
    output signed [11:0] to_ac97_data, // data out to ac97
    output sample_ready /*sample ready out to ac97);*/

   // loopback incoming audio to headphones
   //assign to_ac97_data = from_ac97_data;
	

   // process incoming audio data, store results in histogram memory
   wire [9:0] haddr;
   wire [13:0] hdata;
   wire hwe,sel;
   process_audio a1(clock_27mhz,reset,ready,from_ac97_data,haddr,hdata,hwe);

   // 1024x10 histogram memory: A port is write-only, B port is read-only
   // use 1Kx(16+2) dual port BRAM
   wire [15:0] dout;
   RAMB16_S18_S18 histogram(
     .CLKA(clock_27mhz),.ADDRA(haddr),.DIA({2'b0,hdata}),.DIPA(2'b0),.WEA(hwe),
     .ENA(1'b1),.SSRA(1'b0),
     .CLKB(clock_65mhz),.ADDRB(hcount),.DOB(dout),
     .DIB(16'b0),.DIPB(2'b0),.WEB(1'b0),.ENB(1'b1),.SSRB(1'b0));
	
	max_freq_amp ma1 (.hcount(hcount),.amplitude(dout[9:0]),
		.max_freq(max_freq),.max_amp(max_amp));
	
	wire [3:0] freq_thousands, freq_hundreds, freq_tens, freq_ones;
	bcd my_bcd1 (.binary(max_freq),.thousands(freq_thousands),
		.hundreds(freq_hundreds),.tens(freq_tens),
		.ones(freq_ones));
		
	wire [3:0] max_amp_thousands, max_amp_hundreds, max_amp_tens, max_amp_ones;
	
	wire [8:0] calculated_db;
	bcd my_bcd2 (.binary(calculated_db),.thousands(max_amp_thousands),
		.hundreds(max_amp_hundreds),.tens(max_amp_tens),
		.ones(max_amp_ones));
	
	/*module signed_binary_12bit_to_dB
    (input clock,
    input reset,
    input start,
    input signed [11:0] input_binary,
    output reg signed [8:0] output_db,
    output reg done);*/
	signed_binary_12bit_to_dB num_to_db(.clock(clock_65mhz),.reset(reset),
		.start(1'b1),.input_binary({1'b0,max_amp,1'b0}),
		.output_db(calculated_db));
	
	wire [3:0] seconds_thousands, seconds_hundreds, seconds_tens,seconds_ones;
	bcd my_bcd3(.binary(seconds),.thousands(seconds_thousands),.hundreds(seconds_hundreds),
	.tens(seconds_tens),.ones(seconds_ones));
	
	wire [3:0] fx_bank;
	assign fx_bank = switch_sync[7] + 
		switch_sync[6] + 
		switch_sync[5] + 
		switch_sync[4] + 
		switch_sync[3] + 
		switch_sync[2] + 
		switch_sync[1] + 
		switch_sync[0];
		
	wire [3:0] song_tens, song_ones;
	bcd my_bcd4(.binary(song_name),
	.tens(song_tens),.ones(song_ones));
	
	reg [3:0] write_dig;
	initial begin
		write_dig = 0;
	end
	always @(posedge clock_27mhz) begin
		if(~vsync) begin
			case (write_dig)
				1 : begin write <= 1; num <= freq_thousands; blob <= 0;end
				2 : begin write <= 1; num <= freq_hundreds; blob <= 1;end
				3 : begin write <= 1; num <= freq_tens; blob <= 2;end
				4 : begin write <= 1; num <= freq_ones; blob <= 3;end
				5 : begin write <= 1; num <= max_amp_tens; blob <=4; end
				6 : begin write <= 1; num <= max_amp_ones; blob <=5; end
				7 : begin write <= 1; num <= seconds_thousands; blob <=6; end
				8 : begin write <= 1; num <= seconds_hundreds; blob <=7; end
				9 : begin write <= 1; num <= seconds_tens; blob <=8; end
				10 : begin write <= 1; num <= seconds_ones; blob <=9; end
				11 : begin write<= 1; num <= fx_bank; blob <=11; end
				12 : begin write<= 1; num <= song_tens; blob <=12; end
				13 : begin write<= 1; num <= song_ones; blob <=13; end
				default: write <= 0;
			endcase
			write_dig <= write_dig + 1;
		end
	end

   reg[23:0] fft_pixel;
   reg phsync,pvsync,pblank;
   reg xhsync,xvsync,xblank;
   reg yhsync,yvsync,yblank;
   reg [9:0] xvcount;
   reg [9:0] yvcount;

   wire [17:0] dividend;
   wire [17:0] quotient;
   wire [9:0] divisor;
   assign divisor = (dout[9:0] > 767) ? 767 : dout[9:0];
   assign dividend = yvcount * 8'hFF;
   grad_div my_div(.clk(clock_65mhz),.dividend(dividend),.quotient(quotient),
      .divisor(divisor));
   reg [7:0] red_grad_color, green_grad_color;

   /*module pong_ball #(parameter SCRN_WIDTH = 1024, SCRN_HEIGHT = 768,
  PUCK_W = 110, PUCK_H = 59)
(
   input vsync,  // vsync
   input vclock,  // 65MHz clock
   input reset,   // 1 to initialize module
   input [3:0] pspeed,  // puck speed in pixels/tick 
   input [10:0] hcount, // horizontal index of current pixel (0..1023)
   input [9:0] vcount, // vertical index of current pixel (0..767)
   input enabled;
   output [23:0] pixel  // pong game's pixel  // r=23:16, g=15:8, b=7:0 
   );*/

  wire [23:0] secret_pixel;

  pong_ball secret_ball (.vsync(vsync),.vclock(clock_65mhz),
    .reset(reset), .pspeed(max_amp[9:6]),.hcount(hcount),.vcount(vcount),
    .enabled(switch_sync[2] & switch_sync[3] & switch_sync[4]),
    .pixel(secret_pixel));

   always @ (posedge clock_65mhz) begin
     // first pipe stage: memory access
      yhsync <= hsync;
      yvsync <= vsync;
      yblank <= blank;
      yvcount <= 10'd767 - vcount;
     // second pipe stage: process memory result
      xhsync <= yhsync;
      xvsync <= yvsync;
      xblank <= yblank;
      xvcount <= yvcount;
      green_grad_color <=8'hFF - quotient[7:0];
		red_grad_color <= /*quotient[7:0]*/8'hFF;
	  
     // third pipe stage: write divider to result
     phsync <= xhsync;
     pvsync <= xvsync;
     pblank <= xblank;
     fft_pixel <= xblank ? {24{1'b0}} :
	  (dout[9:0] > xvcount) ? 
	  {red_grad_color,green_grad_color,{8{1'b0}}}:
	  {24{1'b0}};
   end
   // switch[1:0] selects which video generator to use:
   //  00: user's pong game
   //  01: 1 pixel outline of active video area (adjust screen controls)
   //  10: color bars
   reg [23:0] rgb;
   wire border = (hcount==0 | hcount==1023 | vcount==0 | vcount==767);
   
   reg b,hs,vs;
   always @(posedge clock_65mhz) begin
         // default: pong
	 hs <= phsync;
	 vs <= pvsync;
	 b <= pblank;
	 rgb <= fft_pixel | hud_pixel | secret_pixel;
   end

   // VGA Output.  In order to meet the setup and hold times of the
   // AD7125, we send it ~clock_65mhz.
   assign vga_out_red = rgb[23:16];
   assign vga_out_green = rgb[15:8];
   assign vga_out_blue = rgb[7:0];
   assign vga_out_sync_b = 1'b1;    // not used
   assign vga_out_blank_b = ~b;
   assign vga_out_pixel_clock = ~clock_65mhz;
   assign vga_out_hsync = hs;
   assign vga_out_vsync = vs;
   
   assign led[5:0] = ~{1'b0,volume};
	assign led[6] = ~song_done; //track?!?!
	assign led[7] = ~pause_song; //need to know somehow

endmodule

//yu have been hacked!!!!!!
module modifiedlab5audio (
  input wire clock_27mhz,
  input wire reset,
  input wire [4:0] volume,
  output wire [11:0] audio_in_data,
  input wire [11:0] audio_out_data,
  output wire ready,
  output reg audio_reset_b,   // ac97 interface signals
  output wire ac97_sdata_out,
  input wire ac97_sdata_in,
  output wire ac97_synch,
  input wire ac97_bit_clock
);

  wire [7:0] command_address;
  wire [15:0] command_data;
  wire command_valid;
  wire [19:0] left_in_data, right_in_data;
  wire [19:0] left_out_data, right_out_data;

  // wait a little before enabling the AC97 codec
  reg [9:0] reset_count;
  always @(posedge clock_27mhz) begin
    if (reset) begin
      audio_reset_b = 1'b0;
      reset_count = 0;
    end else if (reset_count == 1023)
      audio_reset_b = 1'b1;
    else
      reset_count = reset_count+1;
  end

  wire ac97_ready;
  ac97 ac97(.ready(ac97_ready),
            .command_address(command_address),
            .command_data(command_data),
            .command_valid(command_valid),
            .left_data(left_out_data), .left_valid(1'b1),
            .right_data(right_out_data), .right_valid(1'b1),
            .left_in_data(left_in_data), .right_in_data(right_in_data),
            .ac97_sdata_out(ac97_sdata_out),
            .ac97_sdata_in(ac97_sdata_in),
            .ac97_synch(ac97_synch),
            .ac97_bit_clock(ac97_bit_clock));

  // ready: one cycle pulse synchronous with clock_27mhz
  reg [2:0] ready_sync;
  always @ (posedge clock_27mhz) ready_sync <= {ready_sync[1:0], ac97_ready};
  assign ready = ready_sync[1] & ~ready_sync[2];

  reg [11:0] out_data;
  always @ (posedge clock_27mhz)
    if (ready) out_data <= audio_out_data;
  assign audio_in_data = left_in_data[19:8];
  assign left_out_data = {out_data, 8'b00000000};
  assign right_out_data = left_out_data;

  // generate repeating sequence of read/writes to AC97 registers
  ac97commands cmds(.clock(clock_27mhz), .ready(ready),
                    .command_address(command_address),
                    .command_data(command_data),
                    .command_valid(command_valid),
                    .volume(volume),
                    .source(3'b000));     // mic
endmodule
