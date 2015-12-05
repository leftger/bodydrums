////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: labkit_synthesis.v
// /___/   /\     Timestamp: Thu Dec  3 14:24:12 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim labkit.ngc labkit_synthesis.v 
// Device	: xc2v6000-4-bf957
// Input file	: labkit.ngc
// Output file	: /afs/athena.mit.edu/user/g/r/grosas/6.111/Final_Project/bodydrums/meshed_fp/netgen/synthesis/labkit_synthesis.v
// # of Modules	: 1
// Design Name	: labkit
// Xilinx        : /afs/csail.mit.edu/proj/redsocs/Xilinx10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module labkit (
  tv_in_i2c_data, ram0_cen_b, tv_in_clock, button0, button1, button2, button3, tv_out_subcar_reset, tv_out_pal_ntsc, ram1_adv_ld, ram0_clk, 
vga_out_hsync, clock1, clock2, flash_ce_b, tv_in_aef, ram0_oe_b, tv_in_aff, analyzer1_clock, ram1_cen_b, ram1_oe_b, systemace_irq, clock_feedback_in, 
disp_data_in, ram0_adv_ld, disp_rs, ram0_ce_b, clock_27mhz, button_enter, ac97_sdata_out, analyzer2_clock, keyboard_clock, ram1_ce_b, disp_clock, 
systemace_oe_b, tv_out_blank_b, rs232_rts, flash_sts, rs232_rxd, mouse_data, rs232_cts, tv_out_reset_b, flash_byte_b, audio_reset_b, tv_in_fifo_read, 
tv_out_clock, tv_in_reset_b, analyzer3_clock, systemace_ce_b, rs232_txd, flash_reset_b, ac97_synch, button_left, flash_we_b, disp_ce_b, 
tv_in_fifo_clock, vga_out_vsync, tv_in_i2c_clock, tv_in_data_valid, tv_in_hff, tv_out_i2c_clock, tv_out_hsync_b, analyzer4_clock, ram1_clk, 
vga_out_sync_b, disp_data_out, tv_in_line_clock1, tv_in_line_clock2, vga_out_pixel_clock, keyboard_data, beep, ram0_we_b, ac97_sdata_in, ram1_we_b, 
clock_feedback_out, systemace_mpbrdy, button_right, button_down, mouse_clock, tv_in_iso, ac97_bit_clock, disp_reset_b, systemace_we_b, vga_out_blank_b
, button_up, tv_out_i2c_data, disp_blank, flash_oe_b, tv_out_vsync_b, user3, daughtercard, flash_data, user2, user4, user1, ram0_data, ram1_data, 
systemace_data, systemace_address, vga_out_red, tv_out_ycrcb, vga_out_blue, ram1_address, analyzer1_data, analyzer2_data, analyzer3_data, 
analyzer4_data, ram0_bwe_b, flash_address, ram1_bwe_b, vga_out_green, led, ram0_address, switch, tv_in_ycrcb
);
  inout tv_in_i2c_data;
  output ram0_cen_b;
  output tv_in_clock;
  input button0;
  input button1;
  input button2;
  input button3;
  output tv_out_subcar_reset;
  output tv_out_pal_ntsc;
  output ram1_adv_ld;
  output ram0_clk;
  output vga_out_hsync;
  input clock1;
  input clock2;
  output flash_ce_b;
  input tv_in_aef;
  output ram0_oe_b;
  input tv_in_aff;
  output analyzer1_clock;
  output ram1_cen_b;
  output ram1_oe_b;
  input systemace_irq;
  input clock_feedback_in;
  input disp_data_in;
  output ram0_adv_ld;
  output disp_rs;
  output ram0_ce_b;
  input clock_27mhz;
  input button_enter;
  output ac97_sdata_out;
  output analyzer2_clock;
  input keyboard_clock;
  output ram1_ce_b;
  output disp_clock;
  output systemace_oe_b;
  output tv_out_blank_b;
  output rs232_rts;
  input flash_sts;
  input rs232_rxd;
  input mouse_data;
  input rs232_cts;
  output tv_out_reset_b;
  output flash_byte_b;
  output audio_reset_b;
  output tv_in_fifo_read;
  output tv_out_clock;
  output tv_in_reset_b;
  output analyzer3_clock;
  output systemace_ce_b;
  output rs232_txd;
  output flash_reset_b;
  output ac97_synch;
  input button_left;
  output flash_we_b;
  output disp_ce_b;
  output tv_in_fifo_clock;
  output vga_out_vsync;
  output tv_in_i2c_clock;
  input tv_in_data_valid;
  input tv_in_hff;
  output tv_out_i2c_clock;
  output tv_out_hsync_b;
  output analyzer4_clock;
  output ram1_clk;
  output vga_out_sync_b;
  output disp_data_out;
  input tv_in_line_clock1;
  input tv_in_line_clock2;
  output vga_out_pixel_clock;
  input keyboard_data;
  output beep;
  output ram0_we_b;
  input ac97_sdata_in;
  output ram1_we_b;
  output clock_feedback_out;
  input systemace_mpbrdy;
  input button_right;
  input button_down;
  input mouse_clock;
  output tv_in_iso;
  input ac97_bit_clock;
  output disp_reset_b;
  output systemace_we_b;
  output vga_out_blank_b;
  input button_up;
  output tv_out_i2c_data;
  output disp_blank;
  output flash_oe_b;
  output tv_out_vsync_b;
  inout [31 : 0] user3;
  inout [43 : 0] daughtercard;
  inout [15 : 0] flash_data;
  inout [31 : 0] user2;
  inout [31 : 0] user4;
  inout [31 : 0] user1;
  inout [35 : 0] ram0_data;
  inout [35 : 0] ram1_data;
  inout [15 : 0] systemace_data;
  output [6 : 0] systemace_address;
  output [7 : 0] vga_out_red;
  output [9 : 0] tv_out_ycrcb;
  output [7 : 0] vga_out_blue;
  output [18 : 0] ram1_address;
  output [15 : 0] analyzer1_data;
  output [15 : 0] analyzer2_data;
  output [15 : 0] analyzer3_data;
  output [15 : 0] analyzer4_data;
  output [3 : 0] ram0_bwe_b;
  output [23 : 0] flash_address;
  output [3 : 0] ram1_bwe_b;
  output [7 : 0] vga_out_green;
  output [7 : 0] led;
  output [18 : 0] ram0_address;
  input [7 : 0] switch;
  input [19 : 0] tv_in_ycrcb;
  
  // synthesis translate_off
  
  wire \Mcount_blob_xor<3>11 ;
  wire \Mcount_blob_xor<3>111_20 ;
  wire \Mcount_num_xor<3>11 ;
  wire \Mcount_num_xor<3>111_22 ;
  wire \Mcount_volume_xor<4>12 ;
  wire \Mcount_volume_xor<4>121_24 ;
  wire Mmux_rgb_mux000010;
  wire Mmux_rgb_mux0000102103_26;
  wire Mmux_rgb_mux000010211;
  wire Mmux_rgb_mux0000102110_28;
  wire Mmux_rgb_mux0000102111_29;
  wire Mmux_rgb_mux0000102130_30;
  wire Mmux_rgb_mux0000102155_31;
  wire Mmux_rgb_mux0000102157_32;
  wire Mmux_rgb_mux0000102184_33;
  wire Mmux_rgb_mux0000102209_34;
  wire Mmux_rgb_mux000010233_35;
  wire Mmux_rgb_mux000010253_36;
  wire Mmux_rgb_mux000010269_37;
  wire Mmux_rgb_mux000010298;
  wire Mmux_rgb_mux000011;
  wire Mmux_rgb_mux000012;
  wire Mmux_rgb_mux0000121;
  wire Mmux_rgb_mux000013;
  wire Mmux_rgb_mux000014;
  wire Mmux_rgb_mux000015;
  wire Mmux_rgb_mux000016;
  wire Mmux_rgb_mux0000171;
  wire Mmux_rgb_mux0000181;
  wire Mmux_rgb_mux0000191;
  wire Mmux_rgb_mux0000201;
  wire Mmux_rgb_mux000021;
  wire Mmux_rgb_mux0000211;
  wire Mmux_rgb_mux0000221;
  wire Mmux_rgb_mux0000231;
  wire Mmux_rgb_mux0000241;
  wire Mmux_rgb_mux000031;
  wire Mmux_rgb_mux000041;
  wire Mmux_rgb_mux000051;
  wire Mmux_rgb_mux000061;
  wire Mmux_rgb_mux000071;
  wire Mmux_rgb_mux00008;
  wire Mmux_rgb_mux00009;
  wire N10;
  wire N100;
  wire N106;
  wire N108;
  wire N110;
  wire N111;
  wire N12;
  wire N121;
  wire N123;
  wire N125;
  wire N127;
  wire N129;
  wire N13;
  wire N131;
  wire N133;
  wire N135;
  wire N137;
  wire N139;
  wire N14;
  wire N141;
  wire N145;
  wire N147;
  wire N149;
  wire N151;
  wire N153;
  wire N155;
  wire N157;
  wire N161;
  wire N163;
  wire N165;
  wire N167;
  wire N169;
  wire N173;
  wire N175;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N191;
  wire N193;
  wire N195;
  wire N196;
  wire N198;
  wire N200;
  wire N202;
  wire N204;
  wire N206;
  wire N208;
  wire N210;
  wire N214;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N225;
  wire N226;
  wire N227;
  wire N228;
  wire N229;
  wire N230;
  wire N231;
  wire N232;
  wire N233;
  wire N234;
  wire N235;
  wire N236;
  wire N237;
  wire N238;
  wire N239;
  wire N240;
  wire N241;
  wire N242;
  wire N243;
  wire N244;
  wire N245;
  wire N246;
  wire N247;
  wire N248;
  wire N249;
  wire N250;
  wire N251;
  wire N252;
  wire N253;
  wire N254;
  wire N255;
  wire N256;
  wire N257;
  wire N258;
  wire N259;
  wire N260;
  wire N261;
  wire N262;
  wire N263;
  wire N264;
  wire N265;
  wire N266;
  wire N267;
  wire N268;
  wire N269;
  wire N270;
  wire N271;
  wire N272;
  wire N273;
  wire N54;
  wire N6;
  wire N62;
  wire N66;
  wire N68;
  wire N70;
  wire N76;
  wire N77;
  wire N83;
  wire N85;
  wire N98;
  wire \Result<0>1 ;
  wire \Result<0>2 ;
  wire \Result<0>3 ;
  wire \Result<0>4 ;
  wire \Result<0>5 ;
  wire \Result<0>6 ;
  wire \Result<0>7 ;
  wire \Result<0>8 ;
  wire \Result<0>9 ;
  wire \Result<10>1 ;
  wire \Result<10>2 ;
  wire \Result<10>3 ;
  wire \Result<10>4 ;
  wire \Result<10>5 ;
  wire \Result<11>1 ;
  wire \Result<11>2 ;
  wire \Result<11>3 ;
  wire \Result<11>4 ;
  wire \Result<11>5 ;
  wire \Result<12>1 ;
  wire \Result<12>2 ;
  wire \Result<12>3 ;
  wire \Result<12>4 ;
  wire \Result<12>5 ;
  wire \Result<13>1 ;
  wire \Result<13>2 ;
  wire \Result<13>3 ;
  wire \Result<13>4 ;
  wire \Result<13>5 ;
  wire \Result<14>1 ;
  wire \Result<14>2 ;
  wire \Result<14>3 ;
  wire \Result<14>4 ;
  wire \Result<14>5 ;
  wire \Result<15>1 ;
  wire \Result<15>2 ;
  wire \Result<15>3 ;
  wire \Result<15>4 ;
  wire \Result<15>5 ;
  wire \Result<16>1 ;
  wire \Result<16>2 ;
  wire \Result<16>3 ;
  wire \Result<16>4 ;
  wire \Result<16>5 ;
  wire \Result<17>1 ;
  wire \Result<17>2 ;
  wire \Result<17>3 ;
  wire \Result<17>4 ;
  wire \Result<17>5 ;
  wire \Result<18>1 ;
  wire \Result<18>2 ;
  wire \Result<18>3 ;
  wire \Result<18>4 ;
  wire \Result<18>5 ;
  wire \Result<1>1 ;
  wire \Result<1>2 ;
  wire \Result<1>3 ;
  wire \Result<1>4 ;
  wire \Result<1>5 ;
  wire \Result<1>6 ;
  wire \Result<1>7 ;
  wire \Result<1>8 ;
  wire \Result<1>9 ;
  wire \Result<2>1 ;
  wire \Result<2>2 ;
  wire \Result<2>3 ;
  wire \Result<2>4 ;
  wire \Result<2>5 ;
  wire \Result<2>6 ;
  wire \Result<2>7 ;
  wire \Result<2>8 ;
  wire \Result<3>1 ;
  wire \Result<3>2 ;
  wire \Result<3>3 ;
  wire \Result<3>4 ;
  wire \Result<3>5 ;
  wire \Result<3>6 ;
  wire \Result<3>7 ;
  wire \Result<3>8 ;
  wire \Result<4>1 ;
  wire \Result<4>2 ;
  wire \Result<4>3 ;
  wire \Result<4>4 ;
  wire \Result<4>5 ;
  wire \Result<4>6 ;
  wire \Result<5>1 ;
  wire \Result<5>2 ;
  wire \Result<5>3 ;
  wire \Result<5>4 ;
  wire \Result<5>5 ;
  wire \Result<6>1 ;
  wire \Result<6>2 ;
  wire \Result<6>3 ;
  wire \Result<6>4 ;
  wire \Result<6>5 ;
  wire \Result<7>1 ;
  wire \Result<7>2 ;
  wire \Result<7>3 ;
  wire \Result<7>4 ;
  wire \Result<7>5 ;
  wire \Result<8>1 ;
  wire \Result<8>2 ;
  wire \Result<8>3 ;
  wire \Result<8>4 ;
  wire \Result<8>5 ;
  wire \Result<9>1 ;
  wire \Result<9>2 ;
  wire \Result<9>3 ;
  wire \Result<9>4 ;
  wire \Result<9>5 ;
  wire \a/Mcount_reset_count_cy<1>_rt_312 ;
  wire \a/Mcount_reset_count_cy<2>_rt_314 ;
  wire \a/Mcount_reset_count_cy<3>_rt_316 ;
  wire \a/Mcount_reset_count_cy<4>_rt_318 ;
  wire \a/Mcount_reset_count_cy<5>_rt_320 ;
  wire \a/Mcount_reset_count_cy<6>_rt_322 ;
  wire \a/Mcount_reset_count_cy<7>_rt_324 ;
  wire \a/Mcount_reset_count_cy<8>_rt_326 ;
  wire \a/Mcount_reset_count_xor<9>_rt_328 ;
  wire \a/Mshreg_ready_sync_1_329 ;
  wire \a/ac97/COND_23_not0000[1] ;
  wire \a/ac97/COND_23_not0000[3] ;
  wire \a/ac97/Mcount_bit_count_cy<1>_rt_344 ;
  wire \a/ac97/Mcount_bit_count_cy<2>_rt_346 ;
  wire \a/ac97/Mcount_bit_count_cy<3>_rt_348 ;
  wire \a/ac97/Mcount_bit_count_cy<4>_rt_350 ;
  wire \a/ac97/Mcount_bit_count_cy<5>_rt_352 ;
  wire \a/ac97/Mcount_bit_count_cy<6>_rt_354 ;
  wire \a/ac97/Mcount_bit_count_lut<0>1 ;
  wire \a/ac97/Mcount_bit_count_xor<7>_rt_357 ;
  wire \a/ac97/Mmux__varindex0000_5_f6_358 ;
  wire \a/ac97/Mmux__varindex0000_6_f5_359 ;
  wire \a/ac97/Mmux__varindex0000_6_f51 ;
  wire \a/ac97/Mmux__varindex0000_6_f5_0 ;
  wire \a/ac97/Mmux__varindex0000_6_f5_01_362 ;
  wire \a/ac97/Mmux__varindex0000_7_363 ;
  wire \a/ac97/Mmux__varindex0000_7_f5_364 ;
  wire \a/ac97/Mmux__varindex0000_8_365 ;
  wire \a/ac97/Mmux__varindex0000_81_366 ;
  wire \a/ac97/Mmux__varindex0000_9 ;
  wire \a/ac97/Mmux__varindex0001_10_368 ;
  wire \a/ac97/Mmux__varindex0001_101_369 ;
  wire \a/ac97/Mmux__varindex0001_102_370 ;
  wire \a/ac97/Mmux__varindex0001_11_371 ;
  wire \a/ac97/Mmux__varindex0001_5_f7_372 ;
  wire \a/ac97/Mmux__varindex0001_6_f5_373 ;
  wire \a/ac97/Mmux__varindex0001_6_f6_374 ;
  wire \a/ac97/Mmux__varindex0001_7_f5_375 ;
  wire \a/ac97/Mmux__varindex0001_7_f6_376 ;
  wire \a/ac97/Mmux__varindex0001_8_377 ;
  wire \a/ac97/Mmux__varindex0001_8_f5_378 ;
  wire \a/ac97/Mmux__varindex0001_8_f51 ;
  wire \a/ac97/Mmux__varindex0001_9_380 ;
  wire \a/ac97/Mmux__varindex0001_91_381 ;
  wire \a/ac97/Mmux__varindex0001_92_382 ;
  wire \a/ac97/Mmux__varindex0001_9_f5_383 ;
  wire \a/ac97/Mmux__varindex0002_11_384 ;
  wire \a/ac97/Mmux__varindex0002_5_f7_385 ;
  wire \a/ac97/Mmux__varindex0002_7_f6_386 ;
  wire \a/ac97/Mmux__varindex0002_9_f5_387 ;
  wire \a/ac97/Mshreg_left_in_data_4_388 ;
  wire \a/ac97/N0 ;
  wire \a/ac97/N11 ;
  wire \a/ac97/N18 ;
  wire \a/ac97/N8 ;
  wire \a/ac97/ac97_sdata_out_401 ;
  wire \a/ac97/ac97_sdata_out_mux0000111_402 ;
  wire \a/ac97/ac97_sdata_out_mux0000118_403 ;
  wire \a/ac97/ac97_sdata_out_mux0000136_404 ;
  wire \a/ac97/ac97_sdata_out_mux0000176_405 ;
  wire \a/ac97/ac97_sdata_out_mux0000190_406 ;
  wire \a/ac97/ac97_sdata_out_mux0000213_407 ;
  wire \a/ac97/ac97_sdata_out_mux0000217_408 ;
  wire \a/ac97/ac97_sdata_out_mux0000231 ;
  wire \a/ac97/ac97_sdata_out_mux000059_410 ;
  wire \a/ac97/ac97_sdata_out_mux000094_411 ;
  wire \a/ac97/ac97_synch_412 ;
  wire \a/ac97/ac97_synch_mux000017_413 ;
  wire \a/ac97/ac97_synch_mux000039 ;
  wire \a/ac97/ac97_synch_mux00004_415 ;
  wire \a/ac97/l_cmd_addr[13] ;
  wire \a/ac97/l_cmd_addr[14] ;
  wire \a/ac97/l_cmd_addr[15] ;
  wire \a/ac97/l_cmd_addr[16] ;
  wire \a/ac97/l_cmd_addr[17] ;
  wire \a/ac97/l_cmd_addr[19] ;
  wire \a/ac97/l_cmd_addr_cmp_eq0000 ;
  wire \a/ac97/l_cmd_data[10] ;
  wire \a/ac97/l_cmd_data[15] ;
  wire \a/ac97/l_cmd_data[19] ;
  wire \a/ac97/l_cmd_data[4] ;
  wire \a/ac97/l_cmd_data[5] ;
  wire \a/ac97/l_cmd_data[6] ;
  wire \a/ac97/l_cmd_data[7] ;
  wire \a/ac97/l_cmd_data[8] ;
  wire \a/ac97/l_cmd_v_439 ;
  wire \a/ac97/l_left_data_and0000_460 ;
  wire \a/ac97/l_left_data_and0001_461 ;
  wire \a/ac97/l_left_data_cmp_le0000 ;
  wire \a/ac97/l_left_data_not0001 ;
  wire \a/ac97/l_left_data_not000116_484 ;
  wire \a/ac97/l_left_data_not00012_SW0 ;
  wire \a/ac97/l_left_data_not000139_486 ;
  wire \a/ac97/l_left_data_not00016_487 ;
  wire \a/ac97/l_left_v_488 ;
  wire \a/ac97/left_in_data[0] ;
  wire \a/ac97/left_in_data[4] ;
  wire \a/ac97/left_in_data_and0000 ;
  wire \a/ac97/left_in_data_and000013 ;
  wire \a/ac97/left_in_data_and0000131_494 ;
  wire \a/ac97/left_in_data_and000024_495 ;
  wire \a/ac97/left_in_data_and000025_496 ;
  wire \a/ac97/ready_497 ;
  wire \a/ac97/ready_mux000012_498 ;
  wire \a/ac97/ready_mux00004_499 ;
  wire \a/ac97/ready_mux000041_500 ;
  wire \a/ac97/ready_mux000054_501 ;
  wire \a/ac97/ready_mux000055_502 ;
  wire \a/ac97/ready_mux000068 ;
  wire \a/audio_reset_b_504 ;
  wire \a/audio_reset_b_cmp_eq0000 ;
  wire \a/audio_reset_b_cmp_eq000010_506 ;
  wire \a/audio_reset_b_cmp_eq0000_inv ;
  wire \a/cmds/N01 ;
  wire \a/cmds/N8 ;
  wire \a/cmds/N91 ;
  wire \a/cmds/command[0] ;
  wire \a/cmds/command[1] ;
  wire \a/cmds/command[11] ;
  wire \a/cmds/command[15] ;
  wire \a/cmds/command[17] ;
  wire \a/cmds/command[18] ;
  wire \a/cmds/command[19] ;
  wire \a/cmds/command[2] ;
  wire \a/cmds/command[20] ;
  wire \a/cmds/command[21] ;
  wire \a/cmds/command[23] ;
  wire \a/cmds/command[3] ;
  wire \a/cmds/command[4] ;
  wire \a/cmds/command[6] ;
  wire \a/cmds/command_cmp_eq0006 ;
  wire \a/cmds/command_cmp_eq00081 ;
  wire \a/cmds/command_mux0000<11>1 ;
  wire \a/cmds/command_mux0000<13>1 ;
  wire \a/cmds/command_mux0000<14>1 ;
  wire \a/cmds/command_mux0000<15>1 ;
  wire \a/cmds/command_mux0000<20>3 ;
  wire \a/cmds/command_mux0000<20>31_536 ;
  wire \a/cmds/command_mux0000[4] ;
  wire \a/cmds/command_mux0000<5>1 ;
  wire \a/cmds/command_mux0000[6] ;
  wire \a/cmds/command_mux0000<8>1 ;
  wire \a/cmds/command_or0001 ;
  wire \a/cmds/command_valid_542 ;
  wire \a/cmds/command_valid_not0001_inv ;
  wire \a1/Sh100 ;
  wire \a1/Sh100224_617 ;
  wire \a1/Sh100311_618 ;
  wire \a1/Sh100329 ;
  wire \a1/Sh100531 ;
  wire \a1/Sh1005311_621 ;
  wire \a1/Sh10057 ;
  wire \a1/Sh100631 ;
  wire \a1/Sh1006311_624 ;
  wire \a1/Sh10067 ;
  wire \a1/Sh100_bdd0 ;
  wire \a1/Sh100_bdd1 ;
  wire \a1/Sh100_bdd3 ;
  wire \a1/Sh100_bdd6 ;
  wire \a1/Sh100_bdd7 ;
  wire \a1/Sh101 ;
  wire \a1/Sh101329 ;
  wire \a1/Sh101531 ;
  wire \a1/Sh1015311_634 ;
  wire \a1/Sh10167 ;
  wire \a1/Sh101_bdd0 ;
  wire \a1/Sh101_bdd1 ;
  wire \a1/Sh101_bdd3 ;
  wire \a1/Sh101_bdd6 ;
  wire \a1/Sh101_bdd7 ;
  wire \a1/Sh102 ;
  wire \a1/Sh102112_642 ;
  wire \a1/Sh102341 ;
  wire \a1/Sh1023411_644 ;
  wire \a1/Sh102420_645 ;
  wire \a1/Sh102440_646 ;
  wire \a1/Sh10257 ;
  wire \a1/Sh102_bdd1 ;
  wire \a1/Sh102_bdd6 ;
  wire \a1/Sh103 ;
  wire \a1/Sh103320_651 ;
  wire \a1/Sh103340_652 ;
  wire \a1/Sh103431 ;
  wire \a1/Sh1034311_654 ;
  wire \a1/Sh103_bdd0 ;
  wire \a1/Sh103_bdd1 ;
  wire \a1/Sh103_bdd4 ;
  wire \a1/Sh104 ;
  wire \a1/Sh105 ;
  wire \a1/Sh115 ;
  wire \a1/Sh115115_661 ;
  wire \a1/Sh115130_662 ;
  wire \a1/Sh115141_663 ;
  wire \a1/Sh11529_664 ;
  wire \a1/Sh116 ;
  wire \a1/Sh116115_666 ;
  wire \a1/Sh116130_667 ;
  wire \a1/Sh116141_668 ;
  wire \a1/Sh11629_669 ;
  wire \a1/Sh117 ;
  wire \a1/Sh117115_671 ;
  wire \a1/Sh117130_672 ;
  wire \a1/Sh117141_673 ;
  wire \a1/Sh11729_674 ;
  wire \a1/Sh118 ;
  wire \a1/Sh118115_676 ;
  wire \a1/Sh118130_677 ;
  wire \a1/Sh118141_678 ;
  wire \a1/Sh11829_679 ;
  wire \a1/Sh119 ;
  wire \a1/Sh1191 ;
  wire \a1/Sh11911_682 ;
  wire \a1/Sh120 ;
  wire \a1/Sh1201 ;
  wire \a1/Sh12011_685 ;
  wire \a1/Sh121 ;
  wire \a1/Sh1211 ;
  wire \a1/Sh12111_688 ;
  wire \a1/Sh122 ;
  wire \a1/Sh1221 ;
  wire \a1/Sh12211_691 ;
  wire \a1/Sh23 ;
  wire \a1/Sh23114_693 ;
  wire \a1/Sh23129_694 ;
  wire \a1/Sh23213_695 ;
  wire \a1/Sh23228_696 ;
  wire \a1/Sh23320 ;
  wire \a1/Sh2337 ;
  wire \a1/Sh23431 ;
  wire \a1/Sh234311_700 ;
  wire \a1/Sh2347 ;
  wire \a1/Sh23_bdd1 ;
  wire \a1/Sh23_bdd5 ;
  wire \a1/Sh24 ;
  wire \a1/Sh24114_705 ;
  wire \a1/Sh24129_706 ;
  wire \a1/Sh24213_707 ;
  wire \a1/Sh24228_708 ;
  wire \a1/Sh2437 ;
  wire \a1/Sh2447 ;
  wire \a1/Sh24_bdd1 ;
  wire \a1/Sh24_bdd5 ;
  wire \a1/Sh25 ;
  wire \a1/Sh25114_714 ;
  wire \a1/Sh25129_715 ;
  wire \a1/Sh25213_716 ;
  wire \a1/Sh25228_717 ;
  wire \a1/Sh2537 ;
  wire \a1/Sh2547 ;
  wire \a1/Sh25_bdd1 ;
  wire \a1/Sh25_bdd5 ;
  wire \a1/Sh26 ;
  wire \a1/Sh26114_723 ;
  wire \a1/Sh26129_724 ;
  wire \a1/Sh26213_725 ;
  wire \a1/Sh26228_726 ;
  wire \a1/Sh2637 ;
  wire \a1/Sh26_bdd1 ;
  wire \a1/Sh26_bdd5 ;
  wire \a1/Sh27 ;
  wire \a1/Sh2711 ;
  wire \a1/Sh27111_732 ;
  wire \a1/Sh2737 ;
  wire \a1/Sh27_bdd0 ;
  wire \a1/Sh27_bdd2 ;
  wire \a1/Sh28 ;
  wire \a1/Sh2811 ;
  wire \a1/Sh28111_738 ;
  wire \a1/Sh28331 ;
  wire \a1/Sh283311_740 ;
  wire \a1/Sh28_bdd0 ;
  wire \a1/Sh28_bdd2 ;
  wire \a1/Sh29 ;
  wire \a1/Sh2911 ;
  wire \a1/Sh29111_745 ;
  wire \a1/Sh29212_746 ;
  wire \a1/Sh29227_747 ;
  wire \a1/Sh30 ;
  wire \a1/Sh3011 ;
  wire \a1/Sh30111_750 ;
  wire \a1/Sh30212_751 ;
  wire \a1/Sh30227_752 ;
  wire \a1/Sh30_bdd0 ;
  wire \a1/Sh31 ;
  wire \a1/Sh31224_755 ;
  wire \a1/Sh31_bdd0 ;
  wire \a1/Sh32 ;
  wire \a1/Sh32_bdd0 ;
  wire \a1/Sh33 ;
  wire \a1/Sh3318_760 ;
  wire \a1/Sh34 ;
  wire \a1/Sh35 ;
  wire \a1/Sh36 ;
  wire \a1/_or0000 ;
  wire \a1/haddr_not0001 ;
  wire \a1/hwe_776 ;
  wire \a1/hwe_or0000 ;
  wire \a1/mag2_not0001 ;
  wire \a1/sqmag/N01 ;
  wire \a1/sqmag/N11 ;
  wire \a1/sqmag/N2 ;
  wire \a1/sqmag/Sh1 ;
  wire \a1/sqmag/Sh2 ;
  wire \a1/sqmag/Sh3 ;
  wire \a1/sqmag/answer_not0001 ;
  wire \a1/sqmag/bit_cmp_eq0000 ;
  wire \a1/sqmag/bit_not0001 ;
  wire \a1/sqmag/busy_1023 ;
  wire \a1/sqmag/busy_not0001 ;
  wire \a1/sqrt_done ;
  wire \a1/state_FSM_FFd1_1040 ;
  wire \a1/state_FSM_FFd1-In ;
  wire \a1/state_FSM_FFd2_1042 ;
  wire \a1/state_FSM_FFd2-In ;
  wire \a1/state_cmp_eq0000 ;
  wire ac97_bit_clock_BUFGP_1106;
  wire ac97_sdata_in_IBUF_1108;
  wire b_1180;
  wire blob_not0001;
  wire button_down_IBUF_1188;
  wire button_enter_IBUF_1190;
  wire button_left_IBUF_1192;
  wire button_right_IBUF_1194;
  wire button_up_IBUF_1196;
  wire clock_27mhz_IBUFG_1198;
  wire clock_27mhz_IBUFG1;
  wire clock_65mhz;
  wire clock_65mhz_unbuf;
  wire \db1/Mcount_count_cy<10>_rt_1205 ;
  wire \db1/Mcount_count_cy<11>_rt_1207 ;
  wire \db1/Mcount_count_cy<12>_rt_1209 ;
  wire \db1/Mcount_count_cy<13>_rt_1211 ;
  wire \db1/Mcount_count_cy<14>_rt_1213 ;
  wire \db1/Mcount_count_cy<15>_rt_1215 ;
  wire \db1/Mcount_count_cy<16>_rt_1217 ;
  wire \db1/Mcount_count_cy<17>_rt_1219 ;
  wire \db1/Mcount_count_cy<1>_rt_1221 ;
  wire \db1/Mcount_count_cy<2>_rt_1223 ;
  wire \db1/Mcount_count_cy<3>_rt_1225 ;
  wire \db1/Mcount_count_cy<4>_rt_1227 ;
  wire \db1/Mcount_count_cy<5>_rt_1229 ;
  wire \db1/Mcount_count_cy<6>_rt_1231 ;
  wire \db1/Mcount_count_cy<7>_rt_1233 ;
  wire \db1/Mcount_count_cy<8>_rt_1235 ;
  wire \db1/Mcount_count_cy<9>_rt_1237 ;
  wire \db1/Mcount_count_xor<18>_rt_1239 ;
  wire \db1/clean_1240 ;
  wire \db1/clean_mux0000 ;
  wire \db1/clean_not0001 ;
  wire \db1/count_cmp_eq0000 ;
  wire \db1/count_not0001 ;
  wire \db1/count_or0000 ;
  wire \db1/new_1274 ;
  wire db1_not0000;
  wire \db2/Mcount_count_cy<10>_rt_1278 ;
  wire \db2/Mcount_count_cy<11>_rt_1280 ;
  wire \db2/Mcount_count_cy<12>_rt_1282 ;
  wire \db2/Mcount_count_cy<13>_rt_1284 ;
  wire \db2/Mcount_count_cy<14>_rt_1286 ;
  wire \db2/Mcount_count_cy<15>_rt_1288 ;
  wire \db2/Mcount_count_cy<16>_rt_1290 ;
  wire \db2/Mcount_count_cy<17>_rt_1292 ;
  wire \db2/Mcount_count_cy<1>_rt_1294 ;
  wire \db2/Mcount_count_cy<2>_rt_1296 ;
  wire \db2/Mcount_count_cy<3>_rt_1298 ;
  wire \db2/Mcount_count_cy<4>_rt_1300 ;
  wire \db2/Mcount_count_cy<5>_rt_1302 ;
  wire \db2/Mcount_count_cy<6>_rt_1304 ;
  wire \db2/Mcount_count_cy<7>_rt_1306 ;
  wire \db2/Mcount_count_cy<8>_rt_1308 ;
  wire \db2/Mcount_count_cy<9>_rt_1310 ;
  wire \db2/Mcount_count_xor<18>_rt_1312 ;
  wire \db2/clean_1313 ;
  wire \db2/clean_mux0000 ;
  wire \db2/clean_not0001 ;
  wire \db2/count_cmp_eq0000 ;
  wire \db2/count_not0001 ;
  wire \db2/count_or0000 ;
  wire \db2/new_1347 ;
  wire db2_not0000;
  wire \db3/Mcount_count_cy<10>_rt_1351 ;
  wire \db3/Mcount_count_cy<11>_rt_1353 ;
  wire \db3/Mcount_count_cy<12>_rt_1355 ;
  wire \db3/Mcount_count_cy<13>_rt_1357 ;
  wire \db3/Mcount_count_cy<14>_rt_1359 ;
  wire \db3/Mcount_count_cy<15>_rt_1361 ;
  wire \db3/Mcount_count_cy<16>_rt_1363 ;
  wire \db3/Mcount_count_cy<17>_rt_1365 ;
  wire \db3/Mcount_count_cy<1>_rt_1367 ;
  wire \db3/Mcount_count_cy<2>_rt_1369 ;
  wire \db3/Mcount_count_cy<3>_rt_1371 ;
  wire \db3/Mcount_count_cy<4>_rt_1373 ;
  wire \db3/Mcount_count_cy<5>_rt_1375 ;
  wire \db3/Mcount_count_cy<6>_rt_1377 ;
  wire \db3/Mcount_count_cy<7>_rt_1379 ;
  wire \db3/Mcount_count_cy<8>_rt_1381 ;
  wire \db3/Mcount_count_cy<9>_rt_1383 ;
  wire \db3/Mcount_count_xor<18>_rt_1385 ;
  wire \db3/clean_1386 ;
  wire \db3/clean_mux0000 ;
  wire \db3/clean_not0001 ;
  wire \db3/count_cmp_eq0000 ;
  wire \db3/count_not0001 ;
  wire \db3/count_or0000 ;
  wire \db3/new_1420 ;
  wire db3_not0000;
  wire \db4/Mcount_count_cy<10>_rt_1424 ;
  wire \db4/Mcount_count_cy<11>_rt_1426 ;
  wire \db4/Mcount_count_cy<12>_rt_1428 ;
  wire \db4/Mcount_count_cy<13>_rt_1430 ;
  wire \db4/Mcount_count_cy<14>_rt_1432 ;
  wire \db4/Mcount_count_cy<15>_rt_1434 ;
  wire \db4/Mcount_count_cy<16>_rt_1436 ;
  wire \db4/Mcount_count_cy<17>_rt_1438 ;
  wire \db4/Mcount_count_cy<1>_rt_1440 ;
  wire \db4/Mcount_count_cy<2>_rt_1442 ;
  wire \db4/Mcount_count_cy<3>_rt_1444 ;
  wire \db4/Mcount_count_cy<4>_rt_1446 ;
  wire \db4/Mcount_count_cy<5>_rt_1448 ;
  wire \db4/Mcount_count_cy<6>_rt_1450 ;
  wire \db4/Mcount_count_cy<7>_rt_1452 ;
  wire \db4/Mcount_count_cy<8>_rt_1454 ;
  wire \db4/Mcount_count_cy<9>_rt_1456 ;
  wire \db4/Mcount_count_xor<18>_rt_1458 ;
  wire \db4/clean_1459 ;
  wire \db4/clean_mux0000 ;
  wire \db4/clean_not0001 ;
  wire \db4/count_cmp_eq0000 ;
  wire \db4/count_not0001 ;
  wire \db4/count_or0000 ;
  wire \db4/new_1493 ;
  wire db4_not0000;
  wire \db5/Mcount_count_cy<10>_rt_1497 ;
  wire \db5/Mcount_count_cy<11>_rt_1499 ;
  wire \db5/Mcount_count_cy<12>_rt_1501 ;
  wire \db5/Mcount_count_cy<13>_rt_1503 ;
  wire \db5/Mcount_count_cy<14>_rt_1505 ;
  wire \db5/Mcount_count_cy<15>_rt_1507 ;
  wire \db5/Mcount_count_cy<16>_rt_1509 ;
  wire \db5/Mcount_count_cy<17>_rt_1511 ;
  wire \db5/Mcount_count_cy<1>_rt_1513 ;
  wire \db5/Mcount_count_cy<2>_rt_1515 ;
  wire \db5/Mcount_count_cy<3>_rt_1517 ;
  wire \db5/Mcount_count_cy<4>_rt_1519 ;
  wire \db5/Mcount_count_cy<5>_rt_1521 ;
  wire \db5/Mcount_count_cy<6>_rt_1523 ;
  wire \db5/Mcount_count_cy<7>_rt_1525 ;
  wire \db5/Mcount_count_cy<8>_rt_1527 ;
  wire \db5/Mcount_count_cy<9>_rt_1529 ;
  wire \db5/Mcount_count_xor<18>_rt_1531 ;
  wire \db5/clean_1532 ;
  wire \db5/clean_mux0000 ;
  wire \db5/clean_not0001 ;
  wire \db5/count_cmp_eq0000 ;
  wire \db5/count_not0001 ;
  wire \db5/count_or0000 ;
  wire \db5/new_1566 ;
  wire db5_not0000;
  wire \db6/Mcount_count_cy<10>_rt_1570 ;
  wire \db6/Mcount_count_cy<11>_rt_1572 ;
  wire \db6/Mcount_count_cy<12>_rt_1574 ;
  wire \db6/Mcount_count_cy<13>_rt_1576 ;
  wire \db6/Mcount_count_cy<14>_rt_1578 ;
  wire \db6/Mcount_count_cy<15>_rt_1580 ;
  wire \db6/Mcount_count_cy<16>_rt_1582 ;
  wire \db6/Mcount_count_cy<17>_rt_1584 ;
  wire \db6/Mcount_count_cy<1>_rt_1586 ;
  wire \db6/Mcount_count_cy<2>_rt_1588 ;
  wire \db6/Mcount_count_cy<3>_rt_1590 ;
  wire \db6/Mcount_count_cy<4>_rt_1592 ;
  wire \db6/Mcount_count_cy<5>_rt_1594 ;
  wire \db6/Mcount_count_cy<6>_rt_1596 ;
  wire \db6/Mcount_count_cy<7>_rt_1598 ;
  wire \db6/Mcount_count_cy<8>_rt_1600 ;
  wire \db6/Mcount_count_cy<9>_rt_1602 ;
  wire \db6/Mcount_count_xor<18>_rt_1604 ;
  wire \db6/clean_1605 ;
  wire \db6/clean_mux0000 ;
  wire \db6/clean_not0001 ;
  wire \db6/count_cmp_eq0000 ;
  wire \db6/count_not0001 ;
  wire \db6/count_or0000 ;
  wire \db6/new_1639 ;
  wire \disp/Mcount_reset_count_cy<0>_rt_1642 ;
  wire \disp/Mcount_reset_count_val ;
  wire \disp/Mmux__varindex0000_10_1657 ;
  wire \disp/Mmux__varindex0000_10_f5_1658 ;
  wire \disp/Mmux__varindex0000_10_f6_1659 ;
  wire \disp/Mmux__varindex0000_11_1660 ;
  wire \disp/Mmux__varindex0000_11_f5_1661 ;
  wire \disp/Mmux__varindex0000_11_f51 ;
  wire \disp/Mmux__varindex0000_12_1663 ;
  wire \disp/Mmux__varindex0000_121_1664 ;
  wire \disp/Mmux__varindex0000_122_1665 ;
  wire \disp/Mmux__varindex0000_12_f5_1666 ;
  wire \disp/Mmux__varindex0000_12_f6_1667 ;
  wire \disp/Mmux__varindex0000_13_1668 ;
  wire \disp/Mmux__varindex0000_131_1669 ;
  wire \disp/Mmux__varindex0000_132_1670 ;
  wire \disp/Mmux__varindex0000_13_f5_1671 ;
  wire \disp/Mmux__varindex0000_14_1672 ;
  wire \disp/Mmux__varindex0000_141_1673 ;
  wire \disp/Mmux__varindex0000_14_f5_1674 ;
  wire \disp/Mmux__varindex0000_15_1675 ;
  wire \disp/Mmux__varindex0000_151_1676 ;
  wire \disp/Mmux__varindex0000_16_1677 ;
  wire \disp/Mmux__varindex0000_6_f6_1678 ;
  wire \disp/Mmux__varindex0000_7_f5_1679 ;
  wire \disp/Mmux__varindex0000_8_1680 ;
  wire \disp/Mmux__varindex0000_8_f5_1681 ;
  wire \disp/Mmux__varindex0000_8_f7_1682 ;
  wire \disp/Mmux__varindex0000_9_1683 ;
  wire \disp/Mmux__varindex0000_91_1684 ;
  wire \disp/Mmux__varindex0000_9_f6_1685 ;
  wire \disp/Mmux_nibble_9_1686 ;
  wire \disp/Mmux_nibble_91_1687 ;
  wire \disp/Mrom_dots ;
  wire \disp/Mrom_dots1_1689 ;
  wire \disp/Mrom_dots10 ;
  wire \disp/Mrom_dots11 ;
  wire \disp/Mrom_dots12 ;
  wire \disp/Mrom_dots13 ;
  wire \disp/Mrom_dots14 ;
  wire \disp/Mrom_dots2 ;
  wire \disp/Mrom_dots22_1696 ;
  wire \disp/Mrom_dots27_1697 ;
  wire \disp/Mrom_dots3 ;
  wire \disp/Mrom_dots30_1699 ;
  wire \disp/Mrom_dots32 ;
  wire \disp/Mrom_dots33 ;
  wire \disp/Mrom_dots34 ;
  wire \disp/Mrom_dots35 ;
  wire \disp/Mrom_dots36 ;
  wire \disp/Mrom_dots37 ;
  wire \disp/Mrom_dots38 ;
  wire \disp/Mrom_dots4 ;
  wire \disp/Mrom_dots5 ;
  wire \disp/Mrom_dots6 ;
  wire \disp/Mrom_dots8 ;
  wire \disp/Mshreg_control_14_1711 ;
  wire \disp/Mshreg_control_22_1712 ;
  wire \disp/Mshreg_control_30_1713 ;
  wire \disp/Mshreg_control_6_1714 ;
  wire \disp/N102 ;
  wire \disp/N12 ;
  wire \disp/N14 ;
  wire \disp/N24 ;
  wire \disp/N26 ;
  wire \disp/N29 ;
  wire \disp/N31 ;
  wire \disp/N32 ;
  wire \disp/N34 ;
  wire \disp/N37 ;
  wire \disp/N38 ;
  wire \disp/N61 ;
  wire \disp/N76 ;
  wire \disp/N79 ;
  wire \disp/N8 ;
  wire \disp/N92 ;
  wire \disp/N97 ;
  wire \disp/N99 ;
  wire \disp/Result<0>1 ;
  wire \disp/Result<1>1 ;
  wire \disp/Result<2>1 ;
  wire \disp/Result<3>1_1740 ;
  wire \disp/Result<4>1_1742 ;
  wire \disp/Result<4>2_1743 ;
  wire \disp/Result<4>3 ;
  wire \disp/char_index_mux0000<0>12 ;
  wire \disp/char_index_mux0000<0>121_1754 ;
  wire \disp/char_index_mux0000<1>8_1756 ;
  wire \disp/char_index_mux0000<2>1_1758 ;
  wire \disp/char_index_mux0000<2>2_1759 ;
  wire \disp/clock_1761 ;
  wire \disp/clock1 ;
  wire \disp/clock_cmp_eq0000 ;
  wire \disp/control_141_1764 ;
  wire \disp/control_1411 ;
  wire \disp/control_142_1766 ;
  wire \disp/control[15] ;
  wire \disp/control_221_1768 ;
  wire \disp/control_2211 ;
  wire \disp/control_222_1770 ;
  wire \disp/control[23] ;
  wire \disp/control_301_1772 ;
  wire \disp/control_3011 ;
  wire \disp/control_302_1774 ;
  wire \disp/control[31] ;
  wire \disp/control_61_1776 ;
  wire \disp/control_611 ;
  wire \disp/control_62_1778 ;
  wire \disp/control[7] ;
  wire \disp/count_or0000 ;
  wire \disp/count_or00001 ;
  wire \disp/disp_ce_b_1787 ;
  wire \disp/disp_ce_b_mux0000 ;
  wire \disp/disp_data_out_1789 ;
  wire \disp/disp_data_out_mux0000 ;
  wire \disp/disp_data_out_mux0000131_1791 ;
  wire \disp/disp_data_out_mux000014_1792 ;
  wire \disp/disp_data_out_mux0000168 ;
  wire \disp/disp_data_out_mux00001681_1794 ;
  wire \disp/disp_data_out_mux000033_1795 ;
  wire \disp/disp_data_out_mux000078_1796 ;
  wire \disp/disp_reset_b_1797 ;
  wire \disp/disp_reset_b_mux0000 ;
  wire \disp/disp_rs_1799 ;
  wire \disp/disp_rs_mux0000 ;
  wire \disp/dot_index_mux0000<0>111 ;
  wire \disp/dot_index_mux0000<0>1111_1813 ;
  wire \disp/dot_index_mux0000<0>25_1814 ;
  wire \disp/dot_index_mux0000<0>33 ;
  wire \disp/dot_index_mux0000<0>47_1816 ;
  wire \disp/dot_index_mux0000<0>5_1817 ;
  wire \disp/dot_index_mux0000<0>97_1818 ;
  wire \disp/dot_index_mux0000<1>18_1820 ;
  wire \disp/dot_index_mux0000<1>2_1821 ;
  wire \disp/dot_index_mux0000<1>30_1822 ;
  wire \disp/dot_index_mux0000<1>63_1823 ;
  wire \disp/dot_index_mux0000<2>36_1824 ;
  wire \disp/dot_index_mux0000<2>83_1825 ;
  wire \disp/dot_index_mux0000<2>90 ;
  wire \disp/dot_index_mux0000<3>14 ;
  wire \disp/dot_index_mux0000<3>141_1828 ;
  wire \disp/dot_index_mux0000<3>34_1829 ;
  wire \disp/dot_index_mux0000<3>52 ;
  wire \disp/dot_index_mux0000<4>106_1831 ;
  wire \disp/dot_index_mux0000<4>152 ;
  wire \disp/dot_index_mux0000<4>30 ;
  wire \disp/dot_index_mux0000<4>301_1834 ;
  wire \disp/dot_index_mux0000<4>5 ;
  wire \disp/dot_index_mux0000<4>55_1836 ;
  wire \disp/dot_index_mux0000<5>0 ;
  wire \disp/dot_index_mux0000<5>112_1838 ;
  wire \disp/dot_index_mux0000<5>15_1839 ;
  wire \disp/dot_index_mux0000<5>31_1840 ;
  wire \disp/dot_index_mux0000<5>39_1841 ;
  wire \disp/dot_index_mux0000<5>53_1842 ;
  wire \disp/dot_index_mux0000<5>66_1843 ;
  wire \disp/dot_index_mux0000<5>75 ;
  wire \disp/dot_index_mux0000<5>77_1845 ;
  wire \disp/dot_index_mux0000<6>101_1846 ;
  wire \disp/dot_index_mux0000<6>18_1847 ;
  wire \disp/dot_index_mux0000<6>3_1848 ;
  wire \disp/dot_index_mux0000<6>43_1849 ;
  wire \disp/dot_index_mux0000<6>67_1850 ;
  wire \disp/dot_index_mux0000<6>81_1851 ;
  wire \disp/dot_index_mux0000<7>100 ;
  wire \disp/dot_index_mux0000<7>13_1853 ;
  wire \disp/dot_index_mux0000<7>28_1854 ;
  wire \disp/dot_index_mux0000<7>65_1855 ;
  wire \disp/dot_index_mux0000<8>51_1856 ;
  wire \disp/dot_index_mux0000<9>1_1857 ;
  wire \disp/dreset ;
  wire \disp/dreset4_1859 ;
  wire \disp/dreset9_1860 ;
  wire \disp/dreset_inv ;
  wire \disp/dreset_shift1_1862 ;
  wire \disp/dreset_shift2_1863 ;
  wire \disp/dreset_shift3_1864 ;
  wire \disp/dreset_shift4_1865 ;
  wire \disp/dreset_shift5_1866 ;
  wire \disp/dreset_shift6_1867 ;
  wire \disp/reset_count_not0001_inv ;
  wire \disp/state_FSM_FFd1_1881 ;
  wire \disp/state_FSM_FFd2_1882 ;
  wire \disp/state_FSM_FFd2-In_1883 ;
  wire \disp/state_FSM_FFd3_1884 ;
  wire \disp/state_FSM_FFd3-In_1885 ;
  wire \disp/state_cmp_eq0000_1886 ;
  wire \disp/state_cmp_eq00001 ;
  wire \disp/state_cmp_eq0001_1888 ;
  wire \disp/state_cmp_eq0006 ;
  wire disp_clock_OBUF_1893;
  wire fft_pixel_cmp_le0000;
  wire fft_pixel_or0000;
  wire \hd/N11 ;
  wire \hd/N111 ;
  wire \hd/N13 ;
  wire \hd/N14 ;
  wire \hd/N8 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f6_2002 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f61 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f610 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f62 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f63 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f64 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f65 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f66 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f67 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f68 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_3_f69 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f5_2013 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f51 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f510 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f52 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f53 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f54 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f55 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f56 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f57 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f58 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f59 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f6_2024 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f61 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f610 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f62 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f63 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f64 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f65 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f66 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f67 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f68 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_4_f69 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_2035 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_51_2036 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_510_2037 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_52_2038 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_53_2039 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_54_2040 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_55_2041 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_56_2042 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_57_2043 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_58_2044 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_59_2045 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f5_2046 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f51 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f510 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f511 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f512 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f513 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f514 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f515 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f516 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f517 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f518 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f519 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f52 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f520 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f521 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f53 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f54 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f55 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f56 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f57 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f58 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_5_f59 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_2068 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_61_2069 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_610_2070 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_611_2071 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_612_2072 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_613_2073 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_614_2074 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_615_2075 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_616_2076 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_617_2077 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_618_2078 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_619_2079 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_62_2080 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_620_2081 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_621_2082 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_622_2083 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_623_2084 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_624_2085 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_625_2086 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_626_2087 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_627_2088 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_628_2089 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_629_2090 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_63_2091 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_630_2092 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_631_2093 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_632_2094 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_64_2095 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_65_2096 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_66_2097 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_67_2098 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_68_2099 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_69_2100 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f5_2101 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f51 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f510 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f52 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f53 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f54 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f55 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f56 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f57 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f58 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_6_f59 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_7_2112 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_71_2113 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_710_2114 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_711_2115 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_712_2116 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_713_2117 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_714_2118 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_715_2119 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_716_2120 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_717_2121 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_718_2122 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_719_2123 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_72_2124 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_720_2125 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_721_2126 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_722_2127 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_723_2128 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_724_2129 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_725_2130 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_726_2131 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_727_2132 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_728_2133 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_729_2134 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_73_2135 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_730_2136 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_731_2137 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_732_2138 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_74_2139 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_75_2140 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_76_2141 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_77_2142 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_78_2143 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_79_2144 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_8_2145 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_81_2146 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_810_2147 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_82_2148 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_83_2149 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_84_2150 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_85_2151 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_86_2152 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_87_2153 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_88_2154 ;
  wire \hd/ma_digs/Mmux_address_out_mux0000_89_2155 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_2156 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f61 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f62 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f63 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_2160 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f51 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f52 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f53 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_2164 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f61 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f62 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f63 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_2168 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_51_2169 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_52_2170 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_53_2171 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_2172 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f51 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f52 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f53 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f54 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f55 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f56 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f57 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_6_2180 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_61_2181 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_610_2182 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_611_2183 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_62_2184 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_63_2185 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_64_2186 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_65_2187 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_66_2188 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_67_2189 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_68_2190 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_69_2191 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_2192 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f51 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f52 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f53 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_7_2196 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_71_2197 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_710_2198 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_711_2199 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_72_2200 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_73_2201 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_74_2202 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_75_2203 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_76_2204 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_77_2205 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_78_2206 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_79_2207 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_8_2208 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_81_2209 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_82_2210 ;
  wire \hd/ma_digs/Mmux_num_sel_out_mux0000_83_2211 ;
  wire \hd/ma_digs/N11 ;
  wire \hd/ma_digs/N2 ;
  wire \hd/ma_digs/N211 ;
  wire \hd/ma_digs/N24 ;
  wire \hd/ma_digs/N3 ;
  wire \hd/ma_digs/address_out_mux0000<0>1 ;
  wire \hd/ma_digs/address_out_mux0000<10>1 ;
  wire \hd/ma_digs/address_out_mux0000<1>1 ;
  wire \hd/ma_digs/address_out_mux0000<2>1 ;
  wire \hd/ma_digs/address_out_mux0000<3>1 ;
  wire \hd/ma_digs/address_out_mux0000<4>1 ;
  wire \hd/ma_digs/address_out_mux0000<5>1 ;
  wire \hd/ma_digs/address_out_mux0000<6>1 ;
  wire \hd/ma_digs/address_out_mux0000<7>1 ;
  wire \hd/ma_digs/address_out_mux0000<8>1 ;
  wire \hd/ma_digs/address_out_mux0000<9>1 ;
  wire \hd/ma_digs/num_sel_out_mux0000<0>1 ;
  wire \hd/ma_digs/num_sel_out_mux0000<1>1 ;
  wire \hd/ma_digs/num_sel_out_mux0000<2>1 ;
  wire \hd/ma_digs/num_sel_out_mux0000<3>1 ;
  wire \hd/ma_digs/number_0_0_2401 ;
  wire \hd/ma_digs/number_0_1_2402 ;
  wire \hd/ma_digs/number_0_2_2403 ;
  wire \hd/ma_digs/number_0_3_2404 ;
  wire \hd/ma_digs/number_0_not0001 ;
  wire \hd/ma_digs/number_10_0_2406 ;
  wire \hd/ma_digs/number_10_1_2407 ;
  wire \hd/ma_digs/number_10_2_2408 ;
  wire \hd/ma_digs/number_10_3_2409 ;
  wire \hd/ma_digs/number_10_not0001 ;
  wire \hd/ma_digs/number_11_0_2411 ;
  wire \hd/ma_digs/number_11_1_2412 ;
  wire \hd/ma_digs/number_11_2_2413 ;
  wire \hd/ma_digs/number_11_3_2414 ;
  wire \hd/ma_digs/number_11_not0001 ;
  wire \hd/ma_digs/number_12_0_2416 ;
  wire \hd/ma_digs/number_12_1_2417 ;
  wire \hd/ma_digs/number_12_2_2418 ;
  wire \hd/ma_digs/number_12_3_2419 ;
  wire \hd/ma_digs/number_12_not0001 ;
  wire \hd/ma_digs/number_13_0_2421 ;
  wire \hd/ma_digs/number_13_1_2422 ;
  wire \hd/ma_digs/number_13_2_2423 ;
  wire \hd/ma_digs/number_13_3_2424 ;
  wire \hd/ma_digs/number_13_not0001 ;
  wire \hd/ma_digs/number_1_0_2426 ;
  wire \hd/ma_digs/number_1_1_2427 ;
  wire \hd/ma_digs/number_1_2_2428 ;
  wire \hd/ma_digs/number_1_3_2429 ;
  wire \hd/ma_digs/number_1_not0001 ;
  wire \hd/ma_digs/number_2_0_2431 ;
  wire \hd/ma_digs/number_2_1_2432 ;
  wire \hd/ma_digs/number_2_2_2433 ;
  wire \hd/ma_digs/number_2_3_2434 ;
  wire \hd/ma_digs/number_2_not0001 ;
  wire \hd/ma_digs/number_3_0_2436 ;
  wire \hd/ma_digs/number_3_1_2437 ;
  wire \hd/ma_digs/number_3_2_2438 ;
  wire \hd/ma_digs/number_3_3_2439 ;
  wire \hd/ma_digs/number_3_not0001 ;
  wire \hd/ma_digs/number_4_0_2441 ;
  wire \hd/ma_digs/number_4_1_2442 ;
  wire \hd/ma_digs/number_4_2_2443 ;
  wire \hd/ma_digs/number_4_3_2444 ;
  wire \hd/ma_digs/number_4_not0001 ;
  wire \hd/ma_digs/number_5_0_2446 ;
  wire \hd/ma_digs/number_5_1_2447 ;
  wire \hd/ma_digs/number_5_2_2448 ;
  wire \hd/ma_digs/number_5_3_2449 ;
  wire \hd/ma_digs/number_5_not0001 ;
  wire \hd/ma_digs/number_6_0_2451 ;
  wire \hd/ma_digs/number_6_1_2452 ;
  wire \hd/ma_digs/number_6_2_2453 ;
  wire \hd/ma_digs/number_6_3_2454 ;
  wire \hd/ma_digs/number_6_not0001 ;
  wire \hd/ma_digs/number_7_0_2456 ;
  wire \hd/ma_digs/number_7_1_2457 ;
  wire \hd/ma_digs/number_7_2_2458 ;
  wire \hd/ma_digs/number_7_3_2459 ;
  wire \hd/ma_digs/number_7_not0001 ;
  wire \hd/ma_digs/number_8_0_2461 ;
  wire \hd/ma_digs/number_8_1_2462 ;
  wire \hd/ma_digs/number_8_2_2463 ;
  wire \hd/ma_digs/number_8_3_2464 ;
  wire \hd/ma_digs/number_8_not0001 ;
  wire \hd/ma_digs/number_9_0_2466 ;
  wire \hd/ma_digs/number_9_1_2467 ;
  wire \hd/ma_digs/number_9_2_2468 ;
  wire \hd/ma_digs/number_9_3_2469 ;
  wire \hd/ma_digs/number_9_not0001 ;
  wire \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2493 ;
  wire \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] ;
  wire \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[5] ;
  wire \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[8] ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_2526 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001119_2529 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132_2530 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_not000126 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_not0001261_2533 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_not000144_2534 ;
  wire \hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ;
  wire \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ;
  wire \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] ;
  wire \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[6] ;
  wire \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] ;
  wire \hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[6] ;
  wire \hd/ma_digs/ribbles[13].un_blob/overlap_2586 ;
  wire \hd/ma_digs/ribbles[13].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ribbles[13].un_blob/overlap_not000121_2588 ;
  wire \hd/ma_digs/ribbles[13].un_blob/overlap_not000147_2589 ;
  wire \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ;
  wire \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ;
  wire \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[2] ;
  wire \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ;
  wire \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[5] ;
  wire \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[8] ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_2649 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129_2651 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001212_2652 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riffle[8].un_blob/overlap_not000115_2655 ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2678 ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2681 ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ;
  wire \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ;
  wire \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[7] ;
  wire \hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/riffle[9].un_blob/overlap_2704 ;
  wire \hd/ma_digs/riffle[9].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riffle[9].un_blob/overlap_not000119_2706 ;
  wire \hd/ma_digs/riffle[9].un_blob/overlap_not00013 ;
  wire \hd/ma_digs/riffle[9].un_blob/overlap_not000146_2708 ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2731 ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2736 ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>_rt_2739 ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<8>_rt_2742 ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ;
  wire \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[9] ;
  wire \hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[4] ;
  wire \hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] ;
  wire \hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/riggle[6].un_blob/overlap_2764 ;
  wire \hd/ma_digs/riggle[6].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riggle[6].un_blob/overlap_not000124_2766 ;
  wire \hd/ma_digs/riggle[6].un_blob/overlap_not00013_2767 ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2794 ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/riggle[7].un_blob/overlap_2814 ;
  wire \hd/ma_digs/riggle[7].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riggle[7].un_blob/overlap_not000124_2816 ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2843 ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/riggles[10].un_blob/overlap_2864 ;
  wire \hd/ma_digs/riggles[10].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riggles[10].un_blob/overlap_not000126_2866 ;
  wire \hd/ma_digs/riggles[10].un_blob/overlap_not000143_2867 ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2890 ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>_rt_2894 ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>_rt_2897 ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ;
  wire \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ;
  wire \hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/riggles[11].un_blob/overlap_2917 ;
  wire \hd/ma_digs/riggles[11].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/riggles[11].un_blob/overlap_not000112_2919 ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2942 ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2945 ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ;
  wire \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ;
  wire \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ;
  wire \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[1] ;
  wire \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[4] ;
  wire \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[7] ;
  wire \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[5] ;
  wire \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[8] ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_2985 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001210_2987 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge000124_2988 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217_2990 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001232_2991 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripple[0].un_blob/overlap_not000117_2993 ;
  wire \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] ;
  wire \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[8] ;
  wire \hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[5] ;
  wire \hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[8] ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_3038 ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_not000128_3040 ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_not00013 ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_not000131_3042 ;
  wire \hd/ma_digs/ripple[1].un_blob/overlap_not000153_3043 ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3066 ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3069 ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_3072 ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ;
  wire \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ;
  wire \hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/ripple[2].un_blob/overlap_3095 ;
  wire \hd/ma_digs/ripple[2].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripple[2].un_blob/overlap_not000125_3097 ;
  wire \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[2] ;
  wire \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ;
  wire \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[7] ;
  wire \hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[4] ;
  wire \hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/ripple[3].un_blob/overlap_3144 ;
  wire \hd/ma_digs/ripple[3].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripple[3].un_blob/overlap_not000133_3146 ;
  wire \hd/ma_digs/ripple[3].un_blob/overlap_not000161_3147 ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3170 ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3173 ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ;
  wire \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_3204 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00011 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00012 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001119_3207 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt00012 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_not000125_3210 ;
  wire \hd/ma_digs/ripples[4].un_blob/overlap_not00017_3211 ;
  wire \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3236 ;
  wire \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ;
  wire \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ;
  wire \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ;
  wire \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ;
  wire \hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[10] ;
  wire \hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[7] ;
  wire \hd/ma_digs/ripples[5].un_blob/overlap_3258 ;
  wire \hd/ma_digs/ripples[5].un_blob/overlap_not0001 ;
  wire \hd/ma_digs/ripples[5].un_blob/overlap_not000129_3260 ;
  wire \hd/ma_digs/ripples[5].un_blob/overlap_not000158_3261 ;
  wire \hd/ma_digs/the_dig/N14 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>12_3281 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>153 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>1531 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>15311_3284 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>25_3285 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>40_3286 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>97 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>971_3288 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<0>972_3289 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>12_3290 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>153 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>1531 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>15311_3293 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>25_3294 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>40_3295 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>97 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>971_3297 ;
  wire \hd/ma_digs/the_dig/to_color_map_mux0000<1>972_3298 ;
  wire \hd/ma_digs/the_sel/N20 ;
  wire \hd/ma_digs/the_sel/N24 ;
  wire \hd/ma_digs/the_sel/N25 ;
  wire \hd/ma_digs/the_sel/N6 ;
  wire \hd/ma_digs/the_sel/N7 ;
  wire \hd/ma_digs/the_sel/N8 ;
  wire \hd/ma_digs/the_sel/N9 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<0>107 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<0>62_3315 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<0>80 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<0>801_3317 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<1>62_3318 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<1>76_3319 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<1>99 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<2>107 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<2>62_3322 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<2>80 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<2>801_3324 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<3>108 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<3>62_3326 ;
  wire \hd/ma_digs/the_sel/selected_mux0000<3>76_3327 ;
  wire \hd/myblob/pixel_not0001 ;
  wire \hd/myblob/pixel_not000134_3450 ;
  wire \hd/myblob/pixel_not00014_3451 ;
  wire \hd/myblob/pixel_not000142_3452 ;
  wire \hd/thehud/pixel_not0001 ;
  wire \hd/thehud/pixel_not00011_3495 ;
  wire hs_3504;
  wire led_1_OBUF_3513;
  wire led_2_OBUF_3514;
  wire led_3_OBUF_3515;
  wire led_4_OBUF_3516;
  wire led_5_OBUF_3517;
  wire num_not0001;
  wire old_vdown_3523;
  wire old_vup_3524;
  wire power_on_reset;
  wire ready;
  wire reset;
  wire switch_0_IBUF_3634;
  wire switch_1_IBUF_3635;
  wire switch_4_IBUF_3636;
  wire switch_5_IBUF_3637;
  wire switch_6_IBUF_3638;
  wire switch_7_IBUF_3639;
  wire vga_out_blank_b_OBUF_3676;
  wire vga_out_pixel_clock_OBUF_3695;
  wire volume_not0001;
  wire volume_not000142;
  wire volume_not0001421_3713;
  wire volume_not00016;
  wire volume_not000161_3715;
  wire volume_not000172;
  wire volume_or_selection_not0001;
  wire vs_3720;
  wire vsync_inv;
  wire xblank_3722;
  wire \xvga1/Mcount_hcount_cy<1>_rt_3735 ;
  wire \xvga1/Mcount_hcount_cy<2>_rt_3737 ;
  wire \xvga1/Mcount_hcount_cy<3>_rt_3739 ;
  wire \xvga1/Mcount_hcount_cy<4>_rt_3741 ;
  wire \xvga1/Mcount_hcount_cy<5>_rt_3743 ;
  wire \xvga1/Mcount_hcount_cy<6>_rt_3745 ;
  wire \xvga1/Mcount_hcount_cy<7>_rt_3747 ;
  wire \xvga1/Mcount_hcount_cy<8>_rt_3749 ;
  wire \xvga1/Mcount_hcount_cy<9>_rt_3751 ;
  wire \xvga1/Mcount_hcount_xor<10>_rt_3753 ;
  wire \xvga1/Mcount_vcount_cy<1>_rt_3756 ;
  wire \xvga1/Mcount_vcount_cy<2>_rt_3758 ;
  wire \xvga1/Mcount_vcount_cy<3>_rt_3760 ;
  wire \xvga1/Mcount_vcount_cy<4>_rt_3762 ;
  wire \xvga1/Mcount_vcount_cy<5>_rt_3764 ;
  wire \xvga1/Mcount_vcount_cy<6>_rt_3766 ;
  wire \xvga1/Mcount_vcount_cy<7>_rt_3768 ;
  wire \xvga1/Mcount_vcount_cy<8>_rt_3770 ;
  wire \xvga1/Mcount_vcount_lut<0>1 ;
  wire \xvga1/Mcount_vcount_xor<9>_rt_3773 ;
  wire \xvga1/N0 ;
  wire \xvga1/N11 ;
  wire \xvga1/N4 ;
  wire \xvga1/N5 ;
  wire \xvga1/N6 ;
  wire \xvga1/N7 ;
  wire \xvga1/N8 ;
  wire \xvga1/Result<0>1 ;
  wire \xvga1/Result<1>1 ;
  wire \xvga1/Result<2>1 ;
  wire \xvga1/Result<3>1 ;
  wire \xvga1/Result<4>1 ;
  wire \xvga1/Result<5>1 ;
  wire \xvga1/Result<6>1 ;
  wire \xvga1/Result<7>1 ;
  wire \xvga1/Result<8>1 ;
  wire \xvga1/Result<9>1 ;
  wire \xvga1/blank_3802 ;
  wire \xvga1/blank_or00001 ;
  wire \xvga1/hblank_3804 ;
  wire \xvga1/hreset ;
  wire \xvga1/hsync_3817 ;
  wire \xvga1/hsyncoff ;
  wire \xvga1/hsyncon ;
  wire \xvga1/next_hblank17_3820 ;
  wire \xvga1/next_hblank8_3821 ;
  wire \xvga1/next_vblank ;
  wire \xvga1/next_vblank13_3823 ;
  wire \xvga1/next_vblank43 ;
  wire \xvga1/next_vblank8_3825 ;
  wire \xvga1/vblank_3826 ;
  wire \xvga1/vcount_and0000 ;
  wire \xvga1/vreset ;
  wire \xvga1/vsync_3839 ;
  wire \xvga1/vsyncoff ;
  wire \xvga1/vsyncon ;
  wire \NLW_Mmult_dividend_P<35>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<34>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<33>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<32>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<31>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<30>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<29>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<28>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<27>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<26>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<25>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<24>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<23>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<22>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<21>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<20>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<19>_UNCONNECTED ;
  wire \NLW_Mmult_dividend_P<18>_UNCONNECTED ;
  wire NLW_vclk1_RST_UNCONNECTED;
  wire NLW_vclk1_CLKFB_UNCONNECTED;
  wire NLW_vclk1_PSINCDEC_UNCONNECTED;
  wire NLW_vclk1_PSEN_UNCONNECTED;
  wire NLW_vclk1_PSCLK_UNCONNECTED;
  wire NLW_vclk1_DSSEN_UNCONNECTED;
  wire NLW_vclk1_CLK0_UNCONNECTED;
  wire NLW_vclk1_CLK90_UNCONNECTED;
  wire NLW_vclk1_CLK180_UNCONNECTED;
  wire NLW_vclk1_CLK270_UNCONNECTED;
  wire NLW_vclk1_CLK2X_UNCONNECTED;
  wire NLW_vclk1_CLK2X180_UNCONNECTED;
  wire NLW_vclk1_CLKDV_UNCONNECTED;
  wire NLW_vclk1_CLKFX180_UNCONNECTED;
  wire NLW_vclk1_LOCKED_UNCONNECTED;
  wire NLW_vclk1_PSDONE_UNCONNECTED;
  wire \NLW_vclk1_STATUS<7>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<6>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<5>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<4>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<3>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<2>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<1>_UNCONNECTED ;
  wire \NLW_vclk1_STATUS<0>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_a1/sqmag/Mmult_answer_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_a1/Mmult_imim_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<35>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<34>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<33>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<32>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<31>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<30>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<29>_UNCONNECTED ;
  wire \NLW_a1/Mmult_rere_mult0000_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED ;
  wire \NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_hd/myblob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_histogram_DOA<15>_UNCONNECTED ;
  wire \NLW_histogram_DOA<14>_UNCONNECTED ;
  wire \NLW_histogram_DOA<13>_UNCONNECTED ;
  wire \NLW_histogram_DOA<12>_UNCONNECTED ;
  wire \NLW_histogram_DOA<11>_UNCONNECTED ;
  wire \NLW_histogram_DOA<10>_UNCONNECTED ;
  wire \NLW_histogram_DOA<9>_UNCONNECTED ;
  wire \NLW_histogram_DOA<8>_UNCONNECTED ;
  wire \NLW_histogram_DOA<7>_UNCONNECTED ;
  wire \NLW_histogram_DOA<6>_UNCONNECTED ;
  wire \NLW_histogram_DOA<5>_UNCONNECTED ;
  wire \NLW_histogram_DOA<4>_UNCONNECTED ;
  wire \NLW_histogram_DOA<3>_UNCONNECTED ;
  wire \NLW_histogram_DOA<2>_UNCONNECTED ;
  wire \NLW_histogram_DOA<1>_UNCONNECTED ;
  wire \NLW_histogram_DOA<0>_UNCONNECTED ;
  wire \NLW_histogram_DOPA<1>_UNCONNECTED ;
  wire \NLW_histogram_DOPA<0>_UNCONNECTED ;
  wire \NLW_histogram_DOB<15>_UNCONNECTED ;
  wire \NLW_histogram_DOB<14>_UNCONNECTED ;
  wire \NLW_histogram_DOB<13>_UNCONNECTED ;
  wire \NLW_histogram_DOB<12>_UNCONNECTED ;
  wire \NLW_histogram_DOB<11>_UNCONNECTED ;
  wire \NLW_histogram_DOB<10>_UNCONNECTED ;
  wire \NLW_histogram_DOPB<1>_UNCONNECTED ;
  wire \NLW_histogram_DOPB<0>_UNCONNECTED ;
  wire \NLW_my_div_quotient<17>_UNCONNECTED ;
  wire \NLW_my_div_quotient<16>_UNCONNECTED ;
  wire \NLW_my_div_quotient<15>_UNCONNECTED ;
  wire \NLW_my_div_quotient<14>_UNCONNECTED ;
  wire \NLW_my_div_quotient<13>_UNCONNECTED ;
  wire \NLW_my_div_quotient<12>_UNCONNECTED ;
  wire \NLW_my_div_quotient<11>_UNCONNECTED ;
  wire \NLW_my_div_quotient<10>_UNCONNECTED ;
  wire \NLW_my_div_quotient<9>_UNCONNECTED ;
  wire \NLW_my_div_quotient<8>_UNCONNECTED ;
  wire NLW_my_div_rfd_UNCONNECTED;
  wire \NLW_my_div_fractional<9>_UNCONNECTED ;
  wire \NLW_my_div_fractional<8>_UNCONNECTED ;
  wire \NLW_my_div_fractional<7>_UNCONNECTED ;
  wire \NLW_my_div_fractional<6>_UNCONNECTED ;
  wire \NLW_my_div_fractional<5>_UNCONNECTED ;
  wire \NLW_my_div_fractional<4>_UNCONNECTED ;
  wire \NLW_my_div_fractional<3>_UNCONNECTED ;
  wire \NLW_my_div_fractional<2>_UNCONNECTED ;
  wire \NLW_my_div_fractional<1>_UNCONNECTED ;
  wire \NLW_my_div_fractional<0>_UNCONNECTED ;
  wire \NLW_a1/fft_rfd_UNCONNECTED ;
  wire \NLW_a1/fft_dv_UNCONNECTED ;
  wire \NLW_a1/fft_done_UNCONNECTED ;
  wire \NLW_a1/fft_xk_im<26>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_im<25>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_im<24>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_im<23>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<13>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<12>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<11>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<10>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<9>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<8>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<7>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<6>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<5>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<4>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<3>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<2>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<1>_UNCONNECTED ;
  wire \NLW_a1/fft_xn_index<0>_UNCONNECTED ;
  wire \NLW_a1/fft_busy_UNCONNECTED ;
  wire \NLW_a1/fft_xk_re<26>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_re<25>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_re<24>_UNCONNECTED ;
  wire \NLW_a1/fft_xk_re<23>_UNCONNECTED ;
  wire \NLW_a1/fft_edone_UNCONNECTED ;
  wire [8 : 0] Mcompar_fft_pixel_cmp_le0000_cy;
  wire [9 : 0] Mcompar_fft_pixel_cmp_le0000_lut;
  wire [18 : 0] Result;
  wire [8 : 0] \a/Mcount_reset_count_cy ;
  wire [0 : 0] \a/Mcount_reset_count_lut ;
  wire [9 : 0] \a/Result ;
  wire [6 : 0] \a/ac97/Mcount_bit_count_cy ;
  wire [0 : 0] \a/ac97/Mcount_bit_count_lut ;
  wire [7 : 0] \a/ac97/Result ;
  wire [7 : 0] \a/ac97/bit_count ;
  wire [19 : 0] \a/ac97/l_left_data ;
  wire [19 : 0] \a/ac97/l_left_data_mux0000 ;
  wire [4 : 4] \a/ac97/l_right_data ;
  wire [3 : 0] \a/cmds/Result ;
  wire [3 : 0] \a/cmds/state ;
  wire [0 : 0] \a/out_data ;
  wire [2 : 1] \a/ready_sync ;
  wire [9 : 0] \a/reset_count ;
  wire [26 : 0] \a1/Madd_mag2_add0000_cy ;
  wire [27 : 0] \a1/Madd_mag2_add0000_lut ;
  wire [9 : 0] \a1/haddr ;
  wire [27 : 0] \a1/imim ;
  wire [27 : 0] \a1/mag2 ;
  wire [27 : 0] \a1/mag2_add0000 ;
  wire [27 : 0] \a1/rere ;
  wire [27 : 0] \a1/sqmag/Mcompar_answer_cmp_gt0000_cy ;
  wire [27 : 0] \a1/sqmag/Mcompar_answer_cmp_gt0000_lut ;
  wire [1 : 1] \a1/sqmag/Msub_bit_addsub0000_cy ;
  wire [13 : 0] \a1/sqmag/answer ;
  wire [27 : 0] \a1/sqmag/answer_mult0000 ;
  wire [13 : 0] \a1/sqmag/answer_mux0000 ;
  wire [4 : 0] \a1/sqmag/bit ;
  wire [4 : 0] \a1/sqmag/bit_mux0000 ;
  wire [13 : 0] \a1/sqmag/trial ;
  wire [22 : 0] \a1/xk_im ;
  wire [13 : 0] \a1/xk_index ;
  wire [22 : 0] \a1/xk_re ;
  wire [3 : 0] blob;
  wire [17 : 0] \db1/Mcount_count_cy ;
  wire [0 : 0] \db1/Mcount_count_lut ;
  wire [18 : 0] \db1/count ;
  wire [3 : 0] \db1/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db1/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \db2/Mcount_count_cy ;
  wire [0 : 0] \db2/Mcount_count_lut ;
  wire [18 : 0] \db2/count ;
  wire [3 : 0] \db2/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db2/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \db3/Mcount_count_cy ;
  wire [0 : 0] \db3/Mcount_count_lut ;
  wire [18 : 0] \db3/count ;
  wire [3 : 0] \db3/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db3/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \db4/Mcount_count_cy ;
  wire [0 : 0] \db4/Mcount_count_lut ;
  wire [18 : 0] \db4/count ;
  wire [3 : 0] \db4/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db4/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \db5/Mcount_count_cy ;
  wire [0 : 0] \db5/Mcount_count_lut ;
  wire [18 : 0] \db5/count ;
  wire [3 : 0] \db5/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db5/count_cmp_eq0000_wg_lut ;
  wire [17 : 0] \db6/Mcount_count_cy ;
  wire [0 : 0] \db6/Mcount_count_lut ;
  wire [18 : 0] \db6/count ;
  wire [3 : 0] \db6/count_cmp_eq0000_wg_cy ;
  wire [4 : 0] \db6/count_cmp_eq0000_wg_lut ;
  wire [5 : 5] \disp/Maddsub_dot_index_share0000_cy ;
  wire [6 : 0] \disp/Mcount_reset_count_cy ;
  wire [7 : 1] \disp/Mcount_reset_count_lut ;
  wire [7 : 0] \disp/Result ;
  wire [3 : 0] \disp/char_index ;
  wire [3 : 0] \disp/char_index_mux0000 ;
  wire [4 : 0] \disp/count ;
  wire [9 : 0] \disp/dot_index ;
  wire [1 : 0] \disp/dot_index_mux0000 ;
  wire [3 : 0] \disp/nibble ;
  wire [7 : 0] \disp/reset_count ;
  wire [17 : 0] dividend;
  wire [9 : 0] divisor;
  wire [8 : 0] dout;
  wire [23 : 8] fft_pixel;
  wire [7 : 0] green_grad_color;
  wire [23 : 16] \hd/digit_pixel ;
  wire [10 : 0] \hd/ma_digs/address_out ;
  wire [10 : 0] \hd/ma_digs/image_addr<0> ;
  wire [10 : 0] \hd/ma_digs/image_addr<10> ;
  wire [10 : 0] \hd/ma_digs/image_addr<11> ;
  wire [10 : 0] \hd/ma_digs/image_addr<12> ;
  wire [10 : 0] \hd/ma_digs/image_addr<13> ;
  wire [10 : 0] \hd/ma_digs/image_addr<1> ;
  wire [10 : 0] \hd/ma_digs/image_addr<2> ;
  wire [10 : 0] \hd/ma_digs/image_addr<3> ;
  wire [10 : 0] \hd/ma_digs/image_addr<4> ;
  wire [10 : 0] \hd/ma_digs/image_addr<5> ;
  wire [10 : 0] \hd/ma_digs/image_addr<6> ;
  wire [10 : 0] \hd/ma_digs/image_addr<7> ;
  wire [10 : 0] \hd/ma_digs/image_addr<8> ;
  wire [10 : 0] \hd/ma_digs/image_addr<9> ;
  wire [3 : 0] \hd/ma_digs/num_sel_out ;
  wire [9 : 0] \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [5 : 1] \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut ;
  wire [6 : 6] \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy ;
  wire [10 : 5] \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 ;
  wire [10 : 0] \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [5 : 0] \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut ;
  wire [10 : 0] \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut ;
  wire [4 : 0] \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [4 : 0] \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut ;
  wire [10 : 1] \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 ;
  wire [10 : 0] \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [10 : 0] \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut ;
  wire [9 : 0] \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [10 : 0] \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [8 : 8] \hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [8 : 8] \hd/ma_digs/riggle[7].un_blob/image_addr_addsub0000 ;
  wire [10 : 0] \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [7 : 7] \hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [10 : 0] \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut ;
  wire [6 : 0] \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [7 : 7] \hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [10 : 0] \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut ;
  wire [7 : 0] \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [10 : 1] \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 ;
  wire [10 : 0] \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut ;
  wire [3 : 0] \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [3 : 0] \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut ;
  wire [10 : 0] \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut ;
  wire [7 : 0] \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [7 : 7] \hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [10 : 0] \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut ;
  wire [3 : 0] \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [3 : 0] \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut ;
  wire [10 : 0] \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [7 : 7] \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [4 : 4] \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy ;
  wire [10 : 3] \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 ;
  wire [10 : 0] \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 ;
  wire [9 : 0] \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy ;
  wire [10 : 0] \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut ;
  wire [5 : 0] \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy ;
  wire [7 : 7] \hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy ;
  wire [10 : 0] \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 ;
  wire [1 : 0] \hd/ma_digs/the_dig/eights ;
  wire [1 : 0] \hd/ma_digs/the_dig/fives ;
  wire [1 : 0] \hd/ma_digs/the_dig/fours ;
  wire [1 : 0] \hd/ma_digs/the_dig/nines ;
  wire [1 : 0] \hd/ma_digs/the_dig/ones ;
  wire [1 : 0] \hd/ma_digs/the_dig/sevens ;
  wire [1 : 0] \hd/ma_digs/the_dig/sixes ;
  wire [1 : 0] \hd/ma_digs/the_dig/threes ;
  wire [1 : 0] \hd/ma_digs/the_dig/to_color_map ;
  wire [1 : 0] \hd/ma_digs/the_dig/twos ;
  wire [1 : 0] \hd/ma_digs/the_dig/zeroes ;
  wire [3 : 0] \hd/ma_digs/the_sel/selected ;
  wire [15 : 0] \hd/myblob/Madd_image_addr_cy ;
  wire [16 : 0] \hd/myblob/Madd_image_addr_lut ;
  wire [7 : 0] \hd/myblob/blue_mapped ;
  wire [7 : 0] \hd/myblob/green_mapped ;
  wire [16 : 0] \hd/myblob/image_addr ;
  wire [10 : 3] \hd/myblob/image_addr_addsub0000 ;
  wire [16 : 0] \hd/myblob/image_addr_mult0001 ;
  wire [5 : 0] \hd/myblob/image_bits ;
  wire [23 : 0] \hd/myblob/pixel ;
  wire [7 : 0] \hd/myblob/red_mapped ;
  wire [15 : 9] \hd/thehud/Madd_image_addr_cy ;
  wire [16 : 9] \hd/thehud/Madd_image_addr_lut ;
  wire [16 : 9] \hd/thehud/image_addr ;
  wire [1 : 0] \hd/thehud/image_bits ;
  wire [23 : 16] \hd/thehud/pixel ;
  wire [7 : 0] \hd/thehud/red_mapped ;
  wire [3 : 0] num;
  wire [7 : 0] quotient;
  wire [7 : 0] red_grad_color;
  wire [23 : 0] rgb;
  wire [4 : 0] volume;
  wire [1 : 0] volume_or_selection;
  wire [9 : 0] xvcount;
  wire [9 : 0] \xvga1/Mcount_hcount_cy ;
  wire [0 : 0] \xvga1/Mcount_hcount_lut ;
  wire [8 : 0] \xvga1/Mcount_vcount_cy ;
  wire [0 : 0] \xvga1/Mcount_vcount_lut ;
  wire [10 : 0] \xvga1/Result ;
  wire [10 : 0] \xvga1/hcount ;
  wire [9 : 0] \xvga1/vcount ;
  wire [9 : 0] yvcount;
  wire [9 : 9] yvcount_sub0000;
  GND   XST_GND (
    .G(\a/ac97/Mmux__varindex0000_9 )
  );
  VCC   XST_VCC (
    .P(led_5_OBUF_3517)
  );
  FD   yvcount_8 (
    .C(clock_65mhz),
    .D(\xvga1/vcount [8]),
    .Q(yvcount[8])
  );
  FD   yvcount_9 (
    .C(clock_65mhz),
    .D(yvcount_sub0000[9]),
    .Q(yvcount[9])
  );
  FD   red_grad_color_0 (
    .C(clock_65mhz),
    .D(quotient[0]),
    .Q(red_grad_color[0])
  );
  FD   red_grad_color_1 (
    .C(clock_65mhz),
    .D(quotient[1]),
    .Q(red_grad_color[1])
  );
  FD   red_grad_color_2 (
    .C(clock_65mhz),
    .D(quotient[2]),
    .Q(red_grad_color[2])
  );
  FD   red_grad_color_3 (
    .C(clock_65mhz),
    .D(quotient[3]),
    .Q(red_grad_color[3])
  );
  FD   red_grad_color_4 (
    .C(clock_65mhz),
    .D(quotient[4]),
    .Q(red_grad_color[4])
  );
  FD   red_grad_color_5 (
    .C(clock_65mhz),
    .D(quotient[5]),
    .Q(red_grad_color[5])
  );
  FD   red_grad_color_6 (
    .C(clock_65mhz),
    .D(quotient[6]),
    .Q(red_grad_color[6])
  );
  FD   red_grad_color_7 (
    .C(clock_65mhz),
    .D(quotient[7]),
    .Q(red_grad_color[7])
  );
  FD_1   old_vup (
    .C(\xvga1/vsync_3839 ),
    .D(\db2/clean_1313 ),
    .Q(old_vup_3524)
  );
  FD_1   old_vdown (
    .C(\xvga1/vsync_3839 ),
    .D(\db3/clean_1386 ),
    .Q(old_vdown_3523)
  );
  FD   xvcount_0 (
    .C(clock_65mhz),
    .D(yvcount[0]),
    .Q(xvcount[0])
  );
  FD   xvcount_1 (
    .C(clock_65mhz),
    .D(yvcount[1]),
    .Q(xvcount[1])
  );
  FD   xvcount_2 (
    .C(clock_65mhz),
    .D(yvcount[2]),
    .Q(xvcount[2])
  );
  FD   xvcount_3 (
    .C(clock_65mhz),
    .D(yvcount[3]),
    .Q(xvcount[3])
  );
  FD   xvcount_4 (
    .C(clock_65mhz),
    .D(yvcount[4]),
    .Q(xvcount[4])
  );
  FD   xvcount_5 (
    .C(clock_65mhz),
    .D(yvcount[5]),
    .Q(xvcount[5])
  );
  FD   xvcount_6 (
    .C(clock_65mhz),
    .D(yvcount[6]),
    .Q(xvcount[6])
  );
  FD   xvcount_7 (
    .C(clock_65mhz),
    .D(yvcount[7]),
    .Q(xvcount[7])
  );
  FD   xvcount_8 (
    .C(clock_65mhz),
    .D(yvcount[8]),
    .Q(xvcount[8])
  );
  FD   xvcount_9 (
    .C(clock_65mhz),
    .D(yvcount[9]),
    .Q(xvcount[9])
  );
  FDR   fft_pixel_8 (
    .C(clock_65mhz),
    .D(green_grad_color[0]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[8])
  );
  FDR   fft_pixel_9 (
    .C(clock_65mhz),
    .D(green_grad_color[1]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[9])
  );
  FDR   fft_pixel_10 (
    .C(clock_65mhz),
    .D(green_grad_color[2]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[10])
  );
  FDR   fft_pixel_11 (
    .C(clock_65mhz),
    .D(green_grad_color[3]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[11])
  );
  FDR   fft_pixel_12 (
    .C(clock_65mhz),
    .D(green_grad_color[4]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[12])
  );
  FDR   fft_pixel_13 (
    .C(clock_65mhz),
    .D(green_grad_color[5]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[13])
  );
  FDR   fft_pixel_14 (
    .C(clock_65mhz),
    .D(green_grad_color[6]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[14])
  );
  FDR   fft_pixel_15 (
    .C(clock_65mhz),
    .D(green_grad_color[7]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[15])
  );
  FDR   fft_pixel_16 (
    .C(clock_65mhz),
    .D(red_grad_color[0]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[16])
  );
  FDR   fft_pixel_17 (
    .C(clock_65mhz),
    .D(red_grad_color[1]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[17])
  );
  FDR   fft_pixel_18 (
    .C(clock_65mhz),
    .D(red_grad_color[2]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[18])
  );
  FDR   fft_pixel_19 (
    .C(clock_65mhz),
    .D(red_grad_color[3]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[19])
  );
  FDR   fft_pixel_20 (
    .C(clock_65mhz),
    .D(red_grad_color[4]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[20])
  );
  FDR   fft_pixel_21 (
    .C(clock_65mhz),
    .D(red_grad_color[5]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[21])
  );
  FDR   fft_pixel_22 (
    .C(clock_65mhz),
    .D(red_grad_color[6]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[22])
  );
  FDR   fft_pixel_23 (
    .C(clock_65mhz),
    .D(red_grad_color[7]),
    .R(fft_pixel_or0000),
    .Q(fft_pixel[23])
  );
  FD   hs (
    .C(clock_65mhz),
    .D(\xvga1/hsync_3817 ),
    .Q(hs_3504)
  );
  FD   vs (
    .C(clock_65mhz),
    .D(\xvga1/vsync_3839 ),
    .Q(vs_3720)
  );
  FD   b (
    .C(clock_65mhz),
    .D(\xvga1/blank_3802 ),
    .Q(b_1180)
  );
  FD   xblank (
    .C(clock_65mhz),
    .D(b_1180),
    .Q(xblank_3722)
  );
  FDE   \db6/clean  (
    .C(clock_65mhz),
    .CE(\db6/clean_not0001 ),
    .D(\db6/clean_mux0000 ),
    .Q(\db6/clean_1605 )
  );
  FDE   \db6/new  (
    .C(clock_65mhz),
    .CE(\db6/count_or0000 ),
    .D(db1_not0000),
    .Q(\db6/new_1639 )
  );
  FDE   \db5/clean  (
    .C(clock_65mhz),
    .CE(\db5/clean_not0001 ),
    .D(\db5/clean_mux0000 ),
    .Q(\db5/clean_1532 )
  );
  FDE   \db5/new  (
    .C(clock_65mhz),
    .CE(\db5/count_or0000 ),
    .D(db5_not0000),
    .Q(\db5/new_1566 )
  );
  FDE   \db4/clean  (
    .C(clock_65mhz),
    .CE(\db4/clean_not0001 ),
    .D(\db4/clean_mux0000 ),
    .Q(\db4/clean_1459 )
  );
  FDE   \db4/new  (
    .C(clock_65mhz),
    .CE(\db4/count_or0000 ),
    .D(db4_not0000),
    .Q(\db4/new_1493 )
  );
  FDE   \db3/clean  (
    .C(clock_65mhz),
    .CE(\db3/clean_not0001 ),
    .D(\db3/clean_mux0000 ),
    .Q(\db3/clean_1386 )
  );
  FDE   \db3/new  (
    .C(clock_65mhz),
    .CE(\db3/count_or0000 ),
    .D(db3_not0000),
    .Q(\db3/new_1420 )
  );
  FDE   \db2/clean  (
    .C(clock_65mhz),
    .CE(\db2/clean_not0001 ),
    .D(\db2/clean_mux0000 ),
    .Q(\db2/clean_1313 )
  );
  FDE   \db2/new  (
    .C(clock_65mhz),
    .CE(\db2/count_or0000 ),
    .D(db2_not0000),
    .Q(\db2/new_1347 )
  );
  FDE   \db1/clean  (
    .C(clock_65mhz),
    .CE(\db1/clean_not0001 ),
    .D(\db1/clean_mux0000 ),
    .Q(\db1/clean_1240 )
  );
  FDE   \db1/new  (
    .C(clock_65mhz),
    .CE(\db1/count_or0000 ),
    .D(db1_not0000),
    .Q(\db1/new_1274 )
  );
  MULT18X18   Mmult_dividend (
    .A({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , yvcount[9], yvcount[8], 
yvcount[7], yvcount[6], yvcount[5], yvcount[4], yvcount[3], yvcount[2], yvcount[1], yvcount[0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, led_5_OBUF_3517, led_5_OBUF_3517, led_5_OBUF_3517, 
led_5_OBUF_3517, led_5_OBUF_3517, led_5_OBUF_3517}),
    .P({\NLW_Mmult_dividend_P<35>_UNCONNECTED , \NLW_Mmult_dividend_P<34>_UNCONNECTED , \NLW_Mmult_dividend_P<33>_UNCONNECTED , 
\NLW_Mmult_dividend_P<32>_UNCONNECTED , \NLW_Mmult_dividend_P<31>_UNCONNECTED , \NLW_Mmult_dividend_P<30>_UNCONNECTED , 
\NLW_Mmult_dividend_P<29>_UNCONNECTED , \NLW_Mmult_dividend_P<28>_UNCONNECTED , \NLW_Mmult_dividend_P<27>_UNCONNECTED , 
\NLW_Mmult_dividend_P<26>_UNCONNECTED , \NLW_Mmult_dividend_P<25>_UNCONNECTED , \NLW_Mmult_dividend_P<24>_UNCONNECTED , 
\NLW_Mmult_dividend_P<23>_UNCONNECTED , \NLW_Mmult_dividend_P<22>_UNCONNECTED , \NLW_Mmult_dividend_P<21>_UNCONNECTED , 
\NLW_Mmult_dividend_P<20>_UNCONNECTED , \NLW_Mmult_dividend_P<19>_UNCONNECTED , \NLW_Mmult_dividend_P<18>_UNCONNECTED , dividend[17], dividend[16], 
dividend[15], dividend[14], dividend[13], dividend[12], dividend[11], dividend[10], dividend[9], dividend[8], dividend[7], dividend[6], dividend[5], 
dividend[4], dividend[3], dividend[2], dividend[1], dividend[0]})
  );
  FDRE #(
    .INIT ( 1'b0 ))
  volume_0 (
    .C(vsync_inv),
    .CE(volume_not0001),
    .D(\Result<0>6 ),
    .R(reset),
    .Q(volume[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  volume_1 (
    .C(vsync_inv),
    .CE(volume_not0001),
    .D(\Result<1>6 ),
    .R(reset),
    .Q(volume[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  volume_2 (
    .C(vsync_inv),
    .CE(volume_not0001),
    .D(\Result<2>6 ),
    .R(reset),
    .Q(volume[2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  volume_3 (
    .C(vsync_inv),
    .CE(volume_not0001),
    .D(\Result<3>6 ),
    .S(reset),
    .Q(volume[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blob_0 (
    .C(vsync_inv),
    .CE(blob_not0001),
    .D(\Result<0>7 ),
    .Q(blob[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blob_1 (
    .C(vsync_inv),
    .CE(blob_not0001),
    .D(\Result<1>7 ),
    .Q(blob[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blob_2 (
    .C(vsync_inv),
    .CE(blob_not0001),
    .D(\Result<2>7 ),
    .Q(blob[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blob_3 (
    .C(vsync_inv),
    .CE(blob_not0001),
    .D(\Result<3>7 ),
    .Q(blob[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  volume_or_selection_0 (
    .C(vsync_inv),
    .CE(volume_or_selection_not0001),
    .D(\Result<0>8 ),
    .Q(volume_or_selection[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  volume_or_selection_1 (
    .C(vsync_inv),
    .CE(volume_or_selection_not0001),
    .D(\Result<1>8 ),
    .Q(volume_or_selection[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  num_0 (
    .C(vsync_inv),
    .CE(num_not0001),
    .D(\Result<0>9 ),
    .Q(num[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  num_1 (
    .C(vsync_inv),
    .CE(num_not0001),
    .D(\Result<1>9 ),
    .Q(num[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  num_2 (
    .C(vsync_inv),
    .CE(num_not0001),
    .D(\Result<2>8 ),
    .Q(num[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  num_3 (
    .C(vsync_inv),
    .CE(num_not0001),
    .D(\Result<3>8 ),
    .Q(num[3])
  );
  FDRE   \db4/count_0  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[0]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [0])
  );
  FDRE   \db4/count_1  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[1]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [1])
  );
  FDRE   \db4/count_2  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[2]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [2])
  );
  FDRE   \db4/count_3  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[3]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [3])
  );
  FDRE   \db4/count_4  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[4]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [4])
  );
  FDRE   \db4/count_5  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[5]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [5])
  );
  FDRE   \db4/count_6  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[6]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [6])
  );
  FDRE   \db4/count_7  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[7]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [7])
  );
  FDRE   \db4/count_8  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[8]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [8])
  );
  FDRE   \db4/count_9  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[9]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [9])
  );
  FDRE   \db4/count_10  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[10]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [10])
  );
  FDRE   \db4/count_11  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[11]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [11])
  );
  FDRE   \db4/count_12  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[12]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [12])
  );
  FDRE   \db4/count_13  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[13]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [13])
  );
  FDRE   \db4/count_14  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[14]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [14])
  );
  FDRE   \db4/count_15  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[15]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [15])
  );
  FDRE   \db4/count_16  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[16]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [16])
  );
  FDRE   \db4/count_17  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[17]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [17])
  );
  FDRE   \db4/count_18  (
    .C(clock_65mhz),
    .CE(\db4/count_not0001 ),
    .D(Result[18]),
    .R(\db4/count_or0000 ),
    .Q(\db4/count [18])
  );
  FDRE   \db6/count_0  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<0>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [0])
  );
  FDRE   \db6/count_1  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<1>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [1])
  );
  FDRE   \db6/count_2  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<2>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [2])
  );
  FDRE   \db6/count_3  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<3>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [3])
  );
  FDRE   \db6/count_4  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<4>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [4])
  );
  FDRE   \db6/count_5  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<5>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [5])
  );
  FDRE   \db6/count_6  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<6>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [6])
  );
  FDRE   \db6/count_7  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<7>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [7])
  );
  FDRE   \db6/count_8  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<8>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [8])
  );
  FDRE   \db6/count_9  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<9>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [9])
  );
  FDRE   \db6/count_10  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<10>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [10])
  );
  FDRE   \db6/count_11  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<11>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [11])
  );
  FDRE   \db6/count_12  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<12>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [12])
  );
  FDRE   \db6/count_13  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<13>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [13])
  );
  FDRE   \db6/count_14  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<14>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [14])
  );
  FDRE   \db6/count_15  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<15>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [15])
  );
  FDRE   \db6/count_16  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<16>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [16])
  );
  FDRE   \db6/count_17  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<17>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [17])
  );
  FDRE   \db6/count_18  (
    .C(clock_65mhz),
    .CE(\db6/count_not0001 ),
    .D(\Result<18>1 ),
    .R(\db6/count_or0000 ),
    .Q(\db6/count [18])
  );
  FDRE   \db1/count_0  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<0>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [0])
  );
  FDRE   \db1/count_1  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<1>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [1])
  );
  FDRE   \db1/count_2  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<2>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [2])
  );
  FDRE   \db1/count_3  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<3>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [3])
  );
  FDRE   \db1/count_4  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<4>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [4])
  );
  FDRE   \db1/count_5  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<5>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [5])
  );
  FDRE   \db1/count_6  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<6>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [6])
  );
  FDRE   \db1/count_7  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<7>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [7])
  );
  FDRE   \db1/count_8  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<8>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [8])
  );
  FDRE   \db1/count_9  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<9>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [9])
  );
  FDRE   \db1/count_10  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<10>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [10])
  );
  FDRE   \db1/count_11  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<11>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [11])
  );
  FDRE   \db1/count_12  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<12>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [12])
  );
  FDRE   \db1/count_13  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<13>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [13])
  );
  FDRE   \db1/count_14  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<14>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [14])
  );
  FDRE   \db1/count_15  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<15>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [15])
  );
  FDRE   \db1/count_16  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<16>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [16])
  );
  FDRE   \db1/count_17  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<17>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [17])
  );
  FDRE   \db1/count_18  (
    .C(clock_65mhz),
    .CE(\db1/count_not0001 ),
    .D(\Result<18>3 ),
    .R(\db1/count_or0000 ),
    .Q(\db1/count [18])
  );
  FDRE   \db5/count_0  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<0>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [0])
  );
  FDRE   \db5/count_1  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<1>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [1])
  );
  FDRE   \db5/count_2  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<2>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [2])
  );
  FDRE   \db5/count_3  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<3>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [3])
  );
  FDRE   \db5/count_4  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<4>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [4])
  );
  FDRE   \db5/count_5  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<5>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [5])
  );
  FDRE   \db5/count_6  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<6>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [6])
  );
  FDRE   \db5/count_7  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<7>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [7])
  );
  FDRE   \db5/count_8  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<8>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [8])
  );
  FDRE   \db5/count_9  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<9>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [9])
  );
  FDRE   \db5/count_10  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<10>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [10])
  );
  FDRE   \db5/count_11  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<11>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [11])
  );
  FDRE   \db5/count_12  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<12>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [12])
  );
  FDRE   \db5/count_13  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<13>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [13])
  );
  FDRE   \db5/count_14  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<14>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [14])
  );
  FDRE   \db5/count_15  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<15>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [15])
  );
  FDRE   \db5/count_16  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<16>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [16])
  );
  FDRE   \db5/count_17  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<17>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [17])
  );
  FDRE   \db5/count_18  (
    .C(clock_65mhz),
    .CE(\db5/count_not0001 ),
    .D(\Result<18>2 ),
    .R(\db5/count_or0000 ),
    .Q(\db5/count [18])
  );
  FDRE   \db3/count_0  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<0>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [0])
  );
  FDRE   \db3/count_1  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<1>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [1])
  );
  FDRE   \db3/count_2  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<2>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [2])
  );
  FDRE   \db3/count_3  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<3>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [3])
  );
  FDRE   \db3/count_4  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<4>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [4])
  );
  FDRE   \db3/count_5  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<5>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [5])
  );
  FDRE   \db3/count_6  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<6>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [6])
  );
  FDRE   \db3/count_7  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<7>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [7])
  );
  FDRE   \db3/count_8  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<8>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [8])
  );
  FDRE   \db3/count_9  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<9>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [9])
  );
  FDRE   \db3/count_10  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<10>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [10])
  );
  FDRE   \db3/count_11  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<11>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [11])
  );
  FDRE   \db3/count_12  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<12>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [12])
  );
  FDRE   \db3/count_13  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<13>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [13])
  );
  FDRE   \db3/count_14  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<14>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [14])
  );
  FDRE   \db3/count_15  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<15>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [15])
  );
  FDRE   \db3/count_16  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<16>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [16])
  );
  FDRE   \db3/count_17  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<17>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [17])
  );
  FDRE   \db3/count_18  (
    .C(clock_65mhz),
    .CE(\db3/count_not0001 ),
    .D(\Result<18>4 ),
    .R(\db3/count_or0000 ),
    .Q(\db3/count [18])
  );
  FDRE   \db2/count_0  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<0>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [0])
  );
  FDRE   \db2/count_1  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<1>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [1])
  );
  FDRE   \db2/count_2  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<2>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [2])
  );
  FDRE   \db2/count_3  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<3>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [3])
  );
  FDRE   \db2/count_4  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<4>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [4])
  );
  FDRE   \db2/count_5  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<5>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [5])
  );
  FDRE   \db2/count_6  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<6>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [6])
  );
  FDRE   \db2/count_7  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<7>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [7])
  );
  FDRE   \db2/count_8  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<8>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [8])
  );
  FDRE   \db2/count_9  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<9>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [9])
  );
  FDRE   \db2/count_10  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<10>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [10])
  );
  FDRE   \db2/count_11  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<11>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [11])
  );
  FDRE   \db2/count_12  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<12>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [12])
  );
  FDRE   \db2/count_13  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<13>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [13])
  );
  FDRE   \db2/count_14  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<14>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [14])
  );
  FDRE   \db2/count_15  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<15>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [15])
  );
  FDRE   \db2/count_16  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<16>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [16])
  );
  FDRE   \db2/count_17  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<17>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [17])
  );
  FDRE   \db2/count_18  (
    .C(clock_65mhz),
    .CE(\db2/count_not0001 ),
    .D(\Result<18>5 ),
    .R(\db2/count_or0000 ),
    .Q(\db2/count [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  volume_4 (
    .C(vsync_inv),
    .CE(volume_not0001),
    .D(\Result<4>6 ),
    .R(reset),
    .Q(volume[4])
  );
  MUXCY   \db4/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db4/Mcount_count_lut [0]),
    .O(\db4/Mcount_count_cy [0])
  );
  XORCY   \db4/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db4/Mcount_count_lut [0]),
    .O(Result[0])
  );
  MUXCY   \db4/Mcount_count_cy<1>  (
    .CI(\db4/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<1>_rt_1440 ),
    .O(\db4/Mcount_count_cy [1])
  );
  XORCY   \db4/Mcount_count_xor<1>  (
    .CI(\db4/Mcount_count_cy [0]),
    .LI(\db4/Mcount_count_cy<1>_rt_1440 ),
    .O(Result[1])
  );
  MUXCY   \db4/Mcount_count_cy<2>  (
    .CI(\db4/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<2>_rt_1442 ),
    .O(\db4/Mcount_count_cy [2])
  );
  XORCY   \db4/Mcount_count_xor<2>  (
    .CI(\db4/Mcount_count_cy [1]),
    .LI(\db4/Mcount_count_cy<2>_rt_1442 ),
    .O(Result[2])
  );
  MUXCY   \db4/Mcount_count_cy<3>  (
    .CI(\db4/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<3>_rt_1444 ),
    .O(\db4/Mcount_count_cy [3])
  );
  XORCY   \db4/Mcount_count_xor<3>  (
    .CI(\db4/Mcount_count_cy [2]),
    .LI(\db4/Mcount_count_cy<3>_rt_1444 ),
    .O(Result[3])
  );
  MUXCY   \db4/Mcount_count_cy<4>  (
    .CI(\db4/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<4>_rt_1446 ),
    .O(\db4/Mcount_count_cy [4])
  );
  XORCY   \db4/Mcount_count_xor<4>  (
    .CI(\db4/Mcount_count_cy [3]),
    .LI(\db4/Mcount_count_cy<4>_rt_1446 ),
    .O(Result[4])
  );
  MUXCY   \db4/Mcount_count_cy<5>  (
    .CI(\db4/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<5>_rt_1448 ),
    .O(\db4/Mcount_count_cy [5])
  );
  XORCY   \db4/Mcount_count_xor<5>  (
    .CI(\db4/Mcount_count_cy [4]),
    .LI(\db4/Mcount_count_cy<5>_rt_1448 ),
    .O(Result[5])
  );
  MUXCY   \db4/Mcount_count_cy<6>  (
    .CI(\db4/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<6>_rt_1450 ),
    .O(\db4/Mcount_count_cy [6])
  );
  XORCY   \db4/Mcount_count_xor<6>  (
    .CI(\db4/Mcount_count_cy [5]),
    .LI(\db4/Mcount_count_cy<6>_rt_1450 ),
    .O(Result[6])
  );
  MUXCY   \db4/Mcount_count_cy<7>  (
    .CI(\db4/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<7>_rt_1452 ),
    .O(\db4/Mcount_count_cy [7])
  );
  XORCY   \db4/Mcount_count_xor<7>  (
    .CI(\db4/Mcount_count_cy [6]),
    .LI(\db4/Mcount_count_cy<7>_rt_1452 ),
    .O(Result[7])
  );
  MUXCY   \db4/Mcount_count_cy<8>  (
    .CI(\db4/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<8>_rt_1454 ),
    .O(\db4/Mcount_count_cy [8])
  );
  XORCY   \db4/Mcount_count_xor<8>  (
    .CI(\db4/Mcount_count_cy [7]),
    .LI(\db4/Mcount_count_cy<8>_rt_1454 ),
    .O(Result[8])
  );
  MUXCY   \db4/Mcount_count_cy<9>  (
    .CI(\db4/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<9>_rt_1456 ),
    .O(\db4/Mcount_count_cy [9])
  );
  XORCY   \db4/Mcount_count_xor<9>  (
    .CI(\db4/Mcount_count_cy [8]),
    .LI(\db4/Mcount_count_cy<9>_rt_1456 ),
    .O(Result[9])
  );
  MUXCY   \db4/Mcount_count_cy<10>  (
    .CI(\db4/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<10>_rt_1424 ),
    .O(\db4/Mcount_count_cy [10])
  );
  XORCY   \db4/Mcount_count_xor<10>  (
    .CI(\db4/Mcount_count_cy [9]),
    .LI(\db4/Mcount_count_cy<10>_rt_1424 ),
    .O(Result[10])
  );
  MUXCY   \db4/Mcount_count_cy<11>  (
    .CI(\db4/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<11>_rt_1426 ),
    .O(\db4/Mcount_count_cy [11])
  );
  XORCY   \db4/Mcount_count_xor<11>  (
    .CI(\db4/Mcount_count_cy [10]),
    .LI(\db4/Mcount_count_cy<11>_rt_1426 ),
    .O(Result[11])
  );
  MUXCY   \db4/Mcount_count_cy<12>  (
    .CI(\db4/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<12>_rt_1428 ),
    .O(\db4/Mcount_count_cy [12])
  );
  XORCY   \db4/Mcount_count_xor<12>  (
    .CI(\db4/Mcount_count_cy [11]),
    .LI(\db4/Mcount_count_cy<12>_rt_1428 ),
    .O(Result[12])
  );
  MUXCY   \db4/Mcount_count_cy<13>  (
    .CI(\db4/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<13>_rt_1430 ),
    .O(\db4/Mcount_count_cy [13])
  );
  XORCY   \db4/Mcount_count_xor<13>  (
    .CI(\db4/Mcount_count_cy [12]),
    .LI(\db4/Mcount_count_cy<13>_rt_1430 ),
    .O(Result[13])
  );
  MUXCY   \db4/Mcount_count_cy<14>  (
    .CI(\db4/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<14>_rt_1432 ),
    .O(\db4/Mcount_count_cy [14])
  );
  XORCY   \db4/Mcount_count_xor<14>  (
    .CI(\db4/Mcount_count_cy [13]),
    .LI(\db4/Mcount_count_cy<14>_rt_1432 ),
    .O(Result[14])
  );
  MUXCY   \db4/Mcount_count_cy<15>  (
    .CI(\db4/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<15>_rt_1434 ),
    .O(\db4/Mcount_count_cy [15])
  );
  XORCY   \db4/Mcount_count_xor<15>  (
    .CI(\db4/Mcount_count_cy [14]),
    .LI(\db4/Mcount_count_cy<15>_rt_1434 ),
    .O(Result[15])
  );
  MUXCY   \db4/Mcount_count_cy<16>  (
    .CI(\db4/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<16>_rt_1436 ),
    .O(\db4/Mcount_count_cy [16])
  );
  XORCY   \db4/Mcount_count_xor<16>  (
    .CI(\db4/Mcount_count_cy [15]),
    .LI(\db4/Mcount_count_cy<16>_rt_1436 ),
    .O(Result[16])
  );
  MUXCY   \db4/Mcount_count_cy<17>  (
    .CI(\db4/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/Mcount_count_cy<17>_rt_1438 ),
    .O(\db4/Mcount_count_cy [17])
  );
  XORCY   \db4/Mcount_count_xor<17>  (
    .CI(\db4/Mcount_count_cy [16]),
    .LI(\db4/Mcount_count_cy<17>_rt_1438 ),
    .O(Result[17])
  );
  XORCY   \db4/Mcount_count_xor<18>  (
    .CI(\db4/Mcount_count_cy [17]),
    .LI(\db4/Mcount_count_xor<18>_rt_1458 ),
    .O(Result[18])
  );
  MUXCY   \db1/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db1/Mcount_count_lut [0]),
    .O(\db1/Mcount_count_cy [0])
  );
  XORCY   \db1/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db1/Mcount_count_lut [0]),
    .O(\Result<0>3 )
  );
  MUXCY   \db1/Mcount_count_cy<1>  (
    .CI(\db1/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<1>_rt_1221 ),
    .O(\db1/Mcount_count_cy [1])
  );
  XORCY   \db1/Mcount_count_xor<1>  (
    .CI(\db1/Mcount_count_cy [0]),
    .LI(\db1/Mcount_count_cy<1>_rt_1221 ),
    .O(\Result<1>3 )
  );
  MUXCY   \db1/Mcount_count_cy<2>  (
    .CI(\db1/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<2>_rt_1223 ),
    .O(\db1/Mcount_count_cy [2])
  );
  XORCY   \db1/Mcount_count_xor<2>  (
    .CI(\db1/Mcount_count_cy [1]),
    .LI(\db1/Mcount_count_cy<2>_rt_1223 ),
    .O(\Result<2>3 )
  );
  MUXCY   \db1/Mcount_count_cy<3>  (
    .CI(\db1/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<3>_rt_1225 ),
    .O(\db1/Mcount_count_cy [3])
  );
  XORCY   \db1/Mcount_count_xor<3>  (
    .CI(\db1/Mcount_count_cy [2]),
    .LI(\db1/Mcount_count_cy<3>_rt_1225 ),
    .O(\Result<3>3 )
  );
  MUXCY   \db1/Mcount_count_cy<4>  (
    .CI(\db1/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<4>_rt_1227 ),
    .O(\db1/Mcount_count_cy [4])
  );
  XORCY   \db1/Mcount_count_xor<4>  (
    .CI(\db1/Mcount_count_cy [3]),
    .LI(\db1/Mcount_count_cy<4>_rt_1227 ),
    .O(\Result<4>3 )
  );
  MUXCY   \db1/Mcount_count_cy<5>  (
    .CI(\db1/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<5>_rt_1229 ),
    .O(\db1/Mcount_count_cy [5])
  );
  XORCY   \db1/Mcount_count_xor<5>  (
    .CI(\db1/Mcount_count_cy [4]),
    .LI(\db1/Mcount_count_cy<5>_rt_1229 ),
    .O(\Result<5>3 )
  );
  MUXCY   \db1/Mcount_count_cy<6>  (
    .CI(\db1/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<6>_rt_1231 ),
    .O(\db1/Mcount_count_cy [6])
  );
  XORCY   \db1/Mcount_count_xor<6>  (
    .CI(\db1/Mcount_count_cy [5]),
    .LI(\db1/Mcount_count_cy<6>_rt_1231 ),
    .O(\Result<6>3 )
  );
  MUXCY   \db1/Mcount_count_cy<7>  (
    .CI(\db1/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<7>_rt_1233 ),
    .O(\db1/Mcount_count_cy [7])
  );
  XORCY   \db1/Mcount_count_xor<7>  (
    .CI(\db1/Mcount_count_cy [6]),
    .LI(\db1/Mcount_count_cy<7>_rt_1233 ),
    .O(\Result<7>3 )
  );
  MUXCY   \db1/Mcount_count_cy<8>  (
    .CI(\db1/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<8>_rt_1235 ),
    .O(\db1/Mcount_count_cy [8])
  );
  XORCY   \db1/Mcount_count_xor<8>  (
    .CI(\db1/Mcount_count_cy [7]),
    .LI(\db1/Mcount_count_cy<8>_rt_1235 ),
    .O(\Result<8>3 )
  );
  MUXCY   \db1/Mcount_count_cy<9>  (
    .CI(\db1/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<9>_rt_1237 ),
    .O(\db1/Mcount_count_cy [9])
  );
  XORCY   \db1/Mcount_count_xor<9>  (
    .CI(\db1/Mcount_count_cy [8]),
    .LI(\db1/Mcount_count_cy<9>_rt_1237 ),
    .O(\Result<9>3 )
  );
  MUXCY   \db1/Mcount_count_cy<10>  (
    .CI(\db1/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<10>_rt_1205 ),
    .O(\db1/Mcount_count_cy [10])
  );
  XORCY   \db1/Mcount_count_xor<10>  (
    .CI(\db1/Mcount_count_cy [9]),
    .LI(\db1/Mcount_count_cy<10>_rt_1205 ),
    .O(\Result<10>3 )
  );
  MUXCY   \db1/Mcount_count_cy<11>  (
    .CI(\db1/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<11>_rt_1207 ),
    .O(\db1/Mcount_count_cy [11])
  );
  XORCY   \db1/Mcount_count_xor<11>  (
    .CI(\db1/Mcount_count_cy [10]),
    .LI(\db1/Mcount_count_cy<11>_rt_1207 ),
    .O(\Result<11>3 )
  );
  MUXCY   \db1/Mcount_count_cy<12>  (
    .CI(\db1/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<12>_rt_1209 ),
    .O(\db1/Mcount_count_cy [12])
  );
  XORCY   \db1/Mcount_count_xor<12>  (
    .CI(\db1/Mcount_count_cy [11]),
    .LI(\db1/Mcount_count_cy<12>_rt_1209 ),
    .O(\Result<12>3 )
  );
  MUXCY   \db1/Mcount_count_cy<13>  (
    .CI(\db1/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<13>_rt_1211 ),
    .O(\db1/Mcount_count_cy [13])
  );
  XORCY   \db1/Mcount_count_xor<13>  (
    .CI(\db1/Mcount_count_cy [12]),
    .LI(\db1/Mcount_count_cy<13>_rt_1211 ),
    .O(\Result<13>3 )
  );
  MUXCY   \db1/Mcount_count_cy<14>  (
    .CI(\db1/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<14>_rt_1213 ),
    .O(\db1/Mcount_count_cy [14])
  );
  XORCY   \db1/Mcount_count_xor<14>  (
    .CI(\db1/Mcount_count_cy [13]),
    .LI(\db1/Mcount_count_cy<14>_rt_1213 ),
    .O(\Result<14>3 )
  );
  MUXCY   \db1/Mcount_count_cy<15>  (
    .CI(\db1/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<15>_rt_1215 ),
    .O(\db1/Mcount_count_cy [15])
  );
  XORCY   \db1/Mcount_count_xor<15>  (
    .CI(\db1/Mcount_count_cy [14]),
    .LI(\db1/Mcount_count_cy<15>_rt_1215 ),
    .O(\Result<15>3 )
  );
  MUXCY   \db1/Mcount_count_cy<16>  (
    .CI(\db1/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<16>_rt_1217 ),
    .O(\db1/Mcount_count_cy [16])
  );
  XORCY   \db1/Mcount_count_xor<16>  (
    .CI(\db1/Mcount_count_cy [15]),
    .LI(\db1/Mcount_count_cy<16>_rt_1217 ),
    .O(\Result<16>3 )
  );
  MUXCY   \db1/Mcount_count_cy<17>  (
    .CI(\db1/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/Mcount_count_cy<17>_rt_1219 ),
    .O(\db1/Mcount_count_cy [17])
  );
  XORCY   \db1/Mcount_count_xor<17>  (
    .CI(\db1/Mcount_count_cy [16]),
    .LI(\db1/Mcount_count_cy<17>_rt_1219 ),
    .O(\Result<17>3 )
  );
  XORCY   \db1/Mcount_count_xor<18>  (
    .CI(\db1/Mcount_count_cy [17]),
    .LI(\db1/Mcount_count_xor<18>_rt_1239 ),
    .O(\Result<18>3 )
  );
  MUXCY   \db6/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db6/Mcount_count_lut [0]),
    .O(\db6/Mcount_count_cy [0])
  );
  XORCY   \db6/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db6/Mcount_count_lut [0]),
    .O(\Result<0>1 )
  );
  MUXCY   \db6/Mcount_count_cy<1>  (
    .CI(\db6/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<1>_rt_1586 ),
    .O(\db6/Mcount_count_cy [1])
  );
  XORCY   \db6/Mcount_count_xor<1>  (
    .CI(\db6/Mcount_count_cy [0]),
    .LI(\db6/Mcount_count_cy<1>_rt_1586 ),
    .O(\Result<1>1 )
  );
  MUXCY   \db6/Mcount_count_cy<2>  (
    .CI(\db6/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<2>_rt_1588 ),
    .O(\db6/Mcount_count_cy [2])
  );
  XORCY   \db6/Mcount_count_xor<2>  (
    .CI(\db6/Mcount_count_cy [1]),
    .LI(\db6/Mcount_count_cy<2>_rt_1588 ),
    .O(\Result<2>1 )
  );
  MUXCY   \db6/Mcount_count_cy<3>  (
    .CI(\db6/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<3>_rt_1590 ),
    .O(\db6/Mcount_count_cy [3])
  );
  XORCY   \db6/Mcount_count_xor<3>  (
    .CI(\db6/Mcount_count_cy [2]),
    .LI(\db6/Mcount_count_cy<3>_rt_1590 ),
    .O(\Result<3>1 )
  );
  MUXCY   \db6/Mcount_count_cy<4>  (
    .CI(\db6/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<4>_rt_1592 ),
    .O(\db6/Mcount_count_cy [4])
  );
  XORCY   \db6/Mcount_count_xor<4>  (
    .CI(\db6/Mcount_count_cy [3]),
    .LI(\db6/Mcount_count_cy<4>_rt_1592 ),
    .O(\Result<4>1 )
  );
  MUXCY   \db6/Mcount_count_cy<5>  (
    .CI(\db6/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<5>_rt_1594 ),
    .O(\db6/Mcount_count_cy [5])
  );
  XORCY   \db6/Mcount_count_xor<5>  (
    .CI(\db6/Mcount_count_cy [4]),
    .LI(\db6/Mcount_count_cy<5>_rt_1594 ),
    .O(\Result<5>1 )
  );
  MUXCY   \db6/Mcount_count_cy<6>  (
    .CI(\db6/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<6>_rt_1596 ),
    .O(\db6/Mcount_count_cy [6])
  );
  XORCY   \db6/Mcount_count_xor<6>  (
    .CI(\db6/Mcount_count_cy [5]),
    .LI(\db6/Mcount_count_cy<6>_rt_1596 ),
    .O(\Result<6>1 )
  );
  MUXCY   \db6/Mcount_count_cy<7>  (
    .CI(\db6/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<7>_rt_1598 ),
    .O(\db6/Mcount_count_cy [7])
  );
  XORCY   \db6/Mcount_count_xor<7>  (
    .CI(\db6/Mcount_count_cy [6]),
    .LI(\db6/Mcount_count_cy<7>_rt_1598 ),
    .O(\Result<7>1 )
  );
  MUXCY   \db6/Mcount_count_cy<8>  (
    .CI(\db6/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<8>_rt_1600 ),
    .O(\db6/Mcount_count_cy [8])
  );
  XORCY   \db6/Mcount_count_xor<8>  (
    .CI(\db6/Mcount_count_cy [7]),
    .LI(\db6/Mcount_count_cy<8>_rt_1600 ),
    .O(\Result<8>1 )
  );
  MUXCY   \db6/Mcount_count_cy<9>  (
    .CI(\db6/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<9>_rt_1602 ),
    .O(\db6/Mcount_count_cy [9])
  );
  XORCY   \db6/Mcount_count_xor<9>  (
    .CI(\db6/Mcount_count_cy [8]),
    .LI(\db6/Mcount_count_cy<9>_rt_1602 ),
    .O(\Result<9>1 )
  );
  MUXCY   \db6/Mcount_count_cy<10>  (
    .CI(\db6/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<10>_rt_1570 ),
    .O(\db6/Mcount_count_cy [10])
  );
  XORCY   \db6/Mcount_count_xor<10>  (
    .CI(\db6/Mcount_count_cy [9]),
    .LI(\db6/Mcount_count_cy<10>_rt_1570 ),
    .O(\Result<10>1 )
  );
  MUXCY   \db6/Mcount_count_cy<11>  (
    .CI(\db6/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<11>_rt_1572 ),
    .O(\db6/Mcount_count_cy [11])
  );
  XORCY   \db6/Mcount_count_xor<11>  (
    .CI(\db6/Mcount_count_cy [10]),
    .LI(\db6/Mcount_count_cy<11>_rt_1572 ),
    .O(\Result<11>1 )
  );
  MUXCY   \db6/Mcount_count_cy<12>  (
    .CI(\db6/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<12>_rt_1574 ),
    .O(\db6/Mcount_count_cy [12])
  );
  XORCY   \db6/Mcount_count_xor<12>  (
    .CI(\db6/Mcount_count_cy [11]),
    .LI(\db6/Mcount_count_cy<12>_rt_1574 ),
    .O(\Result<12>1 )
  );
  MUXCY   \db6/Mcount_count_cy<13>  (
    .CI(\db6/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<13>_rt_1576 ),
    .O(\db6/Mcount_count_cy [13])
  );
  XORCY   \db6/Mcount_count_xor<13>  (
    .CI(\db6/Mcount_count_cy [12]),
    .LI(\db6/Mcount_count_cy<13>_rt_1576 ),
    .O(\Result<13>1 )
  );
  MUXCY   \db6/Mcount_count_cy<14>  (
    .CI(\db6/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<14>_rt_1578 ),
    .O(\db6/Mcount_count_cy [14])
  );
  XORCY   \db6/Mcount_count_xor<14>  (
    .CI(\db6/Mcount_count_cy [13]),
    .LI(\db6/Mcount_count_cy<14>_rt_1578 ),
    .O(\Result<14>1 )
  );
  MUXCY   \db6/Mcount_count_cy<15>  (
    .CI(\db6/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<15>_rt_1580 ),
    .O(\db6/Mcount_count_cy [15])
  );
  XORCY   \db6/Mcount_count_xor<15>  (
    .CI(\db6/Mcount_count_cy [14]),
    .LI(\db6/Mcount_count_cy<15>_rt_1580 ),
    .O(\Result<15>1 )
  );
  MUXCY   \db6/Mcount_count_cy<16>  (
    .CI(\db6/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<16>_rt_1582 ),
    .O(\db6/Mcount_count_cy [16])
  );
  XORCY   \db6/Mcount_count_xor<16>  (
    .CI(\db6/Mcount_count_cy [15]),
    .LI(\db6/Mcount_count_cy<16>_rt_1582 ),
    .O(\Result<16>1 )
  );
  MUXCY   \db6/Mcount_count_cy<17>  (
    .CI(\db6/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/Mcount_count_cy<17>_rt_1584 ),
    .O(\db6/Mcount_count_cy [17])
  );
  XORCY   \db6/Mcount_count_xor<17>  (
    .CI(\db6/Mcount_count_cy [16]),
    .LI(\db6/Mcount_count_cy<17>_rt_1584 ),
    .O(\Result<17>1 )
  );
  XORCY   \db6/Mcount_count_xor<18>  (
    .CI(\db6/Mcount_count_cy [17]),
    .LI(\db6/Mcount_count_xor<18>_rt_1604 ),
    .O(\Result<18>1 )
  );
  MUXCY   \db5/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db5/Mcount_count_lut [0]),
    .O(\db5/Mcount_count_cy [0])
  );
  XORCY   \db5/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db5/Mcount_count_lut [0]),
    .O(\Result<0>2 )
  );
  MUXCY   \db5/Mcount_count_cy<1>  (
    .CI(\db5/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<1>_rt_1513 ),
    .O(\db5/Mcount_count_cy [1])
  );
  XORCY   \db5/Mcount_count_xor<1>  (
    .CI(\db5/Mcount_count_cy [0]),
    .LI(\db5/Mcount_count_cy<1>_rt_1513 ),
    .O(\Result<1>2 )
  );
  MUXCY   \db5/Mcount_count_cy<2>  (
    .CI(\db5/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<2>_rt_1515 ),
    .O(\db5/Mcount_count_cy [2])
  );
  XORCY   \db5/Mcount_count_xor<2>  (
    .CI(\db5/Mcount_count_cy [1]),
    .LI(\db5/Mcount_count_cy<2>_rt_1515 ),
    .O(\Result<2>2 )
  );
  MUXCY   \db5/Mcount_count_cy<3>  (
    .CI(\db5/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<3>_rt_1517 ),
    .O(\db5/Mcount_count_cy [3])
  );
  XORCY   \db5/Mcount_count_xor<3>  (
    .CI(\db5/Mcount_count_cy [2]),
    .LI(\db5/Mcount_count_cy<3>_rt_1517 ),
    .O(\Result<3>2 )
  );
  MUXCY   \db5/Mcount_count_cy<4>  (
    .CI(\db5/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<4>_rt_1519 ),
    .O(\db5/Mcount_count_cy [4])
  );
  XORCY   \db5/Mcount_count_xor<4>  (
    .CI(\db5/Mcount_count_cy [3]),
    .LI(\db5/Mcount_count_cy<4>_rt_1519 ),
    .O(\Result<4>2 )
  );
  MUXCY   \db5/Mcount_count_cy<5>  (
    .CI(\db5/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<5>_rt_1521 ),
    .O(\db5/Mcount_count_cy [5])
  );
  XORCY   \db5/Mcount_count_xor<5>  (
    .CI(\db5/Mcount_count_cy [4]),
    .LI(\db5/Mcount_count_cy<5>_rt_1521 ),
    .O(\Result<5>2 )
  );
  MUXCY   \db5/Mcount_count_cy<6>  (
    .CI(\db5/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<6>_rt_1523 ),
    .O(\db5/Mcount_count_cy [6])
  );
  XORCY   \db5/Mcount_count_xor<6>  (
    .CI(\db5/Mcount_count_cy [5]),
    .LI(\db5/Mcount_count_cy<6>_rt_1523 ),
    .O(\Result<6>2 )
  );
  MUXCY   \db5/Mcount_count_cy<7>  (
    .CI(\db5/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<7>_rt_1525 ),
    .O(\db5/Mcount_count_cy [7])
  );
  XORCY   \db5/Mcount_count_xor<7>  (
    .CI(\db5/Mcount_count_cy [6]),
    .LI(\db5/Mcount_count_cy<7>_rt_1525 ),
    .O(\Result<7>2 )
  );
  MUXCY   \db5/Mcount_count_cy<8>  (
    .CI(\db5/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<8>_rt_1527 ),
    .O(\db5/Mcount_count_cy [8])
  );
  XORCY   \db5/Mcount_count_xor<8>  (
    .CI(\db5/Mcount_count_cy [7]),
    .LI(\db5/Mcount_count_cy<8>_rt_1527 ),
    .O(\Result<8>2 )
  );
  MUXCY   \db5/Mcount_count_cy<9>  (
    .CI(\db5/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<9>_rt_1529 ),
    .O(\db5/Mcount_count_cy [9])
  );
  XORCY   \db5/Mcount_count_xor<9>  (
    .CI(\db5/Mcount_count_cy [8]),
    .LI(\db5/Mcount_count_cy<9>_rt_1529 ),
    .O(\Result<9>2 )
  );
  MUXCY   \db5/Mcount_count_cy<10>  (
    .CI(\db5/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<10>_rt_1497 ),
    .O(\db5/Mcount_count_cy [10])
  );
  XORCY   \db5/Mcount_count_xor<10>  (
    .CI(\db5/Mcount_count_cy [9]),
    .LI(\db5/Mcount_count_cy<10>_rt_1497 ),
    .O(\Result<10>2 )
  );
  MUXCY   \db5/Mcount_count_cy<11>  (
    .CI(\db5/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<11>_rt_1499 ),
    .O(\db5/Mcount_count_cy [11])
  );
  XORCY   \db5/Mcount_count_xor<11>  (
    .CI(\db5/Mcount_count_cy [10]),
    .LI(\db5/Mcount_count_cy<11>_rt_1499 ),
    .O(\Result<11>2 )
  );
  MUXCY   \db5/Mcount_count_cy<12>  (
    .CI(\db5/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<12>_rt_1501 ),
    .O(\db5/Mcount_count_cy [12])
  );
  XORCY   \db5/Mcount_count_xor<12>  (
    .CI(\db5/Mcount_count_cy [11]),
    .LI(\db5/Mcount_count_cy<12>_rt_1501 ),
    .O(\Result<12>2 )
  );
  MUXCY   \db5/Mcount_count_cy<13>  (
    .CI(\db5/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<13>_rt_1503 ),
    .O(\db5/Mcount_count_cy [13])
  );
  XORCY   \db5/Mcount_count_xor<13>  (
    .CI(\db5/Mcount_count_cy [12]),
    .LI(\db5/Mcount_count_cy<13>_rt_1503 ),
    .O(\Result<13>2 )
  );
  MUXCY   \db5/Mcount_count_cy<14>  (
    .CI(\db5/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<14>_rt_1505 ),
    .O(\db5/Mcount_count_cy [14])
  );
  XORCY   \db5/Mcount_count_xor<14>  (
    .CI(\db5/Mcount_count_cy [13]),
    .LI(\db5/Mcount_count_cy<14>_rt_1505 ),
    .O(\Result<14>2 )
  );
  MUXCY   \db5/Mcount_count_cy<15>  (
    .CI(\db5/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<15>_rt_1507 ),
    .O(\db5/Mcount_count_cy [15])
  );
  XORCY   \db5/Mcount_count_xor<15>  (
    .CI(\db5/Mcount_count_cy [14]),
    .LI(\db5/Mcount_count_cy<15>_rt_1507 ),
    .O(\Result<15>2 )
  );
  MUXCY   \db5/Mcount_count_cy<16>  (
    .CI(\db5/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<16>_rt_1509 ),
    .O(\db5/Mcount_count_cy [16])
  );
  XORCY   \db5/Mcount_count_xor<16>  (
    .CI(\db5/Mcount_count_cy [15]),
    .LI(\db5/Mcount_count_cy<16>_rt_1509 ),
    .O(\Result<16>2 )
  );
  MUXCY   \db5/Mcount_count_cy<17>  (
    .CI(\db5/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/Mcount_count_cy<17>_rt_1511 ),
    .O(\db5/Mcount_count_cy [17])
  );
  XORCY   \db5/Mcount_count_xor<17>  (
    .CI(\db5/Mcount_count_cy [16]),
    .LI(\db5/Mcount_count_cy<17>_rt_1511 ),
    .O(\Result<17>2 )
  );
  XORCY   \db5/Mcount_count_xor<18>  (
    .CI(\db5/Mcount_count_cy [17]),
    .LI(\db5/Mcount_count_xor<18>_rt_1531 ),
    .O(\Result<18>2 )
  );
  MUXCY   \db3/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db3/Mcount_count_lut [0]),
    .O(\db3/Mcount_count_cy [0])
  );
  XORCY   \db3/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db3/Mcount_count_lut [0]),
    .O(\Result<0>4 )
  );
  MUXCY   \db3/Mcount_count_cy<1>  (
    .CI(\db3/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<1>_rt_1367 ),
    .O(\db3/Mcount_count_cy [1])
  );
  XORCY   \db3/Mcount_count_xor<1>  (
    .CI(\db3/Mcount_count_cy [0]),
    .LI(\db3/Mcount_count_cy<1>_rt_1367 ),
    .O(\Result<1>4 )
  );
  MUXCY   \db3/Mcount_count_cy<2>  (
    .CI(\db3/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<2>_rt_1369 ),
    .O(\db3/Mcount_count_cy [2])
  );
  XORCY   \db3/Mcount_count_xor<2>  (
    .CI(\db3/Mcount_count_cy [1]),
    .LI(\db3/Mcount_count_cy<2>_rt_1369 ),
    .O(\Result<2>4 )
  );
  MUXCY   \db3/Mcount_count_cy<3>  (
    .CI(\db3/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<3>_rt_1371 ),
    .O(\db3/Mcount_count_cy [3])
  );
  XORCY   \db3/Mcount_count_xor<3>  (
    .CI(\db3/Mcount_count_cy [2]),
    .LI(\db3/Mcount_count_cy<3>_rt_1371 ),
    .O(\Result<3>4 )
  );
  MUXCY   \db3/Mcount_count_cy<4>  (
    .CI(\db3/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<4>_rt_1373 ),
    .O(\db3/Mcount_count_cy [4])
  );
  XORCY   \db3/Mcount_count_xor<4>  (
    .CI(\db3/Mcount_count_cy [3]),
    .LI(\db3/Mcount_count_cy<4>_rt_1373 ),
    .O(\Result<4>4 )
  );
  MUXCY   \db3/Mcount_count_cy<5>  (
    .CI(\db3/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<5>_rt_1375 ),
    .O(\db3/Mcount_count_cy [5])
  );
  XORCY   \db3/Mcount_count_xor<5>  (
    .CI(\db3/Mcount_count_cy [4]),
    .LI(\db3/Mcount_count_cy<5>_rt_1375 ),
    .O(\Result<5>4 )
  );
  MUXCY   \db3/Mcount_count_cy<6>  (
    .CI(\db3/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<6>_rt_1377 ),
    .O(\db3/Mcount_count_cy [6])
  );
  XORCY   \db3/Mcount_count_xor<6>  (
    .CI(\db3/Mcount_count_cy [5]),
    .LI(\db3/Mcount_count_cy<6>_rt_1377 ),
    .O(\Result<6>4 )
  );
  MUXCY   \db3/Mcount_count_cy<7>  (
    .CI(\db3/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<7>_rt_1379 ),
    .O(\db3/Mcount_count_cy [7])
  );
  XORCY   \db3/Mcount_count_xor<7>  (
    .CI(\db3/Mcount_count_cy [6]),
    .LI(\db3/Mcount_count_cy<7>_rt_1379 ),
    .O(\Result<7>4 )
  );
  MUXCY   \db3/Mcount_count_cy<8>  (
    .CI(\db3/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<8>_rt_1381 ),
    .O(\db3/Mcount_count_cy [8])
  );
  XORCY   \db3/Mcount_count_xor<8>  (
    .CI(\db3/Mcount_count_cy [7]),
    .LI(\db3/Mcount_count_cy<8>_rt_1381 ),
    .O(\Result<8>4 )
  );
  MUXCY   \db3/Mcount_count_cy<9>  (
    .CI(\db3/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<9>_rt_1383 ),
    .O(\db3/Mcount_count_cy [9])
  );
  XORCY   \db3/Mcount_count_xor<9>  (
    .CI(\db3/Mcount_count_cy [8]),
    .LI(\db3/Mcount_count_cy<9>_rt_1383 ),
    .O(\Result<9>4 )
  );
  MUXCY   \db3/Mcount_count_cy<10>  (
    .CI(\db3/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<10>_rt_1351 ),
    .O(\db3/Mcount_count_cy [10])
  );
  XORCY   \db3/Mcount_count_xor<10>  (
    .CI(\db3/Mcount_count_cy [9]),
    .LI(\db3/Mcount_count_cy<10>_rt_1351 ),
    .O(\Result<10>4 )
  );
  MUXCY   \db3/Mcount_count_cy<11>  (
    .CI(\db3/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<11>_rt_1353 ),
    .O(\db3/Mcount_count_cy [11])
  );
  XORCY   \db3/Mcount_count_xor<11>  (
    .CI(\db3/Mcount_count_cy [10]),
    .LI(\db3/Mcount_count_cy<11>_rt_1353 ),
    .O(\Result<11>4 )
  );
  MUXCY   \db3/Mcount_count_cy<12>  (
    .CI(\db3/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<12>_rt_1355 ),
    .O(\db3/Mcount_count_cy [12])
  );
  XORCY   \db3/Mcount_count_xor<12>  (
    .CI(\db3/Mcount_count_cy [11]),
    .LI(\db3/Mcount_count_cy<12>_rt_1355 ),
    .O(\Result<12>4 )
  );
  MUXCY   \db3/Mcount_count_cy<13>  (
    .CI(\db3/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<13>_rt_1357 ),
    .O(\db3/Mcount_count_cy [13])
  );
  XORCY   \db3/Mcount_count_xor<13>  (
    .CI(\db3/Mcount_count_cy [12]),
    .LI(\db3/Mcount_count_cy<13>_rt_1357 ),
    .O(\Result<13>4 )
  );
  MUXCY   \db3/Mcount_count_cy<14>  (
    .CI(\db3/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<14>_rt_1359 ),
    .O(\db3/Mcount_count_cy [14])
  );
  XORCY   \db3/Mcount_count_xor<14>  (
    .CI(\db3/Mcount_count_cy [13]),
    .LI(\db3/Mcount_count_cy<14>_rt_1359 ),
    .O(\Result<14>4 )
  );
  MUXCY   \db3/Mcount_count_cy<15>  (
    .CI(\db3/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<15>_rt_1361 ),
    .O(\db3/Mcount_count_cy [15])
  );
  XORCY   \db3/Mcount_count_xor<15>  (
    .CI(\db3/Mcount_count_cy [14]),
    .LI(\db3/Mcount_count_cy<15>_rt_1361 ),
    .O(\Result<15>4 )
  );
  MUXCY   \db3/Mcount_count_cy<16>  (
    .CI(\db3/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<16>_rt_1363 ),
    .O(\db3/Mcount_count_cy [16])
  );
  XORCY   \db3/Mcount_count_xor<16>  (
    .CI(\db3/Mcount_count_cy [15]),
    .LI(\db3/Mcount_count_cy<16>_rt_1363 ),
    .O(\Result<16>4 )
  );
  MUXCY   \db3/Mcount_count_cy<17>  (
    .CI(\db3/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/Mcount_count_cy<17>_rt_1365 ),
    .O(\db3/Mcount_count_cy [17])
  );
  XORCY   \db3/Mcount_count_xor<17>  (
    .CI(\db3/Mcount_count_cy [16]),
    .LI(\db3/Mcount_count_cy<17>_rt_1365 ),
    .O(\Result<17>4 )
  );
  XORCY   \db3/Mcount_count_xor<18>  (
    .CI(\db3/Mcount_count_cy [17]),
    .LI(\db3/Mcount_count_xor<18>_rt_1385 ),
    .O(\Result<18>4 )
  );
  MUXCY   \db2/Mcount_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\db2/Mcount_count_lut [0]),
    .O(\db2/Mcount_count_cy [0])
  );
  XORCY   \db2/Mcount_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\db2/Mcount_count_lut [0]),
    .O(\Result<0>5 )
  );
  MUXCY   \db2/Mcount_count_cy<1>  (
    .CI(\db2/Mcount_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<1>_rt_1294 ),
    .O(\db2/Mcount_count_cy [1])
  );
  XORCY   \db2/Mcount_count_xor<1>  (
    .CI(\db2/Mcount_count_cy [0]),
    .LI(\db2/Mcount_count_cy<1>_rt_1294 ),
    .O(\Result<1>5 )
  );
  MUXCY   \db2/Mcount_count_cy<2>  (
    .CI(\db2/Mcount_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<2>_rt_1296 ),
    .O(\db2/Mcount_count_cy [2])
  );
  XORCY   \db2/Mcount_count_xor<2>  (
    .CI(\db2/Mcount_count_cy [1]),
    .LI(\db2/Mcount_count_cy<2>_rt_1296 ),
    .O(\Result<2>5 )
  );
  MUXCY   \db2/Mcount_count_cy<3>  (
    .CI(\db2/Mcount_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<3>_rt_1298 ),
    .O(\db2/Mcount_count_cy [3])
  );
  XORCY   \db2/Mcount_count_xor<3>  (
    .CI(\db2/Mcount_count_cy [2]),
    .LI(\db2/Mcount_count_cy<3>_rt_1298 ),
    .O(\Result<3>5 )
  );
  MUXCY   \db2/Mcount_count_cy<4>  (
    .CI(\db2/Mcount_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<4>_rt_1300 ),
    .O(\db2/Mcount_count_cy [4])
  );
  XORCY   \db2/Mcount_count_xor<4>  (
    .CI(\db2/Mcount_count_cy [3]),
    .LI(\db2/Mcount_count_cy<4>_rt_1300 ),
    .O(\Result<4>5 )
  );
  MUXCY   \db2/Mcount_count_cy<5>  (
    .CI(\db2/Mcount_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<5>_rt_1302 ),
    .O(\db2/Mcount_count_cy [5])
  );
  XORCY   \db2/Mcount_count_xor<5>  (
    .CI(\db2/Mcount_count_cy [4]),
    .LI(\db2/Mcount_count_cy<5>_rt_1302 ),
    .O(\Result<5>5 )
  );
  MUXCY   \db2/Mcount_count_cy<6>  (
    .CI(\db2/Mcount_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<6>_rt_1304 ),
    .O(\db2/Mcount_count_cy [6])
  );
  XORCY   \db2/Mcount_count_xor<6>  (
    .CI(\db2/Mcount_count_cy [5]),
    .LI(\db2/Mcount_count_cy<6>_rt_1304 ),
    .O(\Result<6>5 )
  );
  MUXCY   \db2/Mcount_count_cy<7>  (
    .CI(\db2/Mcount_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<7>_rt_1306 ),
    .O(\db2/Mcount_count_cy [7])
  );
  XORCY   \db2/Mcount_count_xor<7>  (
    .CI(\db2/Mcount_count_cy [6]),
    .LI(\db2/Mcount_count_cy<7>_rt_1306 ),
    .O(\Result<7>5 )
  );
  MUXCY   \db2/Mcount_count_cy<8>  (
    .CI(\db2/Mcount_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<8>_rt_1308 ),
    .O(\db2/Mcount_count_cy [8])
  );
  XORCY   \db2/Mcount_count_xor<8>  (
    .CI(\db2/Mcount_count_cy [7]),
    .LI(\db2/Mcount_count_cy<8>_rt_1308 ),
    .O(\Result<8>5 )
  );
  MUXCY   \db2/Mcount_count_cy<9>  (
    .CI(\db2/Mcount_count_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<9>_rt_1310 ),
    .O(\db2/Mcount_count_cy [9])
  );
  XORCY   \db2/Mcount_count_xor<9>  (
    .CI(\db2/Mcount_count_cy [8]),
    .LI(\db2/Mcount_count_cy<9>_rt_1310 ),
    .O(\Result<9>5 )
  );
  MUXCY   \db2/Mcount_count_cy<10>  (
    .CI(\db2/Mcount_count_cy [9]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<10>_rt_1278 ),
    .O(\db2/Mcount_count_cy [10])
  );
  XORCY   \db2/Mcount_count_xor<10>  (
    .CI(\db2/Mcount_count_cy [9]),
    .LI(\db2/Mcount_count_cy<10>_rt_1278 ),
    .O(\Result<10>5 )
  );
  MUXCY   \db2/Mcount_count_cy<11>  (
    .CI(\db2/Mcount_count_cy [10]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<11>_rt_1280 ),
    .O(\db2/Mcount_count_cy [11])
  );
  XORCY   \db2/Mcount_count_xor<11>  (
    .CI(\db2/Mcount_count_cy [10]),
    .LI(\db2/Mcount_count_cy<11>_rt_1280 ),
    .O(\Result<11>5 )
  );
  MUXCY   \db2/Mcount_count_cy<12>  (
    .CI(\db2/Mcount_count_cy [11]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<12>_rt_1282 ),
    .O(\db2/Mcount_count_cy [12])
  );
  XORCY   \db2/Mcount_count_xor<12>  (
    .CI(\db2/Mcount_count_cy [11]),
    .LI(\db2/Mcount_count_cy<12>_rt_1282 ),
    .O(\Result<12>5 )
  );
  MUXCY   \db2/Mcount_count_cy<13>  (
    .CI(\db2/Mcount_count_cy [12]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<13>_rt_1284 ),
    .O(\db2/Mcount_count_cy [13])
  );
  XORCY   \db2/Mcount_count_xor<13>  (
    .CI(\db2/Mcount_count_cy [12]),
    .LI(\db2/Mcount_count_cy<13>_rt_1284 ),
    .O(\Result<13>5 )
  );
  MUXCY   \db2/Mcount_count_cy<14>  (
    .CI(\db2/Mcount_count_cy [13]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<14>_rt_1286 ),
    .O(\db2/Mcount_count_cy [14])
  );
  XORCY   \db2/Mcount_count_xor<14>  (
    .CI(\db2/Mcount_count_cy [13]),
    .LI(\db2/Mcount_count_cy<14>_rt_1286 ),
    .O(\Result<14>5 )
  );
  MUXCY   \db2/Mcount_count_cy<15>  (
    .CI(\db2/Mcount_count_cy [14]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<15>_rt_1288 ),
    .O(\db2/Mcount_count_cy [15])
  );
  XORCY   \db2/Mcount_count_xor<15>  (
    .CI(\db2/Mcount_count_cy [14]),
    .LI(\db2/Mcount_count_cy<15>_rt_1288 ),
    .O(\Result<15>5 )
  );
  MUXCY   \db2/Mcount_count_cy<16>  (
    .CI(\db2/Mcount_count_cy [15]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<16>_rt_1290 ),
    .O(\db2/Mcount_count_cy [16])
  );
  XORCY   \db2/Mcount_count_xor<16>  (
    .CI(\db2/Mcount_count_cy [15]),
    .LI(\db2/Mcount_count_cy<16>_rt_1290 ),
    .O(\Result<16>5 )
  );
  MUXCY   \db2/Mcount_count_cy<17>  (
    .CI(\db2/Mcount_count_cy [16]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/Mcount_count_cy<17>_rt_1292 ),
    .O(\db2/Mcount_count_cy [17])
  );
  XORCY   \db2/Mcount_count_xor<17>  (
    .CI(\db2/Mcount_count_cy [16]),
    .LI(\db2/Mcount_count_cy<17>_rt_1292 ),
    .O(\Result<17>5 )
  );
  XORCY   \db2/Mcount_count_xor<18>  (
    .CI(\db2/Mcount_count_cy [17]),
    .LI(\db2/Mcount_count_xor<18>_rt_1312 ),
    .O(\Result<18>5 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<0>  (
    .I0(xvcount[0]),
    .I1(dout[0]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[0])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(xvcount[0]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[0]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<1>  (
    .I0(xvcount[1]),
    .I1(dout[1]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[1])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<1>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[0]),
    .DI(xvcount[1]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[1]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<2>  (
    .I0(xvcount[2]),
    .I1(dout[2]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[2])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<2>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[1]),
    .DI(xvcount[2]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[2]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<3>  (
    .I0(xvcount[3]),
    .I1(dout[3]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[3])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<3>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[2]),
    .DI(xvcount[3]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[3]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<4>  (
    .I0(xvcount[4]),
    .I1(dout[4]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[4])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<4>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[3]),
    .DI(xvcount[4]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[4]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<5>  (
    .I0(xvcount[5]),
    .I1(dout[5]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[5])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<5>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[4]),
    .DI(xvcount[5]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[5]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<6>  (
    .I0(xvcount[6]),
    .I1(dout[6]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[6])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<6>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[5]),
    .DI(xvcount[6]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[6]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<7>  (
    .I0(xvcount[7]),
    .I1(dout[7]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[7])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<7>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[6]),
    .DI(xvcount[7]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[7]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<8>  (
    .I0(xvcount[8]),
    .I1(dout[8]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[8])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<8>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[7]),
    .DI(xvcount[8]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[8]),
    .O(Mcompar_fft_pixel_cmp_le0000_cy[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_fft_pixel_cmp_le0000_lut<9>  (
    .I0(xvcount[9]),
    .I1(divisor[9]),
    .O(Mcompar_fft_pixel_cmp_le0000_lut[9])
  );
  MUXCY   \Mcompar_fft_pixel_cmp_le0000_cy<9>  (
    .CI(Mcompar_fft_pixel_cmp_le0000_cy[8]),
    .DI(xvcount[9]),
    .S(Mcompar_fft_pixel_cmp_le0000_lut[9]),
    .O(fft_pixel_cmp_le0000)
  );
  DCM #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 10 ),
    .CLKFX_MULTIPLY ( 24 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 37.0000000000000000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "NONE" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .SIM_MODE ( "SAFE" ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  vclk1 (
    .RST(NLW_vclk1_RST_UNCONNECTED),
    .CLKIN(clock_27mhz_IBUFG1),
    .CLKFB(NLW_vclk1_CLKFB_UNCONNECTED),
    .PSINCDEC(NLW_vclk1_PSINCDEC_UNCONNECTED),
    .PSEN(NLW_vclk1_PSEN_UNCONNECTED),
    .PSCLK(NLW_vclk1_PSCLK_UNCONNECTED),
    .DSSEN(NLW_vclk1_DSSEN_UNCONNECTED),
    .CLK0(NLW_vclk1_CLK0_UNCONNECTED),
    .CLK90(NLW_vclk1_CLK90_UNCONNECTED),
    .CLK180(NLW_vclk1_CLK180_UNCONNECTED),
    .CLK270(NLW_vclk1_CLK270_UNCONNECTED),
    .CLK2X(NLW_vclk1_CLK2X_UNCONNECTED),
    .CLK2X180(NLW_vclk1_CLK2X180_UNCONNECTED),
    .CLKDV(NLW_vclk1_CLKDV_UNCONNECTED),
    .CLKFX(clock_65mhz_unbuf),
    .CLKFX180(NLW_vclk1_CLKFX180_UNCONNECTED),
    .LOCKED(NLW_vclk1_LOCKED_UNCONNECTED),
    .PSDONE(NLW_vclk1_PSDONE_UNCONNECTED),
    .STATUS({\NLW_vclk1_STATUS<7>_UNCONNECTED , \NLW_vclk1_STATUS<6>_UNCONNECTED , \NLW_vclk1_STATUS<5>_UNCONNECTED , 
\NLW_vclk1_STATUS<4>_UNCONNECTED , \NLW_vclk1_STATUS<3>_UNCONNECTED , \NLW_vclk1_STATUS<2>_UNCONNECTED , \NLW_vclk1_STATUS<1>_UNCONNECTED , 
\NLW_vclk1_STATUS<0>_UNCONNECTED })
  );
  BUFG   vclk2 (
    .I(clock_65mhz_unbuf),
    .O(clock_65mhz)
  );
  SRL16 #(
    .INIT ( 16'hFFFF ))
  reset_sr (
    .A0(led_5_OBUF_3517),
    .A1(led_5_OBUF_3517),
    .A2(led_5_OBUF_3517),
    .A3(led_5_OBUF_3517),
    .CLK(clock_65mhz),
    .D(\a/ac97/Mmux__varindex0000_9 ),
    .Q(power_on_reset)
  );
  FDR   \disp/state_FSM_FFd2  (
    .C(\disp/clock_1761 ),
    .D(\disp/state_FSM_FFd2-In_1883 ),
    .R(\disp/dreset ),
    .Q(\disp/state_FSM_FFd2_1882 )
  );
  FDR   \disp/state_FSM_FFd3  (
    .C(\disp/clock_1761 ),
    .D(\disp/state_FSM_FFd3-In_1885 ),
    .R(\disp/dreset ),
    .Q(\disp/state_FSM_FFd3_1884 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux_nibble_9  (
    .I0(\disp/char_index [0]),
    .I1(num[0]),
    .I2(blob[0]),
    .O(\disp/Mmux_nibble_9_1686 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux_nibble_91  (
    .I0(\disp/char_index [0]),
    .I1(num[1]),
    .I2(blob[1]),
    .O(\disp/Mmux_nibble_91_1687 )
  );
  XORCY   \disp/Mcount_reset_count_xor<7>  (
    .CI(\disp/Mcount_reset_count_cy [6]),
    .LI(\disp/Mcount_reset_count_lut [7]),
    .O(\disp/Result [7])
  );
  XORCY   \disp/Mcount_reset_count_xor<6>  (
    .CI(\disp/Mcount_reset_count_cy [5]),
    .LI(\disp/Mcount_reset_count_lut [6]),
    .O(\disp/Result [6])
  );
  MUXCY   \disp/Mcount_reset_count_cy<6>  (
    .CI(\disp/Mcount_reset_count_cy [5]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [6]),
    .O(\disp/Mcount_reset_count_cy [6])
  );
  XORCY   \disp/Mcount_reset_count_xor<5>  (
    .CI(\disp/Mcount_reset_count_cy [4]),
    .LI(\disp/Mcount_reset_count_lut [5]),
    .O(\disp/Result [5])
  );
  MUXCY   \disp/Mcount_reset_count_cy<5>  (
    .CI(\disp/Mcount_reset_count_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [5]),
    .O(\disp/Mcount_reset_count_cy [5])
  );
  XORCY   \disp/Mcount_reset_count_xor<4>  (
    .CI(\disp/Mcount_reset_count_cy [3]),
    .LI(\disp/Mcount_reset_count_lut [4]),
    .O(\disp/Result<4>1_1742 )
  );
  MUXCY   \disp/Mcount_reset_count_cy<4>  (
    .CI(\disp/Mcount_reset_count_cy [3]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [4]),
    .O(\disp/Mcount_reset_count_cy [4])
  );
  XORCY   \disp/Mcount_reset_count_xor<3>  (
    .CI(\disp/Mcount_reset_count_cy [2]),
    .LI(\disp/Mcount_reset_count_lut [3]),
    .O(\disp/Result<3>1_1740 )
  );
  MUXCY   \disp/Mcount_reset_count_cy<3>  (
    .CI(\disp/Mcount_reset_count_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [3]),
    .O(\disp/Mcount_reset_count_cy [3])
  );
  XORCY   \disp/Mcount_reset_count_xor<2>  (
    .CI(\disp/Mcount_reset_count_cy [1]),
    .LI(\disp/Mcount_reset_count_lut [2]),
    .O(\disp/Result<2>1 )
  );
  MUXCY   \disp/Mcount_reset_count_cy<2>  (
    .CI(\disp/Mcount_reset_count_cy [1]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [2]),
    .O(\disp/Mcount_reset_count_cy [2])
  );
  XORCY   \disp/Mcount_reset_count_xor<1>  (
    .CI(\disp/Mcount_reset_count_cy [0]),
    .LI(\disp/Mcount_reset_count_lut [1]),
    .O(\disp/Result<1>1 )
  );
  MUXCY   \disp/Mcount_reset_count_cy<1>  (
    .CI(\disp/Mcount_reset_count_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\disp/Mcount_reset_count_lut [1]),
    .O(\disp/Mcount_reset_count_cy [1])
  );
  XORCY   \disp/Mcount_reset_count_xor<0>  (
    .CI(led_5_OBUF_3517),
    .LI(\disp/Mcount_reset_count_cy<0>_rt_1642 ),
    .O(\disp/Result<0>1 )
  );
  MUXCY   \disp/Mcount_reset_count_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\disp/Mcount_reset_count_cy<0>_rt_1642 ),
    .O(\disp/Mcount_reset_count_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_12  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots3 ),
    .I2(\disp/Mrom_dots11 ),
    .O(\disp/Mmux__varindex0000_12_1663 )
  );
  MUXF5   \disp/Mmux__varindex0000_10_f5  (
    .I0(\disp/Mmux__varindex0000_12_1663 ),
    .I1(\disp/Mmux__varindex0000_11_1660 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_10_f5_1658 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_13  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots2 ),
    .I2(\disp/Mrom_dots10 ),
    .O(\disp/Mmux__varindex0000_13_1668 )
  );
  MUXF5   \disp/Mmux__varindex0000_11_f5  (
    .I0(\disp/Mmux__varindex0000_13_1668 ),
    .I1(\disp/Mmux__varindex0000_121_1664 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_11_f5_1661 )
  );
  MUXF6   \disp/Mmux__varindex0000_9_f6  (
    .I0(\disp/Mmux__varindex0000_11_f5_1661 ),
    .I1(\disp/Mmux__varindex0000_10_f5_1658 ),
    .S(\disp/dot_index [0]),
    .O(\disp/Mmux__varindex0000_9_f6_1685 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_131  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots1_1689 ),
    .I2(\disp/Mrom_dots12 ),
    .O(\disp/Mmux__varindex0000_131_1669 )
  );
  MUXF5   \disp/Mmux__varindex0000_11_f5_0  (
    .I0(\disp/Mmux__varindex0000_131_1669 ),
    .I1(\disp/Mmux__varindex0000_122_1665 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_11_f51 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_14  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots ),
    .I2(\disp/Mrom_dots8 ),
    .O(\disp/Mmux__varindex0000_14_1672 )
  );
  MUXF5   \disp/Mmux__varindex0000_12_f5  (
    .I0(\disp/Mmux__varindex0000_14_1672 ),
    .I1(\disp/Mmux__varindex0000_132_1670 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_12_f5_1666 )
  );
  MUXF6   \disp/Mmux__varindex0000_10_f6  (
    .I0(\disp/Mmux__varindex0000_12_f5_1666 ),
    .I1(\disp/Mmux__varindex0000_11_f51 ),
    .S(\disp/dot_index [0]),
    .O(\disp/Mmux__varindex0000_10_f6_1659 )
  );
  MUXF7   \disp/Mmux__varindex0000_8_f7  (
    .I0(\disp/Mmux__varindex0000_10_f6_1659 ),
    .I1(\disp/Mmux__varindex0000_9_f6_1685 ),
    .S(\disp/dot_index [1]),
    .O(\disp/Mmux__varindex0000_8_f7_1682 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_15  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots5 ),
    .I2(\disp/Mrom_dots13 ),
    .O(\disp/Mmux__varindex0000_15_1675 )
  );
  MUXF5   \disp/Mmux__varindex0000_13_f5  (
    .I0(\disp/Mmux__varindex0000_15_1675 ),
    .I1(\disp/Mmux__varindex0000_141_1673 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_13_f5_1671 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_16  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots4 ),
    .I2(\disp/Mrom_dots12 ),
    .O(\disp/Mmux__varindex0000_16_1677 )
  );
  MUXF5   \disp/Mmux__varindex0000_14_f5  (
    .I0(\disp/Mmux__varindex0000_16_1677 ),
    .I1(\disp/Mmux__varindex0000_151_1676 ),
    .S(\disp/dot_index [4]),
    .O(\disp/Mmux__varindex0000_14_f5_1674 )
  );
  MUXF6   \disp/Mmux__varindex0000_12_f6  (
    .I0(\disp/Mmux__varindex0000_14_f5_1674 ),
    .I1(\disp/Mmux__varindex0000_13_f5_1671 ),
    .S(\disp/dot_index [0]),
    .O(\disp/Mmux__varindex0000_12_f6_1667 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \disp/Mmux__varindex0000_8  (
    .I0(\disp/Mrom_dots38 ),
    .I1(\disp/dot_index [0]),
    .O(\disp/Mmux__varindex0000_8_1680 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_9  (
    .I0(\disp/dot_index [0]),
    .I1(\disp/Mrom_dots36 ),
    .I2(\disp/Mrom_dots37 ),
    .O(\disp/Mmux__varindex0000_9_1683 )
  );
  MUXF5   \disp/Mmux__varindex0000_7_f5  (
    .I0(\disp/Mmux__varindex0000_9_1683 ),
    .I1(\disp/Mmux__varindex0000_8_1680 ),
    .S(\disp/dot_index [1]),
    .O(\disp/Mmux__varindex0000_7_f5_1679 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_91  (
    .I0(\disp/dot_index [0]),
    .I1(\disp/Mrom_dots34 ),
    .I2(\disp/Mrom_dots35 ),
    .O(\disp/Mmux__varindex0000_91_1684 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_10  (
    .I0(\disp/dot_index [0]),
    .I1(\disp/Mrom_dots32 ),
    .I2(\disp/Mrom_dots33 ),
    .O(\disp/Mmux__varindex0000_10_1657 )
  );
  MUXF5   \disp/Mmux__varindex0000_8_f5  (
    .I0(\disp/Mmux__varindex0000_10_1657 ),
    .I1(\disp/Mmux__varindex0000_91_1684 ),
    .S(\disp/dot_index [1]),
    .O(\disp/Mmux__varindex0000_8_f5_1681 )
  );
  MUXF6   \disp/Mmux__varindex0000_6_f6  (
    .I0(\disp/Mmux__varindex0000_8_f5_1681 ),
    .I1(\disp/Mmux__varindex0000_7_f5_1679 ),
    .S(\disp/dot_index [2]),
    .O(\disp/Mmux__varindex0000_6_f6_1678 )
  );
  FDR   \disp/reset_count_7  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [7]),
    .R(\disp/Mcount_reset_count_val ),
    .Q(\disp/reset_count [7])
  );
  FDRS   \disp/reset_count_6  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [6]),
    .R(\disp/reset_count_not0001_inv ),
    .S(reset),
    .Q(\disp/reset_count [6])
  );
  FDRS   \disp/reset_count_5  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [5]),
    .R(\disp/reset_count_not0001_inv ),
    .S(reset),
    .Q(\disp/reset_count [5])
  );
  FDR   \disp/reset_count_4  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result<4>1_1742 ),
    .R(\disp/Mcount_reset_count_val ),
    .Q(\disp/reset_count [4])
  );
  FDR   \disp/reset_count_3  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result<3>1_1740 ),
    .R(\disp/Mcount_reset_count_val ),
    .Q(\disp/reset_count [3])
  );
  FDRS   \disp/reset_count_2  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result<2>1 ),
    .R(\disp/reset_count_not0001_inv ),
    .S(reset),
    .Q(\disp/reset_count [2])
  );
  FDR   \disp/reset_count_1  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result<1>1 ),
    .R(\disp/Mcount_reset_count_val ),
    .Q(\disp/reset_count [1])
  );
  FDR   \disp/reset_count_0  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result<0>1 ),
    .R(\disp/Mcount_reset_count_val ),
    .Q(\disp/reset_count [0])
  );
  FDR   \disp/count_4  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [4]),
    .R(\disp/count_or0000 ),
    .Q(\disp/count [4])
  );
  FDR   \disp/count_3  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [3]),
    .R(\disp/count_or0000 ),
    .Q(\disp/count [3])
  );
  FDR   \disp/count_2  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [2]),
    .R(\disp/count_or0000 ),
    .Q(\disp/count [2])
  );
  FDR   \disp/count_1  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [1]),
    .R(\disp/count_or0000 ),
    .Q(\disp/count [1])
  );
  FDR   \disp/count_0  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\disp/Result [0]),
    .R(\disp/count_or0000 ),
    .Q(\disp/count [0])
  );
  FDRE   \disp/control_31  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_302_1774 ),
    .R(\disp/dreset ),
    .Q(\disp/control[31] )
  );
  FDRE   \disp/control_23  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_222_1770 ),
    .R(\disp/dreset ),
    .Q(\disp/control[23] )
  );
  FDRE   \disp/control_15  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_142_1766 ),
    .R(\disp/dreset ),
    .Q(\disp/control[15] )
  );
  FDRE   \disp/control_7  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_62_1778 ),
    .R(\disp/dreset ),
    .Q(\disp/control[7] )
  );
  FDE   \disp/char_index_3  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/char_index_mux0000 [0]),
    .Q(\disp/char_index [3])
  );
  FDE   \disp/char_index_2  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/char_index_mux0000 [1]),
    .Q(\disp/char_index [2])
  );
  FDE   \disp/char_index_1  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/char_index_mux0000 [2]),
    .Q(\disp/char_index [1])
  );
  FDE   \disp/char_index_0  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/char_index_mux0000 [3]),
    .Q(\disp/char_index [0])
  );
  FDE   \disp/disp_reset_b  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/disp_reset_b_mux0000 ),
    .Q(\disp/disp_reset_b_1797 )
  );
  FDE   \disp/disp_ce_b  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/disp_ce_b_mux0000 ),
    .Q(\disp/disp_ce_b_1787 )
  );
  FDE   \disp/disp_rs  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/disp_rs_mux0000 ),
    .Q(\disp/disp_rs_1799 )
  );
  FDE   \disp/disp_data_out  (
    .C(\disp/clock_1761 ),
    .CE(\disp/dreset_inv ),
    .D(\disp/disp_data_out_mux0000 ),
    .Q(\disp/disp_data_out_1789 )
  );
  FDR   \disp/dot_index_9  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000 [0]),
    .R(\disp/dreset ),
    .Q(\disp/dot_index [9])
  );
  FDR   \disp/dot_index_8  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000 [1]),
    .R(\disp/dreset ),
    .Q(\disp/dot_index [8])
  );
  FDRE   \disp/clock  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\disp/clock_cmp_eq0000 ),
    .D(disp_clock_OBUF_1893),
    .R(reset),
    .Q(\disp/clock1 )
  );
  XORCY   \xvga1/Mcount_vcount_xor<9>  (
    .CI(\xvga1/Mcount_vcount_cy [8]),
    .LI(\xvga1/Mcount_vcount_xor<9>_rt_3773 ),
    .O(\xvga1/Result<9>1 )
  );
  XORCY   \xvga1/Mcount_vcount_xor<8>  (
    .CI(\xvga1/Mcount_vcount_cy [7]),
    .LI(\xvga1/Mcount_vcount_cy<8>_rt_3770 ),
    .O(\xvga1/Result<8>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<8>  (
    .CI(\xvga1/Mcount_vcount_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<8>_rt_3770 ),
    .O(\xvga1/Mcount_vcount_cy [8])
  );
  XORCY   \xvga1/Mcount_vcount_xor<7>  (
    .CI(\xvga1/Mcount_vcount_cy [6]),
    .LI(\xvga1/Mcount_vcount_cy<7>_rt_3768 ),
    .O(\xvga1/Result<7>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<7>  (
    .CI(\xvga1/Mcount_vcount_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<7>_rt_3768 ),
    .O(\xvga1/Mcount_vcount_cy [7])
  );
  XORCY   \xvga1/Mcount_vcount_xor<6>  (
    .CI(\xvga1/Mcount_vcount_cy [5]),
    .LI(\xvga1/Mcount_vcount_cy<6>_rt_3766 ),
    .O(\xvga1/Result<6>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<6>  (
    .CI(\xvga1/Mcount_vcount_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<6>_rt_3766 ),
    .O(\xvga1/Mcount_vcount_cy [6])
  );
  XORCY   \xvga1/Mcount_vcount_xor<5>  (
    .CI(\xvga1/Mcount_vcount_cy [4]),
    .LI(\xvga1/Mcount_vcount_cy<5>_rt_3764 ),
    .O(\xvga1/Result<5>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<5>  (
    .CI(\xvga1/Mcount_vcount_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<5>_rt_3764 ),
    .O(\xvga1/Mcount_vcount_cy [5])
  );
  XORCY   \xvga1/Mcount_vcount_xor<4>  (
    .CI(\xvga1/Mcount_vcount_cy [3]),
    .LI(\xvga1/Mcount_vcount_cy<4>_rt_3762 ),
    .O(\xvga1/Result<4>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<4>  (
    .CI(\xvga1/Mcount_vcount_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<4>_rt_3762 ),
    .O(\xvga1/Mcount_vcount_cy [4])
  );
  XORCY   \xvga1/Mcount_vcount_xor<3>  (
    .CI(\xvga1/Mcount_vcount_cy [2]),
    .LI(\xvga1/Mcount_vcount_cy<3>_rt_3760 ),
    .O(\xvga1/Result<3>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<3>  (
    .CI(\xvga1/Mcount_vcount_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<3>_rt_3760 ),
    .O(\xvga1/Mcount_vcount_cy [3])
  );
  XORCY   \xvga1/Mcount_vcount_xor<2>  (
    .CI(\xvga1/Mcount_vcount_cy [1]),
    .LI(\xvga1/Mcount_vcount_cy<2>_rt_3758 ),
    .O(\xvga1/Result<2>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<2>  (
    .CI(\xvga1/Mcount_vcount_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<2>_rt_3758 ),
    .O(\xvga1/Mcount_vcount_cy [2])
  );
  XORCY   \xvga1/Mcount_vcount_xor<1>  (
    .CI(\xvga1/Mcount_vcount_cy [0]),
    .LI(\xvga1/Mcount_vcount_cy<1>_rt_3756 ),
    .O(\xvga1/Result<1>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<1>  (
    .CI(\xvga1/Mcount_vcount_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_vcount_cy<1>_rt_3756 ),
    .O(\xvga1/Mcount_vcount_cy [1])
  );
  XORCY   \xvga1/Mcount_vcount_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\xvga1/Mcount_vcount_lut<0>1 ),
    .O(\xvga1/Result<0>1 )
  );
  MUXCY   \xvga1/Mcount_vcount_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\xvga1/Mcount_vcount_lut<0>1 ),
    .O(\xvga1/Mcount_vcount_cy [0])
  );
  XORCY   \xvga1/Mcount_hcount_xor<10>  (
    .CI(\xvga1/Mcount_hcount_cy [9]),
    .LI(\xvga1/Mcount_hcount_xor<10>_rt_3753 ),
    .O(\xvga1/Result [10])
  );
  XORCY   \xvga1/Mcount_hcount_xor<9>  (
    .CI(\xvga1/Mcount_hcount_cy [8]),
    .LI(\xvga1/Mcount_hcount_cy<9>_rt_3751 ),
    .O(\xvga1/Result [9])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<9>  (
    .CI(\xvga1/Mcount_hcount_cy [8]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<9>_rt_3751 ),
    .O(\xvga1/Mcount_hcount_cy [9])
  );
  XORCY   \xvga1/Mcount_hcount_xor<8>  (
    .CI(\xvga1/Mcount_hcount_cy [7]),
    .LI(\xvga1/Mcount_hcount_cy<8>_rt_3749 ),
    .O(\xvga1/Result [8])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<8>  (
    .CI(\xvga1/Mcount_hcount_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<8>_rt_3749 ),
    .O(\xvga1/Mcount_hcount_cy [8])
  );
  XORCY   \xvga1/Mcount_hcount_xor<7>  (
    .CI(\xvga1/Mcount_hcount_cy [6]),
    .LI(\xvga1/Mcount_hcount_cy<7>_rt_3747 ),
    .O(\xvga1/Result [7])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<7>  (
    .CI(\xvga1/Mcount_hcount_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<7>_rt_3747 ),
    .O(\xvga1/Mcount_hcount_cy [7])
  );
  XORCY   \xvga1/Mcount_hcount_xor<6>  (
    .CI(\xvga1/Mcount_hcount_cy [5]),
    .LI(\xvga1/Mcount_hcount_cy<6>_rt_3745 ),
    .O(\xvga1/Result [6])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<6>  (
    .CI(\xvga1/Mcount_hcount_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<6>_rt_3745 ),
    .O(\xvga1/Mcount_hcount_cy [6])
  );
  XORCY   \xvga1/Mcount_hcount_xor<5>  (
    .CI(\xvga1/Mcount_hcount_cy [4]),
    .LI(\xvga1/Mcount_hcount_cy<5>_rt_3743 ),
    .O(\xvga1/Result [5])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<5>  (
    .CI(\xvga1/Mcount_hcount_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<5>_rt_3743 ),
    .O(\xvga1/Mcount_hcount_cy [5])
  );
  XORCY   \xvga1/Mcount_hcount_xor<4>  (
    .CI(\xvga1/Mcount_hcount_cy [3]),
    .LI(\xvga1/Mcount_hcount_cy<4>_rt_3741 ),
    .O(\xvga1/Result [4])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<4>  (
    .CI(\xvga1/Mcount_hcount_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<4>_rt_3741 ),
    .O(\xvga1/Mcount_hcount_cy [4])
  );
  XORCY   \xvga1/Mcount_hcount_xor<3>  (
    .CI(\xvga1/Mcount_hcount_cy [2]),
    .LI(\xvga1/Mcount_hcount_cy<3>_rt_3739 ),
    .O(\xvga1/Result [3])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<3>  (
    .CI(\xvga1/Mcount_hcount_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<3>_rt_3739 ),
    .O(\xvga1/Mcount_hcount_cy [3])
  );
  XORCY   \xvga1/Mcount_hcount_xor<2>  (
    .CI(\xvga1/Mcount_hcount_cy [1]),
    .LI(\xvga1/Mcount_hcount_cy<2>_rt_3737 ),
    .O(\xvga1/Result [2])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<2>  (
    .CI(\xvga1/Mcount_hcount_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<2>_rt_3737 ),
    .O(\xvga1/Mcount_hcount_cy [2])
  );
  XORCY   \xvga1/Mcount_hcount_xor<1>  (
    .CI(\xvga1/Mcount_hcount_cy [0]),
    .LI(\xvga1/Mcount_hcount_cy<1>_rt_3735 ),
    .O(\xvga1/Result [1])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<1>  (
    .CI(\xvga1/Mcount_hcount_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/Mcount_hcount_cy<1>_rt_3735 ),
    .O(\xvga1/Mcount_hcount_cy [1])
  );
  XORCY   \xvga1/Mcount_hcount_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\xvga1/Mcount_hcount_lut [0]),
    .O(\xvga1/Result [0])
  );
  MUXCY   \xvga1/Mcount_hcount_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\xvga1/Mcount_hcount_lut [0]),
    .O(\xvga1/Mcount_hcount_cy [0])
  );
  FDRE   \xvga1/vcount_9  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<9>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [9])
  );
  FDRE   \xvga1/vcount_8  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<8>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [8])
  );
  FDRE   \xvga1/vcount_7  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<7>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [7])
  );
  FDRE   \xvga1/vcount_6  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<6>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [6])
  );
  FDRE   \xvga1/vcount_5  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<5>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [5])
  );
  FDRE   \xvga1/vcount_4  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<4>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [4])
  );
  FDRE   \xvga1/vcount_3  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<3>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [3])
  );
  FDRE   \xvga1/vcount_2  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<2>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [2])
  );
  FDRE   \xvga1/vcount_1  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<1>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [1])
  );
  FDRE   \xvga1/vcount_0  (
    .C(clock_65mhz),
    .CE(\xvga1/hreset ),
    .D(\xvga1/Result<0>1 ),
    .R(\xvga1/vcount_and0000 ),
    .Q(\xvga1/vcount [0])
  );
  FDR   \xvga1/hcount_10  (
    .C(clock_65mhz),
    .D(\xvga1/Result [10]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [10])
  );
  FDR   \xvga1/hcount_9  (
    .C(clock_65mhz),
    .D(\xvga1/Result [9]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [9])
  );
  FDR   \xvga1/hcount_8  (
    .C(clock_65mhz),
    .D(\xvga1/Result [8]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [8])
  );
  FDR   \xvga1/hcount_7  (
    .C(clock_65mhz),
    .D(\xvga1/Result [7]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [7])
  );
  FDR   \xvga1/hcount_6  (
    .C(clock_65mhz),
    .D(\xvga1/Result [6]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [6])
  );
  FDR   \xvga1/hcount_5  (
    .C(clock_65mhz),
    .D(\xvga1/Result [5]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [5])
  );
  FDR   \xvga1/hcount_4  (
    .C(clock_65mhz),
    .D(\xvga1/Result [4]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [4])
  );
  FDR   \xvga1/hcount_3  (
    .C(clock_65mhz),
    .D(\xvga1/Result [3]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [3])
  );
  FDR   \xvga1/hcount_2  (
    .C(clock_65mhz),
    .D(\xvga1/Result [2]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [2])
  );
  FDR   \xvga1/hcount_1  (
    .C(clock_65mhz),
    .D(\xvga1/Result [1]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [1])
  );
  FDR   \xvga1/hcount_0  (
    .C(clock_65mhz),
    .D(\xvga1/Result [0]),
    .R(\xvga1/hreset ),
    .Q(\xvga1/hcount [0])
  );
  FDRE   \xvga1/vsync  (
    .C(clock_65mhz),
    .CE(\xvga1/vsyncoff ),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vsyncon ),
    .Q(\xvga1/vsync_3839 )
  );
  FD   \xvga1/vblank  (
    .C(clock_65mhz),
    .D(\xvga1/next_vblank ),
    .Q(\xvga1/vblank_3826 )
  );
  FDRE   \xvga1/hsync  (
    .C(clock_65mhz),
    .CE(\xvga1/hsyncoff ),
    .D(led_5_OBUF_3517),
    .R(\xvga1/hsyncon ),
    .Q(\xvga1/hsync_3817 )
  );
  FD   \xvga1/hblank  (
    .C(clock_65mhz),
    .D(\xvga1/blank_or00001 ),
    .Q(\xvga1/hblank_3804 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/cmds/command_6  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_cmp_eq0006 ),
    .Q(\a/cmds/command[6] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/cmds/command_11  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/N8 ),
    .Q(\a/cmds/command[11] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/cmds/command_17  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000[6] ),
    .Q(\a/cmds/command[17] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/cmds/command_19  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000[4] ),
    .Q(\a/cmds/command[19] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/cmds/command_23  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_or0001 ),
    .Q(\a/cmds/command[23] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/cmds/command_valid  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/cmds/command_valid_not0001_inv ),
    .D(led_5_OBUF_3517),
    .Q(\a/cmds/command_valid_542 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/cmds/state_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(ready),
    .D(\a/cmds/Result [0]),
    .Q(\a/cmds/state [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/cmds/state_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(ready),
    .D(\a/cmds/Result [1]),
    .Q(\a/cmds/state [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/cmds/state_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(ready),
    .D(\a/cmds/Result [2]),
    .Q(\a/cmds/state [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/cmds/state_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(ready),
    .D(\a/cmds/Result [3]),
    .Q(\a/cmds/state [3])
  );
  FDE   \a/ac97/l_cmd_addr_13  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[17] ),
    .Q(\a/ac97/l_cmd_addr[13] )
  );
  FDE   \a/ac97/l_cmd_addr_14  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[18] ),
    .Q(\a/ac97/l_cmd_addr[14] )
  );
  FDE   \a/ac97/l_cmd_addr_15  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[19] ),
    .Q(\a/ac97/l_cmd_addr[15] )
  );
  FDE   \a/ac97/l_cmd_addr_16  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[20] ),
    .Q(\a/ac97/l_cmd_addr[16] )
  );
  FDE   \a/ac97/l_cmd_addr_17  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[21] ),
    .Q(\a/ac97/l_cmd_addr[17] )
  );
  FDE   \a/ac97/l_cmd_addr_19  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[23] ),
    .Q(\a/ac97/l_cmd_addr[19] )
  );
  FDE   \a/ac97/l_cmd_data_4  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[0] ),
    .Q(\a/ac97/l_cmd_data[4] )
  );
  FDE   \a/ac97/l_cmd_data_5  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[1] ),
    .Q(\a/ac97/l_cmd_data[5] )
  );
  FDE   \a/ac97/l_cmd_data_6  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[2] ),
    .Q(\a/ac97/l_cmd_data[6] )
  );
  FDE   \a/ac97/l_cmd_data_7  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[3] ),
    .Q(\a/ac97/l_cmd_data[7] )
  );
  FDE   \a/ac97/l_cmd_data_8  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[4] ),
    .Q(\a/ac97/l_cmd_data[8] )
  );
  FDE   \a/ac97/l_cmd_data_10  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[6] ),
    .Q(\a/ac97/l_cmd_data[10] )
  );
  FDE   \a/ac97/l_cmd_data_15  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[11] ),
    .Q(\a/ac97/l_cmd_data[15] )
  );
  FDE   \a/ac97/l_cmd_data_19  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command[15] ),
    .Q(\a/ac97/l_cmd_data[19] )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/ac97/l_cmd_v  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/cmds/command_valid_542 ),
    .Q(\a/ac97/l_cmd_v_439 )
  );
  FDE   \a/ac97/l_right_data_4  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(\a/out_data [0]),
    .Q(\a/ac97/l_right_data [4])
  );
  FDE   \a/ac97/l_left_data_0  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [0]),
    .Q(\a/ac97/l_left_data [0])
  );
  FDE   \a/ac97/l_left_data_1  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [1]),
    .Q(\a/ac97/l_left_data [1])
  );
  FDE   \a/ac97/l_left_data_2  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [2]),
    .Q(\a/ac97/l_left_data [2])
  );
  FDE   \a/ac97/l_left_data_3  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [3]),
    .Q(\a/ac97/l_left_data [3])
  );
  FDE   \a/ac97/l_left_data_4  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [4]),
    .Q(\a/ac97/l_left_data [4])
  );
  FDE   \a/ac97/l_left_data_5  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [5]),
    .Q(\a/ac97/l_left_data [5])
  );
  FDE   \a/ac97/l_left_data_6  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [6]),
    .Q(\a/ac97/l_left_data [6])
  );
  FDE   \a/ac97/l_left_data_7  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [7]),
    .Q(\a/ac97/l_left_data [7])
  );
  FDE   \a/ac97/l_left_data_8  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [8]),
    .Q(\a/ac97/l_left_data [8])
  );
  FDE   \a/ac97/l_left_data_9  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [9]),
    .Q(\a/ac97/l_left_data [9])
  );
  FDE   \a/ac97/l_left_data_10  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [10]),
    .Q(\a/ac97/l_left_data [10])
  );
  FDE   \a/ac97/l_left_data_11  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [11]),
    .Q(\a/ac97/l_left_data [11])
  );
  FDE   \a/ac97/l_left_data_12  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [12]),
    .Q(\a/ac97/l_left_data [12])
  );
  FDE   \a/ac97/l_left_data_13  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [13]),
    .Q(\a/ac97/l_left_data [13])
  );
  FDE   \a/ac97/l_left_data_14  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [14]),
    .Q(\a/ac97/l_left_data [14])
  );
  FDE   \a/ac97/l_left_data_15  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [15]),
    .Q(\a/ac97/l_left_data [15])
  );
  FDE   \a/ac97/l_left_data_16  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [16]),
    .Q(\a/ac97/l_left_data [16])
  );
  FDE   \a/ac97/l_left_data_17  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [17]),
    .Q(\a/ac97/l_left_data [17])
  );
  FDE   \a/ac97/l_left_data_18  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [18]),
    .Q(\a/ac97/l_left_data [18])
  );
  FDE   \a/ac97/l_left_data_19  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_left_data_not0001 ),
    .D(\a/ac97/l_left_data_mux0000 [19]),
    .Q(\a/ac97/l_left_data [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \a/ac97/l_left_v  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .D(led_5_OBUF_3517),
    .Q(\a/ac97/l_left_v_488 )
  );
  FDE_1   \a/ac97/left_in_data_0  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/left_in_data_and0000 ),
    .D(ac97_sdata_in_IBUF_1108),
    .Q(\a/ac97/left_in_data[0] )
  );
  FD   \a/ac97/bit_count_0  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [0]),
    .Q(\a/ac97/bit_count [0])
  );
  FD   \a/ac97/bit_count_1  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [1]),
    .Q(\a/ac97/bit_count [1])
  );
  FD   \a/ac97/bit_count_2  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [2]),
    .Q(\a/ac97/bit_count [2])
  );
  FD   \a/ac97/bit_count_3  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [3]),
    .Q(\a/ac97/bit_count [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/ac97/bit_count_4  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [4]),
    .Q(\a/ac97/bit_count [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/ac97/bit_count_5  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [5]),
    .Q(\a/ac97/bit_count [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/ac97/bit_count_6  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [6]),
    .Q(\a/ac97/bit_count [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \a/ac97/bit_count_7  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/Result [7]),
    .Q(\a/ac97/bit_count [7])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\a/ac97/Mcount_bit_count_lut<0>1 ),
    .O(\a/ac97/Mcount_bit_count_cy [0])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\a/ac97/Mcount_bit_count_lut<0>1 ),
    .O(\a/ac97/Result [0])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<1>  (
    .CI(\a/ac97/Mcount_bit_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<1>_rt_344 ),
    .O(\a/ac97/Mcount_bit_count_cy [1])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<1>  (
    .CI(\a/ac97/Mcount_bit_count_cy [0]),
    .LI(\a/ac97/Mcount_bit_count_cy<1>_rt_344 ),
    .O(\a/ac97/Result [1])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<2>  (
    .CI(\a/ac97/Mcount_bit_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<2>_rt_346 ),
    .O(\a/ac97/Mcount_bit_count_cy [2])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<2>  (
    .CI(\a/ac97/Mcount_bit_count_cy [1]),
    .LI(\a/ac97/Mcount_bit_count_cy<2>_rt_346 ),
    .O(\a/ac97/Result [2])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<3>  (
    .CI(\a/ac97/Mcount_bit_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<3>_rt_348 ),
    .O(\a/ac97/Mcount_bit_count_cy [3])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<3>  (
    .CI(\a/ac97/Mcount_bit_count_cy [2]),
    .LI(\a/ac97/Mcount_bit_count_cy<3>_rt_348 ),
    .O(\a/ac97/Result [3])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<4>  (
    .CI(\a/ac97/Mcount_bit_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<4>_rt_350 ),
    .O(\a/ac97/Mcount_bit_count_cy [4])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<4>  (
    .CI(\a/ac97/Mcount_bit_count_cy [3]),
    .LI(\a/ac97/Mcount_bit_count_cy<4>_rt_350 ),
    .O(\a/ac97/Result [4])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<5>  (
    .CI(\a/ac97/Mcount_bit_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<5>_rt_352 ),
    .O(\a/ac97/Mcount_bit_count_cy [5])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<5>  (
    .CI(\a/ac97/Mcount_bit_count_cy [4]),
    .LI(\a/ac97/Mcount_bit_count_cy<5>_rt_352 ),
    .O(\a/ac97/Result [5])
  );
  MUXCY   \a/ac97/Mcount_bit_count_cy<6>  (
    .CI(\a/ac97/Mcount_bit_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_cy<6>_rt_354 ),
    .O(\a/ac97/Mcount_bit_count_cy [6])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<6>  (
    .CI(\a/ac97/Mcount_bit_count_cy [5]),
    .LI(\a/ac97/Mcount_bit_count_cy<6>_rt_354 ),
    .O(\a/ac97/Result [6])
  );
  XORCY   \a/ac97/Mcount_bit_count_xor<7>  (
    .CI(\a/ac97/Mcount_bit_count_cy [6]),
    .LI(\a/ac97/Mcount_bit_count_xor<7>_rt_357 ),
    .O(\a/ac97/Result [7])
  );
  MUXF7   \a/ac97/Mmux__varindex0002_5_f7  (
    .I0(\a/ac97/Mmux__varindex0002_7_f6_386 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/COND_23_not0000[1] ),
    .O(\a/ac97/Mmux__varindex0002_5_f7_385 )
  );
  MUXF6   \a/ac97/Mmux__varindex0002_7_f6  (
    .I0(\a/ac97/Mmux__varindex0002_9_f5_387 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/Mcount_bit_count_lut [0]),
    .O(\a/ac97/Mmux__varindex0002_7_f6_386 )
  );
  MUXF5   \a/ac97/Mmux__varindex0002_9_f5  (
    .I0(\a/ac97/Mmux__varindex0002_11_384 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/ac97/COND_23_not0000[3] ),
    .O(\a/ac97/Mmux__varindex0002_9_f5_387 )
  );
  MUXF6   \a/ac97/Mmux__varindex0000_5_f6  (
    .I0(\a/ac97/Mmux__varindex0000_7_f5_364 ),
    .I1(\a/ac97/Mmux__varindex0000_6_f5_359 ),
    .S(\a/ac97/COND_23_not0000[1] ),
    .O(\a/ac97/Mmux__varindex0000_5_f6_358 )
  );
  MUXF5   \a/ac97/Mmux__varindex0000_7_f5  (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(\a/ac97/Mmux__varindex0000_81_366 ),
    .S(\a/ac97/Mcount_bit_count_lut [0]),
    .O(\a/ac97/Mmux__varindex0000_7_f5_364 )
  );
  MUXF5   \a/ac97/Mmux__varindex0000_6_f5  (
    .I0(\a/ac97/Mmux__varindex0000_8_365 ),
    .I1(\a/ac97/Mmux__varindex0000_7_363 ),
    .S(\a/ac97/Mcount_bit_count_lut [0]),
    .O(\a/ac97/Mmux__varindex0000_6_f5_359 )
  );
  MUXF7   \a/ac97/Mmux__varindex0001_5_f7  (
    .I0(\a/ac97/Mmux__varindex0001_7_f6_376 ),
    .I1(\a/ac97/Mmux__varindex0001_6_f6_374 ),
    .S(\a/ac97/COND_23_not0000[1] ),
    .O(\a/ac97/Mmux__varindex0001_5_f7_372 )
  );
  MUXF6   \a/ac97/Mmux__varindex0001_7_f6  (
    .I0(\a/ac97/Mmux__varindex0001_9_f5_383 ),
    .I1(\a/ac97/Mmux__varindex0001_8_f51 ),
    .S(\a/ac97/Mcount_bit_count_lut [0]),
    .O(\a/ac97/Mmux__varindex0001_7_f6_376 )
  );
  MUXF5   \a/ac97/Mmux__varindex0001_9_f5  (
    .I0(\a/ac97/Mmux__varindex0001_11_371 ),
    .I1(\a/ac97/Mmux__varindex0001_102_370 ),
    .S(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0001_9_f5_383 )
  );
  MUXF5   \a/ac97/Mmux__varindex0001_8_f5_0  (
    .I0(\a/ac97/Mmux__varindex0001_101_369 ),
    .I1(\a/ac97/Mmux__varindex0001_92_382 ),
    .S(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0001_8_f51 )
  );
  MUXF6   \a/ac97/Mmux__varindex0001_6_f6  (
    .I0(\a/ac97/Mmux__varindex0001_8_f5_378 ),
    .I1(\a/ac97/Mmux__varindex0001_7_f5_375 ),
    .S(\a/ac97/Mcount_bit_count_lut [0]),
    .O(\a/ac97/Mmux__varindex0001_6_f6_374 )
  );
  MUXF5   \a/ac97/Mmux__varindex0001_8_f5  (
    .I0(\a/ac97/Mmux__varindex0001_10_368 ),
    .I1(\a/ac97/Mmux__varindex0001_91_381 ),
    .S(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0001_8_f5_378 )
  );
  MUXF5   \a/ac97/Mmux__varindex0001_7_f5  (
    .I0(\a/ac97/Mmux__varindex0001_9_380 ),
    .I1(\a/ac97/Mmux__varindex0001_8_377 ),
    .S(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0001_7_f5_375 )
  );
  XORCY   \a/Mcount_reset_count_xor<9>  (
    .CI(\a/Mcount_reset_count_cy [8]),
    .LI(\a/Mcount_reset_count_xor<9>_rt_328 ),
    .O(\a/Result [9])
  );
  XORCY   \a/Mcount_reset_count_xor<8>  (
    .CI(\a/Mcount_reset_count_cy [7]),
    .LI(\a/Mcount_reset_count_cy<8>_rt_326 ),
    .O(\a/Result [8])
  );
  MUXCY   \a/Mcount_reset_count_cy<8>  (
    .CI(\a/Mcount_reset_count_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<8>_rt_326 ),
    .O(\a/Mcount_reset_count_cy [8])
  );
  XORCY   \a/Mcount_reset_count_xor<7>  (
    .CI(\a/Mcount_reset_count_cy [6]),
    .LI(\a/Mcount_reset_count_cy<7>_rt_324 ),
    .O(\a/Result [7])
  );
  MUXCY   \a/Mcount_reset_count_cy<7>  (
    .CI(\a/Mcount_reset_count_cy [6]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<7>_rt_324 ),
    .O(\a/Mcount_reset_count_cy [7])
  );
  XORCY   \a/Mcount_reset_count_xor<6>  (
    .CI(\a/Mcount_reset_count_cy [5]),
    .LI(\a/Mcount_reset_count_cy<6>_rt_322 ),
    .O(\a/Result [6])
  );
  MUXCY   \a/Mcount_reset_count_cy<6>  (
    .CI(\a/Mcount_reset_count_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<6>_rt_322 ),
    .O(\a/Mcount_reset_count_cy [6])
  );
  XORCY   \a/Mcount_reset_count_xor<5>  (
    .CI(\a/Mcount_reset_count_cy [4]),
    .LI(\a/Mcount_reset_count_cy<5>_rt_320 ),
    .O(\a/Result [5])
  );
  MUXCY   \a/Mcount_reset_count_cy<5>  (
    .CI(\a/Mcount_reset_count_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<5>_rt_320 ),
    .O(\a/Mcount_reset_count_cy [5])
  );
  XORCY   \a/Mcount_reset_count_xor<4>  (
    .CI(\a/Mcount_reset_count_cy [3]),
    .LI(\a/Mcount_reset_count_cy<4>_rt_318 ),
    .O(\a/Result [4])
  );
  MUXCY   \a/Mcount_reset_count_cy<4>  (
    .CI(\a/Mcount_reset_count_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<4>_rt_318 ),
    .O(\a/Mcount_reset_count_cy [4])
  );
  XORCY   \a/Mcount_reset_count_xor<3>  (
    .CI(\a/Mcount_reset_count_cy [2]),
    .LI(\a/Mcount_reset_count_cy<3>_rt_316 ),
    .O(\a/Result [3])
  );
  MUXCY   \a/Mcount_reset_count_cy<3>  (
    .CI(\a/Mcount_reset_count_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<3>_rt_316 ),
    .O(\a/Mcount_reset_count_cy [3])
  );
  XORCY   \a/Mcount_reset_count_xor<2>  (
    .CI(\a/Mcount_reset_count_cy [1]),
    .LI(\a/Mcount_reset_count_cy<2>_rt_314 ),
    .O(\a/Result [2])
  );
  MUXCY   \a/Mcount_reset_count_cy<2>  (
    .CI(\a/Mcount_reset_count_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<2>_rt_314 ),
    .O(\a/Mcount_reset_count_cy [2])
  );
  XORCY   \a/Mcount_reset_count_xor<1>  (
    .CI(\a/Mcount_reset_count_cy [0]),
    .LI(\a/Mcount_reset_count_cy<1>_rt_312 ),
    .O(\a/Result [1])
  );
  MUXCY   \a/Mcount_reset_count_cy<1>  (
    .CI(\a/Mcount_reset_count_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\a/Mcount_reset_count_cy<1>_rt_312 ),
    .O(\a/Mcount_reset_count_cy [1])
  );
  XORCY   \a/Mcount_reset_count_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\a/Mcount_reset_count_lut [0]),
    .O(\a/Result [0])
  );
  MUXCY   \a/Mcount_reset_count_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(led_5_OBUF_3517),
    .S(\a/Mcount_reset_count_lut [0]),
    .O(\a/Mcount_reset_count_cy [0])
  );
  FDRE   \a/reset_count_9  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [9]),
    .R(reset),
    .Q(\a/reset_count [9])
  );
  FDRE   \a/reset_count_8  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [8]),
    .R(reset),
    .Q(\a/reset_count [8])
  );
  FDRE   \a/reset_count_7  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [7]),
    .R(reset),
    .Q(\a/reset_count [7])
  );
  FDRE   \a/reset_count_6  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [6]),
    .R(reset),
    .Q(\a/reset_count [6])
  );
  FDRE   \a/reset_count_5  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [5]),
    .R(reset),
    .Q(\a/reset_count [5])
  );
  FDRE   \a/reset_count_4  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [4]),
    .R(reset),
    .Q(\a/reset_count [4])
  );
  FDRE   \a/reset_count_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [3]),
    .R(reset),
    .Q(\a/reset_count [3])
  );
  FDRE   \a/reset_count_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [2]),
    .R(reset),
    .Q(\a/reset_count [2])
  );
  FDRE   \a/reset_count_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [1]),
    .R(reset),
    .Q(\a/reset_count [1])
  );
  FDRE   \a/reset_count_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000_inv ),
    .D(\a/Result [0]),
    .R(reset),
    .Q(\a/reset_count [0])
  );
  FD   \a/ready_sync_2  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/ready_sync [1]),
    .Q(\a/ready_sync [2])
  );
  FDE   \a/out_data_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(ready),
    .D(\a/ac97/left_in_data[4] ),
    .Q(\a/out_data [0])
  );
  FDRE   \a/audio_reset_b  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a/audio_reset_b_cmp_eq0000 ),
    .D(led_5_OBUF_3517),
    .R(reset),
    .Q(\a/audio_reset_b_504 )
  );
  FDE   \a1/sqmag/busy  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/busy_not0001 ),
    .D(\a1/sqrt_done ),
    .Q(\a1/sqmag/busy_1023 )
  );
  FDE   \a1/sqmag/bit_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/bit_not0001 ),
    .D(\a1/sqmag/bit_mux0000 [0]),
    .Q(\a1/sqmag/bit [0])
  );
  FDE   \a1/sqmag/bit_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/bit_not0001 ),
    .D(\a1/sqmag/bit_mux0000 [1]),
    .Q(\a1/sqmag/bit [1])
  );
  FDE   \a1/sqmag/bit_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/bit_not0001 ),
    .D(\a1/sqmag/bit_mux0000 [2]),
    .Q(\a1/sqmag/bit [2])
  );
  FDE   \a1/sqmag/bit_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/bit_not0001 ),
    .D(\a1/sqmag/bit_mux0000 [3]),
    .Q(\a1/sqmag/bit [3])
  );
  FDE   \a1/sqmag/bit_4  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/bit_not0001 ),
    .D(\a1/sqmag/bit_mux0000 [4]),
    .Q(\a1/sqmag/bit [4])
  );
  FDE   \a1/sqmag/answer_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [0]),
    .Q(\a1/sqmag/answer [0])
  );
  FDE   \a1/sqmag/answer_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [1]),
    .Q(\a1/sqmag/answer [1])
  );
  FDE   \a1/sqmag/answer_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [2]),
    .Q(\a1/sqmag/answer [2])
  );
  FDE   \a1/sqmag/answer_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [3]),
    .Q(\a1/sqmag/answer [3])
  );
  FDE   \a1/sqmag/answer_4  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [4]),
    .Q(\a1/sqmag/answer [4])
  );
  FDE   \a1/sqmag/answer_5  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [5]),
    .Q(\a1/sqmag/answer [5])
  );
  FDE   \a1/sqmag/answer_6  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [6]),
    .Q(\a1/sqmag/answer [6])
  );
  FDE   \a1/sqmag/answer_7  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [7]),
    .Q(\a1/sqmag/answer [7])
  );
  FDE   \a1/sqmag/answer_8  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [8]),
    .Q(\a1/sqmag/answer [8])
  );
  FDE   \a1/sqmag/answer_9  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [9]),
    .Q(\a1/sqmag/answer [9])
  );
  FDE   \a1/sqmag/answer_10  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [10]),
    .Q(\a1/sqmag/answer [10])
  );
  FDE   \a1/sqmag/answer_11  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [11]),
    .Q(\a1/sqmag/answer [11])
  );
  FDE   \a1/sqmag/answer_12  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [12]),
    .Q(\a1/sqmag/answer [12])
  );
  FDE   \a1/sqmag/answer_13  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/sqmag/answer_not0001 ),
    .D(\a1/sqmag/answer_mux0000 [13]),
    .Q(\a1/sqmag/answer [13])
  );
  MULT18X18   \a1/sqmag/Mmult_answer_mult0000  (
    .A({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a1/sqmag/trial [13], \a1/sqmag/trial [12], \a1/sqmag/trial [11], \a1/sqmag/trial [10], \a1/sqmag/trial [9], \a1/sqmag/trial [8], \a1/sqmag/trial [7]
, \a1/sqmag/trial [6], \a1/sqmag/trial [5], \a1/sqmag/trial [4], \a1/sqmag/trial [3], \a1/sqmag/trial [2], \a1/sqmag/trial [1], \a1/sqmag/trial [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a1/sqmag/trial [13], \a1/sqmag/trial [12], \a1/sqmag/trial [11], \a1/sqmag/trial [10], \a1/sqmag/trial [9], \a1/sqmag/trial [8], \a1/sqmag/trial [7]
, \a1/sqmag/trial [6], \a1/sqmag/trial [5], \a1/sqmag/trial [4], \a1/sqmag/trial [3], \a1/sqmag/trial [2], \a1/sqmag/trial [1], \a1/sqmag/trial [0]}),
    .P({\NLW_a1/sqmag/Mmult_answer_mult0000_P<35>_UNCONNECTED , \NLW_a1/sqmag/Mmult_answer_mult0000_P<34>_UNCONNECTED , 
\NLW_a1/sqmag/Mmult_answer_mult0000_P<33>_UNCONNECTED , \NLW_a1/sqmag/Mmult_answer_mult0000_P<32>_UNCONNECTED , 
\NLW_a1/sqmag/Mmult_answer_mult0000_P<31>_UNCONNECTED , \NLW_a1/sqmag/Mmult_answer_mult0000_P<30>_UNCONNECTED , 
\NLW_a1/sqmag/Mmult_answer_mult0000_P<29>_UNCONNECTED , \NLW_a1/sqmag/Mmult_answer_mult0000_P<28>_UNCONNECTED , \a1/sqmag/answer_mult0000 [27], 
\a1/sqmag/answer_mult0000 [26], \a1/sqmag/answer_mult0000 [25], \a1/sqmag/answer_mult0000 [24], \a1/sqmag/answer_mult0000 [23], 
\a1/sqmag/answer_mult0000 [22], \a1/sqmag/answer_mult0000 [21], \a1/sqmag/answer_mult0000 [20], \a1/sqmag/answer_mult0000 [19], 
\a1/sqmag/answer_mult0000 [18], \a1/sqmag/answer_mult0000 [17], \a1/sqmag/answer_mult0000 [16], \a1/sqmag/answer_mult0000 [15], 
\a1/sqmag/answer_mult0000 [14], \a1/sqmag/answer_mult0000 [13], \a1/sqmag/answer_mult0000 [12], \a1/sqmag/answer_mult0000 [11], 
\a1/sqmag/answer_mult0000 [10], \a1/sqmag/answer_mult0000 [9], \a1/sqmag/answer_mult0000 [8], \a1/sqmag/answer_mult0000 [7], 
\a1/sqmag/answer_mult0000 [6], \a1/sqmag/answer_mult0000 [5], \a1/sqmag/answer_mult0000 [4], \a1/sqmag/answer_mult0000 [3], 
\a1/sqmag/answer_mult0000 [2], \a1/sqmag/answer_mult0000 [1], \a1/sqmag/answer_mult0000 [0]})
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<0>  (
    .I0(\a1/mag2 [0]),
    .I1(\a1/sqmag/answer_mult0000 [0]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [0])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a1/mag2 [0]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [0]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<1>  (
    .I0(\a1/mag2 [1]),
    .I1(\a1/sqmag/answer_mult0000 [1]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [1])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<1>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [0]),
    .DI(\a1/mag2 [1]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [1]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<2>  (
    .I0(\a1/mag2 [2]),
    .I1(\a1/sqmag/answer_mult0000 [2]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [2])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<2>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [1]),
    .DI(\a1/mag2 [2]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [2]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<3>  (
    .I0(\a1/mag2 [3]),
    .I1(\a1/sqmag/answer_mult0000 [3]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [3])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<3>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [2]),
    .DI(\a1/mag2 [3]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [3]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<4>  (
    .I0(\a1/mag2 [4]),
    .I1(\a1/sqmag/answer_mult0000 [4]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [4])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<4>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [3]),
    .DI(\a1/mag2 [4]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [4]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<5>  (
    .I0(\a1/mag2 [5]),
    .I1(\a1/sqmag/answer_mult0000 [5]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [5])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<5>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [4]),
    .DI(\a1/mag2 [5]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [5]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<6>  (
    .I0(\a1/mag2 [6]),
    .I1(\a1/sqmag/answer_mult0000 [6]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [6])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<6>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [5]),
    .DI(\a1/mag2 [6]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [6]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<7>  (
    .I0(\a1/mag2 [7]),
    .I1(\a1/sqmag/answer_mult0000 [7]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [7])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<7>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [6]),
    .DI(\a1/mag2 [7]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [7]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<8>  (
    .I0(\a1/mag2 [8]),
    .I1(\a1/sqmag/answer_mult0000 [8]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [8])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<8>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [7]),
    .DI(\a1/mag2 [8]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [8]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<9>  (
    .I0(\a1/mag2 [9]),
    .I1(\a1/sqmag/answer_mult0000 [9]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [9])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<9>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [8]),
    .DI(\a1/mag2 [9]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [9]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<10>  (
    .I0(\a1/mag2 [10]),
    .I1(\a1/sqmag/answer_mult0000 [10]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [10])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<10>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [9]),
    .DI(\a1/mag2 [10]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [10]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<11>  (
    .I0(\a1/mag2 [11]),
    .I1(\a1/sqmag/answer_mult0000 [11]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [11])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<11>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [10]),
    .DI(\a1/mag2 [11]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [11]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<12>  (
    .I0(\a1/mag2 [12]),
    .I1(\a1/sqmag/answer_mult0000 [12]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [12])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<12>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [11]),
    .DI(\a1/mag2 [12]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [12]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<13>  (
    .I0(\a1/mag2 [13]),
    .I1(\a1/sqmag/answer_mult0000 [13]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [13])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<13>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [12]),
    .DI(\a1/mag2 [13]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [13]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<14>  (
    .I0(\a1/mag2 [14]),
    .I1(\a1/sqmag/answer_mult0000 [14]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [14])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<14>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [13]),
    .DI(\a1/mag2 [14]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [14]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<15>  (
    .I0(\a1/mag2 [15]),
    .I1(\a1/sqmag/answer_mult0000 [15]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [15])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<15>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [14]),
    .DI(\a1/mag2 [15]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [15]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<16>  (
    .I0(\a1/mag2 [16]),
    .I1(\a1/sqmag/answer_mult0000 [16]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [16])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<16>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [15]),
    .DI(\a1/mag2 [16]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [16]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<17>  (
    .I0(\a1/mag2 [17]),
    .I1(\a1/sqmag/answer_mult0000 [17]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [17])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<17>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [16]),
    .DI(\a1/mag2 [17]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [17]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<18>  (
    .I0(\a1/mag2 [18]),
    .I1(\a1/sqmag/answer_mult0000 [18]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [18])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<18>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [17]),
    .DI(\a1/mag2 [18]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [18]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<19>  (
    .I0(\a1/mag2 [19]),
    .I1(\a1/sqmag/answer_mult0000 [19]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [19])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<19>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [18]),
    .DI(\a1/mag2 [19]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [19]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<20>  (
    .I0(\a1/mag2 [20]),
    .I1(\a1/sqmag/answer_mult0000 [20]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [20])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<20>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [19]),
    .DI(\a1/mag2 [20]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [20]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<21>  (
    .I0(\a1/mag2 [21]),
    .I1(\a1/sqmag/answer_mult0000 [21]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [21])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<21>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [20]),
    .DI(\a1/mag2 [21]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [21]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<22>  (
    .I0(\a1/mag2 [22]),
    .I1(\a1/sqmag/answer_mult0000 [22]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [22])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<22>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [21]),
    .DI(\a1/mag2 [22]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [22]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<23>  (
    .I0(\a1/mag2 [23]),
    .I1(\a1/sqmag/answer_mult0000 [23]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [23])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<23>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [22]),
    .DI(\a1/mag2 [23]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [23]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<24>  (
    .I0(\a1/mag2 [24]),
    .I1(\a1/sqmag/answer_mult0000 [24]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [24])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<24>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [23]),
    .DI(\a1/mag2 [24]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [24]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<25>  (
    .I0(\a1/mag2 [25]),
    .I1(\a1/sqmag/answer_mult0000 [25]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [25])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<25>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [24]),
    .DI(\a1/mag2 [25]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [25]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<26>  (
    .I0(\a1/mag2 [26]),
    .I1(\a1/sqmag/answer_mult0000 [26]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [26])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<26>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [25]),
    .DI(\a1/mag2 [26]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [26]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \a1/sqmag/Mcompar_answer_cmp_gt0000_lut<27>  (
    .I0(\a1/mag2 [27]),
    .I1(\a1/sqmag/answer_mult0000 [27]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [27])
  );
  MUXCY   \a1/sqmag/Mcompar_answer_cmp_gt0000_cy<27>  (
    .CI(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [26]),
    .DI(\a1/mag2 [27]),
    .S(\a1/sqmag/Mcompar_answer_cmp_gt0000_lut [27]),
    .O(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [27])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<27>  (
    .CI(\a1/Madd_mag2_add0000_cy [26]),
    .LI(\a1/Madd_mag2_add0000_lut [27]),
    .O(\a1/mag2_add0000 [27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<27>  (
    .I0(\a1/rere [27]),
    .I1(\a1/imim [27]),
    .O(\a1/Madd_mag2_add0000_lut [27])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<26>  (
    .CI(\a1/Madd_mag2_add0000_cy [25]),
    .LI(\a1/Madd_mag2_add0000_lut [26]),
    .O(\a1/mag2_add0000 [26])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<26>  (
    .CI(\a1/Madd_mag2_add0000_cy [25]),
    .DI(\a1/rere [26]),
    .S(\a1/Madd_mag2_add0000_lut [26]),
    .O(\a1/Madd_mag2_add0000_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<26>  (
    .I0(\a1/rere [26]),
    .I1(\a1/imim [26]),
    .O(\a1/Madd_mag2_add0000_lut [26])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<25>  (
    .CI(\a1/Madd_mag2_add0000_cy [24]),
    .LI(\a1/Madd_mag2_add0000_lut [25]),
    .O(\a1/mag2_add0000 [25])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<25>  (
    .CI(\a1/Madd_mag2_add0000_cy [24]),
    .DI(\a1/rere [25]),
    .S(\a1/Madd_mag2_add0000_lut [25]),
    .O(\a1/Madd_mag2_add0000_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<25>  (
    .I0(\a1/rere [25]),
    .I1(\a1/imim [25]),
    .O(\a1/Madd_mag2_add0000_lut [25])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<24>  (
    .CI(\a1/Madd_mag2_add0000_cy [23]),
    .LI(\a1/Madd_mag2_add0000_lut [24]),
    .O(\a1/mag2_add0000 [24])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<24>  (
    .CI(\a1/Madd_mag2_add0000_cy [23]),
    .DI(\a1/rere [24]),
    .S(\a1/Madd_mag2_add0000_lut [24]),
    .O(\a1/Madd_mag2_add0000_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<24>  (
    .I0(\a1/rere [24]),
    .I1(\a1/imim [24]),
    .O(\a1/Madd_mag2_add0000_lut [24])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<23>  (
    .CI(\a1/Madd_mag2_add0000_cy [22]),
    .LI(\a1/Madd_mag2_add0000_lut [23]),
    .O(\a1/mag2_add0000 [23])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<23>  (
    .CI(\a1/Madd_mag2_add0000_cy [22]),
    .DI(\a1/rere [23]),
    .S(\a1/Madd_mag2_add0000_lut [23]),
    .O(\a1/Madd_mag2_add0000_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<23>  (
    .I0(\a1/rere [23]),
    .I1(\a1/imim [23]),
    .O(\a1/Madd_mag2_add0000_lut [23])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<22>  (
    .CI(\a1/Madd_mag2_add0000_cy [21]),
    .LI(\a1/Madd_mag2_add0000_lut [22]),
    .O(\a1/mag2_add0000 [22])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<22>  (
    .CI(\a1/Madd_mag2_add0000_cy [21]),
    .DI(\a1/rere [22]),
    .S(\a1/Madd_mag2_add0000_lut [22]),
    .O(\a1/Madd_mag2_add0000_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<22>  (
    .I0(\a1/rere [22]),
    .I1(\a1/imim [22]),
    .O(\a1/Madd_mag2_add0000_lut [22])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<21>  (
    .CI(\a1/Madd_mag2_add0000_cy [20]),
    .LI(\a1/Madd_mag2_add0000_lut [21]),
    .O(\a1/mag2_add0000 [21])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<21>  (
    .CI(\a1/Madd_mag2_add0000_cy [20]),
    .DI(\a1/rere [21]),
    .S(\a1/Madd_mag2_add0000_lut [21]),
    .O(\a1/Madd_mag2_add0000_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<21>  (
    .I0(\a1/rere [21]),
    .I1(\a1/imim [21]),
    .O(\a1/Madd_mag2_add0000_lut [21])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<20>  (
    .CI(\a1/Madd_mag2_add0000_cy [19]),
    .LI(\a1/Madd_mag2_add0000_lut [20]),
    .O(\a1/mag2_add0000 [20])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<20>  (
    .CI(\a1/Madd_mag2_add0000_cy [19]),
    .DI(\a1/rere [20]),
    .S(\a1/Madd_mag2_add0000_lut [20]),
    .O(\a1/Madd_mag2_add0000_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<20>  (
    .I0(\a1/rere [20]),
    .I1(\a1/imim [20]),
    .O(\a1/Madd_mag2_add0000_lut [20])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<19>  (
    .CI(\a1/Madd_mag2_add0000_cy [18]),
    .LI(\a1/Madd_mag2_add0000_lut [19]),
    .O(\a1/mag2_add0000 [19])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<19>  (
    .CI(\a1/Madd_mag2_add0000_cy [18]),
    .DI(\a1/rere [19]),
    .S(\a1/Madd_mag2_add0000_lut [19]),
    .O(\a1/Madd_mag2_add0000_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<19>  (
    .I0(\a1/rere [19]),
    .I1(\a1/imim [19]),
    .O(\a1/Madd_mag2_add0000_lut [19])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<18>  (
    .CI(\a1/Madd_mag2_add0000_cy [17]),
    .LI(\a1/Madd_mag2_add0000_lut [18]),
    .O(\a1/mag2_add0000 [18])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<18>  (
    .CI(\a1/Madd_mag2_add0000_cy [17]),
    .DI(\a1/rere [18]),
    .S(\a1/Madd_mag2_add0000_lut [18]),
    .O(\a1/Madd_mag2_add0000_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<18>  (
    .I0(\a1/rere [18]),
    .I1(\a1/imim [18]),
    .O(\a1/Madd_mag2_add0000_lut [18])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<17>  (
    .CI(\a1/Madd_mag2_add0000_cy [16]),
    .LI(\a1/Madd_mag2_add0000_lut [17]),
    .O(\a1/mag2_add0000 [17])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<17>  (
    .CI(\a1/Madd_mag2_add0000_cy [16]),
    .DI(\a1/rere [17]),
    .S(\a1/Madd_mag2_add0000_lut [17]),
    .O(\a1/Madd_mag2_add0000_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<17>  (
    .I0(\a1/rere [17]),
    .I1(\a1/imim [17]),
    .O(\a1/Madd_mag2_add0000_lut [17])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<16>  (
    .CI(\a1/Madd_mag2_add0000_cy [15]),
    .LI(\a1/Madd_mag2_add0000_lut [16]),
    .O(\a1/mag2_add0000 [16])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<16>  (
    .CI(\a1/Madd_mag2_add0000_cy [15]),
    .DI(\a1/rere [16]),
    .S(\a1/Madd_mag2_add0000_lut [16]),
    .O(\a1/Madd_mag2_add0000_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<16>  (
    .I0(\a1/rere [16]),
    .I1(\a1/imim [16]),
    .O(\a1/Madd_mag2_add0000_lut [16])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<15>  (
    .CI(\a1/Madd_mag2_add0000_cy [14]),
    .LI(\a1/Madd_mag2_add0000_lut [15]),
    .O(\a1/mag2_add0000 [15])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<15>  (
    .CI(\a1/Madd_mag2_add0000_cy [14]),
    .DI(\a1/rere [15]),
    .S(\a1/Madd_mag2_add0000_lut [15]),
    .O(\a1/Madd_mag2_add0000_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<15>  (
    .I0(\a1/rere [15]),
    .I1(\a1/imim [15]),
    .O(\a1/Madd_mag2_add0000_lut [15])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<14>  (
    .CI(\a1/Madd_mag2_add0000_cy [13]),
    .LI(\a1/Madd_mag2_add0000_lut [14]),
    .O(\a1/mag2_add0000 [14])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<14>  (
    .CI(\a1/Madd_mag2_add0000_cy [13]),
    .DI(\a1/rere [14]),
    .S(\a1/Madd_mag2_add0000_lut [14]),
    .O(\a1/Madd_mag2_add0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<14>  (
    .I0(\a1/rere [14]),
    .I1(\a1/imim [14]),
    .O(\a1/Madd_mag2_add0000_lut [14])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<13>  (
    .CI(\a1/Madd_mag2_add0000_cy [12]),
    .LI(\a1/Madd_mag2_add0000_lut [13]),
    .O(\a1/mag2_add0000 [13])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<13>  (
    .CI(\a1/Madd_mag2_add0000_cy [12]),
    .DI(\a1/rere [13]),
    .S(\a1/Madd_mag2_add0000_lut [13]),
    .O(\a1/Madd_mag2_add0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<13>  (
    .I0(\a1/rere [13]),
    .I1(\a1/imim [13]),
    .O(\a1/Madd_mag2_add0000_lut [13])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<12>  (
    .CI(\a1/Madd_mag2_add0000_cy [11]),
    .LI(\a1/Madd_mag2_add0000_lut [12]),
    .O(\a1/mag2_add0000 [12])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<12>  (
    .CI(\a1/Madd_mag2_add0000_cy [11]),
    .DI(\a1/rere [12]),
    .S(\a1/Madd_mag2_add0000_lut [12]),
    .O(\a1/Madd_mag2_add0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<12>  (
    .I0(\a1/rere [12]),
    .I1(\a1/imim [12]),
    .O(\a1/Madd_mag2_add0000_lut [12])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<11>  (
    .CI(\a1/Madd_mag2_add0000_cy [10]),
    .LI(\a1/Madd_mag2_add0000_lut [11]),
    .O(\a1/mag2_add0000 [11])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<11>  (
    .CI(\a1/Madd_mag2_add0000_cy [10]),
    .DI(\a1/rere [11]),
    .S(\a1/Madd_mag2_add0000_lut [11]),
    .O(\a1/Madd_mag2_add0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<11>  (
    .I0(\a1/rere [11]),
    .I1(\a1/imim [11]),
    .O(\a1/Madd_mag2_add0000_lut [11])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<10>  (
    .CI(\a1/Madd_mag2_add0000_cy [9]),
    .LI(\a1/Madd_mag2_add0000_lut [10]),
    .O(\a1/mag2_add0000 [10])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<10>  (
    .CI(\a1/Madd_mag2_add0000_cy [9]),
    .DI(\a1/rere [10]),
    .S(\a1/Madd_mag2_add0000_lut [10]),
    .O(\a1/Madd_mag2_add0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<10>  (
    .I0(\a1/rere [10]),
    .I1(\a1/imim [10]),
    .O(\a1/Madd_mag2_add0000_lut [10])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<9>  (
    .CI(\a1/Madd_mag2_add0000_cy [8]),
    .LI(\a1/Madd_mag2_add0000_lut [9]),
    .O(\a1/mag2_add0000 [9])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<9>  (
    .CI(\a1/Madd_mag2_add0000_cy [8]),
    .DI(\a1/rere [9]),
    .S(\a1/Madd_mag2_add0000_lut [9]),
    .O(\a1/Madd_mag2_add0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<9>  (
    .I0(\a1/rere [9]),
    .I1(\a1/imim [9]),
    .O(\a1/Madd_mag2_add0000_lut [9])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<8>  (
    .CI(\a1/Madd_mag2_add0000_cy [7]),
    .LI(\a1/Madd_mag2_add0000_lut [8]),
    .O(\a1/mag2_add0000 [8])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<8>  (
    .CI(\a1/Madd_mag2_add0000_cy [7]),
    .DI(\a1/rere [8]),
    .S(\a1/Madd_mag2_add0000_lut [8]),
    .O(\a1/Madd_mag2_add0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<8>  (
    .I0(\a1/rere [8]),
    .I1(\a1/imim [8]),
    .O(\a1/Madd_mag2_add0000_lut [8])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<7>  (
    .CI(\a1/Madd_mag2_add0000_cy [6]),
    .LI(\a1/Madd_mag2_add0000_lut [7]),
    .O(\a1/mag2_add0000 [7])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<7>  (
    .CI(\a1/Madd_mag2_add0000_cy [6]),
    .DI(\a1/rere [7]),
    .S(\a1/Madd_mag2_add0000_lut [7]),
    .O(\a1/Madd_mag2_add0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<7>  (
    .I0(\a1/rere [7]),
    .I1(\a1/imim [7]),
    .O(\a1/Madd_mag2_add0000_lut [7])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<6>  (
    .CI(\a1/Madd_mag2_add0000_cy [5]),
    .LI(\a1/Madd_mag2_add0000_lut [6]),
    .O(\a1/mag2_add0000 [6])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<6>  (
    .CI(\a1/Madd_mag2_add0000_cy [5]),
    .DI(\a1/rere [6]),
    .S(\a1/Madd_mag2_add0000_lut [6]),
    .O(\a1/Madd_mag2_add0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<6>  (
    .I0(\a1/rere [6]),
    .I1(\a1/imim [6]),
    .O(\a1/Madd_mag2_add0000_lut [6])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<5>  (
    .CI(\a1/Madd_mag2_add0000_cy [4]),
    .LI(\a1/Madd_mag2_add0000_lut [5]),
    .O(\a1/mag2_add0000 [5])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<5>  (
    .CI(\a1/Madd_mag2_add0000_cy [4]),
    .DI(\a1/rere [5]),
    .S(\a1/Madd_mag2_add0000_lut [5]),
    .O(\a1/Madd_mag2_add0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<5>  (
    .I0(\a1/rere [5]),
    .I1(\a1/imim [5]),
    .O(\a1/Madd_mag2_add0000_lut [5])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<4>  (
    .CI(\a1/Madd_mag2_add0000_cy [3]),
    .LI(\a1/Madd_mag2_add0000_lut [4]),
    .O(\a1/mag2_add0000 [4])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<4>  (
    .CI(\a1/Madd_mag2_add0000_cy [3]),
    .DI(\a1/rere [4]),
    .S(\a1/Madd_mag2_add0000_lut [4]),
    .O(\a1/Madd_mag2_add0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<4>  (
    .I0(\a1/rere [4]),
    .I1(\a1/imim [4]),
    .O(\a1/Madd_mag2_add0000_lut [4])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<3>  (
    .CI(\a1/Madd_mag2_add0000_cy [2]),
    .LI(\a1/Madd_mag2_add0000_lut [3]),
    .O(\a1/mag2_add0000 [3])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<3>  (
    .CI(\a1/Madd_mag2_add0000_cy [2]),
    .DI(\a1/rere [3]),
    .S(\a1/Madd_mag2_add0000_lut [3]),
    .O(\a1/Madd_mag2_add0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<3>  (
    .I0(\a1/rere [3]),
    .I1(\a1/imim [3]),
    .O(\a1/Madd_mag2_add0000_lut [3])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<2>  (
    .CI(\a1/Madd_mag2_add0000_cy [1]),
    .LI(\a1/Madd_mag2_add0000_lut [2]),
    .O(\a1/mag2_add0000 [2])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<2>  (
    .CI(\a1/Madd_mag2_add0000_cy [1]),
    .DI(\a1/rere [2]),
    .S(\a1/Madd_mag2_add0000_lut [2]),
    .O(\a1/Madd_mag2_add0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<2>  (
    .I0(\a1/rere [2]),
    .I1(\a1/imim [2]),
    .O(\a1/Madd_mag2_add0000_lut [2])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<1>  (
    .CI(\a1/Madd_mag2_add0000_cy [0]),
    .LI(\a1/Madd_mag2_add0000_lut [1]),
    .O(\a1/mag2_add0000 [1])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<1>  (
    .CI(\a1/Madd_mag2_add0000_cy [0]),
    .DI(\a1/rere [1]),
    .S(\a1/Madd_mag2_add0000_lut [1]),
    .O(\a1/Madd_mag2_add0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<1>  (
    .I0(\a1/rere [1]),
    .I1(\a1/imim [1]),
    .O(\a1/Madd_mag2_add0000_lut [1])
  );
  XORCY   \a1/Madd_mag2_add0000_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\a1/Madd_mag2_add0000_lut [0]),
    .O(\a1/mag2_add0000 [0])
  );
  MUXCY   \a1/Madd_mag2_add0000_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\a1/rere [0]),
    .S(\a1/Madd_mag2_add0000_lut [0]),
    .O(\a1/Madd_mag2_add0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a1/Madd_mag2_add0000_lut<0>  (
    .I0(\a1/rere [0]),
    .I1(\a1/imim [0]),
    .O(\a1/Madd_mag2_add0000_lut [0])
  );
  MULT18X18S   \a1/Mmult_imim_mult0000  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .R(\a/ac97/Mmux__varindex0000_9 ),
    .A({\a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh104 , \a1/Sh103 , \a1/Sh102 , \a1/Sh101 , \a1/Sh100 , \a1/Sh122 , \a1/Sh121 
, \a1/Sh120 , \a1/Sh119 , \a1/Sh118 , \a1/Sh117 , \a1/Sh116 , \a1/Sh115 }),
    .B({\a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh105 , \a1/Sh104 , \a1/Sh103 , \a1/Sh102 , \a1/Sh101 , \a1/Sh100 , \a1/Sh122 , \a1/Sh121 
, \a1/Sh120 , \a1/Sh119 , \a1/Sh118 , \a1/Sh117 , \a1/Sh116 , \a1/Sh115 }),
    .P({\NLW_a1/Mmult_imim_mult0000_P<35>_UNCONNECTED , \NLW_a1/Mmult_imim_mult0000_P<34>_UNCONNECTED , \NLW_a1/Mmult_imim_mult0000_P<33>_UNCONNECTED 
, \NLW_a1/Mmult_imim_mult0000_P<32>_UNCONNECTED , \NLW_a1/Mmult_imim_mult0000_P<31>_UNCONNECTED , \NLW_a1/Mmult_imim_mult0000_P<30>_UNCONNECTED , 
\NLW_a1/Mmult_imim_mult0000_P<29>_UNCONNECTED , \NLW_a1/Mmult_imim_mult0000_P<28>_UNCONNECTED , \a1/imim [27], \a1/imim [26], \a1/imim [25], 
\a1/imim [24], \a1/imim [23], \a1/imim [22], \a1/imim [21], \a1/imim [20], \a1/imim [19], \a1/imim [18], \a1/imim [17], \a1/imim [16], \a1/imim [15], 
\a1/imim [14], \a1/imim [13], \a1/imim [12], \a1/imim [11], \a1/imim [10], \a1/imim [9], \a1/imim [8], \a1/imim [7], \a1/imim [6], \a1/imim [5], 
\a1/imim [4], \a1/imim [3], \a1/imim [2], \a1/imim [1], \a1/imim [0]})
  );
  MULT18X18S   \a1/Mmult_rere_mult0000  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .R(\a/ac97/Mmux__varindex0000_9 ),
    .A({\a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh35 , \a1/Sh34 , \a1/Sh33 , \a1/Sh32 , \a1/Sh31 , \a1/Sh30 , \a1/Sh29 , \a1/Sh28 
, \a1/Sh27 , \a1/Sh26 , \a1/Sh25 , \a1/Sh24 , \a1/Sh23 }),
    .B({\a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh36 , \a1/Sh35 , \a1/Sh34 , \a1/Sh33 , \a1/Sh32 , \a1/Sh31 , \a1/Sh30 , \a1/Sh29 , \a1/Sh28 
, \a1/Sh27 , \a1/Sh26 , \a1/Sh25 , \a1/Sh24 , \a1/Sh23 }),
    .P({\NLW_a1/Mmult_rere_mult0000_P<35>_UNCONNECTED , \NLW_a1/Mmult_rere_mult0000_P<34>_UNCONNECTED , \NLW_a1/Mmult_rere_mult0000_P<33>_UNCONNECTED 
, \NLW_a1/Mmult_rere_mult0000_P<32>_UNCONNECTED , \NLW_a1/Mmult_rere_mult0000_P<31>_UNCONNECTED , \NLW_a1/Mmult_rere_mult0000_P<30>_UNCONNECTED , 
\NLW_a1/Mmult_rere_mult0000_P<29>_UNCONNECTED , \NLW_a1/Mmult_rere_mult0000_P<28>_UNCONNECTED , \a1/rere [27], \a1/rere [26], \a1/rere [25], 
\a1/rere [24], \a1/rere [23], \a1/rere [22], \a1/rere [21], \a1/rere [20], \a1/rere [19], \a1/rere [18], \a1/rere [17], \a1/rere [16], \a1/rere [15], 
\a1/rere [14], \a1/rere [13], \a1/rere [12], \a1/rere [11], \a1/rere [10], \a1/rere [9], \a1/rere [8], \a1/rere [7], \a1/rere [6], \a1/rere [5], 
\a1/rere [4], \a1/rere [3], \a1/rere [2], \a1/rere [1], \a1/rere [0]})
  );
  FDR   \a1/state_FSM_FFd2  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a1/state_FSM_FFd2-In ),
    .R(reset),
    .Q(\a1/state_FSM_FFd2_1042 )
  );
  FDR   \a1/state_FSM_FFd1  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a1/state_FSM_FFd1-In ),
    .R(reset),
    .Q(\a1/state_FSM_FFd1_1040 )
  );
  FDE   \a1/mag2_27  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [27]),
    .Q(\a1/mag2 [27])
  );
  FDE   \a1/mag2_26  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [26]),
    .Q(\a1/mag2 [26])
  );
  FDE   \a1/mag2_25  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [25]),
    .Q(\a1/mag2 [25])
  );
  FDE   \a1/mag2_24  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [24]),
    .Q(\a1/mag2 [24])
  );
  FDE   \a1/mag2_23  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [23]),
    .Q(\a1/mag2 [23])
  );
  FDE   \a1/mag2_22  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [22]),
    .Q(\a1/mag2 [22])
  );
  FDE   \a1/mag2_21  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [21]),
    .Q(\a1/mag2 [21])
  );
  FDE   \a1/mag2_20  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [20]),
    .Q(\a1/mag2 [20])
  );
  FDE   \a1/mag2_19  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [19]),
    .Q(\a1/mag2 [19])
  );
  FDE   \a1/mag2_18  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [18]),
    .Q(\a1/mag2 [18])
  );
  FDE   \a1/mag2_17  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [17]),
    .Q(\a1/mag2 [17])
  );
  FDE   \a1/mag2_16  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [16]),
    .Q(\a1/mag2 [16])
  );
  FDE   \a1/mag2_15  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [15]),
    .Q(\a1/mag2 [15])
  );
  FDE   \a1/mag2_14  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [14]),
    .Q(\a1/mag2 [14])
  );
  FDE   \a1/mag2_13  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [13]),
    .Q(\a1/mag2 [13])
  );
  FDE   \a1/mag2_12  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [12]),
    .Q(\a1/mag2 [12])
  );
  FDE   \a1/mag2_11  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [11]),
    .Q(\a1/mag2 [11])
  );
  FDE   \a1/mag2_10  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [10]),
    .Q(\a1/mag2 [10])
  );
  FDE   \a1/mag2_9  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [9]),
    .Q(\a1/mag2 [9])
  );
  FDE   \a1/mag2_8  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [8]),
    .Q(\a1/mag2 [8])
  );
  FDE   \a1/mag2_7  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [7]),
    .Q(\a1/mag2 [7])
  );
  FDE   \a1/mag2_6  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [6]),
    .Q(\a1/mag2 [6])
  );
  FDE   \a1/mag2_5  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [5]),
    .Q(\a1/mag2 [5])
  );
  FDE   \a1/mag2_4  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [4]),
    .Q(\a1/mag2 [4])
  );
  FDE   \a1/mag2_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [3]),
    .Q(\a1/mag2 [3])
  );
  FDE   \a1/mag2_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [2]),
    .Q(\a1/mag2 [2])
  );
  FDE   \a1/mag2_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [1]),
    .Q(\a1/mag2 [1])
  );
  FDE   \a1/mag2_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/mag2_not0001 ),
    .D(\a1/mag2_add0000 [0]),
    .Q(\a1/mag2 [0])
  );
  FDE   \a1/haddr_9  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [9]),
    .Q(\a1/haddr [9])
  );
  FDE   \a1/haddr_8  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [8]),
    .Q(\a1/haddr [8])
  );
  FDE   \a1/haddr_7  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [7]),
    .Q(\a1/haddr [7])
  );
  FDE   \a1/haddr_6  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [6]),
    .Q(\a1/haddr [6])
  );
  FDE   \a1/haddr_5  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [5]),
    .Q(\a1/haddr [5])
  );
  FDE   \a1/haddr_4  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [4]),
    .Q(\a1/haddr [4])
  );
  FDE   \a1/haddr_3  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [3]),
    .Q(\a1/haddr [3])
  );
  FDE   \a1/haddr_2  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [2]),
    .Q(\a1/haddr [2])
  );
  FDE   \a1/haddr_1  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [1]),
    .Q(\a1/haddr [1])
  );
  FDE   \a1/haddr_0  (
    .C(clock_27mhz_IBUFG_1198),
    .CE(\a1/haddr_not0001 ),
    .D(\a1/xk_index [0]),
    .Q(\a1/haddr [0])
  );
  FDR   \a1/hwe  (
    .C(clock_27mhz_IBUFG_1198),
    .D(led_5_OBUF_3517),
    .R(\a1/hwe_or0000 ),
    .Q(\a1/hwe_776 )
  );
  FDE   \hd/ma_digs/number_0_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_0_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_0_0_2401 )
  );
  FDE   \hd/ma_digs/number_0_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_0_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_0_1_2402 )
  );
  FDE   \hd/ma_digs/number_0_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_0_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_0_2_2403 )
  );
  FDE   \hd/ma_digs/number_0_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_0_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_0_3_2404 )
  );
  FDE   \hd/ma_digs/number_3_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_3_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_3_0_2436 )
  );
  FDE   \hd/ma_digs/number_3_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_3_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_3_1_2437 )
  );
  FDE   \hd/ma_digs/number_3_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_3_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_3_2_2438 )
  );
  FDE   \hd/ma_digs/number_3_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_3_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_3_3_2439 )
  );
  FDE   \hd/ma_digs/number_1_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_1_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_1_0_2426 )
  );
  FDE   \hd/ma_digs/number_1_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_1_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_1_1_2427 )
  );
  FDE   \hd/ma_digs/number_1_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_1_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_1_2_2428 )
  );
  FDE   \hd/ma_digs/number_1_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_1_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_1_3_2429 )
  );
  FDE   \hd/ma_digs/number_2_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_2_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_2_0_2431 )
  );
  FDE   \hd/ma_digs/number_2_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_2_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_2_1_2432 )
  );
  FDE   \hd/ma_digs/number_2_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_2_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_2_2_2433 )
  );
  FDE   \hd/ma_digs/number_2_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_2_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_2_3_2434 )
  );
  FDE   \hd/ma_digs/number_4_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_4_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_4_0_2441 )
  );
  FDE   \hd/ma_digs/number_4_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_4_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_4_1_2442 )
  );
  FDE   \hd/ma_digs/number_4_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_4_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_4_2_2443 )
  );
  FDE   \hd/ma_digs/number_4_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_4_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_4_3_2444 )
  );
  FDE   \hd/ma_digs/number_5_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_5_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_5_0_2446 )
  );
  FDE   \hd/ma_digs/number_5_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_5_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_5_1_2447 )
  );
  FDE   \hd/ma_digs/number_5_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_5_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_5_2_2448 )
  );
  FDE   \hd/ma_digs/number_5_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_5_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_5_3_2449 )
  );
  FDE   \hd/ma_digs/number_6_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_6_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_6_0_2451 )
  );
  FDE   \hd/ma_digs/number_6_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_6_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_6_1_2452 )
  );
  FDE   \hd/ma_digs/number_6_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_6_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_6_2_2453 )
  );
  FDE   \hd/ma_digs/number_6_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_6_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_6_3_2454 )
  );
  FDE   \hd/ma_digs/number_7_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_7_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_7_0_2456 )
  );
  FDE   \hd/ma_digs/number_7_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_7_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_7_1_2457 )
  );
  FDE   \hd/ma_digs/number_7_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_7_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_7_2_2458 )
  );
  FDE   \hd/ma_digs/number_7_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_7_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_7_3_2459 )
  );
  FDE   \hd/ma_digs/number_8_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_8_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_8_0_2461 )
  );
  FDE   \hd/ma_digs/number_8_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_8_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_8_1_2462 )
  );
  FDE   \hd/ma_digs/number_8_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_8_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_8_2_2463 )
  );
  FDE   \hd/ma_digs/number_8_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_8_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_8_3_2464 )
  );
  FDE   \hd/ma_digs/number_9_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_9_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_9_0_2466 )
  );
  FDE   \hd/ma_digs/number_9_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_9_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_9_1_2467 )
  );
  FDE   \hd/ma_digs/number_9_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_9_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_9_2_2468 )
  );
  FDE   \hd/ma_digs/number_9_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_9_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_9_3_2469 )
  );
  FDE   \hd/ma_digs/number_10_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_10_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_10_0_2406 )
  );
  FDE   \hd/ma_digs/number_10_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_10_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_10_1_2407 )
  );
  FDE   \hd/ma_digs/number_10_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_10_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_10_2_2408 )
  );
  FDE   \hd/ma_digs/number_10_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_10_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_10_3_2409 )
  );
  FDE   \hd/ma_digs/number_11_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_11_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_11_0_2411 )
  );
  FDE   \hd/ma_digs/number_11_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_11_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_11_1_2412 )
  );
  FDE   \hd/ma_digs/number_11_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_11_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_11_2_2413 )
  );
  FDE   \hd/ma_digs/number_11_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_11_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_11_3_2414 )
  );
  FDE   \hd/ma_digs/number_12_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_12_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_12_0_2416 )
  );
  FDE   \hd/ma_digs/number_12_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_12_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_12_1_2417 )
  );
  FDE   \hd/ma_digs/number_12_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_12_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_12_2_2418 )
  );
  FDE   \hd/ma_digs/number_12_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_12_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_12_3_2419 )
  );
  FDE   \hd/ma_digs/number_13_0  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_13_not0001 ),
    .D(num[0]),
    .Q(\hd/ma_digs/number_13_0_2421 )
  );
  FDE   \hd/ma_digs/number_13_1  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_13_not0001 ),
    .D(num[1]),
    .Q(\hd/ma_digs/number_13_1_2422 )
  );
  FDE   \hd/ma_digs/number_13_2  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_13_not0001 ),
    .D(num[2]),
    .Q(\hd/ma_digs/number_13_2_2423 )
  );
  FDE   \hd/ma_digs/number_13_3  (
    .C(clock_65mhz),
    .CE(\hd/ma_digs/number_13_not0001 ),
    .D(num[3]),
    .Q(\hd/ma_digs/number_13_3_2424 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ribbles[13].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ribbles[13].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ribbles[13].un_blob/overlap_2586 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ribbles[12].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ribbles[12].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ribbles[12].un_blob/overlap_2526 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riggles[11].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riggles[11].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riggles[11].un_blob/overlap_2917 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riggles[10].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riggles[10].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riggles[10].un_blob/overlap_2864 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riffle[9].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riffle[9].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riffle[9].un_blob/overlap_2704 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riffle[8].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riffle[8].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riffle[8].un_blob/overlap_2649 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riggle[7].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riggle[7].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riggle[7].un_blob/overlap_2814 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/riggle[6].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/riggle[6].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/riggle[6].un_blob/overlap_2764 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripples[5].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripples[5].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripples[5].un_blob/overlap_3258 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripples[4].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripples[4].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripples[4].un_blob/overlap_3204 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripple[3].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripple[3].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripple[3].un_blob/overlap_3144 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripple[2].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripple[2].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripple[2].un_blob/overlap_3095 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripple[1].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripple[1].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripple[1].un_blob/overlap_3038 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \hd/ma_digs/ripple[0].un_blob/overlap  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/ripple[0].un_blob/overlap_not0001 ),
    .Q(\hd/ma_digs/ripple[0].un_blob/overlap_2985 )
  );
  MULT18X18   \hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [5], \xvga1/vcount [4], \xvga1/vcount [3], \xvga1/vcount [2], \xvga1/vcount [1], 
\xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[13].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [5], \xvga1/vcount [4], \xvga1/vcount [3], \xvga1/vcount [2], \xvga1/vcount [1], 
\xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ribbles[12].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [5], \xvga1/vcount [4], \xvga1/vcount [3], \xvga1/vcount [2], \xvga1/vcount [1], 
\xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[11].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [5], \xvga1/vcount [4], \xvga1/vcount [3], \xvga1/vcount [2], \xvga1/vcount [1], 
\xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riggles[10].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[9].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riffle[8].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[7].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/riggle[6].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [9], \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [7], \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [5], \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [3], \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [1], \hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[5].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripples[4].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [1], \xvga1/Mcount_vcount_lut [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[3].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [1], \xvga1/Mcount_vcount_lut [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[2].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [1], \xvga1/Mcount_vcount_lut [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[1].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [0]})
  );
  MULT18X18   \hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001  (
    .A({\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [9], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [8], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [7], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [6], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [5], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [4], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [3], \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [2], 
\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [1], \xvga1/Mcount_vcount_lut [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517}),
    .P({\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<16>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<15>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<14>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<13>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<12>_UNCONNECTED , 
\NLW_hd/ma_digs/ripple[0].un_blob/Mmult_image_addr_mult0001_P<11>_UNCONNECTED , \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [10], 
\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [9], \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [8], 
\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [7], \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [6], 
\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [5], \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [4], 
\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [3], \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [2], 
\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [1], \hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [0]})
  );
  MUXF7   \hd/ma_digs/Mmux_num_sel_out_mux0000_2_f7_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f63 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f63 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/num_sel_out_mux0000<3>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f53 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f57 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f63 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_83_2211 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_711_2199 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f53 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_83  (
    .I0(\hd/ma_digs/number_0_3_2404 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_83_2211 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_711  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_1_3_2429 ),
    .I2(\hd/ma_digs/number_2_3_2434 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_711_2199 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_6  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_710_2198 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_611_2183 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f57 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_710  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_3_3_2439 ),
    .I2(\hd/ma_digs/number_4_3_2444 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_710_2198 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_611  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_5_3_2449 ),
    .I2(\hd/ma_digs/number_6_3_2454 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_611_2183 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f56 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f53 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f63 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_5  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_79_2207 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_610_2182 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f56 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_79  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_7_3_2459 ),
    .I2(\hd/ma_digs/number_8_3_2464 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_79_2207 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_610  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_9_3_2469 ),
    .I2(\hd/ma_digs/number_10_3_2409 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_610_2182 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_69_2191 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_53_2171 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f53 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_69  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_11_3_2414 ),
    .I2(\hd/ma_digs/number_12_3_2419 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_69_2191 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_53  (
    .I0(\hd/ma_digs/number_13_3_2424 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_53_2171 )
  );
  MUXF7   \hd/ma_digs/Mmux_num_sel_out_mux0000_2_f7_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f62 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f62 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/num_sel_out_mux0000<2>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f52 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f55 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f62 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_82_2210 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_78_2206 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f52 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_82  (
    .I0(\hd/ma_digs/number_0_2_2403 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_82_2210 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_78  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_1_2_2428 ),
    .I2(\hd/ma_digs/number_2_2_2433 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_78_2206 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_4  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_77_2205 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_68_2190 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f55 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_77  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_3_2_2438 ),
    .I2(\hd/ma_digs/number_4_2_2443 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_77_2205 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_68  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_5_2_2448 ),
    .I2(\hd/ma_digs/number_6_2_2453 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_68_2190 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f54 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f52 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f62 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_3  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_76_2204 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_67_2189 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f54 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_76  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_7_2_2458 ),
    .I2(\hd/ma_digs/number_8_2_2463 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_76_2204 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_67  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_9_2_2468 ),
    .I2(\hd/ma_digs/number_10_2_2408 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_67_2189 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_66_2188 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_52_2170 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f52 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_66  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_11_2_2413 ),
    .I2(\hd/ma_digs/number_12_2_2418 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_66_2188 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_52  (
    .I0(\hd/ma_digs/number_13_2_2423 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_52_2170 )
  );
  MUXF7   \hd/ma_digs/Mmux_num_sel_out_mux0000_2_f7_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f61 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f61 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/num_sel_out_mux0000<1>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f51 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f53 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f61 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_81_2209 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_75_2203 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f51 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_81  (
    .I0(\hd/ma_digs/number_0_1_2402 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_81_2209 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_75  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_1_1_2427 ),
    .I2(\hd/ma_digs/number_2_1_2432 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_75_2203 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_2  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_74_2202 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_65_2187 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f53 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_74  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_3_1_2437 ),
    .I2(\hd/ma_digs/number_4_1_2442 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_74_2202 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_65  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_5_1_2447 ),
    .I2(\hd/ma_digs/number_6_1_2452 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_65_2187 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f52 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f51 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f61 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_1  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_73_2201 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_64_2186 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f52 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_73  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_7_1_2457 ),
    .I2(\hd/ma_digs/number_8_1_2462 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_73_2201 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_64  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_9_1_2467 ),
    .I2(\hd/ma_digs/number_10_1_2407 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_64_2186 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_63_2185 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_51_2169 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f51 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_63  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_11_1_2412 ),
    .I2(\hd/ma_digs/number_12_1_2417 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_63_2185 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_51  (
    .I0(\hd/ma_digs/number_13_1_2422 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_51_2169 )
  );
  MUXF7   \hd/ma_digs/Mmux_num_sel_out_mux0000_2_f7  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_2164 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_2156 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/num_sel_out_mux0000<0>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_2192 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f51 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f6_2164 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_8_2208 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_72_2200 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_f5_2192 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_8  (
    .I0(\hd/ma_digs/number_0_0_2401 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_8_2208 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_72  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_1_0_2426 ),
    .I2(\hd/ma_digs/number_2_0_2431 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_72_2200 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_0  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_71_2197 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_62_2184 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_71  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_3_0_2436 ),
    .I2(\hd/ma_digs/number_4_0_2441 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_71_2197 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_62  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_5_0_2446 ),
    .I2(\hd/ma_digs/number_6_0_2451 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_62_2184 )
  );
  MUXF6   \hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_2172 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_2160 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_3_f6_2156 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_7_2196 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_61_2181 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_f5_2172 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_7  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_7_0_2456 ),
    .I2(\hd/ma_digs/number_8_0_2461 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_7_2196 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_61  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_9_0_2466 ),
    .I2(\hd/ma_digs/number_10_0_2406 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_61_2181 )
  );
  MUXF5   \hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5  (
    .I0(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_2180 ),
    .I1(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_2168 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_4_f5_2160 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_6  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/number_11_0_2411 ),
    .I2(\hd/ma_digs/number_12_0_2416 ),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_6_2180 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_num_sel_out_mux0000_5  (
    .I0(\hd/ma_digs/number_13_0_2421 ),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_num_sel_out_mux0000_5_2168 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [0])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [0]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [2])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [2]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [3]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [4])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [4]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [5]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<13> [0])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<13> [1])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<13> [2])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<13> [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [4])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<13> [4])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<13> [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<6>  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[6] ),
    .I1(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [6]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [6])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<13> [6])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<13> [7])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<13> [8])
  );
  MUXCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<13> [9])
  );
  XORCY   \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<13> [10])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2493 ),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [1]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [2])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [2]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [3])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [3]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [4])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [4]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<12> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<12> [1])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<12> [2])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<12> [3])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<12> [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<5>  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[5] ),
    .I1(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [5])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<12> [5])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<12> [6])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<12> [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<8>  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[8] ),
    .I1(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [8])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<12> [8])
  );
  MUXCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<12> [9])
  );
  XORCY   \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<12> [10])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2890 ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [3]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] )
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>_rt_2894 ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>_rt_2897 ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<11> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<11> [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [2])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [1]),
    .DI(\xvga1/hcount [2]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<11> [2])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<11> [3])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<11> [4])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<11> [5])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<11> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<11> [7])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<11> [8])
  );
  MUXCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<11> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<11> [10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] )
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [4]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] )
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2843 ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<10> [0])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<10> [1])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<10> [2])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<10> [3])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<10> [4])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<10> [5])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<10> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<10> [7])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<10> [8])
  );
  MUXCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<10> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<10> [10])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2678 ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [3]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2681 ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] )
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<9> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<9> [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [2])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [1]),
    .DI(\xvga1/hcount [2]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<9> [2])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<9> [3])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<9> [4])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<9> [5])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<9> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<9> [7])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<9> [8])
  );
  MUXCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<9> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<9> [10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [0])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [0]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [4]),
    .I2(\xvga1/hcount [5]),
    .I3(\xvga1/hcount [6]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [1])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [3])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [3]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [4]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<8> [0])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<8> [1])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<8> [2])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<8> [3])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<8> [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<5>  (
    .I0(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[5] ),
    .I1(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [5])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<8> [5])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<8> [6])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<8> [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<8>  (
    .I0(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[8] ),
    .I1(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [8])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<8> [8])
  );
  MUXCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<8> [9])
  );
  XORCY   \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<8> [10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] )
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[0] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [4]),
    .I2(\xvga1/hcount [5]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] )
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2794 ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<7> [0])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<7> [1])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<7> [2])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<7> [3])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<7> [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<5>  (
    .I0(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[5] ),
    .I1(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [5])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<7> [5])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<7> [6])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<7> [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<8>  (
    .I0(\hd/ma_digs/riggle[7].un_blob/image_addr_addsub0000 [8]),
    .I1(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [8])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<7> [8])
  );
  MUXCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<7> [9])
  );
  XORCY   \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<7> [10])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2731 ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] )
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2736 ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>_rt_2739 ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [6])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<7>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [6]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [7])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<8>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [7]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<8>_rt_2742 ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [8])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<9>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [8]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[9] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<6> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<6> [1])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<6> [2])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<6> [3])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<6> [4])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<6> [5])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<6> [6])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<6> [7])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<6> [8])
  );
  MUXCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<6> [9])
  );
  XORCY   \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<6> [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .O(Mmux_rgb_mux000010298)
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(Mmux_rgb_mux000010298),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3236 ),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] )
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<5> [0])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<5> [1])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<5> [2])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<5> [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [4])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<5> [4])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<5> [5])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<5> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<5> [7])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<5> [8])
  );
  MUXCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<5> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<5> [10])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3170 ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3173 ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] )
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<4> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<4> [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [2])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [1]),
    .DI(\xvga1/hcount [2]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<4> [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [3])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [2]),
    .DI(\xvga1/hcount [3]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<4> [3])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<4> [4])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<4> [5])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<4> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<4> [7])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<4> [8])
  );
  MUXCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<4> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<4> [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [0]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [1])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [8]),
    .I3(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [2])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [2]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [3]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<3> [0])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<3> [1])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<3> [2])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<3> [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [4])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<3> [4])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<3> [5])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<3> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<3> [7])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<3> [8])
  );
  MUXCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<3> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<3> [10])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3066 ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3069 ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_3072 ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut<6>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] )
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [6])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<7>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [6]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<2> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<2> [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [2])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [1]),
    .DI(\xvga1/hcount [2]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<2> [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [3])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [2]),
    .DI(\xvga1/hcount [3]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<2> [3])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<2> [4])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<2> [5])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<2> [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<7>  (
    .I0(\hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[7] ),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [7])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<2> [7])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<2> [8])
  );
  MUXCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<2> [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<10>  (
    .I0(\hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[10] ),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [10]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [10])
  );
  XORCY   \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<2> [10])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [0]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [1])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [1]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [2])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [2]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [3]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<1> [0])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [0]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [1]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<1> [1])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<1> [2])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<1> [3])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<1> [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<5>  (
    .I0(\hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[5] ),
    .I1(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [5])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<1> [5])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<1> [6])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<1> [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<8>  (
    .I0(\hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[8] ),
    .I1(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [8])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<1> [8])
  );
  MUXCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<1> [9])
  );
  XORCY   \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<1> [10])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2942 ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [0])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<1>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [0]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [1])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2945 ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [2])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [2]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] )
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [4])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<6>  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] )
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [6])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<7>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [6]),
    .DI(led_5_OBUF_3517),
    .S(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [0])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [0])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [0]),
    .O(\hd/ma_digs/image_addr<0> [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [1])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<1>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [1])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<1>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [0]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [1]),
    .O(\hd/ma_digs/image_addr<0> [1])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<2>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [1]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [2]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [2])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<2>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [1]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [2]),
    .O(\hd/ma_digs/image_addr<0> [2])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<3>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [2]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [3]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [3])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<3>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [2]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [3]),
    .O(\hd/ma_digs/image_addr<0> [3])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<4>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [3]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [4]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [4])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<4>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [3]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [4]),
    .O(\hd/ma_digs/image_addr<0> [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<5>  (
    .I0(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[5] ),
    .I1(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [5])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<5>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [4]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [5]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<5>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [4]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [5]),
    .O(\hd/ma_digs/image_addr<0> [5])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<6>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [5]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [6]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<6>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [5]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [6]),
    .O(\hd/ma_digs/image_addr<0> [6])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<7>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [6]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [7]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<7>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [6]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [7]),
    .O(\hd/ma_digs/image_addr<0> [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<8>  (
    .I0(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[8] ),
    .I1(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [8])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<8>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [7]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [8]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<8>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [7]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [8]),
    .O(\hd/ma_digs/image_addr<0> [8])
  );
  MUXCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy<9>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [8]),
    .DI(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [9]),
    .S(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<9>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [8]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [9]),
    .O(\hd/ma_digs/image_addr<0> [9])
  );
  XORCY   \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_xor<10>  (
    .CI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_cy [9]),
    .LI(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [10]),
    .O(\hd/ma_digs/image_addr<0> [10])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_810  (
    .I0(\hd/ma_digs/image_addr<0> [9]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_810_2147 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_732  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [9]),
    .I2(\hd/ma_digs/image_addr<2> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_732_2138 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_731  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [9]),
    .I2(\hd/ma_digs/image_addr<4> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_731_2137 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_632  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [9]),
    .I2(\hd/ma_digs/image_addr<6> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_632_2094 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_730  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [9]),
    .I2(\hd/ma_digs/image_addr<8> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_730_2136 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_631  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [9]),
    .I2(\hd/ma_digs/image_addr<10> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_631_2093 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_630  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [9]),
    .I2(\hd/ma_digs/image_addr<12> [9]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_630_2092 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_510  (
    .I0(\hd/ma_digs/image_addr<13> [9]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_510_2037 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_89  (
    .I0(\hd/ma_digs/image_addr<0> [8]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_89_2155 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_729  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [8]),
    .I2(\hd/ma_digs/image_addr<2> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_729_2134 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_728  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [8]),
    .I2(\hd/ma_digs/image_addr<4> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_728_2133 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_629  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [8]),
    .I2(\hd/ma_digs/image_addr<6> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_629_2090 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_727  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [8]),
    .I2(\hd/ma_digs/image_addr<8> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_727_2132 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_628  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [8]),
    .I2(\hd/ma_digs/image_addr<10> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_628_2089 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_627  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [8]),
    .I2(\hd/ma_digs/image_addr<12> [8]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_627_2088 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_59  (
    .I0(\hd/ma_digs/image_addr<13> [8]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_59_2045 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_88  (
    .I0(\hd/ma_digs/image_addr<0> [7]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_88_2154 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_726  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [7]),
    .I2(\hd/ma_digs/image_addr<2> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_726_2131 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_725  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [7]),
    .I2(\hd/ma_digs/image_addr<4> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_725_2130 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_626  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [7]),
    .I2(\hd/ma_digs/image_addr<6> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_626_2087 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_724  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [7]),
    .I2(\hd/ma_digs/image_addr<8> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_724_2129 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_625  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [7]),
    .I2(\hd/ma_digs/image_addr<10> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_625_2086 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_624  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [7]),
    .I2(\hd/ma_digs/image_addr<12> [7]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_624_2085 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_58  (
    .I0(\hd/ma_digs/image_addr<13> [7]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_58_2044 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_87  (
    .I0(\hd/ma_digs/image_addr<0> [6]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_87_2153 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_723  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [6]),
    .I2(\hd/ma_digs/image_addr<2> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_723_2128 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_722  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [6]),
    .I2(\hd/ma_digs/image_addr<4> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_722_2127 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_623  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [6]),
    .I2(\hd/ma_digs/image_addr<6> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_623_2084 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_721  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [6]),
    .I2(\hd/ma_digs/image_addr<8> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_721_2126 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_622  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [6]),
    .I2(\hd/ma_digs/image_addr<10> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_622_2083 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_621  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [6]),
    .I2(\hd/ma_digs/image_addr<12> [6]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_621_2082 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_57  (
    .I0(\hd/ma_digs/image_addr<13> [6]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_57_2043 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f66 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f66 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<5>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f56 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f513 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f66 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_86_2152 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_720_2125 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f56 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_86  (
    .I0(\hd/ma_digs/image_addr<0> [5]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_86_2152 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_720  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [5]),
    .I2(\hd/ma_digs/image_addr<2> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_720_2125 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_12  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_719_2123 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_620_2081 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f513 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_719  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [5]),
    .I2(\hd/ma_digs/image_addr<4> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_719_2123 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_620  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [5]),
    .I2(\hd/ma_digs/image_addr<6> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_620_2081 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f512 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f56 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f66 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_11  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_718_2122 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_619_2079 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f512 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_718  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [5]),
    .I2(\hd/ma_digs/image_addr<8> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_718_2122 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_619  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [5]),
    .I2(\hd/ma_digs/image_addr<10> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_619_2079 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_618_2078 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_56_2042 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f56 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_618  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [5]),
    .I2(\hd/ma_digs/image_addr<12> [5]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_618_2078 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_56  (
    .I0(\hd/ma_digs/image_addr<13> [5]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_56_2042 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f65 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f65 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<4>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f55 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f511 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f65 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_85_2151 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_717_2121 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f55 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_85  (
    .I0(\hd/ma_digs/image_addr<0> [4]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_85_2151 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_717  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [4]),
    .I2(\hd/ma_digs/image_addr<2> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_717_2121 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_10  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_716_2120 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_617_2077 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f511 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_716  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [4]),
    .I2(\hd/ma_digs/image_addr<4> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_716_2120 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_617  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [4]),
    .I2(\hd/ma_digs/image_addr<6> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_617_2077 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f510 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f55 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f65 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_715_2119 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_616_2076 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f510 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_715  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [4]),
    .I2(\hd/ma_digs/image_addr<8> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_715_2119 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_616  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [4]),
    .I2(\hd/ma_digs/image_addr<10> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_616_2076 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_615_2075 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_55_2041 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f55 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_615  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [4]),
    .I2(\hd/ma_digs/image_addr<12> [4]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_615_2075 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_55  (
    .I0(\hd/ma_digs/image_addr<13> [4]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_55_2041 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f64 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f64 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<3>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f54 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f59 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f64 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_84_2150 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_714_2118 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f54 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_84  (
    .I0(\hd/ma_digs/image_addr<0> [3]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_84_2150 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_714  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [3]),
    .I2(\hd/ma_digs/image_addr<2> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_714_2118 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_713_2117 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_614_2074 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f59 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_713  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [3]),
    .I2(\hd/ma_digs/image_addr<4> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_713_2117 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_614  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [3]),
    .I2(\hd/ma_digs/image_addr<6> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_614_2074 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f58 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f54 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f64 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_712_2116 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_613_2073 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f58 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_712  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [3]),
    .I2(\hd/ma_digs/image_addr<8> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_712_2116 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_613  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [3]),
    .I2(\hd/ma_digs/image_addr<10> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_613_2073 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_612_2072 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_54_2040 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f54 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_612  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [3]),
    .I2(\hd/ma_digs/image_addr<12> [3]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_612_2072 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_54  (
    .I0(\hd/ma_digs/image_addr<13> [3]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_54_2040 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f63 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f63 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<2>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f53 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f57 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f63 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_83_2149 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_711_2115 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f53 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_83  (
    .I0(\hd/ma_digs/image_addr<0> [2]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_83_2149 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_711  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [2]),
    .I2(\hd/ma_digs/image_addr<2> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_711_2115 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_710_2114 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_611_2071 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f57 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_710  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [2]),
    .I2(\hd/ma_digs/image_addr<4> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_710_2114 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_611  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [2]),
    .I2(\hd/ma_digs/image_addr<6> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_611_2071 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f56 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f53 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f63 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_79_2144 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_610_2070 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f56 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_79  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [2]),
    .I2(\hd/ma_digs/image_addr<8> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_79_2144 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_610  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [2]),
    .I2(\hd/ma_digs/image_addr<10> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_610_2070 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_69_2100 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_53_2039 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f53 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_69  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [2]),
    .I2(\hd/ma_digs/image_addr<12> [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_69_2100 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_53  (
    .I0(\hd/ma_digs/image_addr<13> [2]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_53_2039 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f62 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f62 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<1>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f52 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f55 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f62 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_82_2148 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_78_2143 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f52 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_82  (
    .I0(\hd/ma_digs/image_addr<0> [1]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_82_2148 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_78  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [1]),
    .I2(\hd/ma_digs/image_addr<2> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_78_2143 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_4  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_77_2142 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_68_2099 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f55 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_77  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [1]),
    .I2(\hd/ma_digs/image_addr<4> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_77_2142 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_68  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [1]),
    .I2(\hd/ma_digs/image_addr<6> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_68_2099 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f54 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f52 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f62 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_3  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_76_2141 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_67_2098 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f54 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_76  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [1]),
    .I2(\hd/ma_digs/image_addr<8> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_76_2141 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_67  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [1]),
    .I2(\hd/ma_digs/image_addr<10> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_67_2098 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_66_2097 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_52_2038 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f52 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_66  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [1]),
    .I2(\hd/ma_digs/image_addr<12> [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_66_2097 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_52  (
    .I0(\hd/ma_digs/image_addr<13> [1]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_52_2038 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_81  (
    .I0(\hd/ma_digs/image_addr<0> [10]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_81_2146 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_75  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [10]),
    .I2(\hd/ma_digs/image_addr<2> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_75_2140 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_74  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [10]),
    .I2(\hd/ma_digs/image_addr<4> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_74_2139 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_65  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [10]),
    .I2(\hd/ma_digs/image_addr<6> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_65_2096 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_73  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [10]),
    .I2(\hd/ma_digs/image_addr<8> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_73_2135 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_64  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [10]),
    .I2(\hd/ma_digs/image_addr<10> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_64_2095 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_63  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [10]),
    .I2(\hd/ma_digs/image_addr<12> [10]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_63_2091 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_51  (
    .I0(\hd/ma_digs/image_addr<13> [10]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_51_2036 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f6_2024 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f6_2002 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<0>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f5_2101 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f51 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f6_2024 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_8_2145 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_72_2124 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f5_2101 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/Mmux_address_out_mux0000_8  (
    .I0(\hd/ma_digs/image_addr<0> [0]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_8_2145 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_72  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<1> [0]),
    .I2(\hd/ma_digs/image_addr<2> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_72_2124 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_71_2113 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_62_2080 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f51 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_71  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<3> [0]),
    .I2(\hd/ma_digs/image_addr<4> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_71_2113 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_62  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<5> [0]),
    .I2(\hd/ma_digs/image_addr<6> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_62_2080 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f5_2046 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f5_2013 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f6_2002 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_7_2112 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_61_2069 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f5_2046 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_7  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<7> [0]),
    .I2(\hd/ma_digs/image_addr<8> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_7_2112 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_61  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<9> [0]),
    .I2(\hd/ma_digs/image_addr<10> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_61_2069 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_2068 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_2035 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f5_2013 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \hd/ma_digs/Mmux_address_out_mux0000_6  (
    .I0(\hd/ma_digs/the_sel/selected [0]),
    .I1(\hd/ma_digs/image_addr<11> [0]),
    .I2(\hd/ma_digs/image_addr<12> [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_2068 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \hd/ma_digs/Mmux_address_out_mux0000_5  (
    .I0(\hd/ma_digs/image_addr<13> [0]),
    .I1(\hd/ma_digs/the_sel/selected [0]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_2035 )
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<16>  (
    .CI(\hd/thehud/Madd_image_addr_cy [15]),
    .LI(\hd/thehud/Madd_image_addr_lut [16]),
    .O(\hd/thehud/image_addr [16])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<15>  (
    .CI(\hd/thehud/Madd_image_addr_cy [14]),
    .LI(\hd/thehud/Madd_image_addr_lut [15]),
    .O(\hd/thehud/image_addr [15])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<15>  (
    .CI(\hd/thehud/Madd_image_addr_cy [14]),
    .DI(\xvga1/vcount [6]),
    .S(\hd/thehud/Madd_image_addr_lut [15]),
    .O(\hd/thehud/Madd_image_addr_cy [15])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<14>  (
    .CI(\hd/thehud/Madd_image_addr_cy [13]),
    .LI(\hd/thehud/Madd_image_addr_lut [14]),
    .O(\hd/thehud/image_addr [14])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<14>  (
    .CI(\hd/thehud/Madd_image_addr_cy [13]),
    .DI(\xvga1/vcount [5]),
    .S(\hd/thehud/Madd_image_addr_lut [14]),
    .O(\hd/thehud/Madd_image_addr_cy [14])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<13>  (
    .CI(\hd/thehud/Madd_image_addr_cy [12]),
    .LI(\hd/thehud/Madd_image_addr_lut [13]),
    .O(\hd/thehud/image_addr [13])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<13>  (
    .CI(\hd/thehud/Madd_image_addr_cy [12]),
    .DI(\xvga1/vcount [4]),
    .S(\hd/thehud/Madd_image_addr_lut [13]),
    .O(\hd/thehud/Madd_image_addr_cy [13])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<12>  (
    .CI(\hd/thehud/Madd_image_addr_cy [11]),
    .LI(\hd/thehud/Madd_image_addr_lut [12]),
    .O(\hd/thehud/image_addr [12])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<12>  (
    .CI(\hd/thehud/Madd_image_addr_cy [11]),
    .DI(\xvga1/vcount [3]),
    .S(\hd/thehud/Madd_image_addr_lut [12]),
    .O(\hd/thehud/Madd_image_addr_cy [12])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<11>  (
    .CI(\hd/thehud/Madd_image_addr_cy [10]),
    .LI(\hd/thehud/Madd_image_addr_lut [11]),
    .O(\hd/thehud/image_addr [11])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<11>  (
    .CI(\hd/thehud/Madd_image_addr_cy [10]),
    .DI(\xvga1/vcount [2]),
    .S(\hd/thehud/Madd_image_addr_lut [11]),
    .O(\hd/thehud/Madd_image_addr_cy [11])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<10>  (
    .CI(\hd/thehud/Madd_image_addr_cy [9]),
    .LI(\hd/thehud/Madd_image_addr_lut [10]),
    .O(\hd/thehud/image_addr [10])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<10>  (
    .CI(\hd/thehud/Madd_image_addr_cy [9]),
    .DI(\xvga1/vcount [1]),
    .S(\hd/thehud/Madd_image_addr_lut [10]),
    .O(\hd/thehud/Madd_image_addr_cy [10])
  );
  XORCY   \hd/thehud/Madd_image_addr_xor<9>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/thehud/Madd_image_addr_lut [9]),
    .O(\hd/thehud/image_addr [9])
  );
  MUXCY   \hd/thehud/Madd_image_addr_cy<9>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/vcount [0]),
    .S(\hd/thehud/Madd_image_addr_lut [9]),
    .O(\hd/thehud/Madd_image_addr_cy [9])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<16>  (
    .CI(\hd/myblob/Madd_image_addr_cy [15]),
    .LI(\hd/myblob/Madd_image_addr_lut [16]),
    .O(\hd/myblob/image_addr [16])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<15>  (
    .CI(\hd/myblob/Madd_image_addr_cy [14]),
    .LI(\hd/myblob/Madd_image_addr_lut [15]),
    .O(\hd/myblob/image_addr [15])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<15>  (
    .CI(\hd/myblob/Madd_image_addr_cy [14]),
    .DI(\hd/myblob/image_addr_mult0001 [15]),
    .S(\hd/myblob/Madd_image_addr_lut [15]),
    .O(\hd/myblob/Madd_image_addr_cy [15])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<14>  (
    .CI(\hd/myblob/Madd_image_addr_cy [13]),
    .LI(\hd/myblob/Madd_image_addr_lut [14]),
    .O(\hd/myblob/image_addr [14])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<14>  (
    .CI(\hd/myblob/Madd_image_addr_cy [13]),
    .DI(\hd/myblob/image_addr_mult0001 [14]),
    .S(\hd/myblob/Madd_image_addr_lut [14]),
    .O(\hd/myblob/Madd_image_addr_cy [14])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<13>  (
    .CI(\hd/myblob/Madd_image_addr_cy [12]),
    .LI(\hd/myblob/Madd_image_addr_lut [13]),
    .O(\hd/myblob/image_addr [13])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<13>  (
    .CI(\hd/myblob/Madd_image_addr_cy [12]),
    .DI(\hd/myblob/image_addr_mult0001 [13]),
    .S(\hd/myblob/Madd_image_addr_lut [13]),
    .O(\hd/myblob/Madd_image_addr_cy [13])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<12>  (
    .CI(\hd/myblob/Madd_image_addr_cy [11]),
    .LI(\hd/myblob/Madd_image_addr_lut [12]),
    .O(\hd/myblob/image_addr [12])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<12>  (
    .CI(\hd/myblob/Madd_image_addr_cy [11]),
    .DI(\hd/myblob/image_addr_mult0001 [12]),
    .S(\hd/myblob/Madd_image_addr_lut [12]),
    .O(\hd/myblob/Madd_image_addr_cy [12])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<11>  (
    .CI(\hd/myblob/Madd_image_addr_cy [10]),
    .LI(\hd/myblob/Madd_image_addr_lut [11]),
    .O(\hd/myblob/image_addr [11])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<11>  (
    .CI(\hd/myblob/Madd_image_addr_cy [10]),
    .DI(\hd/myblob/image_addr_mult0001 [11]),
    .S(\hd/myblob/Madd_image_addr_lut [11]),
    .O(\hd/myblob/Madd_image_addr_cy [11])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<10>  (
    .CI(\hd/myblob/Madd_image_addr_cy [9]),
    .LI(\hd/myblob/Madd_image_addr_lut [10]),
    .O(\hd/myblob/image_addr [10])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<10>  (
    .CI(\hd/myblob/Madd_image_addr_cy [9]),
    .DI(\hd/myblob/image_addr_mult0001 [10]),
    .S(\hd/myblob/Madd_image_addr_lut [10]),
    .O(\hd/myblob/Madd_image_addr_cy [10])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<9>  (
    .CI(\hd/myblob/Madd_image_addr_cy [8]),
    .LI(\hd/myblob/Madd_image_addr_lut [9]),
    .O(\hd/myblob/image_addr [9])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<9>  (
    .CI(\hd/myblob/Madd_image_addr_cy [8]),
    .DI(\hd/myblob/image_addr_mult0001 [9]),
    .S(\hd/myblob/Madd_image_addr_lut [9]),
    .O(\hd/myblob/Madd_image_addr_cy [9])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<8>  (
    .CI(\hd/myblob/Madd_image_addr_cy [7]),
    .LI(\hd/myblob/Madd_image_addr_lut [8]),
    .O(\hd/myblob/image_addr [8])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<8>  (
    .CI(\hd/myblob/Madd_image_addr_cy [7]),
    .DI(\hd/myblob/image_addr_mult0001 [8]),
    .S(\hd/myblob/Madd_image_addr_lut [8]),
    .O(\hd/myblob/Madd_image_addr_cy [8])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<7>  (
    .CI(\hd/myblob/Madd_image_addr_cy [6]),
    .LI(\hd/myblob/Madd_image_addr_lut [7]),
    .O(\hd/myblob/image_addr [7])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<7>  (
    .CI(\hd/myblob/Madd_image_addr_cy [6]),
    .DI(\hd/myblob/image_addr_mult0001 [7]),
    .S(\hd/myblob/Madd_image_addr_lut [7]),
    .O(\hd/myblob/Madd_image_addr_cy [7])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<6>  (
    .CI(\hd/myblob/Madd_image_addr_cy [5]),
    .LI(\hd/myblob/Madd_image_addr_lut [6]),
    .O(\hd/myblob/image_addr [6])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<6>  (
    .CI(\hd/myblob/Madd_image_addr_cy [5]),
    .DI(\hd/myblob/image_addr_mult0001 [6]),
    .S(\hd/myblob/Madd_image_addr_lut [6]),
    .O(\hd/myblob/Madd_image_addr_cy [6])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<5>  (
    .CI(\hd/myblob/Madd_image_addr_cy [4]),
    .LI(\hd/myblob/Madd_image_addr_lut [5]),
    .O(\hd/myblob/image_addr [5])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<5>  (
    .CI(\hd/myblob/Madd_image_addr_cy [4]),
    .DI(\hd/myblob/image_addr_mult0001 [5]),
    .S(\hd/myblob/Madd_image_addr_lut [5]),
    .O(\hd/myblob/Madd_image_addr_cy [5])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<4>  (
    .CI(\hd/myblob/Madd_image_addr_cy [3]),
    .LI(\hd/myblob/Madd_image_addr_lut [4]),
    .O(\hd/myblob/image_addr [4])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<4>  (
    .CI(\hd/myblob/Madd_image_addr_cy [3]),
    .DI(\xvga1/hcount [4]),
    .S(\hd/myblob/Madd_image_addr_lut [4]),
    .O(\hd/myblob/Madd_image_addr_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\hd/myblob/image_addr_mult0001 [4]),
    .O(\hd/myblob/Madd_image_addr_lut [4])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<3>  (
    .CI(\hd/myblob/Madd_image_addr_cy [2]),
    .LI(\hd/myblob/Madd_image_addr_lut [3]),
    .O(\hd/myblob/image_addr [3])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<3>  (
    .CI(\hd/myblob/Madd_image_addr_cy [2]),
    .DI(\xvga1/hcount [3]),
    .S(\hd/myblob/Madd_image_addr_lut [3]),
    .O(\hd/myblob/Madd_image_addr_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/myblob/image_addr_mult0001 [3]),
    .O(\hd/myblob/Madd_image_addr_lut [3])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<2>  (
    .CI(\hd/myblob/Madd_image_addr_cy [1]),
    .LI(\hd/myblob/Madd_image_addr_lut [2]),
    .O(\hd/myblob/image_addr [2])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<2>  (
    .CI(\hd/myblob/Madd_image_addr_cy [1]),
    .DI(\xvga1/hcount [2]),
    .S(\hd/myblob/Madd_image_addr_lut [2]),
    .O(\hd/myblob/Madd_image_addr_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/myblob/image_addr_mult0001 [2]),
    .O(\hd/myblob/Madd_image_addr_lut [2])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<1>  (
    .CI(\hd/myblob/Madd_image_addr_cy [0]),
    .LI(\hd/myblob/Madd_image_addr_lut [1]),
    .O(\hd/myblob/image_addr [1])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<1>  (
    .CI(\hd/myblob/Madd_image_addr_cy [0]),
    .DI(\xvga1/hcount [1]),
    .S(\hd/myblob/Madd_image_addr_lut [1]),
    .O(\hd/myblob/Madd_image_addr_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/myblob/image_addr_mult0001 [1]),
    .O(\hd/myblob/Madd_image_addr_lut [1])
  );
  XORCY   \hd/myblob/Madd_image_addr_xor<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .LI(\hd/myblob/Madd_image_addr_lut [0]),
    .O(\hd/myblob/image_addr [0])
  );
  MUXCY   \hd/myblob/Madd_image_addr_cy<0>  (
    .CI(\a/ac97/Mmux__varindex0000_9 ),
    .DI(\xvga1/hcount [0]),
    .S(\hd/myblob/Madd_image_addr_lut [0]),
    .O(\hd/myblob/Madd_image_addr_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Madd_image_addr_lut<0>  (
    .I0(\xvga1/hcount [0]),
    .I1(\hd/myblob/image_addr_mult0001 [0]),
    .O(\hd/myblob/Madd_image_addr_lut [0])
  );
  MULT18X18   \hd/myblob/Mmult_image_addr_mult0001  (
    .A({\hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [10], 
\hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [10], 
\hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [10], \hd/myblob/image_addr_addsub0000 [9], 
\hd/myblob/image_addr_addsub0000 [8], \hd/myblob/image_addr_addsub0000 [7], \hd/myblob/image_addr_addsub0000 [6], \hd/myblob/image_addr_addsub0000 [5]
, \hd/myblob/image_addr_addsub0000 [4], \hd/myblob/image_addr_addsub0000 [3], \xvga1/vcount [2], \xvga1/vcount [1], \xvga1/vcount [0]}),
    .B({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , led_5_OBUF_3517, \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 }),
    .P({\NLW_hd/myblob/Mmult_image_addr_mult0001_P<35>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<34>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<33>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<32>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<31>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<30>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<29>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<28>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<27>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<26>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<25>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<24>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<23>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<22>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<21>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<20>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<19>_UNCONNECTED , \NLW_hd/myblob/Mmult_image_addr_mult0001_P<18>_UNCONNECTED , 
\NLW_hd/myblob/Mmult_image_addr_mult0001_P<17>_UNCONNECTED , \hd/myblob/image_addr_mult0001 [16], \hd/myblob/image_addr_mult0001 [15], 
\hd/myblob/image_addr_mult0001 [14], \hd/myblob/image_addr_mult0001 [13], \hd/myblob/image_addr_mult0001 [12], \hd/myblob/image_addr_mult0001 [11], 
\hd/myblob/image_addr_mult0001 [10], \hd/myblob/image_addr_mult0001 [9], \hd/myblob/image_addr_mult0001 [8], \hd/myblob/image_addr_mult0001 [7], 
\hd/myblob/image_addr_mult0001 [6], \hd/myblob/image_addr_mult0001 [5], \hd/myblob/image_addr_mult0001 [4], \hd/myblob/image_addr_mult0001 [3], 
\hd/myblob/image_addr_mult0001 [2], \hd/myblob/image_addr_mult0001 [1], \hd/myblob/image_addr_mult0001 [0]})
  );
  FDR   \hd/thehud/pixel_16  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [0]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [16])
  );
  FDR   \hd/thehud/pixel_17  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [1]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [17])
  );
  FDR   \hd/thehud/pixel_18  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [2]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [18])
  );
  FDR   \hd/thehud/pixel_19  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [3]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [19])
  );
  FDR   \hd/thehud/pixel_20  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [4]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [20])
  );
  FDR   \hd/thehud/pixel_21  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [5]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [21])
  );
  FDR   \hd/thehud/pixel_22  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [6]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [22])
  );
  FDR   \hd/thehud/pixel_23  (
    .C(clock_65mhz),
    .D(\hd/thehud/red_mapped [7]),
    .R(\hd/thehud/pixel_not0001 ),
    .Q(\hd/thehud/pixel [23])
  );
  FDR   \hd/myblob/pixel_0  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [0]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [0])
  );
  FDR   \hd/myblob/pixel_1  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [1]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [1])
  );
  FDR   \hd/myblob/pixel_2  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [2]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [2])
  );
  FDR   \hd/myblob/pixel_3  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [3]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [3])
  );
  FDR   \hd/myblob/pixel_4  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [4]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [4])
  );
  FDR   \hd/myblob/pixel_5  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [5]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [5])
  );
  FDR   \hd/myblob/pixel_6  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [6]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [6])
  );
  FDR   \hd/myblob/pixel_7  (
    .C(clock_65mhz),
    .D(\hd/myblob/blue_mapped [7]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [7])
  );
  FDR   \hd/myblob/pixel_8  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [0]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [8])
  );
  FDR   \hd/myblob/pixel_9  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [1]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [9])
  );
  FDR   \hd/myblob/pixel_10  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [2]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [10])
  );
  FDR   \hd/myblob/pixel_11  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [3]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [11])
  );
  FDR   \hd/myblob/pixel_12  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [4]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [12])
  );
  FDR   \hd/myblob/pixel_13  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [5]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [13])
  );
  FDR   \hd/myblob/pixel_14  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [6]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [14])
  );
  FDR   \hd/myblob/pixel_15  (
    .C(clock_65mhz),
    .D(\hd/myblob/green_mapped [7]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [15])
  );
  FDR   \hd/myblob/pixel_16  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [0]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [16])
  );
  FDR   \hd/myblob/pixel_17  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [1]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [17])
  );
  FDR   \hd/myblob/pixel_18  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [2]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [18])
  );
  FDR   \hd/myblob/pixel_19  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [3]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [19])
  );
  FDR   \hd/myblob/pixel_20  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [4]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [20])
  );
  FDR   \hd/myblob/pixel_21  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [5]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [21])
  );
  FDR   \hd/myblob/pixel_22  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [6]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [22])
  );
  FDR   \hd/myblob/pixel_23  (
    .C(clock_65mhz),
    .D(\hd/myblob/red_mapped [7]),
    .R(\hd/myblob/pixel_not0001 ),
    .Q(\hd/myblob/pixel [23])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db6/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db6/count [7]),
    .I1(\db6/count [4]),
    .I2(\db6/count [5]),
    .O(\db6/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db6/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/count_cmp_eq0000_wg_lut [0]),
    .O(\db6/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db6/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db6/count [6]),
    .I1(\db6/count [8]),
    .I2(\db6/count [3]),
    .I3(\db6/count [9]),
    .O(\db6/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db6/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db6/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/count_cmp_eq0000_wg_lut [1]),
    .O(\db6/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db6/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db6/count [12]),
    .I1(\db6/count [10]),
    .I2(\db6/count [1]),
    .I3(\db6/count [11]),
    .O(\db6/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db6/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db6/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/count_cmp_eq0000_wg_lut [2]),
    .O(\db6/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db6/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db6/count [13]),
    .I1(\db6/count [14]),
    .I2(\db6/count [0]),
    .I3(\db6/count [15]),
    .O(\db6/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db6/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db6/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/count_cmp_eq0000_wg_lut [3]),
    .O(\db6/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db6/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db6/count [16]),
    .I1(\db6/count [17]),
    .I2(\db6/count [2]),
    .I3(\db6/count [18]),
    .O(\db6/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db6/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db6/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db6/count_cmp_eq0000_wg_lut [4]),
    .O(\db6/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db5/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db5/count [7]),
    .I1(\db5/count [4]),
    .I2(\db5/count [5]),
    .O(\db5/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db5/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/count_cmp_eq0000_wg_lut [0]),
    .O(\db5/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db5/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db5/count [6]),
    .I1(\db5/count [8]),
    .I2(\db5/count [3]),
    .I3(\db5/count [9]),
    .O(\db5/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db5/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db5/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/count_cmp_eq0000_wg_lut [1]),
    .O(\db5/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db5/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db5/count [12]),
    .I1(\db5/count [10]),
    .I2(\db5/count [1]),
    .I3(\db5/count [11]),
    .O(\db5/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db5/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db5/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/count_cmp_eq0000_wg_lut [2]),
    .O(\db5/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db5/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db5/count [13]),
    .I1(\db5/count [14]),
    .I2(\db5/count [0]),
    .I3(\db5/count [15]),
    .O(\db5/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db5/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db5/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/count_cmp_eq0000_wg_lut [3]),
    .O(\db5/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db5/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db5/count [16]),
    .I1(\db5/count [17]),
    .I2(\db5/count [2]),
    .I3(\db5/count [18]),
    .O(\db5/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db5/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db5/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db5/count_cmp_eq0000_wg_lut [4]),
    .O(\db5/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db4/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db4/count [7]),
    .I1(\db4/count [4]),
    .I2(\db4/count [5]),
    .O(\db4/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db4/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/count_cmp_eq0000_wg_lut [0]),
    .O(\db4/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db4/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db4/count [6]),
    .I1(\db4/count [8]),
    .I2(\db4/count [3]),
    .I3(\db4/count [9]),
    .O(\db4/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db4/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db4/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/count_cmp_eq0000_wg_lut [1]),
    .O(\db4/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db4/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db4/count [12]),
    .I1(\db4/count [10]),
    .I2(\db4/count [1]),
    .I3(\db4/count [11]),
    .O(\db4/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db4/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db4/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/count_cmp_eq0000_wg_lut [2]),
    .O(\db4/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db4/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db4/count [13]),
    .I1(\db4/count [14]),
    .I2(\db4/count [0]),
    .I3(\db4/count [15]),
    .O(\db4/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db4/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db4/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/count_cmp_eq0000_wg_lut [3]),
    .O(\db4/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db4/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db4/count [16]),
    .I1(\db4/count [17]),
    .I2(\db4/count [2]),
    .I3(\db4/count [18]),
    .O(\db4/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db4/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db4/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db4/count_cmp_eq0000_wg_lut [4]),
    .O(\db4/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db3/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db3/count [7]),
    .I1(\db3/count [4]),
    .I2(\db3/count [5]),
    .O(\db3/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db3/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/count_cmp_eq0000_wg_lut [0]),
    .O(\db3/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db3/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db3/count [6]),
    .I1(\db3/count [8]),
    .I2(\db3/count [3]),
    .I3(\db3/count [9]),
    .O(\db3/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db3/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db3/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/count_cmp_eq0000_wg_lut [1]),
    .O(\db3/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db3/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db3/count [12]),
    .I1(\db3/count [10]),
    .I2(\db3/count [1]),
    .I3(\db3/count [11]),
    .O(\db3/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db3/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db3/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/count_cmp_eq0000_wg_lut [2]),
    .O(\db3/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db3/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db3/count [13]),
    .I1(\db3/count [14]),
    .I2(\db3/count [0]),
    .I3(\db3/count [15]),
    .O(\db3/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db3/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db3/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/count_cmp_eq0000_wg_lut [3]),
    .O(\db3/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db3/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db3/count [16]),
    .I1(\db3/count [17]),
    .I2(\db3/count [2]),
    .I3(\db3/count [18]),
    .O(\db3/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db3/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db3/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db3/count_cmp_eq0000_wg_lut [4]),
    .O(\db3/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db2/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db2/count [7]),
    .I1(\db2/count [4]),
    .I2(\db2/count [5]),
    .O(\db2/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db2/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/count_cmp_eq0000_wg_lut [0]),
    .O(\db2/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db2/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db2/count [6]),
    .I1(\db2/count [8]),
    .I2(\db2/count [3]),
    .I3(\db2/count [9]),
    .O(\db2/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db2/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db2/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/count_cmp_eq0000_wg_lut [1]),
    .O(\db2/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db2/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db2/count [12]),
    .I1(\db2/count [10]),
    .I2(\db2/count [1]),
    .I3(\db2/count [11]),
    .O(\db2/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db2/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db2/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/count_cmp_eq0000_wg_lut [2]),
    .O(\db2/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db2/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db2/count [13]),
    .I1(\db2/count [14]),
    .I2(\db2/count [0]),
    .I3(\db2/count [15]),
    .O(\db2/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db2/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db2/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/count_cmp_eq0000_wg_lut [3]),
    .O(\db2/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db2/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db2/count [16]),
    .I1(\db2/count [17]),
    .I2(\db2/count [2]),
    .I3(\db2/count [18]),
    .O(\db2/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db2/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db2/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db2/count_cmp_eq0000_wg_lut [4]),
    .O(\db2/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \db1/count_cmp_eq0000_wg_lut<0>  (
    .I0(\db1/count [7]),
    .I1(\db1/count [4]),
    .I2(\db1/count [5]),
    .O(\db1/count_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \db1/count_cmp_eq0000_wg_cy<0>  (
    .CI(led_5_OBUF_3517),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/count_cmp_eq0000_wg_lut [0]),
    .O(\db1/count_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db1/count_cmp_eq0000_wg_lut<1>  (
    .I0(\db1/count [6]),
    .I1(\db1/count [8]),
    .I2(\db1/count [3]),
    .I3(\db1/count [9]),
    .O(\db1/count_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \db1/count_cmp_eq0000_wg_cy<1>  (
    .CI(\db1/count_cmp_eq0000_wg_cy [0]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/count_cmp_eq0000_wg_lut [1]),
    .O(\db1/count_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \db1/count_cmp_eq0000_wg_lut<2>  (
    .I0(\db1/count [12]),
    .I1(\db1/count [10]),
    .I2(\db1/count [1]),
    .I3(\db1/count [11]),
    .O(\db1/count_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \db1/count_cmp_eq0000_wg_cy<2>  (
    .CI(\db1/count_cmp_eq0000_wg_cy [1]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/count_cmp_eq0000_wg_lut [2]),
    .O(\db1/count_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \db1/count_cmp_eq0000_wg_lut<3>  (
    .I0(\db1/count [13]),
    .I1(\db1/count [14]),
    .I2(\db1/count [0]),
    .I3(\db1/count [15]),
    .O(\db1/count_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \db1/count_cmp_eq0000_wg_cy<3>  (
    .CI(\db1/count_cmp_eq0000_wg_cy [2]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/count_cmp_eq0000_wg_lut [3]),
    .O(\db1/count_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \db1/count_cmp_eq0000_wg_lut<4>  (
    .I0(\db1/count [16]),
    .I1(\db1/count [17]),
    .I2(\db1/count [2]),
    .I3(\db1/count [18]),
    .O(\db1/count_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \db1/count_cmp_eq0000_wg_cy<4>  (
    .CI(\db1/count_cmp_eq0000_wg_cy [3]),
    .DI(\a/ac97/Mmux__varindex0000_9 ),
    .S(\db1/count_cmp_eq0000_wg_lut [4]),
    .O(\db1/count_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \disp/state_FSM_Out31  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .I2(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/state_cmp_eq0006 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a/cmds/command_cmp_eq00011  (
    .I0(\a/cmds/state [3]),
    .I1(\a/cmds/state [2]),
    .I2(\a/cmds/state [0]),
    .I3(\a/cmds/state [1]),
    .O(\a/cmds/command_valid_not0001_inv )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \a1/sqmag/bit_mux0000<0>1  (
    .I0(\a1/sqmag/bit [0]),
    .I1(\a1/sqmag/busy_1023 ),
    .O(\a1/sqmag/bit_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \a/cmds/Result<1>1  (
    .I0(\a/cmds/state [1]),
    .I1(\a/cmds/state [0]),
    .O(\a/cmds/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \disp/Mcount_count_xor<1>11  (
    .I0(\disp/count [1]),
    .I1(\disp/count [0]),
    .O(\disp/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  \a1/sqmag/bit_mux0000<1>1  (
    .I0(\a1/sqmag/bit [1]),
    .I1(\a1/sqmag/busy_1023 ),
    .I2(\a1/sqmag/bit [0]),
    .O(\a1/sqmag/bit_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \disp/Mcount_count_xor<2>11  (
    .I0(\disp/count [2]),
    .I1(\disp/count [0]),
    .I2(\disp/count [1]),
    .O(\disp/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_volume_xor<1>11  (
    .I0(volume[0]),
    .I1(\db2/clean_1313 ),
    .I2(volume[1]),
    .O(\Result<1>6 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_volume_or_selection_xor<1>11  (
    .I0(volume_or_selection[0]),
    .I1(\db5/clean_1532 ),
    .I2(volume_or_selection[1]),
    .O(\Result<1>8 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_num_xor<1>11  (
    .I0(num[0]),
    .I1(num[1]),
    .I2(\db2/clean_1313 ),
    .O(\Result<1>9 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mcount_blob_xor<1>11  (
    .I0(blob[1]),
    .I1(blob[0]),
    .I2(\db2/clean_1313 ),
    .O(\Result<1>7 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \disp/Result<3>1  (
    .I0(\disp/count [3]),
    .I1(\disp/count [0]),
    .I2(\disp/count [2]),
    .I3(\disp/count [1]),
    .O(\disp/Result [3])
  );
  LUT4 #(
    .INIT ( 16'hCDC8 ))
  \disp/disp_reset_b_mux00001  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/disp_reset_b_1797 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .I3(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/disp_reset_b_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hF1E1 ))
  \disp/disp_ce_b_mux00001  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_FSM_FFd3_1884 ),
    .I3(\disp/disp_ce_b_1787 ),
    .O(\disp/disp_ce_b_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hEE48 ))
  \disp/disp_rs_mux00001  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/disp_rs_1799 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .I3(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/disp_rs_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hC1D7 ))
  \a/cmds/command_or00012  (
    .I0(\a/cmds/state [1]),
    .I1(\a/cmds/state [2]),
    .I2(\a/cmds/state [3]),
    .I3(\a/cmds/state [0]),
    .O(\a/cmds/command_or0001 )
  );
  LUT4 #(
    .INIT ( 16'h1420 ))
  \a/cmds/command_mux0000<6>11  (
    .I0(\a/cmds/state [2]),
    .I1(\a/cmds/state [0]),
    .I2(\a/cmds/state [1]),
    .I3(\a/cmds/state [3]),
    .O(\a/cmds/command_mux0000[6] )
  );
  LUT4 #(
    .INIT ( 16'h2660 ))
  \a/cmds/command_mux0000<4>11  (
    .I0(\a/cmds/state [2]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [1]),
    .I3(\a/cmds/state [0]),
    .O(\a/cmds/command_mux0000[4] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  num_not00011 (
    .I0(volume_or_selection[0]),
    .I1(N54),
    .O(num_not0001)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blob_not00011 (
    .I0(volume_or_selection[0]),
    .I1(N54),
    .O(blob_not0001)
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  blob_not000121 (
    .I0(\db3/clean_1386 ),
    .I1(volume_or_selection[1]),
    .I2(reset),
    .I3(\db2/clean_1313 ),
    .O(N54)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \disp/dot_index_mux0000<4>41  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/N24 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \a/cmds/command_or000111  (
    .I0(\a/cmds/state [1]),
    .I1(\a/cmds/state [0]),
    .O(\a/cmds/N01 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a1/state_cmp_eq00001  (
    .I0(\a1/xk_index [11]),
    .I1(\a1/xk_index [10]),
    .I2(\a1/xk_index [13]),
    .I3(\a1/xk_index [12]),
    .O(\a1/state_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \a/cmds/command_mux0000<20>21  (
    .I0(\a/cmds/state [1]),
    .I1(\a/cmds/state [2]),
    .I2(\a/cmds/state [0]),
    .I3(\a/cmds/state [3]),
    .O(\a/cmds/command_cmp_eq0006 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/state_FSM_FFd2-In1  (
    .I0(\a1/state_FSM_FFd2_1042 ),
    .I1(ready),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/state_cmp_eq0000 ),
    .O(\a1/state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hF8A8 ))
  \a1/state_FSM_FFd1-In1  (
    .I0(\a1/state_FSM_FFd2_1042 ),
    .I1(\a1/state_cmp_eq0000 ),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/sqmag/busy_1023 ),
    .O(\a1/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hA9FF ))
  \a1/sqmag/bit_mux0000<3>1  (
    .I0(\a1/sqmag/bit [3]),
    .I1(\a1/sqmag/bit [2]),
    .I2(\a1/sqmag/Msub_bit_addsub0000_cy [1]),
    .I3(\a1/sqmag/busy_1023 ),
    .O(\a1/sqmag/bit_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h9AA9 ))
  \Mcount_volume_xor<3>11  (
    .I0(volume[3]),
    .I1(N6),
    .I2(\db2/clean_1313 ),
    .I3(volume[2]),
    .O(\Result<3>6 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \disp/dreset4  (
    .I0(\disp/reset_count [4]),
    .I1(\disp/reset_count [3]),
    .I2(\disp/reset_count [2]),
    .I3(\disp/reset_count [1]),
    .O(\disp/dreset4_1859 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \disp/dreset9  (
    .I0(\disp/reset_count [0]),
    .I1(\disp/reset_count [7]),
    .I2(\disp/reset_count [6]),
    .I3(\disp/reset_count [5]),
    .O(\disp/dreset9_1860 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/dreset10  (
    .I0(\disp/dreset4_1859 ),
    .I1(\disp/dreset9_1860 ),
    .O(\disp/dreset )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \divisor<8>1  (
    .I0(divisor[9]),
    .I1(dout[8]),
    .O(divisor[8])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<7>1  (
    .I0(dout[7]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[7])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<6>1  (
    .I0(dout[6]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[6])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<5>1  (
    .I0(dout[5]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[5])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<4>1  (
    .I0(dout[4]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[4])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<3>1  (
    .I0(dout[3]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[3])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<2>1  (
    .I0(dout[2]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[2])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<1>1  (
    .I0(dout[1]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[1])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \divisor<0>1  (
    .I0(dout[0]),
    .I1(divisor[9]),
    .I2(dout[8]),
    .O(divisor[0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a/ac97/l_left_data_cmp_le00001  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [7]),
    .I3(\a/ac97/bit_count [6]),
    .O(\a/ac97/l_left_data_cmp_le0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \a/ac97/ready_mux00004  (
    .I0(\a/ac97/bit_count [7]),
    .I1(\a/ac97/bit_count [6]),
    .I2(\a/ac97/bit_count [5]),
    .I3(\a/ac97/bit_count [0]),
    .O(\a/ac97/ready_mux00004_499 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \a/ac97/ready_mux000012  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/bit_count [1]),
    .I2(\a/ac97/bit_count [4]),
    .I3(\a/ac97/bit_count [3]),
    .O(\a/ac97/ready_mux000012_498 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \a/ac97/ready_mux000041  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/bit_count [4]),
    .I2(\a/ac97/bit_count [3]),
    .I3(\a/ac97/bit_count [7]),
    .O(\a/ac97/ready_mux000041_500 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \a/ac97/ready_mux000054  (
    .I0(\a/ac97/bit_count [6]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [1]),
    .I3(\a/ac97/bit_count [0]),
    .O(\a/ac97/ready_mux000054_501 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a/ac97/ready_mux000055  (
    .I0(\a/ac97/ready_mux000041_500 ),
    .I1(\a/ac97/ready_mux000054_501 ),
    .O(\a/ac97/ready_mux000055_502 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \a/ac97/ac97_synch_mux00004  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [7]),
    .I2(\a/ac97/bit_count [6]),
    .I3(\a/ac97/bit_count [5]),
    .O(\a/ac97/ac97_synch_mux00004_415 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \a/ac97/ac97_synch_mux000017  (
    .I0(\a/ac97/bit_count [3]),
    .I1(\a/ac97/bit_count [2]),
    .I2(\a/ac97/bit_count [1]),
    .I3(\a/ac97/bit_count [0]),
    .O(\a/ac97/ac97_synch_mux000017_413 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \a1/sqmag/bit_cmp_eq00002  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/bit [1]),
    .I2(\a1/sqmag/bit [0]),
    .I3(\a1/sqmag/N01 ),
    .O(\a1/sqmag/bit_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \a/ac97/l_left_data_not00012  (
    .I0(\a/ac97/bit_count [5]),
    .I1(\a/ac97/bit_count [6]),
    .I2(N62),
    .I3(\a/ac97/bit_count [4]),
    .O(\a/ac97/l_cmd_addr_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \a/audio_reset_b_cmp_eq000010  (
    .I0(\a/reset_count [3]),
    .I1(\a/reset_count [2]),
    .I2(\a/reset_count [1]),
    .I3(\a/reset_count [0]),
    .O(\a/audio_reset_b_cmp_eq000010_506 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<9>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [9]),
    .O(\a1/sqmag/answer_mux0000 [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<8>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [8]),
    .O(\a1/sqmag/answer_mux0000 [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<7>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [7]),
    .O(\a1/sqmag/answer_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<6>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [6]),
    .O(\a1/sqmag/answer_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<5>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [5]),
    .O(\a1/sqmag/answer_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<4>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [4]),
    .O(\a1/sqmag/answer_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<3>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [3]),
    .O(\a1/sqmag/answer_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<2>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [2]),
    .O(\a1/sqmag/answer_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<1>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [1]),
    .O(\a1/sqmag/answer_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<13>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [13]),
    .O(\a1/sqmag/answer_mux0000 [13])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<12>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [12]),
    .O(\a1/sqmag/answer_mux0000 [12])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<11>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [11]),
    .O(\a1/sqmag/answer_mux0000 [11])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<10>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [10]),
    .O(\a1/sqmag/answer_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/answer_mux0000<0>1  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/trial [0]),
    .O(\a1/sqmag/answer_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h7E ))
  \Mcount_volume_xor<2>111  (
    .I0(volume[0]),
    .I1(volume[1]),
    .I2(\db2/clean_1313 ),
    .O(N6)
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \a/ac97/l_left_data_not00016  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/N18 ),
    .I2(\a/ac97/bit_count [3]),
    .O(\a/ac97/l_left_data_not00016_487 )
  );
  LUT4 #(
    .INIT ( 16'h0F02 ))
  \a/ac97/l_left_data_not000139  (
    .I0(\a/ac97/l_left_data_not000116_484 ),
    .I1(\a/ac97/bit_count [6]),
    .I2(\a/ac97/bit_count [7]),
    .I3(\a/ac97/l_left_data_not00016_487 ),
    .O(\a/ac97/l_left_data_not000139_486 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ready1  (
    .I0(\a/ready_sync [2]),
    .I1(\a/ready_sync [1]),
    .O(ready)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<9>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [8]),
    .O(\a/ac97/l_left_data_mux0000 [9])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<8>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [7]),
    .O(\a/ac97/l_left_data_mux0000 [8])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<7>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [6]),
    .O(\a/ac97/l_left_data_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<6>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [5]),
    .O(\a/ac97/l_left_data_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<5>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [4]),
    .O(\a/ac97/l_left_data_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<3>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [2]),
    .O(\a/ac97/l_left_data_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<2>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [1]),
    .O(\a/ac97/l_left_data_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<1>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [0]),
    .O(\a/ac97/l_left_data_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<19>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [18]),
    .O(\a/ac97/l_left_data_mux0000 [19])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<18>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [17]),
    .O(\a/ac97/l_left_data_mux0000 [18])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<17>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [16]),
    .O(\a/ac97/l_left_data_mux0000 [17])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<16>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [15]),
    .O(\a/ac97/l_left_data_mux0000 [16])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<15>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [14]),
    .O(\a/ac97/l_left_data_mux0000 [15])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<14>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [13]),
    .O(\a/ac97/l_left_data_mux0000 [14])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<13>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [12]),
    .O(\a/ac97/l_left_data_mux0000 [13])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<12>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [11]),
    .O(\a/ac97/l_left_data_mux0000 [12])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<11>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [10]),
    .O(\a/ac97/l_left_data_mux0000 [11])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<10>2  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [9]),
    .O(\a/ac97/l_left_data_mux0000 [10])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/l_left_data_mux0000<0>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [19]),
    .O(\a/ac97/l_left_data_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a/ac97/l_left_data_mux0000<4>1  (
    .I0(\a/ac97/N0 ),
    .I1(\a/ac97/l_left_data [3]),
    .I2(\a/out_data [0]),
    .O(\a/ac97/l_left_data_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h62AA ))
  \disp/char_index_mux0000<3>_SW0  (
    .I0(\disp/char_index [0]),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/N8 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \disp/char_index_mux0000<3>  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(N66),
    .I2(\disp/char_index [0]),
    .I3(\disp/N24 ),
    .O(\disp/char_index_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \a/ac97/l_left_data_mux0000<10>1_SW0  (
    .I0(\a/ac97/l_left_data_and0000_460 ),
    .I1(\a/ac97/N11 ),
    .I2(\a/ac97/l_left_data_and0001_461 ),
    .I3(\a/ac97/bit_count [7]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hAAAB ))
  \a/ac97/l_left_data_mux0000<10>1  (
    .I0(N68),
    .I1(\a/ac97/bit_count [4]),
    .I2(\a/ac97/bit_count [6]),
    .I3(\a/ac97/bit_count [5]),
    .O(\a/ac97/N0 )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \disp/char_index_mux0000<0>35  (
    .I0(\disp/char_index [3]),
    .I1(\disp/char_index_mux0000<0>12 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/N24 ),
    .O(\disp/char_index_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Madd_yvcount_sub0000_xor<9>11  (
    .I0(\xvga1/vcount [9]),
    .I1(\xvga1/vcount [8]),
    .O(yvcount_sub0000[9])
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  \disp/dot_index_mux0000<0>21  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .I2(\disp/char_index [0]),
    .I3(\disp/N8 ),
    .O(\disp/N12 )
  );
  LUT4 #(
    .INIT ( 16'hCF44 ))
  \disp/state_FSM_FFd3-In_SW0  (
    .I0(\disp/state_cmp_eq0000_1886 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \disp/state_FSM_FFd3-In  (
    .I0(N70),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .I2(\disp/N8 ),
    .I3(\disp/N32 ),
    .O(\disp/state_FSM_FFd3-In_1885 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \disp/char_index_mux0000<1>8  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/char_index [0]),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .I3(\disp/char_index [1]),
    .O(\disp/char_index_mux0000<1>8_1756 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \a/ac97/ac97_sdata_out_mux000021  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [3]),
    .I2(\a/ac97/bit_count [2]),
    .O(\a/ac97/N8 )
  );
  LUT3 #(
    .INIT ( 8'hE6 ))
  \disp/state_FSM_FFd2-In_SW0  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hEA66 ))
  \disp/state_FSM_FFd2-In_SW1  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/char_index [0]),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(N77)
  );
  LUT4 #(
    .INIT ( 16'hFD20 ))
  \disp/state_FSM_FFd2-In  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/N8 ),
    .I2(N77),
    .I3(N76),
    .O(\disp/state_FSM_FFd2-In_1883 )
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \disp/char_index_mux0000<1>14  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/char_index [0]),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(\disp/N32 )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \disp/dot_index_mux0000<4>51  (
    .I0(\disp/N38 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/char_index [0]),
    .I3(\disp/N8 ),
    .O(\disp/dot_index_mux0000<4>5 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \disp/dot_index_mux0000<4>106  (
    .I0(\disp/N92 ),
    .I1(\disp/N34 ),
    .I2(\disp/state_cmp_eq0000_1886 ),
    .O(\disp/dot_index_mux0000<4>106_1831 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \disp/dot_index_mux0000<0>71  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .O(\disp/N34 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \disp/dot_index_mux0000<5>31  (
    .I0(\disp/state_cmp_eq0000_1886 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_FSM_FFd2_1882 ),
    .I3(\disp/dot_index [0]),
    .O(\disp/N37 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \disp/state_cmp_eq0000_SW0  (
    .I0(\disp/dot_index [8]),
    .I1(\disp/dot_index [9]),
    .I2(\disp/dot_index [7]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \disp/state_cmp_eq0000  (
    .I0(\disp/dot_index [5]),
    .I1(\disp/dot_index [6]),
    .I2(N83),
    .I3(\disp/N92 ),
    .O(\disp/state_cmp_eq0000_1886 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \a/ac97/l_left_data_and0001_SW0  (
    .I0(\a/ac97/bit_count [6]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [7]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h0706 ))
  \a/ac97/l_left_data_and0001  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [3]),
    .I2(N85),
    .I3(\a/ac97/bit_count [2]),
    .O(\a/ac97/l_left_data_and0001_461 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \a/ac97/l_left_data_not0001132  (
    .I0(\a/ac97/bit_count [6]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [4]),
    .O(\a/ac97/N18 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \disp/dot_index_mux0000<0>81  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_cmp_eq0001_1888 ),
    .O(\disp/N38 )
  );
  LUT4 #(
    .INIT ( 16'h028A ))
  \disp/dot_index_mux0000<5>421  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_FSM_FFd3_1884 ),
    .I3(\disp/state_cmp_eq0001_1888 ),
    .O(\disp/N99 )
  );
  LUT4 #(
    .INIT ( 16'hF323 ))
  \disp/dot_index_mux0000<3>34  (
    .I0(\disp/state_cmp_eq0000_1886 ),
    .I1(\disp/N34 ),
    .I2(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I3(\disp/N99 ),
    .O(\disp/dot_index_mux0000<3>34_1829 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/dot_index_mux0000<1>2  (
    .I0(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I1(\disp/dot_index [7]),
    .I2(\disp/dot_index [6]),
    .O(\disp/dot_index_mux0000<1>2_1821 )
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \disp/dot_index_mux0000<1>18  (
    .I0(\disp/dot_index [7]),
    .I1(\disp/dot_index [6]),
    .I2(\disp/state_cmp_eq0000_1886 ),
    .I3(\disp/Maddsub_dot_index_share0000_cy [5]),
    .O(\disp/dot_index_mux0000<1>18_1820 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \disp/dot_index_mux0000<1>30  (
    .I0(\disp/N99 ),
    .I1(\disp/dot_index_mux0000<1>2_1821 ),
    .I2(\disp/dot_index_mux0000<1>18_1820 ),
    .I3(\disp/N34 ),
    .O(\disp/dot_index_mux0000<1>30_1822 )
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \disp/dot_index_mux0000<1>72  (
    .I0(\disp/dot_index [8]),
    .I1(\disp/dot_index_mux0000<1>63_1823 ),
    .I2(\disp/N76 ),
    .I3(\disp/dot_index_mux0000<1>30_1822 ),
    .O(\disp/dot_index_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAA6A ))
  \disp/dot_index_mux0000<2>36  (
    .I0(\disp/dot_index [7]),
    .I1(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I2(\disp/dot_index [6]),
    .I3(\disp/state_cmp_eq0000_1886 ),
    .O(\disp/dot_index_mux0000<2>36_1824 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \disp/dot_index_mux0000<2>44  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/dot_index_mux0000<0>33 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \disp/dot_index_mux0000<2>83  (
    .I0(\disp/N99 ),
    .I1(\disp/dot_index [6]),
    .I2(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I3(\disp/N76 ),
    .O(\disp/dot_index_mux0000<2>83_1825 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \disp/dot_index_mux0000<7>9  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/dot_index_mux0000<5>75 )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \disp/dot_index_mux0000<7>13  (
    .I0(\disp/dot_index_mux0000<5>75 ),
    .I1(\disp/dot_index [1]),
    .I2(\disp/dot_index [0]),
    .I3(\disp/state_cmp_eq0000_1886 ),
    .O(\disp/dot_index_mux0000<7>13_1853 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \disp/dot_index_mux0000<7>28  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/dot_index [1]),
    .I3(\disp/dot_index [0]),
    .O(\disp/dot_index_mux0000<7>28_1854 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/dot_index_mux0000<7>65  (
    .I0(\disp/dot_index [1]),
    .I1(\disp/dot_index [0]),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(\disp/dot_index_mux0000<7>65_1855 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \disp/dot_index_mux0000<6>0  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/dot_index_mux0000<5>0 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \disp/dot_index_mux0000<6>3  (
    .I0(\disp/N37 ),
    .I1(\disp/dot_index [2]),
    .I2(\disp/dot_index [1]),
    .O(\disp/dot_index_mux0000<6>3_1848 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/dot_index_mux0000<6>18  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/N26 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(\disp/dot_index_mux0000<6>18_1847 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \disp/dot_index_mux0000<6>43  (
    .I0(\disp/dot_index_mux0000<6>18_1847 ),
    .I1(\disp/dot_index [3]),
    .I2(\disp/dot_index_mux0000<6>3_1848 ),
    .I3(\disp/dot_index_mux0000<5>0 ),
    .O(\disp/dot_index_mux0000<6>43_1849 )
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \disp/dot_index_mux0000<6>67  (
    .I0(\disp/dot_index [1]),
    .I1(\disp/dot_index [0]),
    .I2(\disp/state_cmp_eq0000_1886 ),
    .I3(\disp/dot_index [2]),
    .O(\disp/dot_index_mux0000<6>67_1850 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \disp/dot_index_mux0000<6>81  (
    .I0(\disp/N26 ),
    .I1(\disp/N99 ),
    .I2(\disp/dot_index_mux0000<6>67_1850 ),
    .I3(\disp/dot_index_mux0000<5>75 ),
    .O(\disp/dot_index_mux0000<6>81_1851 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \disp/dot_index_mux0000<6>101  (
    .I0(\disp/N79 ),
    .I1(\disp/dot_index [3]),
    .I2(\disp/dot_index_mux0000<6>81_1851 ),
    .O(\disp/dot_index_mux0000<6>101_1846 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/dot_index_mux0000<5>15  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/N29 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(\disp/dot_index_mux0000<5>15_1839 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \disp/dot_index_mux0000<5>311  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/dot_index [1]),
    .I2(\disp/dot_index [4]),
    .I3(\disp/dot_index [2]),
    .O(\disp/dot_index_mux0000<5>31_1840 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \disp/dot_index_mux0000<5>39  (
    .I0(\disp/dot_index_mux0000<5>0 ),
    .I1(\disp/N37 ),
    .I2(\disp/dot_index_mux0000<5>31_1840 ),
    .I3(\disp/dot_index_mux0000<5>15_1839 ),
    .O(\disp/dot_index_mux0000<5>39_1841 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \disp/dot_index_mux0000<5>53  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/N99 ),
    .I2(\disp/N26 ),
    .O(\disp/dot_index_mux0000<5>53_1842 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \disp/dot_index_mux0000<5>66  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/dot_index [2]),
    .I2(\disp/dot_index [1]),
    .I3(\disp/dot_index [0]),
    .O(\disp/dot_index_mux0000<5>66_1843 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \disp/dot_index_mux0000<5>112  (
    .I0(\disp/N79 ),
    .I1(\disp/dot_index [4]),
    .I2(\disp/dot_index_mux0000<5>53_1842 ),
    .I3(\disp/dot_index_mux0000<5>77_1845 ),
    .O(\disp/dot_index_mux0000<5>112_1838 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \disp/dot_index_mux0000<0>1211  (
    .I0(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I1(\disp/dot_index [7]),
    .I2(\disp/N34 ),
    .I3(\disp/dot_index [6]),
    .O(\disp/N97 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/number_13_not00011  (
    .I0(blob[0]),
    .I1(\hd/ma_digs/N24 ),
    .O(\hd/ma_digs/number_13_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \hd/ma_digs/number_12_not00012  (
    .I0(blob[0]),
    .I1(\hd/ma_digs/N24 ),
    .O(\hd/ma_digs/number_12_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_9_not00011  (
    .I0(\hd/ma_digs/N11 ),
    .I1(blob[0]),
    .I2(blob[1]),
    .O(\hd/ma_digs/number_9_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \hd/ma_digs/number_8_not00011  (
    .I0(\hd/ma_digs/N11 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_8_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/number_7_not00011  (
    .I0(blob[1]),
    .I1(blob[0]),
    .I2(\hd/ma_digs/N2 ),
    .O(\hd/ma_digs/number_7_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_6_not00011  (
    .I0(\hd/ma_digs/N2 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_6_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_5_not00011  (
    .I0(\hd/ma_digs/N2 ),
    .I1(blob[0]),
    .I2(blob[1]),
    .O(\hd/ma_digs/number_5_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_4_not000111  (
    .I0(\db6/clean_1605 ),
    .I1(blob[2]),
    .I2(blob[3]),
    .O(\hd/ma_digs/N2 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \hd/ma_digs/number_4_not00011  (
    .I0(\hd/ma_digs/N2 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_4_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/number_3_not00011  (
    .I0(blob[1]),
    .I1(blob[0]),
    .I2(\hd/ma_digs/N3 ),
    .O(\hd/ma_digs/number_3_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_2_not00011  (
    .I0(\hd/ma_digs/N3 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_2_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_1_not00011  (
    .I0(\hd/ma_digs/N3 ),
    .I1(blob[0]),
    .I2(blob[1]),
    .O(\hd/ma_digs/number_1_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/number_11_not00011  (
    .I0(blob[1]),
    .I1(blob[0]),
    .I2(\hd/ma_digs/N11 ),
    .O(\hd/ma_digs/number_11_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_10_not000111  (
    .I0(\db6/clean_1605 ),
    .I1(blob[3]),
    .I2(blob[2]),
    .O(\hd/ma_digs/N11 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \hd/ma_digs/number_10_not00011  (
    .I0(\hd/ma_digs/N11 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_10_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \hd/ma_digs/number_0_not000111  (
    .I0(\db6/clean_1605 ),
    .I1(blob[2]),
    .I2(blob[3]),
    .O(\hd/ma_digs/N3 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \hd/ma_digs/number_0_not00011  (
    .I0(\hd/ma_digs/N3 ),
    .I1(blob[1]),
    .I2(blob[0]),
    .O(\hd/ma_digs/number_0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \hd/ma_digs/number_12_not000111  (
    .I0(blob[2]),
    .I1(\db6/clean_1605 ),
    .I2(blob[1]),
    .I3(blob[3]),
    .O(\hd/ma_digs/N24 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \disp/dot_index_mux0000<0>5  (
    .I0(\disp/Maddsub_dot_index_share0000_cy [5]),
    .I1(\disp/dot_index [8]),
    .I2(\disp/dot_index [7]),
    .I3(\disp/dot_index [6]),
    .O(\disp/dot_index_mux0000<0>5_1817 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \disp/dot_index_mux0000<0>25  (
    .I0(\disp/dot_index [7]),
    .I1(\disp/dot_index [6]),
    .I2(\disp/dot_index [8]),
    .I3(\disp/Maddsub_dot_index_share0000_cy [5]),
    .O(\disp/dot_index_mux0000<0>25_1814 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \disp/dot_index_mux0000<0>47  (
    .I0(\disp/N99 ),
    .I1(\disp/dot_index_mux0000<0>5_1817 ),
    .I2(\disp/dot_index_mux0000<0>25_1814 ),
    .I3(\disp/dot_index_mux0000<0>33 ),
    .O(\disp/dot_index_mux0000<0>47_1816 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \disp/dot_index_mux0000<2>48  (
    .I0(\disp/dot_index [7]),
    .I1(\disp/N31 ),
    .O(\disp/N102 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/dot_index_mux0000<6>23  (
    .I0(\disp/dot_index [2]),
    .I1(\disp/dot_index [1]),
    .I2(\disp/dot_index [0]),
    .O(\disp/N26 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/dot_index_mux0000<4>56  (
    .I0(\disp/N26 ),
    .I1(\disp/dot_index [4]),
    .I2(\disp/dot_index [3]),
    .O(\disp/N29 )
  );
  LUT4 #(
    .INIT ( 16'hF8A8 ))
  \disp/Maddsub_dot_index_share0000_cy<5>11  (
    .I0(\disp/dot_index [5]),
    .I1(\disp/N92 ),
    .I2(\disp/N34 ),
    .I3(\disp/N29 ),
    .O(\disp/Maddsub_dot_index_share0000_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/state_cmp_eq0001_SW0  (
    .I0(\disp/dot_index [8]),
    .I1(\disp/dot_index [7]),
    .I2(\disp/N29 ),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \disp/state_cmp_eq0001  (
    .I0(\disp/dot_index [6]),
    .I1(\disp/dot_index [5]),
    .I2(\disp/dot_index [9]),
    .I3(N98),
    .O(\disp/state_cmp_eq0001_1888 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \disp/dot_index_mux0000<0>6_SW0  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/Maddsub_dot_index_share0000_cy [5]),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \disp/dot_index_mux0000<0>6  (
    .I0(\disp/dot_index [6]),
    .I1(N100),
    .I2(\disp/state_FSM_FFd3_1884 ),
    .I3(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/N31 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>31  (
    .I0(\hd/ma_digs/num_sel_out [3]),
    .I1(\hd/ma_digs/num_sel_out [1]),
    .I2(\hd/ma_digs/num_sel_out [2]),
    .O(\hd/ma_digs/the_dig/N14 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \a/ac97/left_in_data_and000024  (
    .I0(\a/ac97/bit_count [5]),
    .I1(\a/ac97/bit_count [3]),
    .I2(\a/ac97/bit_count [6]),
    .I3(\a/ac97/bit_count [4]),
    .O(\a/ac97/left_in_data_and000024_495 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \a/ac97/left_in_data_and000048  (
    .I0(\a/ac97/bit_count [7]),
    .I1(\a/ac97/left_in_data_and000025_496 ),
    .I2(\a/ac97/left_in_data_and000013 ),
    .O(\a/ac97/left_in_data_and0000 )
  );
  LUT4 #(
    .INIT ( 16'hEB28 ))
  \a/ac97/ac97_sdata_out_mux000059  (
    .I0(\a/ac97/Mmux__varindex0001_5_f7_372 ),
    .I1(\a/ac97/bit_count [3]),
    .I2(\a/ac97/bit_count [4]),
    .I3(\a/ac97/Mmux__varindex0001_6_f5_373 ),
    .O(\a/ac97/ac97_sdata_out_mux000059_410 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/ac97/ac97_sdata_out_mux0000111  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [6]),
    .I2(\a/ac97/bit_count [5]),
    .O(\a/ac97/ac97_sdata_out_mux0000111_402 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \a/ac97/ac97_sdata_out_mux0000118  (
    .I0(\a/ac97/l_left_data [19]),
    .I1(\a/ac97/N11 ),
    .I2(\a/ac97/Mmux__varindex0002_5_f7_385 ),
    .I3(\a/ac97/ac97_sdata_out_mux0000111_402 ),
    .O(\a/ac97/ac97_sdata_out_mux0000118_403 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \a/ac97/ac97_sdata_out_mux0000136  (
    .I0(\a/ac97/bit_count [7]),
    .I1(\a/ac97/l_left_data_and0000_460 ),
    .I2(\a/ac97/l_left_data_and0001_461 ),
    .I3(\a/ac97/l_left_v_488 ),
    .O(\a/ac97/ac97_sdata_out_mux0000136_404 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/ac97_sdata_out_mux0000213  (
    .I0(\a/ac97/bit_count [3]),
    .I1(\a/ac97/l_left_data_cmp_le0000 ),
    .O(\a/ac97/ac97_sdata_out_mux0000213_407 )
  );
  LUT4 #(
    .INIT ( 16'h88C8 ))
  \a/ac97/ac97_sdata_out_mux0000217  (
    .I0(\a/ac97/ac97_sdata_out_mux0000176_405 ),
    .I1(\a/ac97/ac97_sdata_out_mux0000213_407 ),
    .I2(\a/ac97/ac97_sdata_out_mux0000190_406 ),
    .I3(\a/ac97/bit_count [2]),
    .O(\a/ac97/ac97_sdata_out_mux0000217_408 )
  );
  LUT4 #(
    .INIT ( 16'hCF89 ))
  \disp/Mrom_dots351  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [3]),
    .I2(\disp/nibble [0]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots35 )
  );
  LUT4 #(
    .INIT ( 16'hFB79 ))
  \disp/Mrom_dots372  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots37 )
  );
  LUT4 #(
    .INIT ( 16'hF3B1 ))
  \disp/Mrom_dots361  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [3]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots36 )
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \disp/Mrom_dots321  (
    .I0(\disp/nibble [0]),
    .I1(\disp/nibble [3]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots32 )
  );
  LUT4 #(
    .INIT ( 16'hFF61 ))
  \disp/Mrom_dots341  (
    .I0(\disp/nibble [0]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots34 )
  );
  LUT4 #(
    .INIT ( 16'hA88C ))
  \disp/Mrom_dots381  (
    .I0(\disp/nibble [3]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [0]),
    .O(\disp/Mrom_dots38 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \hd/myblob/pixel_not000141  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [4]),
    .I2(\xvga1/vcount [7]),
    .I3(\xvga1/vcount [5]),
    .O(\hd/N111 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \hd/myblob/pixel_not00014  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/vcount [8]),
    .I2(\xvga1/vcount [9]),
    .O(\hd/myblob/pixel_not00014_3451 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \hd/myblob/pixel_not000134  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/pixel_not000134_3450 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \hd/myblob/pixel_not000142  (
    .I0(\hd/N11 ),
    .I1(\hd/myblob/pixel_not000134_3450 ),
    .I2(\xvga1/hcount [9]),
    .O(\hd/myblob/pixel_not000142_3452 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \a1/Sh3211  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh28_bdd0 ),
    .I2(\a1/Sh32_bdd0 ),
    .O(\a1/Sh32 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \a1/Sh3111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh27_bdd0 ),
    .I2(\a1/Sh31_bdd0 ),
    .O(\a1/Sh31 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh2821  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh24_bdd1 ),
    .I2(\a1/Sh28_bdd2 ),
    .O(\a1/Sh28_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh2721  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh23_bdd1 ),
    .I2(\a1/Sh27_bdd2 ),
    .O(\a1/Sh27_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh10141  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh101_bdd7 ),
    .I2(\a1/Sh101_bdd6 ),
    .O(\a1/Sh101_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh10111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh101_bdd1 ),
    .I2(\a1/Sh101_bdd0 ),
    .O(\a1/Sh101 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh10041  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh100_bdd7 ),
    .I2(\a1/Sh100_bdd6 ),
    .O(\a1/Sh100_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh10011  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh100_bdd1 ),
    .I2(\a1/Sh100_bdd0 ),
    .O(\a1/Sh100 )
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  \a1/Sh3611  (
    .I0(\a1/Sh28_bdd2 ),
    .I1(switch_6_IBUF_3638),
    .I2(switch_7_IBUF_3639),
    .I3(\a1/Sh32_bdd0 ),
    .O(\a1/Sh36 )
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  \a1/Sh3511  (
    .I0(\a1/Sh27_bdd2 ),
    .I1(switch_6_IBUF_3638),
    .I2(switch_7_IBUF_3639),
    .I3(\a1/Sh31_bdd0 ),
    .O(\a1/Sh35 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \a1/Sh3411  (
    .I0(switch_6_IBUF_3638),
    .I1(switch_7_IBUF_3639),
    .I2(\a1/Sh26_bdd5 ),
    .I3(\a1/Sh30_bdd0 ),
    .O(\a1/Sh34 )
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  \a1/Sh10511  (
    .I0(\a1/Sh101_bdd6 ),
    .I1(switch_6_IBUF_3638),
    .I2(switch_7_IBUF_3639),
    .I3(\a1/Sh101_bdd0 ),
    .O(\a1/Sh105 )
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  \a1/Sh10411  (
    .I0(\a1/Sh100_bdd6 ),
    .I1(switch_6_IBUF_3638),
    .I2(switch_7_IBUF_3639),
    .I3(\a1/Sh100_bdd0 ),
    .O(\a1/Sh104 )
  );
  LUT4 #(
    .INIT ( 16'h111B ))
  \a1/Sh10311  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh103_bdd1 ),
    .I2(\a1/Sh103_bdd0 ),
    .I3(switch_7_IBUF_3639),
    .O(\a1/Sh103 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh28320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [17]),
    .I2(\a1/xk_re [19]),
    .O(\a1/Sh2737 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh27320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [16]),
    .I2(\a1/xk_re [18]),
    .O(\a1/Sh2637 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh27331  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2637 ),
    .I2(\a1/Sh2737 ),
    .O(\a1/Sh27_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh2647  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [12]),
    .I2(\a1/xk_re [14]),
    .O(\a1/Sh23320 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh26420  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [11]),
    .I2(\a1/xk_re [13]),
    .O(\a1/Sh2547 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh26431  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2547 ),
    .I2(\a1/Sh23320 ),
    .O(\a1/Sh26_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh26320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [15]),
    .I2(\a1/xk_re [17]),
    .O(\a1/Sh2537 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh26331  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2537 ),
    .I2(\a1/Sh2637 ),
    .O(\a1/Sh26_bdd5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh25420  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [10]),
    .I2(\a1/xk_re [12]),
    .O(\a1/Sh2447 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh25431  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2447 ),
    .I2(\a1/Sh2547 ),
    .O(\a1/Sh25_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh25320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [14]),
    .I2(\a1/xk_re [16]),
    .O(\a1/Sh2437 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh25331  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2437 ),
    .I2(\a1/Sh2537 ),
    .O(\a1/Sh25_bdd5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh24420  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [9]),
    .I2(\a1/xk_re [11]),
    .O(\a1/Sh2347 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh24431  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2347 ),
    .I2(\a1/Sh2447 ),
    .O(\a1/Sh24_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh24320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [13]),
    .I2(\a1/xk_re [15]),
    .O(\a1/Sh2337 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh24331  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2337 ),
    .I2(\a1/Sh2437 ),
    .O(\a1/Sh24_bdd5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh23331  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh23320 ),
    .I2(\a1/Sh2337 ),
    .O(\a1/Sh23_bdd5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh103420  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [11]),
    .I2(\a1/xk_im [13]),
    .O(\a1/Sh10257 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh102520  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [10]),
    .I2(\a1/xk_im [12]),
    .O(\a1/Sh10167 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh102531  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10167 ),
    .I2(\a1/Sh10257 ),
    .O(\a1/Sh102_bdd6 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh102311  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [14]),
    .I2(\a1/xk_im [16]),
    .O(\a1/Sh101329 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh101620  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [9]),
    .I2(\a1/xk_im [11]),
    .O(\a1/Sh10067 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh101631  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10067 ),
    .I2(\a1/Sh10167 ),
    .O(\a1/Sh101_bdd7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh101520  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [17]),
    .I2(\a1/xk_im [19]),
    .O(\a1/Sh10057 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh101311  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [13]),
    .I2(\a1/xk_im [15]),
    .O(\a1/Sh100329 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh101341  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh100329 ),
    .I2(\a1/Sh101329 ),
    .O(\a1/Sh101_bdd3 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh100311  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [12]),
    .I2(\a1/xk_im [14]),
    .O(\a1/Sh100311_618 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh100341  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh100311_618 ),
    .I2(\a1/Sh100329 ),
    .O(\a1/Sh100_bdd3 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \a1/Sh3318  (
    .I0(\a1/xk_re [22]),
    .I1(switch_5_IBUF_3637),
    .I2(switch_4_IBUF_3636),
    .O(\a1/Sh3318_760 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \a1/Sh102112  (
    .I0(\a1/xk_im [22]),
    .I1(switch_5_IBUF_3637),
    .I2(switch_4_IBUF_3636),
    .O(\a1/Sh102112_642 )
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \a1/Sh31224  (
    .I0(switch_4_IBUF_3636),
    .I1(switch_5_IBUF_3637),
    .I2(\a1/xk_re [22]),
    .I3(\a1/xk_re [20]),
    .O(\a1/Sh31224_755 )
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \a1/Sh100224  (
    .I0(switch_4_IBUF_3636),
    .I1(switch_5_IBUF_3637),
    .I2(\a1/xk_im [22]),
    .I3(\a1/xk_im [20]),
    .O(\a1/Sh100224_617 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh30212  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [22]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [20]),
    .O(\a1/Sh30212_751 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh30227  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [19]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [21]),
    .O(\a1/Sh30227_752 )
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \a1/Sh30260  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh26_bdd1 ),
    .I2(\a1/Sh30212_751 ),
    .I3(\a1/Sh30227_752 ),
    .O(\a1/Sh30_bdd0 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh29212  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [21]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [19]),
    .O(\a1/Sh29212_746 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh29227  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [18]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [20]),
    .O(\a1/Sh29227_747 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh26213  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [10]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [8]),
    .O(\a1/Sh26213_725 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh26228  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [7]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [9]),
    .O(\a1/Sh26228_726 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh25213  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [9]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [7]),
    .O(\a1/Sh25213_716 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh25228  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [6]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [8]),
    .O(\a1/Sh25228_717 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh24213  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [8]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [6]),
    .O(\a1/Sh24213_707 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh24228  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [5]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [7]),
    .O(\a1/Sh24228_708 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh23213  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [7]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [5]),
    .O(\a1/Sh23213_695 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh23228  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [4]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [6]),
    .O(\a1/Sh23228_696 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh118115  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [10]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [8]),
    .O(\a1/Sh118115_676 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh118130  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [7]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [9]),
    .O(\a1/Sh118130_677 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh117115  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [9]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [7]),
    .O(\a1/Sh117115_671 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh117130  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [6]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [8]),
    .O(\a1/Sh117130_672 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh116115  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [8]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [6]),
    .O(\a1/Sh116115_666 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh116130  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [5]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [7]),
    .O(\a1/Sh116130_667 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh115115  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [7]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [5]),
    .O(\a1/Sh115115_661 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh115130  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [4]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [6]),
    .O(\a1/Sh115130_662 )
  );
  LUT4 #(
    .INIT ( 16'hFF27 ))
  \a1/Sh103320  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [21]),
    .I2(\a1/xk_im [19]),
    .I3(switch_4_IBUF_3636),
    .O(\a1/Sh103320_651 )
  );
  LUT4 #(
    .INIT ( 16'h1FBF ))
  \a1/Sh103340  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [20]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [22]),
    .O(\a1/Sh103340_652 )
  );
  LUT4 #(
    .INIT ( 16'hB111 ))
  \a1/Sh103377  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh103_bdd4 ),
    .I2(\a1/Sh103320_651 ),
    .I3(\a1/Sh103340_652 ),
    .O(\a1/Sh103_bdd1 )
  );
  LUT4 #(
    .INIT ( 16'hFF27 ))
  \a1/Sh102420  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [20]),
    .I2(\a1/xk_im [18]),
    .I3(switch_4_IBUF_3636),
    .O(\a1/Sh102420_645 )
  );
  LUT4 #(
    .INIT ( 16'h1FBF ))
  \a1/Sh102440  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [19]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [21]),
    .O(\a1/Sh102440_646 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh26114  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [6]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [4]),
    .O(\a1/Sh26114_723 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh26129  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [3]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [5]),
    .O(\a1/Sh26129_724 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh25114  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [5]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [3]),
    .O(\a1/Sh25114_714 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh25129  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [2]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [4]),
    .O(\a1/Sh25129_715 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh24114  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [4]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [2]),
    .O(\a1/Sh24114_705 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh24129  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [1]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [3]),
    .O(\a1/Sh24129_706 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh23114  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [3]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [1]),
    .O(\a1/Sh23114_693 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh23129  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_re [0]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_re [2]),
    .O(\a1/Sh23129_694 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh118141  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [6]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [4]),
    .O(\a1/Sh118141_678 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh11829  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [3]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [5]),
    .O(\a1/Sh11829_679 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh117141  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [5]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [3]),
    .O(\a1/Sh117141_673 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh11729  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [2]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [4]),
    .O(\a1/Sh11729_674 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh116141  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [4]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [2]),
    .O(\a1/Sh116141_668 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh11629  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [1]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [3]),
    .O(\a1/Sh11629_669 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a1/Sh115141  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [3]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [1]),
    .O(\a1/Sh115141_663 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \a1/Sh11529  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [0]),
    .I2(switch_4_IBUF_3636),
    .I3(\a1/xk_im [2]),
    .O(\a1/Sh11529_664 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  fft_pixel_or00001 (
    .I0(xblank_3722),
    .I1(fft_pixel_cmp_le0000),
    .O(fft_pixel_or0000)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>321  (
    .I0(\hd/ma_digs/ripples[5].un_blob/overlap_3258 ),
    .I1(\hd/ma_digs/ripples[4].un_blob/overlap_3204 ),
    .I2(\hd/ma_digs/riffle[8].un_blob/overlap_2649 ),
    .I3(\hd/ma_digs/riffle[9].un_blob/overlap_2704 ),
    .O(\hd/ma_digs/the_sel/N20 )
  );
  LUT4 #(
    .INIT ( 16'h4501 ))
  \disp/Mrom_dots101  (
    .I0(\disp/nibble [3]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots10 )
  );
  LUT4 #(
    .INIT ( 16'hDF46 ))
  \disp/Mrom_dots1111  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [3]),
    .I2(\disp/nibble [0]),
    .I3(\disp/nibble [1]),
    .O(\disp/Mrom_dots11 )
  );
  LUT4 #(
    .INIT ( 16'h797F ))
  \disp/Mrom_dots141  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots14 )
  );
  LUT4 #(
    .INIT ( 16'h3FB1 ))
  \disp/Mrom_dots111  (
    .I0(\disp/nibble [0]),
    .I1(\disp/nibble [2]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots1_1689 )
  );
  LUT4 #(
    .INIT ( 16'h0C29 ))
  \disp/Mrom_dots31  (
    .I0(\disp/nibble [3]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots3 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \disp/Mrom_dots61  (
    .I0(\disp/nibble [0]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots6 )
  );
  LUT4 #(
    .INIT ( 16'h6F7D ))
  \disp/Mrom_dots221  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots22_1696 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge000111  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [7]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy [6]),
    .I3(\xvga1/vcount [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge000124  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [0]),
    .I2(\xvga1/vcount [6]),
    .I3(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge000124_2988 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001210  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [9]),
    .I3(\xvga1/vcount [8]),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001210_2987 )
  );
  LUT4 #(
    .INIT ( 16'h6679 ))
  \disp/Mrom_dots51  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [2]),
    .I2(\disp/nibble [3]),
    .I3(\disp/nibble [0]),
    .O(\disp/Mrom_dots5 )
  );
  LUT4 #(
    .INIT ( 16'h53ED ))
  \disp/Mrom_dots41  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [3]),
    .I2(\disp/nibble [0]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/the_sel/selected_mux0000<3>21  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/overlap_2586 ),
    .I1(\hd/ma_digs/ripple[1].un_blob/overlap_3038 ),
    .O(\hd/ma_digs/the_sel/N24 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/the_sel/selected_mux0000<1>31  (
    .I0(\hd/ma_digs/riggles[10].un_blob/overlap_2864 ),
    .I1(\hd/ma_digs/riggle[7].un_blob/overlap_2814 ),
    .O(\hd/ma_digs/the_sel/N25 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>41  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_2526 ),
    .I1(\hd/ma_digs/riggles[11].un_blob/overlap_2917 ),
    .I2(\hd/ma_digs/ripple[0].un_blob/overlap_2985 ),
    .I3(\hd/ma_digs/the_sel/N24 ),
    .O(\hd/ma_digs/the_sel/N8 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>311  (
    .I0(\hd/ma_digs/riggle[6].un_blob/overlap_2764 ),
    .I1(\hd/ma_digs/ripple[2].un_blob/overlap_3095 ),
    .I2(\hd/ma_digs/ripple[3].un_blob/overlap_3144 ),
    .I3(\hd/ma_digs/the_sel/N25 ),
    .O(\hd/ma_digs/the_sel/N9 )
  );
  LUT4 #(
    .INIT ( 16'hEF9F ))
  \hd/ma_digs/the_sel/selected_mux0000<2>3_SW0  (
    .I0(\hd/ma_digs/riggles[10].un_blob/overlap_2864 ),
    .I1(\hd/ma_digs/ripple[2].un_blob/overlap_3095 ),
    .I2(\hd/ma_digs/the_sel/N20 ),
    .I3(\hd/ma_digs/riggle[6].un_blob/overlap_2764 ),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<2>3  (
    .I0(\hd/ma_digs/riggle[7].un_blob/overlap_2814 ),
    .I1(\hd/ma_digs/ripple[3].un_blob/overlap_3144 ),
    .I2(N106),
    .I3(\hd/ma_digs/the_sel/N8 ),
    .O(\hd/ma_digs/the_sel/N7 )
  );
  LUT4 #(
    .INIT ( 16'hEF9F ))
  \hd/ma_digs/the_sel/selected_mux0000<0>3_SW0  (
    .I0(\hd/ma_digs/riggles[11].un_blob/overlap_2917 ),
    .I1(\hd/ma_digs/ribbles[12].un_blob/overlap_2526 ),
    .I2(\hd/ma_digs/the_sel/N20 ),
    .I3(\hd/ma_digs/ribbles[13].un_blob/overlap_2586 ),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>3  (
    .I0(\hd/ma_digs/ripple[1].un_blob/overlap_3038 ),
    .I1(\hd/ma_digs/ripple[0].un_blob/overlap_2985 ),
    .I2(N108),
    .I3(\hd/ma_digs/the_sel/N9 ),
    .O(\hd/ma_digs/the_sel/N6 )
  );
  LUT4 #(
    .INIT ( 16'h0116 ))
  \hd/ma_digs/the_sel/selected_mux0000<3>62  (
    .I0(\hd/ma_digs/ripples[4].un_blob/overlap_3204 ),
    .I1(\hd/ma_digs/riffle[8].un_blob/overlap_2649 ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_2526 ),
    .I3(\hd/ma_digs/ripple[0].un_blob/overlap_2985 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<3>62_3326 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<3>76  (
    .I0(\hd/ma_digs/ripples[5].un_blob/overlap_3258 ),
    .I1(\hd/ma_digs/riggles[11].un_blob/overlap_2917 ),
    .I2(\hd/ma_digs/riffle[9].un_blob/overlap_2704 ),
    .I3(\hd/ma_digs/the_sel/N24 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<3>76_3327 )
  );
  LUT4 #(
    .INIT ( 16'h0116 ))
  \hd/ma_digs/the_sel/selected_mux0000<1>62  (
    .I0(\hd/ma_digs/ripples[5].un_blob/overlap_3258 ),
    .I1(\hd/ma_digs/riggle[6].un_blob/overlap_2764 ),
    .I2(\hd/ma_digs/ripples[4].un_blob/overlap_3204 ),
    .I3(\hd/ma_digs/ripple[3].un_blob/overlap_3144 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<1>62_3318 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \hd/ma_digs/the_sel/selected_mux0000<1>76  (
    .I0(\hd/ma_digs/riffle[8].un_blob/overlap_2649 ),
    .I1(\hd/ma_digs/ripple[2].un_blob/overlap_3095 ),
    .I2(\hd/ma_digs/riffle[9].un_blob/overlap_2704 ),
    .I3(\hd/ma_digs/the_sel/N25 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<1>76_3319 )
  );
  LUT4 #(
    .INIT ( 16'h0116 ))
  \hd/ma_digs/the_sel/selected_mux0000<2>62  (
    .I0(\hd/ma_digs/ripples[5].un_blob/overlap_3258 ),
    .I1(\hd/ma_digs/riffle[9].un_blob/overlap_2704 ),
    .I2(\hd/ma_digs/ripple[1].un_blob/overlap_3038 ),
    .I3(\hd/ma_digs/ribbles[13].un_blob/overlap_2586 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<2>62_3322 )
  );
  LUT4 #(
    .INIT ( 16'h0116 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>62  (
    .I0(\hd/ma_digs/riffle[8].un_blob/overlap_2649 ),
    .I1(\hd/ma_digs/riffle[9].un_blob/overlap_2704 ),
    .I2(\hd/ma_digs/riggle[7].un_blob/overlap_2814 ),
    .I3(\hd/ma_digs/riggles[10].un_blob/overlap_2864 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<0>62_3315 )
  );
  LUT4 #(
    .INIT ( 16'hEF2F ))
  \disp/Mrom_dots1_SW0  (
    .I0(\disp/Mmux_nibble_9_1686 ),
    .I1(num[3]),
    .I2(num[2]),
    .I3(\disp/Mmux_nibble_91_1687 ),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'hEF2F ))
  \disp/Mrom_dots1_SW1  (
    .I0(\disp/Mmux_nibble_9_1686 ),
    .I1(blob[3]),
    .I2(blob[2]),
    .I3(\disp/Mmux_nibble_91_1687 ),
    .O(N111)
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \disp/Mrom_dots1  (
    .I0(\disp/N8 ),
    .I1(\disp/char_index [0]),
    .I2(N111),
    .I3(N110),
    .O(\disp/Mrom_dots )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_not00018  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_not000144  (
    .I0(\xvga1/hcount [10]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/overlap_not000126 ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_not000144_2534 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \hd/ma_digs/ribbles[13].un_blob/overlap_not000121  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [3]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ribbles[13].un_blob/overlap_not000121_2588 )
  );
  LUT4 #(
    .INIT ( 16'h0F02 ))
  \hd/ma_digs/ribbles[13].un_blob/overlap_not000147  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/overlap_not000121_2588 ),
    .I1(\hd/ma_digs/N211 ),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ),
    .O(\hd/ma_digs/ribbles[13].un_blob/overlap_not000147_2589 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \xvga1/hsyncoff2  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/N7 ),
    .O(\xvga1/hsyncoff )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \disp/Mrom_dots81  (
    .I0(\disp/nibble [3]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots8 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/Mrom_dots1311  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [3]),
    .I3(\disp/nibble [2]),
    .O(\disp/Mrom_dots12 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \disp/Mmux_nibble21  (
    .I0(\disp/char_index [0]),
    .I1(num[3]),
    .I2(\disp/N8 ),
    .I3(blob[3]),
    .O(\disp/nibble [3])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/riffle[9].un_blob/overlap_cmp_ge000021  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .O(\hd/ma_digs/N211 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \xvga1/hsyncon1  (
    .I0(\xvga1/N7 ),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [7]),
    .O(\xvga1/hsyncon )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \xvga1/hsyncoff11  (
    .I0(\xvga1/N0 ),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [5]),
    .O(\xvga1/N7 )
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001119  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [4]),
    .I2(\xvga1/vcount [1]),
    .I3(\xvga1/vcount [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001119_3207 )
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001119  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [2]),
    .I3(\xvga1/vcount [3]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001119_2529 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132_2530 )
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  \hd/ma_digs/ripple[2].un_blob/overlap_not000125  (
    .I0(\xvga1/hcount [4]),
    .I1(\hd/ma_digs/N211 ),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ),
    .O(\hd/ma_digs/ripple[2].un_blob/overlap_not000125_3097 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_not00013  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riffle[9].un_blob/overlap_not00013 )
  );
  LUT4 #(
    .INIT ( 16'hFF13 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_not000117  (
    .I0(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/riffle[9].un_blob/overlap_not00013 ),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_not000117_2993 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001232  (
    .I0(\xvga1/vcount [9]),
    .I1(\xvga1/vcount [8]),
    .I2(\xvga1/vcount [7]),
    .I3(\xvga1/vcount [6]),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001232_2991 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001233  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217_2990 ),
    .I1(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001232_2991 ),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001 )
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \hd/ma_digs/riggles[11].un_blob/overlap_not000112  (
    .I0(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [8]),
    .I3(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riggles[11].un_blob/overlap_not000112_2919 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_not00017  (
    .I0(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt00012 ),
    .I1(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00012 ),
    .I2(\xvga1/vcount [9]),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_not00017_3211 )
  );
  LUT4 #(
    .INIT ( 16'hFF13 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_not000125  (
    .I0(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [4]),
    .I3(\hd/ma_digs/riffle[9].un_blob/overlap_not00013 ),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_not000125_3210 )
  );
  LUT4 #(
    .INIT ( 16'h444C ))
  \hd/ma_digs/riggles[10].un_blob/overlap_not000126  (
    .I0(\xvga1/hcount [6]),
    .I1(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] ),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/riggles[10].un_blob/overlap_not000126_2866 )
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \hd/ma_digs/riggles[10].un_blob/overlap_not000143  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [10]),
    .I2(\hd/ma_digs/riggles[10].un_blob/overlap_not000126_2866 ),
    .O(\hd/ma_digs/riggles[10].un_blob/overlap_not000143_2867 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/riffle[9].un_blob/overlap_not000119  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [3]),
    .I3(\hd/ma_digs/N211 ),
    .O(\hd/ma_digs/riffle[9].un_blob/overlap_not000119_2706 )
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \hd/ma_digs/ripples[5].un_blob/overlap_not000129  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/ma_digs/N211 ),
    .I2(\xvga1/hcount [4]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/ripples[5].un_blob/overlap_not000129_3260 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/char_index_mux0000<3>11  (
    .I0(\disp/char_index [1]),
    .I1(\disp/char_index [2]),
    .I2(\disp/char_index [3]),
    .O(\disp/N8 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \disp/Mmux_nibble11  (
    .I0(\disp/char_index [0]),
    .I1(num[2]),
    .I2(\disp/N8 ),
    .I3(blob[2]),
    .O(\disp/nibble [2])
  );
  LUT4 #(
    .INIT ( 16'h4501 ))
  \disp/disp_data_out_mux000078  (
    .I0(\disp/dot_index [5]),
    .I1(\disp/dot_index [2]),
    .I2(\disp/Mmux__varindex0000_8_f7_1682 ),
    .I3(\disp/disp_data_out_mux000033_1795 ),
    .O(\disp/disp_data_out_mux000078_1796 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>12  (
    .I0(\hd/ma_digs/num_sel_out [0]),
    .I1(\hd/ma_digs/the_dig/nines [1]),
    .I2(\hd/ma_digs/the_dig/N14 ),
    .I3(\hd/ma_digs/the_dig/eights [1]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>12_3290 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>25  (
    .I0(\hd/ma_digs/num_sel_out [2]),
    .I1(\hd/ma_digs/the_dig/sevens [1]),
    .I2(\hd/ma_digs/num_sel_out [1]),
    .I3(\hd/ma_digs/the_dig/threes [1]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>25_3294 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>40  (
    .I0(\hd/ma_digs/num_sel_out [2]),
    .I1(\hd/ma_digs/the_dig/ones [1]),
    .I2(\hd/ma_digs/num_sel_out [1]),
    .I3(\hd/ma_digs/the_dig/fives [1]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>40_3295 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>12  (
    .I0(\hd/ma_digs/num_sel_out [0]),
    .I1(\hd/ma_digs/the_dig/nines [0]),
    .I2(\hd/ma_digs/the_dig/N14 ),
    .I3(\hd/ma_digs/the_dig/eights [0]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>12_3281 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>25  (
    .I0(\hd/ma_digs/num_sel_out [2]),
    .I1(\hd/ma_digs/the_dig/sevens [0]),
    .I2(\hd/ma_digs/num_sel_out [1]),
    .I3(\hd/ma_digs/the_dig/threes [0]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>25_3285 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>40  (
    .I0(\hd/ma_digs/num_sel_out [2]),
    .I1(\hd/ma_digs/the_dig/ones [0]),
    .I2(\hd/ma_digs/num_sel_out [1]),
    .I3(\hd/ma_digs/the_dig/fives [0]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>40_3286 )
  );
  LUT4 #(
    .INIT ( 16'h1F3F ))
  \hd/ma_digs/ripple[1].un_blob/overlap_not000128  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ripple[1].un_blob/overlap_not000128_3040 )
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \hd/ma_digs/ripple[1].un_blob/overlap_not000153  (
    .I0(\hd/ma_digs/ripple[1].un_blob/overlap_not000128_3040 ),
    .I1(\xvga1/hcount [7]),
    .I2(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .I3(\hd/ma_digs/riffle[9].un_blob/overlap_not00013 ),
    .O(\hd/ma_digs/ripple[1].un_blob/overlap_not000153_3043 )
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  \hd/ma_digs/ripple[1].un_blob/overlap_not000182  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001 ),
    .I1(\hd/ma_digs/ripple[1].un_blob/overlap_not000153_3043 ),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/ripple[1].un_blob/overlap_not00013 ),
    .O(\hd/ma_digs/ripple[1].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db1/clean_not00011  (
    .I0(\db1/count_cmp_eq0000 ),
    .I1(button_enter_IBUF_1190),
    .I2(\db1/new_1274 ),
    .I3(power_on_reset),
    .O(\db1/clean_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF9 ))
  \db1/count_or00001  (
    .I0(\db1/new_1274 ),
    .I1(button_enter_IBUF_1190),
    .I2(power_on_reset),
    .O(\db1/count_or0000 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \db1/clean_mux00001  (
    .I0(power_on_reset),
    .I1(\db1/new_1274 ),
    .I2(button_enter_IBUF_1190),
    .O(\db1/clean_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge00001  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [2]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] )
  );
  LUT4 #(
    .INIT ( 16'h1F3F ))
  \hd/ma_digs/riggle[6].un_blob/overlap_not000124  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .O(\hd/ma_digs/riggle[6].un_blob/overlap_not000124_2766 )
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  \hd/ma_digs/riggle[6].un_blob/overlap_not000138  (
    .I0(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/riggle[6].un_blob/overlap_not000124_2766 ),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/riggle[6].un_blob/overlap_not00013_2767 ),
    .O(\hd/ma_digs/riggle[6].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_not000115  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I3(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[2] ),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_not000115_2655 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001212  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [2]),
    .I3(\xvga1/vcount [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001212_2652 )
  );
  LUT4 #(
    .INIT ( 16'h3F1F ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [6]),
    .I2(\xvga1/vcount [7]),
    .I3(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001212_2652 ),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 )
  );
  LUT4 #(
    .INIT ( 16'h1F3F ))
  \hd/ma_digs/riggle[7].un_blob/overlap_not000124  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [7]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggle[7].un_blob/overlap_not000124_2816 )
  );
  LUT4 #(
    .INIT ( 16'h1F3F ))
  \hd/ma_digs/ripple[3].un_blob/overlap_not000133  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [4]),
    .I2(\xvga1/hcount [5]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/ripple[3].un_blob/overlap_not000133_3146 )
  );
  LUT4 #(
    .INIT ( 16'h0F02 ))
  \hd/ma_digs/ripple[3].un_blob/overlap_not000161  (
    .I0(\hd/ma_digs/ripple[3].un_blob/overlap_not000133_3146 ),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ),
    .O(\hd/ma_digs/ripple[3].un_blob/overlap_not000161_3147 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \xvga1/vblankon11  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [0]),
    .O(\xvga1/N6 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \xvga1/next_hblank8  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .I3(\xvga1/hcount [7]),
    .O(\xvga1/next_hblank8_3821 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \xvga1/next_hblank17  (
    .I0(\xvga1/N5 ),
    .I1(\xvga1/N8 ),
    .I2(\xvga1/next_hblank8_3821 ),
    .I3(\xvga1/hblank_3804 ),
    .O(\xvga1/next_hblank17_3820 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \xvga1/hblankon21  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [5]),
    .O(\xvga1/N8 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db6/clean_not00011  (
    .I0(\db6/count_cmp_eq0000 ),
    .I1(button_enter_IBUF_1190),
    .I2(\db6/new_1639 ),
    .I3(reset),
    .O(\db6/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db5/clean_not00011  (
    .I0(\db5/count_cmp_eq0000 ),
    .I1(button_right_IBUF_1194),
    .I2(\db5/new_1566 ),
    .I3(reset),
    .O(\db5/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db4/clean_not00011  (
    .I0(\db4/count_cmp_eq0000 ),
    .I1(button_left_IBUF_1192),
    .I2(\db4/new_1493 ),
    .I3(reset),
    .O(\db4/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db3/clean_not00011  (
    .I0(\db3/count_cmp_eq0000 ),
    .I1(button_down_IBUF_1188),
    .I2(\db3/new_1420 ),
    .I3(reset),
    .O(\db3/clean_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF28 ))
  \db2/clean_not00011  (
    .I0(\db2/count_cmp_eq0000 ),
    .I1(button_up_IBUF_1196),
    .I2(\db2/new_1347 ),
    .I3(reset),
    .O(\db2/clean_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \xvga1/vsyncoff2  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/N4 ),
    .O(\xvga1/vsyncoff )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \xvga1/vsyncoff11  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [0]),
    .I2(\xvga1/vcount [3]),
    .I3(\xvga1/N11 ),
    .O(\xvga1/N4 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \xvga1/vsyncon1  (
    .I0(\xvga1/N4 ),
    .I1(\xvga1/vcount [1]),
    .I2(\xvga1/vcount [2]),
    .O(\xvga1/vsyncon )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  Mmux_rgb_mux00001031 (
    .I0(N10),
    .I1(\xvga1/hcount [8]),
    .I2(switch_1_IBUF_3635),
    .I3(switch_0_IBUF_3634),
    .O(N13)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux00009_SW0 (
    .I0(\hd/thehud/pixel [17]),
    .I1(fft_pixel[17]),
    .I2(\hd/digit_pixel [17]),
    .O(N121)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux00008_SW0 (
    .I0(\hd/thehud/pixel [16]),
    .I1(fft_pixel[16]),
    .I2(\hd/digit_pixel [16]),
    .O(N123)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000016_SW0 (
    .I0(\hd/thehud/pixel [23]),
    .I1(fft_pixel[23]),
    .I2(\hd/digit_pixel [23]),
    .O(N125)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000015_SW0 (
    .I0(\hd/thehud/pixel [22]),
    .I1(fft_pixel[22]),
    .I2(\hd/digit_pixel [22]),
    .O(N127)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000014_SW0 (
    .I0(\hd/thehud/pixel [21]),
    .I1(fft_pixel[21]),
    .I2(\hd/digit_pixel [21]),
    .O(N129)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000013_SW0 (
    .I0(\hd/thehud/pixel [20]),
    .I1(fft_pixel[20]),
    .I2(\hd/digit_pixel [20]),
    .O(N131)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000011_SW0 (
    .I0(\hd/thehud/pixel [19]),
    .I1(fft_pixel[19]),
    .I2(\hd/digit_pixel [19]),
    .O(N133)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  Mmux_rgb_mux000010_SW0 (
    .I0(\hd/thehud/pixel [18]),
    .I1(fft_pixel[18]),
    .I2(\hd/digit_pixel [18]),
    .O(N135)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \xvga1/hreset2  (
    .I0(\xvga1/N8 ),
    .I1(\xvga1/N0 ),
    .I2(\xvga1/hcount [7]),
    .O(\xvga1/hreset )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \xvga1/hreset11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .I3(\xvga1/N5 ),
    .O(\xvga1/N0 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \xvga1/hblankon11  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [1]),
    .I3(\xvga1/hcount [0]),
    .O(\xvga1/N5 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  Mmux_rgb_mux0000251 (
    .I0(N10),
    .I1(\xvga1/hcount [7]),
    .I2(switch_1_IBUF_3635),
    .I3(switch_0_IBUF_3634),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  Mmux_rgb_mux00001101 (
    .I0(N10),
    .I1(\xvga1/hcount [6]),
    .I2(switch_1_IBUF_3635),
    .I3(switch_0_IBUF_3634),
    .O(N12)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \xvga1/vreset1_SW0  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [9]),
    .I2(\xvga1/hreset ),
    .O(N137)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \xvga1/vreset1  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [6]),
    .I3(N137),
    .O(\xvga1/N11 )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \xvga1/next_vblank8  (
    .I0(\xvga1/vcount [9]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [8]),
    .I3(\xvga1/N6 ),
    .O(\xvga1/next_vblank8_3825 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \xvga1/next_vblank13  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [4]),
    .I2(\xvga1/vcount [6]),
    .I3(\xvga1/vcount [1]),
    .O(\xvga1/next_vblank13_3823 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \xvga1/vreset2  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/N11 ),
    .I3(\xvga1/N6 ),
    .O(\xvga1/vreset )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  Mmux_rgb_mux000010233 (
    .I0(\xvga1/vcount [2]),
    .I1(\xvga1/vcount [3]),
    .O(Mmux_rgb_mux000010233_35)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mmux_rgb_mux000010253 (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [6]),
    .I3(\xvga1/vcount [9]),
    .O(Mmux_rgb_mux000010253_36)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_rgb_mux0000102103 (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .I3(\xvga1/hcount [7]),
    .O(Mmux_rgb_mux0000102103_26)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mmux_rgb_mux0000102130 (
    .I0(\xvga1/hcount [0]),
    .I1(\xvga1/hcount [1]),
    .I2(\xvga1/hcount [2]),
    .I3(\xvga1/hcount [3]),
    .O(Mmux_rgb_mux0000102130_30)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mmux_rgb_mux0000102155 (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [8]),
    .I3(\xvga1/hcount [9]),
    .O(Mmux_rgb_mux0000102155_31)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  Mmux_rgb_mux0000102184 (
    .I0(\xvga1/hcount [10]),
    .I1(Mmux_rgb_mux0000102157_32),
    .I2(Mmux_rgb_mux0000102110_28),
    .O(Mmux_rgb_mux0000102184_33)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_rgb_mux0000102209 (
    .I0(switch_1_IBUF_3635),
    .I1(switch_0_IBUF_3634),
    .O(Mmux_rgb_mux0000102209_34)
  );
  LUT4 #(
    .INIT ( 16'h88C8 ))
  Mmux_rgb_mux0000102213 (
    .I0(Mmux_rgb_mux0000102184_33),
    .I1(Mmux_rgb_mux0000102209_34),
    .I2(Mmux_rgb_mux000010269_37),
    .I3(\xvga1/vcount [8]),
    .O(N10)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a1/sqmag/Sh11  (
    .I0(\a1/sqmag/bit [1]),
    .I1(\a1/sqmag/bit [0]),
    .O(\a1/sqmag/Sh1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \a1/sqmag/Msub_bit_addsub0000_cy<1>11  (
    .I0(\a1/sqmag/bit [1]),
    .I1(\a1/sqmag/bit [0]),
    .O(\a1/sqmag/Msub_bit_addsub0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \a1/sqmag/bit_cmp_eq000011  (
    .I0(\a1/sqmag/bit [3]),
    .I1(\a1/sqmag/bit [2]),
    .O(\a1/sqmag/N01 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a1/sqmag/Sh4011  (
    .I0(\a1/sqmag/bit [2]),
    .I1(\a1/sqmag/bit [3]),
    .O(\a1/sqmag/N11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a1/sqmag/Sh3611  (
    .I0(\a1/sqmag/bit [3]),
    .I1(\a1/sqmag/bit [2]),
    .O(\a1/sqmag/N2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a1/sqmag/Sh31  (
    .I0(\a1/sqmag/bit [0]),
    .I1(\a1/sqmag/bit [1]),
    .O(\a1/sqmag/Sh3 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a1/sqmag/Sh21  (
    .I0(\a1/sqmag/bit [0]),
    .I1(\a1/sqmag/bit [1]),
    .O(\a1/sqmag/Sh2 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<9>1  (
    .I0(\a1/sqmag/answer [9]),
    .I1(\a1/sqmag/N11 ),
    .I2(\a1/sqmag/Sh1 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [9])
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \a1/sqmag/trial<8>1  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/N11 ),
    .I2(\a1/sqmag/Msub_bit_addsub0000_cy [1]),
    .I3(\a1/sqmag/answer [8]),
    .O(\a1/sqmag/trial [8])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<7>1  (
    .I0(\a1/sqmag/answer [7]),
    .I1(\a1/sqmag/N2 ),
    .I2(\a1/sqmag/Sh3 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [7])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<6>1  (
    .I0(\a1/sqmag/answer [6]),
    .I1(\a1/sqmag/N2 ),
    .I2(\a1/sqmag/Sh2 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [6])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<5>1  (
    .I0(\a1/sqmag/answer [5]),
    .I1(\a1/sqmag/N2 ),
    .I2(\a1/sqmag/Sh1 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [5])
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \a1/sqmag/trial<4>1  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/N2 ),
    .I2(\a1/sqmag/Msub_bit_addsub0000_cy [1]),
    .I3(\a1/sqmag/answer [4]),
    .O(\a1/sqmag/trial [4])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<3>1  (
    .I0(\a1/sqmag/answer [3]),
    .I1(\a1/sqmag/N01 ),
    .I2(\a1/sqmag/Sh3 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [3])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<2>1  (
    .I0(\a1/sqmag/answer [2]),
    .I1(\a1/sqmag/N01 ),
    .I2(\a1/sqmag/Sh2 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [2])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<1>1  (
    .I0(\a1/sqmag/answer [1]),
    .I1(\a1/sqmag/N01 ),
    .I2(\a1/sqmag/Sh1 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [1])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<11>1  (
    .I0(\a1/sqmag/answer [11]),
    .I1(\a1/sqmag/N11 ),
    .I2(\a1/sqmag/Sh3 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [11])
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \a1/sqmag/trial<10>1  (
    .I0(\a1/sqmag/answer [10]),
    .I1(\a1/sqmag/N11 ),
    .I2(\a1/sqmag/Sh2 ),
    .I3(\a1/sqmag/bit [4]),
    .O(\a1/sqmag/trial [10])
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \a1/sqmag/trial<0>1  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/N01 ),
    .I2(\a1/sqmag/Msub_bit_addsub0000_cy [1]),
    .I3(\a1/sqmag/answer [0]),
    .O(\a1/sqmag/trial [0])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \a1/sqmag/trial<13>  (
    .I0(\a1/sqmag/bit [3]),
    .I1(\a1/sqmag/bit [2]),
    .I2(N139),
    .I3(\a1/sqmag/answer [13]),
    .O(\a1/sqmag/trial [13])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \a1/sqmag/trial<12>  (
    .I0(\a1/sqmag/bit [3]),
    .I1(\a1/sqmag/bit [2]),
    .I2(N141),
    .I3(\a1/sqmag/answer [12]),
    .O(\a1/sqmag/trial [12])
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[10] )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[10] )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/thehud/Msub_image_addr_sub0001_xor<10>111  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [10]),
    .O(\hd/N13 )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ripple[2].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_xor<5>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [3]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[5] )
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \hd/myblob/Msub_image_addr_sub0000_xor<8>121  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .O(\hd/N14 )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_xor<5>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[5] )
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[10] )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .O(\hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[10] )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [7]),
    .O(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [5]),
    .I3(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [7]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0000[8] )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [5]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggles[11].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riffle[9].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [7]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0000[8] )
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_xor<5>11  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [4]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[5] )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy<5>11  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[10] )
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [9]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .O(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[10] )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I3(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I2(\xvga1/hcount [6]),
    .I3(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[7] )
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [8]),
    .I2(\xvga1/hcount [7]),
    .I3(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[1].un_blob/image_addr_addsub0000[8] )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy<5>1  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [2]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] )
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [5]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripples[5].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[7] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy<4>1  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] )
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_xor<6>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [4]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] ),
    .O(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[6] )
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .I3(\hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[10] )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy<6>1  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I2(\xvga1/hcount [6]),
    .O(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_xor<4>111  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [4]),
    .I2(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[4] )
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [7]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggles[10].un_blob/image_addr_addsub0000[7] )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy<5>11  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [3]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\xvga1/hcount [5]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[7] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy<2>1  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[2] )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy<7>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I3(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [6]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[8] )
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [8]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/riggle[7].un_blob/image_addr_addsub0000 [8])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .O(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy<6>11  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] ),
    .I3(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[6] )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I3(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[8] )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_cy<8>11  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I3(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy<2>1  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<4>11  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [4]),
    .O(\hd/myblob/image_addr_addsub0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<2>1  (
    .I0(\xvga1/vcount [2]),
    .I1(\xvga1/vcount [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [2])
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \a1/hwe_or00001  (
    .I0(\a1/state_FSM_FFd2_1042 ),
    .I1(\a1/state_FSM_FFd1_1040 ),
    .I2(reset),
    .I3(\a1/sqmag/busy_1023 ),
    .O(\a1/hwe_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<1>1  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<6>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [6])
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<10>1  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [8]),
    .I2(\xvga1/vcount [9]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy [6]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [10])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<7>11  (
    .I0(\xvga1/vcount [7]),
    .I1(N272),
    .I2(\xvga1/vcount [5]),
    .I3(\xvga1/vcount [6]),
    .O(\hd/myblob/image_addr_addsub0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<5>1  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [4]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[2] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [5])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy<6>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy [6])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<4>1  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [3]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[1] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [4])
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<9>1  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [9]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0001_cy [6]),
    .I3(\xvga1/vcount [7]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<8>11  (
    .I0(\xvga1/vcount [8]),
    .I1(\hd/N11 ),
    .O(\hd/myblob/image_addr_addsub0000 [8])
  );
  LUT3 #(
    .INIT ( 8'h13 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<10>11  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [9]),
    .I2(N273),
    .O(\hd/myblob/image_addr_addsub0000 [10])
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<9>12  (
    .I0(\hd/N11 ),
    .I1(\xvga1/vcount [9]),
    .I2(\xvga1/vcount [8]),
    .O(\hd/myblob/image_addr_addsub0000 [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<6>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [6])
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<6>1  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [6]),
    .I2(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [6])
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<7>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [7]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [7])
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<7>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [7]),
    .I2(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .I3(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [7])
  );
  LUT4 #(
    .INIT ( 16'hC999 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<8>1  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [8]),
    .I2(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ),
    .I3(\xvga1/vcount [6]),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<5>1  (
    .I0(\xvga1/vcount [5]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[4] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [5])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<6>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [5]),
    .I2(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[4] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [6])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<7>1  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [6]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[4] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [7])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<10>1  (
    .I0(\xvga1/vcount [9]),
    .I1(\xvga1/vcount [8]),
    .I2(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[7] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [10])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000131  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[2] )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy<5>1  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [4]),
    .I2(\xvga1/vcount [3]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[2] ),
    .O(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy<1>1  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[1] )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<8>1  (
    .I0(\xvga1/vcount [8]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[7] ),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [8])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<9>1  (
    .I0(\xvga1/vcount [9]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[7] ),
    .I2(\xvga1/vcount [8]),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [9])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy<4>1  (
    .I0(\xvga1/vcount [2]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[1] ),
    .I2(\xvga1/vcount [3]),
    .I3(\xvga1/vcount [4]),
    .O(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[4] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  reset1 (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .O(reset)
  );
  IBUFG   clock_27mhz_IBUFG (
    .I(clock_27mhz),
    .O(clock_27mhz_IBUFG1)
  );
  IBUF   button_enter_IBUF (
    .I(button_enter),
    .O(button_enter_IBUF_1190)
  );
  IBUF   button_left_IBUF (
    .I(button_left),
    .O(button_left_IBUF_1192)
  );
  IBUF   ac97_sdata_in_IBUF (
    .I(ac97_sdata_in),
    .O(ac97_sdata_in_IBUF_1108)
  );
  IBUF   button_right_IBUF (
    .I(button_right),
    .O(button_right_IBUF_1194)
  );
  IBUF   button_down_IBUF (
    .I(button_down),
    .O(button_down_IBUF_1188)
  );
  IBUF   button_up_IBUF (
    .I(button_up),
    .O(button_up_IBUF_1196)
  );
  IBUF   switch_7_IBUF (
    .I(switch[7]),
    .O(switch_7_IBUF_3639)
  );
  IBUF   switch_6_IBUF (
    .I(switch[6]),
    .O(switch_6_IBUF_3638)
  );
  IBUF   switch_5_IBUF (
    .I(switch[5]),
    .O(switch_5_IBUF_3637)
  );
  IBUF   switch_4_IBUF (
    .I(switch[4]),
    .O(switch_4_IBUF_3636)
  );
  IBUF   switch_1_IBUF (
    .I(switch[1]),
    .O(switch_1_IBUF_3635)
  );
  IBUF   switch_0_IBUF (
    .I(switch[0]),
    .O(switch_0_IBUF_3634)
  );
  OBUF   ram0_cen_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_cen_b)
  );
  OBUF   tv_in_clock_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_clock)
  );
  OBUF   tv_out_subcar_reset_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_subcar_reset)
  );
  OBUF   tv_out_pal_ntsc_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_pal_ntsc)
  );
  OBUF   ram1_adv_ld_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_adv_ld)
  );
  OBUF   ram0_clk_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_clk)
  );
  OBUF   vga_out_hsync_OBUF (
    .I(hs_3504),
    .O(vga_out_hsync)
  );
  OBUF   flash_ce_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(flash_ce_b)
  );
  OBUF   ram0_oe_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_oe_b)
  );
  OBUF   analyzer1_clock_OBUF (
    .I(led_5_OBUF_3517),
    .O(analyzer1_clock)
  );
  OBUF   ram1_cen_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_cen_b)
  );
  OBUF   ram1_oe_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_oe_b)
  );
  OBUF   ram0_adv_ld_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_adv_ld)
  );
  OBUF   disp_rs_OBUF (
    .I(\disp/disp_rs_1799 ),
    .O(disp_rs)
  );
  OBUF   ram0_ce_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_ce_b)
  );
  OBUF   ac97_sdata_out_OBUF (
    .I(\a/ac97/ac97_sdata_out_401 ),
    .O(ac97_sdata_out)
  );
  OBUF   analyzer2_clock_OBUF (
    .I(led_5_OBUF_3517),
    .O(analyzer2_clock)
  );
  OBUF   ram1_ce_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_ce_b)
  );
  OBUF   disp_clock_OBUF (
    .I(disp_clock_OBUF_1893),
    .O(disp_clock)
  );
  OBUF   systemace_oe_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(systemace_oe_b)
  );
  OBUF   tv_out_blank_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(tv_out_blank_b)
  );
  OBUF   rs232_rts_OBUF (
    .I(led_5_OBUF_3517),
    .O(rs232_rts)
  );
  OBUF   tv_out_reset_b_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_reset_b)
  );
  OBUF   flash_byte_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(flash_byte_b)
  );
  OBUF   audio_reset_b_OBUF (
    .I(\a/audio_reset_b_504 ),
    .O(audio_reset_b)
  );
  OBUF   tv_in_fifo_read_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_fifo_read)
  );
  OBUF   tv_out_clock_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_clock)
  );
  OBUF   tv_in_reset_b_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_reset_b)
  );
  OBUF   analyzer3_clock_OBUF (
    .I(led_5_OBUF_3517),
    .O(analyzer3_clock)
  );
  OBUF   systemace_ce_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(systemace_ce_b)
  );
  OBUF   rs232_txd_OBUF (
    .I(led_5_OBUF_3517),
    .O(rs232_txd)
  );
  OBUF   flash_reset_b_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_reset_b)
  );
  OBUF   ac97_synch_OBUF (
    .I(\a/ac97/ac97_synch_412 ),
    .O(ac97_synch)
  );
  OBUF   flash_we_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(flash_we_b)
  );
  OBUF   disp_ce_b_OBUF (
    .I(\disp/disp_ce_b_1787 ),
    .O(disp_ce_b)
  );
  OBUF   tv_in_fifo_clock_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_fifo_clock)
  );
  OBUF   vga_out_vsync_OBUF (
    .I(vs_3720),
    .O(vga_out_vsync)
  );
  OBUF   tv_in_i2c_clock_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_i2c_clock)
  );
  OBUF   tv_out_i2c_clock_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_i2c_clock)
  );
  OBUF   tv_out_hsync_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(tv_out_hsync_b)
  );
  OBUF   analyzer4_clock_OBUF (
    .I(led_5_OBUF_3517),
    .O(analyzer4_clock)
  );
  OBUF   ram1_clk_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_clk)
  );
  OBUF   vga_out_sync_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(vga_out_sync_b)
  );
  OBUF   disp_data_out_OBUF (
    .I(\disp/disp_data_out_1789 ),
    .O(disp_data_out)
  );
  OBUF   vga_out_pixel_clock_OBUF (
    .I(vga_out_pixel_clock_OBUF_3695),
    .O(vga_out_pixel_clock)
  );
  OBUF   beep_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(beep)
  );
  OBUF   ram0_we_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_we_b)
  );
  OBUF   ram1_we_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_we_b)
  );
  OBUF   clock_feedback_out_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(clock_feedback_out)
  );
  OBUF   tv_in_iso_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_in_iso)
  );
  OBUF   disp_reset_b_OBUF (
    .I(\disp/disp_reset_b_1797 ),
    .O(disp_reset_b)
  );
  OBUF   systemace_we_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(systemace_we_b)
  );
  OBUF   vga_out_blank_b_OBUF (
    .I(vga_out_blank_b_OBUF_3676),
    .O(vga_out_blank_b)
  );
  OBUF   tv_out_i2c_data_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_i2c_data)
  );
  OBUF   disp_blank_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(disp_blank)
  );
  OBUF   flash_oe_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(flash_oe_b)
  );
  OBUF   tv_out_vsync_b_OBUF (
    .I(led_5_OBUF_3517),
    .O(tv_out_vsync_b)
  );
  OBUF   systemace_address_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[6])
  );
  OBUF   systemace_address_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[5])
  );
  OBUF   systemace_address_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[4])
  );
  OBUF   systemace_address_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[3])
  );
  OBUF   systemace_address_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[2])
  );
  OBUF   systemace_address_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[1])
  );
  OBUF   systemace_address_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(systemace_address[0])
  );
  OBUF   vga_out_red_7_OBUF (
    .I(rgb[23]),
    .O(vga_out_red[7])
  );
  OBUF   vga_out_red_6_OBUF (
    .I(rgb[22]),
    .O(vga_out_red[6])
  );
  OBUF   vga_out_red_5_OBUF (
    .I(rgb[21]),
    .O(vga_out_red[5])
  );
  OBUF   vga_out_red_4_OBUF (
    .I(rgb[20]),
    .O(vga_out_red[4])
  );
  OBUF   vga_out_red_3_OBUF (
    .I(rgb[19]),
    .O(vga_out_red[3])
  );
  OBUF   vga_out_red_2_OBUF (
    .I(rgb[18]),
    .O(vga_out_red[2])
  );
  OBUF   vga_out_red_1_OBUF (
    .I(rgb[17]),
    .O(vga_out_red[1])
  );
  OBUF   vga_out_red_0_OBUF (
    .I(rgb[16]),
    .O(vga_out_red[0])
  );
  OBUF   tv_out_ycrcb_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[9])
  );
  OBUF   tv_out_ycrcb_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[8])
  );
  OBUF   tv_out_ycrcb_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[7])
  );
  OBUF   tv_out_ycrcb_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[6])
  );
  OBUF   tv_out_ycrcb_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[5])
  );
  OBUF   tv_out_ycrcb_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[4])
  );
  OBUF   tv_out_ycrcb_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[3])
  );
  OBUF   tv_out_ycrcb_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[2])
  );
  OBUF   tv_out_ycrcb_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[1])
  );
  OBUF   tv_out_ycrcb_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(tv_out_ycrcb[0])
  );
  OBUF   vga_out_blue_7_OBUF (
    .I(rgb[7]),
    .O(vga_out_blue[7])
  );
  OBUF   vga_out_blue_6_OBUF (
    .I(rgb[6]),
    .O(vga_out_blue[6])
  );
  OBUF   vga_out_blue_5_OBUF (
    .I(rgb[5]),
    .O(vga_out_blue[5])
  );
  OBUF   vga_out_blue_4_OBUF (
    .I(rgb[4]),
    .O(vga_out_blue[4])
  );
  OBUF   vga_out_blue_3_OBUF (
    .I(rgb[3]),
    .O(vga_out_blue[3])
  );
  OBUF   vga_out_blue_2_OBUF (
    .I(rgb[2]),
    .O(vga_out_blue[2])
  );
  OBUF   vga_out_blue_1_OBUF (
    .I(rgb[1]),
    .O(vga_out_blue[1])
  );
  OBUF   vga_out_blue_0_OBUF (
    .I(rgb[0]),
    .O(vga_out_blue[0])
  );
  OBUF   ram1_address_18_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[18])
  );
  OBUF   ram1_address_17_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[17])
  );
  OBUF   ram1_address_16_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[16])
  );
  OBUF   ram1_address_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[15])
  );
  OBUF   ram1_address_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[14])
  );
  OBUF   ram1_address_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[13])
  );
  OBUF   ram1_address_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[12])
  );
  OBUF   ram1_address_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[11])
  );
  OBUF   ram1_address_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[10])
  );
  OBUF   ram1_address_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[9])
  );
  OBUF   ram1_address_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[8])
  );
  OBUF   ram1_address_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[7])
  );
  OBUF   ram1_address_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[6])
  );
  OBUF   ram1_address_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[5])
  );
  OBUF   ram1_address_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[4])
  );
  OBUF   ram1_address_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[3])
  );
  OBUF   ram1_address_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[2])
  );
  OBUF   ram1_address_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[1])
  );
  OBUF   ram1_address_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram1_address[0])
  );
  OBUF   analyzer1_data_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[15])
  );
  OBUF   analyzer1_data_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[14])
  );
  OBUF   analyzer1_data_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[13])
  );
  OBUF   analyzer1_data_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[12])
  );
  OBUF   analyzer1_data_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[11])
  );
  OBUF   analyzer1_data_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[10])
  );
  OBUF   analyzer1_data_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[9])
  );
  OBUF   analyzer1_data_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[8])
  );
  OBUF   analyzer1_data_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[7])
  );
  OBUF   analyzer1_data_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[6])
  );
  OBUF   analyzer1_data_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[5])
  );
  OBUF   analyzer1_data_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[4])
  );
  OBUF   analyzer1_data_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[3])
  );
  OBUF   analyzer1_data_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[2])
  );
  OBUF   analyzer1_data_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[1])
  );
  OBUF   analyzer1_data_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer1_data[0])
  );
  OBUF   analyzer2_data_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[15])
  );
  OBUF   analyzer2_data_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[14])
  );
  OBUF   analyzer2_data_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[13])
  );
  OBUF   analyzer2_data_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[12])
  );
  OBUF   analyzer2_data_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[11])
  );
  OBUF   analyzer2_data_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[10])
  );
  OBUF   analyzer2_data_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[9])
  );
  OBUF   analyzer2_data_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[8])
  );
  OBUF   analyzer2_data_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[7])
  );
  OBUF   analyzer2_data_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[6])
  );
  OBUF   analyzer2_data_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[5])
  );
  OBUF   analyzer2_data_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[4])
  );
  OBUF   analyzer2_data_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[3])
  );
  OBUF   analyzer2_data_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[2])
  );
  OBUF   analyzer2_data_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[1])
  );
  OBUF   analyzer2_data_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer2_data[0])
  );
  OBUF   analyzer3_data_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[15])
  );
  OBUF   analyzer3_data_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[14])
  );
  OBUF   analyzer3_data_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[13])
  );
  OBUF   analyzer3_data_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[12])
  );
  OBUF   analyzer3_data_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[11])
  );
  OBUF   analyzer3_data_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[10])
  );
  OBUF   analyzer3_data_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[9])
  );
  OBUF   analyzer3_data_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[8])
  );
  OBUF   analyzer3_data_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[7])
  );
  OBUF   analyzer3_data_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[6])
  );
  OBUF   analyzer3_data_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[5])
  );
  OBUF   analyzer3_data_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[4])
  );
  OBUF   analyzer3_data_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[3])
  );
  OBUF   analyzer3_data_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[2])
  );
  OBUF   analyzer3_data_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[1])
  );
  OBUF   analyzer3_data_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer3_data[0])
  );
  OBUF   analyzer4_data_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[15])
  );
  OBUF   analyzer4_data_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[14])
  );
  OBUF   analyzer4_data_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[13])
  );
  OBUF   analyzer4_data_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[12])
  );
  OBUF   analyzer4_data_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[11])
  );
  OBUF   analyzer4_data_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[10])
  );
  OBUF   analyzer4_data_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[9])
  );
  OBUF   analyzer4_data_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[8])
  );
  OBUF   analyzer4_data_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[7])
  );
  OBUF   analyzer4_data_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[6])
  );
  OBUF   analyzer4_data_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[5])
  );
  OBUF   analyzer4_data_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[4])
  );
  OBUF   analyzer4_data_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[3])
  );
  OBUF   analyzer4_data_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[2])
  );
  OBUF   analyzer4_data_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[1])
  );
  OBUF   analyzer4_data_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(analyzer4_data[0])
  );
  OBUF   ram0_bwe_b_3_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_bwe_b[3])
  );
  OBUF   ram0_bwe_b_2_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_bwe_b[2])
  );
  OBUF   ram0_bwe_b_1_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_bwe_b[1])
  );
  OBUF   ram0_bwe_b_0_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram0_bwe_b[0])
  );
  OBUF   flash_address_23_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[23])
  );
  OBUF   flash_address_22_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[22])
  );
  OBUF   flash_address_21_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[21])
  );
  OBUF   flash_address_20_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[20])
  );
  OBUF   flash_address_19_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[19])
  );
  OBUF   flash_address_18_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[18])
  );
  OBUF   flash_address_17_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[17])
  );
  OBUF   flash_address_16_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[16])
  );
  OBUF   flash_address_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[15])
  );
  OBUF   flash_address_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[14])
  );
  OBUF   flash_address_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[13])
  );
  OBUF   flash_address_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[12])
  );
  OBUF   flash_address_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[11])
  );
  OBUF   flash_address_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[10])
  );
  OBUF   flash_address_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[9])
  );
  OBUF   flash_address_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[8])
  );
  OBUF   flash_address_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[7])
  );
  OBUF   flash_address_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[6])
  );
  OBUF   flash_address_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[5])
  );
  OBUF   flash_address_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[4])
  );
  OBUF   flash_address_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[3])
  );
  OBUF   flash_address_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[2])
  );
  OBUF   flash_address_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[1])
  );
  OBUF   flash_address_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(flash_address[0])
  );
  OBUF   ram1_bwe_b_3_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_bwe_b[3])
  );
  OBUF   ram1_bwe_b_2_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_bwe_b[2])
  );
  OBUF   ram1_bwe_b_1_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_bwe_b[1])
  );
  OBUF   ram1_bwe_b_0_OBUF (
    .I(led_5_OBUF_3517),
    .O(ram1_bwe_b[0])
  );
  OBUF   vga_out_green_7_OBUF (
    .I(rgb[15]),
    .O(vga_out_green[7])
  );
  OBUF   vga_out_green_6_OBUF (
    .I(rgb[14]),
    .O(vga_out_green[6])
  );
  OBUF   vga_out_green_5_OBUF (
    .I(rgb[13]),
    .O(vga_out_green[5])
  );
  OBUF   vga_out_green_4_OBUF (
    .I(rgb[12]),
    .O(vga_out_green[4])
  );
  OBUF   vga_out_green_3_OBUF (
    .I(rgb[11]),
    .O(vga_out_green[3])
  );
  OBUF   vga_out_green_2_OBUF (
    .I(rgb[10]),
    .O(vga_out_green[2])
  );
  OBUF   vga_out_green_1_OBUF (
    .I(rgb[9]),
    .O(vga_out_green[1])
  );
  OBUF   vga_out_green_0_OBUF (
    .I(rgb[8]),
    .O(vga_out_green[0])
  );
  OBUF   led_7_OBUF (
    .I(led_5_OBUF_3517),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_5_OBUF_3517),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_OBUF_3517),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_OBUF_3516),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_OBUF_3515),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_OBUF_3514),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_OBUF_3513),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(\Result<0>6 ),
    .O(led[0])
  );
  OBUF   ram0_address_18_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[18])
  );
  OBUF   ram0_address_17_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[17])
  );
  OBUF   ram0_address_16_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[16])
  );
  OBUF   ram0_address_15_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[15])
  );
  OBUF   ram0_address_14_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[14])
  );
  OBUF   ram0_address_13_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[13])
  );
  OBUF   ram0_address_12_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[12])
  );
  OBUF   ram0_address_11_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[11])
  );
  OBUF   ram0_address_10_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[10])
  );
  OBUF   ram0_address_9_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[9])
  );
  OBUF   ram0_address_8_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[8])
  );
  OBUF   ram0_address_7_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[7])
  );
  OBUF   ram0_address_6_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[6])
  );
  OBUF   ram0_address_5_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[5])
  );
  OBUF   ram0_address_4_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[4])
  );
  OBUF   ram0_address_3_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[3])
  );
  OBUF   ram0_address_2_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[2])
  );
  OBUF   ram0_address_1_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[1])
  );
  OBUF   ram0_address_0_OBUF (
    .I(\a/ac97/Mmux__varindex0000_9 ),
    .O(ram0_address[0])
  );
  FDR   yvcount_0 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [0]),
    .Q(yvcount[0])
  );
  FDR   yvcount_1 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [1]),
    .Q(yvcount[1])
  );
  FDR   yvcount_2 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [2]),
    .Q(yvcount[2])
  );
  FDR   yvcount_3 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [3]),
    .Q(yvcount[3])
  );
  FDR   yvcount_4 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [4]),
    .Q(yvcount[4])
  );
  FDR   yvcount_5 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [5]),
    .Q(yvcount[5])
  );
  FDR   yvcount_6 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [6]),
    .Q(yvcount[6])
  );
  FDR   yvcount_7 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\xvga1/vcount [7]),
    .Q(yvcount[7])
  );
  FDR   green_grad_color_0 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[0]),
    .Q(green_grad_color[0])
  );
  FDR   green_grad_color_1 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[1]),
    .Q(green_grad_color[1])
  );
  FDR   green_grad_color_2 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[2]),
    .Q(green_grad_color[2])
  );
  FDR   green_grad_color_3 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[3]),
    .Q(green_grad_color[3])
  );
  FDR   green_grad_color_4 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[4]),
    .Q(green_grad_color[4])
  );
  FDR   green_grad_color_5 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[5]),
    .Q(green_grad_color[5])
  );
  FDR   green_grad_color_6 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[6]),
    .Q(green_grad_color[6])
  );
  FDR   green_grad_color_7 (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(quotient[7]),
    .Q(green_grad_color[7])
  );
  FDS   rgb_0 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000012),
    .S(N12),
    .Q(rgb[0])
  );
  FDS   rgb_1 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000121),
    .S(N12),
    .Q(rgb[1])
  );
  FDS   rgb_2 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000171),
    .S(N12),
    .Q(rgb[2])
  );
  FDS   rgb_3 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000181),
    .S(N12),
    .Q(rgb[3])
  );
  FDS   rgb_4 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000191),
    .S(N12),
    .Q(rgb[4])
  );
  FDS   rgb_5 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000201),
    .S(N12),
    .Q(rgb[5])
  );
  FDS   rgb_6 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000211),
    .S(N12),
    .Q(rgb[6])
  );
  FDS   rgb_7 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000221),
    .S(N12),
    .Q(rgb[7])
  );
  FDS   rgb_8 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000231),
    .S(N14),
    .Q(rgb[8])
  );
  FDS   rgb_9 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux0000241),
    .S(N14),
    .Q(rgb[9])
  );
  FDS   rgb_10 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000021),
    .S(N14),
    .Q(rgb[10])
  );
  FDS   rgb_11 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000031),
    .S(N14),
    .Q(rgb[11])
  );
  FDS   rgb_12 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000041),
    .S(N14),
    .Q(rgb[12])
  );
  FDS   rgb_13 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000051),
    .S(N14),
    .Q(rgb[13])
  );
  FDS   rgb_14 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000061),
    .S(N14),
    .Q(rgb[14])
  );
  FDS   rgb_15 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000071),
    .S(N14),
    .Q(rgb[15])
  );
  FDS   rgb_16 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux00008),
    .S(N13),
    .Q(rgb[16])
  );
  FDS   rgb_17 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux00009),
    .S(N13),
    .Q(rgb[17])
  );
  FDS   rgb_18 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000010),
    .S(N13),
    .Q(rgb[18])
  );
  FDS   rgb_19 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000011),
    .S(N13),
    .Q(rgb[19])
  );
  FDS   rgb_20 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000013),
    .S(N13),
    .Q(rgb[20])
  );
  FDS   rgb_21 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000014),
    .S(N13),
    .Q(rgb[21])
  );
  FDS   rgb_22 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000015),
    .S(N13),
    .Q(rgb[22])
  );
  FDS   rgb_23 (
    .C(clock_65mhz),
    .D(Mmux_rgb_mux000016),
    .S(N13),
    .Q(rgb[23])
  );
  FDS   \xvga1/blank  (
    .C(clock_65mhz),
    .D(\xvga1/blank_or00001 ),
    .S(\xvga1/next_vblank ),
    .Q(\xvga1/blank_3802 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_0  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<15>1 ),
    .R(\a/cmds/N01 ),
    .Q(\a/cmds/command[0] )
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \a/cmds/command_mux0000<15>11  (
    .I0(volume[0]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [2]),
    .O(\a/cmds/command_mux0000<15>1 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_1  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<14>1 ),
    .R(\a/cmds/N01 ),
    .Q(\a/cmds/command[1] )
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \a/cmds/command_mux0000<14>11  (
    .I0(volume[1]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [2]),
    .O(\a/cmds/command_mux0000<14>1 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_2  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<13>1 ),
    .R(\a/cmds/N01 ),
    .Q(\a/cmds/command[2] )
  );
  LUT3 #(
    .INIT ( 8'h31 ))
  \a/cmds/command_mux0000<13>11  (
    .I0(volume[2]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [2]),
    .O(\a/cmds/command_mux0000<13>1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \a/cmds/command_3  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/N8 ),
    .S(\a/cmds/command_cmp_eq0006 ),
    .Q(\a/cmds/command[3] )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_4  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<11>1 ),
    .R(volume[4]),
    .Q(\a/cmds/command[4] )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_15  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<8>1 ),
    .R(\a/cmds/state [2]),
    .Q(\a/cmds/command[15] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a/cmds/command_mux0000<8>11  (
    .I0(\a/cmds/state [0]),
    .I1(\a/cmds/state [3]),
    .O(\a/cmds/command_mux0000<8>1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \a/cmds/command_18  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_mux0000<5>1 ),
    .S(\a/cmds/command_cmp_eq0006 ),
    .Q(\a/cmds/command[18] )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_20  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/N91 ),
    .R(\a/cmds/state [3]),
    .Q(\a/cmds/command[20] )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \a/cmds/N911  (
    .I0(\a/cmds/state [0]),
    .I1(\a/cmds/state [2]),
    .I2(\a/cmds/state [1]),
    .O(\a/cmds/N91 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \a/cmds/command_21  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/cmds/command_cmp_eq00081 ),
    .R(\a/cmds/state [2]),
    .Q(\a/cmds/command[21] )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \a/cmds/command_cmp_eq000811  (
    .I0(\a/cmds/state [0]),
    .I1(\a/cmds/state [1]),
    .I2(\a/cmds/state [3]),
    .O(\a/cmds/command_cmp_eq00081 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \a/ac97/ac97_synch  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/ac97_synch_mux000039 ),
    .S(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .Q(\a/ac97/ac97_synch_412 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \a/ac97/ac97_synch_mux0000391  (
    .I0(\a/ac97/ac97_synch_mux00004_415 ),
    .I1(\a/ac97/ac97_synch_412 ),
    .I2(\a/ac97/ac97_synch_mux000017_413 ),
    .O(\a/ac97/ac97_synch_mux000039 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \a/ac97/ready  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/ready_mux000068 ),
    .S(\a/ac97/ready_mux000055_502 ),
    .Q(\a/ac97/ready_497 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \a/ac97/ready_mux0000681  (
    .I0(\a/ac97/ready_mux00004_499 ),
    .I1(\a/ac97/ready_497 ),
    .I2(\a/ac97/ready_mux000012_498 ),
    .O(\a/ac97/ready_mux000068 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \a/ac97/ac97_sdata_out  (
    .C(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/ac97_sdata_out_mux0000231 ),
    .S(\a/ac97/ac97_sdata_out_mux0000217_408 ),
    .Q(\a/ac97/ac97_sdata_out_401 )
  );
  FDR   \hd/ma_digs/address_out_0  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<0>1 ),
    .Q(\hd/ma_digs/address_out [0])
  );
  FDR   \hd/ma_digs/address_out_1  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<1>1 ),
    .Q(\hd/ma_digs/address_out [1])
  );
  FDR   \hd/ma_digs/address_out_2  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<2>1 ),
    .Q(\hd/ma_digs/address_out [2])
  );
  FDR   \hd/ma_digs/address_out_3  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<3>1 ),
    .Q(\hd/ma_digs/address_out [3])
  );
  FDR   \hd/ma_digs/address_out_4  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<4>1 ),
    .Q(\hd/ma_digs/address_out [4])
  );
  FDR   \hd/ma_digs/address_out_5  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<5>1 ),
    .Q(\hd/ma_digs/address_out [5])
  );
  FDR   \hd/ma_digs/address_out_6  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<6>1 ),
    .Q(\hd/ma_digs/address_out [6])
  );
  FDR   \hd/ma_digs/address_out_7  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<7>1 ),
    .Q(\hd/ma_digs/address_out [7])
  );
  FDR   \hd/ma_digs/address_out_8  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<8>1 ),
    .Q(\hd/ma_digs/address_out [8])
  );
  FDR   \hd/ma_digs/address_out_9  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<9>1 ),
    .Q(\hd/ma_digs/address_out [9])
  );
  FDR   \hd/ma_digs/address_out_10  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/address_out_mux0000<10>1 ),
    .Q(\hd/ma_digs/address_out [10])
  );
  FDR   \hd/ma_digs/num_sel_out_0  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/num_sel_out_mux0000<0>1 ),
    .Q(\hd/ma_digs/num_sel_out [0])
  );
  FDR   \hd/ma_digs/num_sel_out_1  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/num_sel_out_mux0000<1>1 ),
    .Q(\hd/ma_digs/num_sel_out [1])
  );
  FDR   \hd/ma_digs/num_sel_out_2  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/num_sel_out_mux0000<2>1 ),
    .Q(\hd/ma_digs/num_sel_out [2])
  );
  FDR   \hd/ma_digs/num_sel_out_3  (
    .C(clock_65mhz),
    .D(led_5_OBUF_3517),
    .R(\hd/ma_digs/num_sel_out_mux0000<3>1 ),
    .Q(\hd/ma_digs/num_sel_out [3])
  );
  FDS   \hd/ma_digs/the_sel/selected_3  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_sel/selected_mux0000<0>107 ),
    .S(\hd/ma_digs/the_sel/N6 ),
    .Q(\hd/ma_digs/the_sel/selected [3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>1071  (
    .I0(\hd/ma_digs/the_sel/selected_mux0000<0>62_3315 ),
    .I1(\hd/ma_digs/the_sel/N8 ),
    .I2(\hd/ma_digs/the_sel/selected_mux0000<0>80 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<0>107 )
  );
  FDS   \hd/ma_digs/the_sel/selected_2  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_sel/selected_mux0000<1>99 ),
    .S(\hd/ma_digs/the_sel/N6 ),
    .Q(\hd/ma_digs/the_sel/selected [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/the_sel/selected_mux0000<1>991  (
    .I0(\hd/ma_digs/the_sel/selected_mux0000<1>62_3318 ),
    .I1(\hd/ma_digs/the_sel/N8 ),
    .I2(\hd/ma_digs/the_sel/selected_mux0000<1>76_3319 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<1>99 )
  );
  FDS   \hd/ma_digs/the_sel/selected_1  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_sel/selected_mux0000<2>107 ),
    .S(\hd/ma_digs/the_sel/N7 ),
    .Q(\hd/ma_digs/the_sel/selected [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/the_sel/selected_mux0000<2>1071  (
    .I0(\hd/ma_digs/the_sel/selected_mux0000<2>62_3322 ),
    .I1(\hd/ma_digs/the_sel/N9 ),
    .I2(\hd/ma_digs/the_sel/selected_mux0000<2>80 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<2>107 )
  );
  FDS   \hd/ma_digs/the_sel/selected_0  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_sel/selected_mux0000<3>108 ),
    .S(\hd/ma_digs/the_sel/N7 ),
    .Q(\hd/ma_digs/the_sel/selected [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/the_sel/selected_mux0000<3>1081  (
    .I0(\hd/ma_digs/the_sel/N9 ),
    .I1(\hd/ma_digs/the_sel/selected_mux0000<3>62_3326 ),
    .I2(\hd/ma_digs/the_sel/selected_mux0000<3>76_3327 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<3>108 )
  );
  FDS   \hd/ma_digs/the_dig/to_color_map_1  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_dig/to_color_map_mux0000<1>153 ),
    .S(\hd/ma_digs/the_dig/to_color_map_mux0000<1>12_3290 ),
    .Q(\hd/ma_digs/the_dig/to_color_map [1])
  );
  FDS   \hd/ma_digs/the_dig/to_color_map_0  (
    .C(clock_65mhz),
    .D(\hd/ma_digs/the_dig/to_color_map_mux0000<0>153 ),
    .S(\hd/ma_digs/the_dig/to_color_map_mux0000<0>12_3281 ),
    .Q(\hd/ma_digs/the_dig/to_color_map [0])
  );
  FDRS   \disp/state_FSM_FFd1  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<5>0 ),
    .R(\disp/dreset ),
    .S(\disp/state_FSM_FFd1_1881 ),
    .Q(\disp/state_FSM_FFd1_1881 )
  );
  FDRS   \disp/dot_index_7  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<2>90 ),
    .R(\disp/dreset ),
    .S(\disp/N102 ),
    .Q(\disp/dot_index [7])
  );
  FDRS   \disp/dot_index_6  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<3>52 ),
    .R(\disp/dreset ),
    .S(\disp/dot_index_mux0000<3>14 ),
    .Q(\disp/dot_index [6])
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \disp/dot_index_mux0000<3>521  (
    .I0(\disp/N76 ),
    .I1(\disp/dot_index [6]),
    .I2(\disp/dot_index_mux0000<3>34_1829 ),
    .O(\disp/dot_index_mux0000<3>52 )
  );
  FDRS   \disp/dot_index_5  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<4>152 ),
    .R(\disp/dreset ),
    .S(\disp/N24 ),
    .Q(\disp/dot_index [5])
  );
  FDRS   \disp/dot_index_4  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<5>112_1838 ),
    .R(\disp/dreset ),
    .S(\disp/dot_index_mux0000<5>39_1841 ),
    .Q(\disp/dot_index [4])
  );
  FDRS   \disp/dot_index_3  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<6>101_1846 ),
    .R(\disp/dreset ),
    .S(\disp/dot_index_mux0000<6>43_1849 ),
    .Q(\disp/dot_index [3])
  );
  FDRS   \disp/dot_index_2  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<7>100 ),
    .R(\disp/dreset ),
    .S(\disp/N14 ),
    .Q(\disp/dot_index [2])
  );
  FDRS   \disp/dot_index_1  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<8>51_1856 ),
    .R(\disp/dreset ),
    .S(\disp/N14 ),
    .Q(\disp/dot_index [1])
  );
  FDRS   \disp/dot_index_0  (
    .C(\disp/clock_1761 ),
    .D(\disp/dot_index_mux0000<9>1_1857 ),
    .R(\disp/dreset ),
    .S(\disp/N14 ),
    .Q(\disp/dot_index [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<1>_rt  (
    .I0(\db4/count [1]),
    .O(\db4/Mcount_count_cy<1>_rt_1440 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<2>_rt  (
    .I0(\db4/count [2]),
    .O(\db4/Mcount_count_cy<2>_rt_1442 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<3>_rt  (
    .I0(\db4/count [3]),
    .O(\db4/Mcount_count_cy<3>_rt_1444 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<4>_rt  (
    .I0(\db4/count [4]),
    .O(\db4/Mcount_count_cy<4>_rt_1446 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<5>_rt  (
    .I0(\db4/count [5]),
    .O(\db4/Mcount_count_cy<5>_rt_1448 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<6>_rt  (
    .I0(\db4/count [6]),
    .O(\db4/Mcount_count_cy<6>_rt_1450 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<7>_rt  (
    .I0(\db4/count [7]),
    .O(\db4/Mcount_count_cy<7>_rt_1452 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<8>_rt  (
    .I0(\db4/count [8]),
    .O(\db4/Mcount_count_cy<8>_rt_1454 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<9>_rt  (
    .I0(\db4/count [9]),
    .O(\db4/Mcount_count_cy<9>_rt_1456 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<10>_rt  (
    .I0(\db4/count [10]),
    .O(\db4/Mcount_count_cy<10>_rt_1424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<11>_rt  (
    .I0(\db4/count [11]),
    .O(\db4/Mcount_count_cy<11>_rt_1426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<12>_rt  (
    .I0(\db4/count [12]),
    .O(\db4/Mcount_count_cy<12>_rt_1428 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<13>_rt  (
    .I0(\db4/count [13]),
    .O(\db4/Mcount_count_cy<13>_rt_1430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<14>_rt  (
    .I0(\db4/count [14]),
    .O(\db4/Mcount_count_cy<14>_rt_1432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<15>_rt  (
    .I0(\db4/count [15]),
    .O(\db4/Mcount_count_cy<15>_rt_1434 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<16>_rt  (
    .I0(\db4/count [16]),
    .O(\db4/Mcount_count_cy<16>_rt_1436 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_cy<17>_rt  (
    .I0(\db4/count [17]),
    .O(\db4/Mcount_count_cy<17>_rt_1438 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<1>_rt  (
    .I0(\db1/count [1]),
    .O(\db1/Mcount_count_cy<1>_rt_1221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<2>_rt  (
    .I0(\db1/count [2]),
    .O(\db1/Mcount_count_cy<2>_rt_1223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<3>_rt  (
    .I0(\db1/count [3]),
    .O(\db1/Mcount_count_cy<3>_rt_1225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<4>_rt  (
    .I0(\db1/count [4]),
    .O(\db1/Mcount_count_cy<4>_rt_1227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<5>_rt  (
    .I0(\db1/count [5]),
    .O(\db1/Mcount_count_cy<5>_rt_1229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<6>_rt  (
    .I0(\db1/count [6]),
    .O(\db1/Mcount_count_cy<6>_rt_1231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<7>_rt  (
    .I0(\db1/count [7]),
    .O(\db1/Mcount_count_cy<7>_rt_1233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<8>_rt  (
    .I0(\db1/count [8]),
    .O(\db1/Mcount_count_cy<8>_rt_1235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<9>_rt  (
    .I0(\db1/count [9]),
    .O(\db1/Mcount_count_cy<9>_rt_1237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<10>_rt  (
    .I0(\db1/count [10]),
    .O(\db1/Mcount_count_cy<10>_rt_1205 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<11>_rt  (
    .I0(\db1/count [11]),
    .O(\db1/Mcount_count_cy<11>_rt_1207 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<12>_rt  (
    .I0(\db1/count [12]),
    .O(\db1/Mcount_count_cy<12>_rt_1209 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<13>_rt  (
    .I0(\db1/count [13]),
    .O(\db1/Mcount_count_cy<13>_rt_1211 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<14>_rt  (
    .I0(\db1/count [14]),
    .O(\db1/Mcount_count_cy<14>_rt_1213 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<15>_rt  (
    .I0(\db1/count [15]),
    .O(\db1/Mcount_count_cy<15>_rt_1215 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<16>_rt  (
    .I0(\db1/count [16]),
    .O(\db1/Mcount_count_cy<16>_rt_1217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_cy<17>_rt  (
    .I0(\db1/count [17]),
    .O(\db1/Mcount_count_cy<17>_rt_1219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<1>_rt  (
    .I0(\db6/count [1]),
    .O(\db6/Mcount_count_cy<1>_rt_1586 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<2>_rt  (
    .I0(\db6/count [2]),
    .O(\db6/Mcount_count_cy<2>_rt_1588 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<3>_rt  (
    .I0(\db6/count [3]),
    .O(\db6/Mcount_count_cy<3>_rt_1590 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<4>_rt  (
    .I0(\db6/count [4]),
    .O(\db6/Mcount_count_cy<4>_rt_1592 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<5>_rt  (
    .I0(\db6/count [5]),
    .O(\db6/Mcount_count_cy<5>_rt_1594 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<6>_rt  (
    .I0(\db6/count [6]),
    .O(\db6/Mcount_count_cy<6>_rt_1596 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<7>_rt  (
    .I0(\db6/count [7]),
    .O(\db6/Mcount_count_cy<7>_rt_1598 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<8>_rt  (
    .I0(\db6/count [8]),
    .O(\db6/Mcount_count_cy<8>_rt_1600 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<9>_rt  (
    .I0(\db6/count [9]),
    .O(\db6/Mcount_count_cy<9>_rt_1602 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<10>_rt  (
    .I0(\db6/count [10]),
    .O(\db6/Mcount_count_cy<10>_rt_1570 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<11>_rt  (
    .I0(\db6/count [11]),
    .O(\db6/Mcount_count_cy<11>_rt_1572 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<12>_rt  (
    .I0(\db6/count [12]),
    .O(\db6/Mcount_count_cy<12>_rt_1574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<13>_rt  (
    .I0(\db6/count [13]),
    .O(\db6/Mcount_count_cy<13>_rt_1576 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<14>_rt  (
    .I0(\db6/count [14]),
    .O(\db6/Mcount_count_cy<14>_rt_1578 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<15>_rt  (
    .I0(\db6/count [15]),
    .O(\db6/Mcount_count_cy<15>_rt_1580 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<16>_rt  (
    .I0(\db6/count [16]),
    .O(\db6/Mcount_count_cy<16>_rt_1582 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_cy<17>_rt  (
    .I0(\db6/count [17]),
    .O(\db6/Mcount_count_cy<17>_rt_1584 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<1>_rt  (
    .I0(\db5/count [1]),
    .O(\db5/Mcount_count_cy<1>_rt_1513 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<2>_rt  (
    .I0(\db5/count [2]),
    .O(\db5/Mcount_count_cy<2>_rt_1515 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<3>_rt  (
    .I0(\db5/count [3]),
    .O(\db5/Mcount_count_cy<3>_rt_1517 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<4>_rt  (
    .I0(\db5/count [4]),
    .O(\db5/Mcount_count_cy<4>_rt_1519 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<5>_rt  (
    .I0(\db5/count [5]),
    .O(\db5/Mcount_count_cy<5>_rt_1521 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<6>_rt  (
    .I0(\db5/count [6]),
    .O(\db5/Mcount_count_cy<6>_rt_1523 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<7>_rt  (
    .I0(\db5/count [7]),
    .O(\db5/Mcount_count_cy<7>_rt_1525 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<8>_rt  (
    .I0(\db5/count [8]),
    .O(\db5/Mcount_count_cy<8>_rt_1527 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<9>_rt  (
    .I0(\db5/count [9]),
    .O(\db5/Mcount_count_cy<9>_rt_1529 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<10>_rt  (
    .I0(\db5/count [10]),
    .O(\db5/Mcount_count_cy<10>_rt_1497 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<11>_rt  (
    .I0(\db5/count [11]),
    .O(\db5/Mcount_count_cy<11>_rt_1499 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<12>_rt  (
    .I0(\db5/count [12]),
    .O(\db5/Mcount_count_cy<12>_rt_1501 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<13>_rt  (
    .I0(\db5/count [13]),
    .O(\db5/Mcount_count_cy<13>_rt_1503 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<14>_rt  (
    .I0(\db5/count [14]),
    .O(\db5/Mcount_count_cy<14>_rt_1505 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<15>_rt  (
    .I0(\db5/count [15]),
    .O(\db5/Mcount_count_cy<15>_rt_1507 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<16>_rt  (
    .I0(\db5/count [16]),
    .O(\db5/Mcount_count_cy<16>_rt_1509 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_cy<17>_rt  (
    .I0(\db5/count [17]),
    .O(\db5/Mcount_count_cy<17>_rt_1511 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<1>_rt  (
    .I0(\db3/count [1]),
    .O(\db3/Mcount_count_cy<1>_rt_1367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<2>_rt  (
    .I0(\db3/count [2]),
    .O(\db3/Mcount_count_cy<2>_rt_1369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<3>_rt  (
    .I0(\db3/count [3]),
    .O(\db3/Mcount_count_cy<3>_rt_1371 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<4>_rt  (
    .I0(\db3/count [4]),
    .O(\db3/Mcount_count_cy<4>_rt_1373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<5>_rt  (
    .I0(\db3/count [5]),
    .O(\db3/Mcount_count_cy<5>_rt_1375 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<6>_rt  (
    .I0(\db3/count [6]),
    .O(\db3/Mcount_count_cy<6>_rt_1377 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<7>_rt  (
    .I0(\db3/count [7]),
    .O(\db3/Mcount_count_cy<7>_rt_1379 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<8>_rt  (
    .I0(\db3/count [8]),
    .O(\db3/Mcount_count_cy<8>_rt_1381 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<9>_rt  (
    .I0(\db3/count [9]),
    .O(\db3/Mcount_count_cy<9>_rt_1383 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<10>_rt  (
    .I0(\db3/count [10]),
    .O(\db3/Mcount_count_cy<10>_rt_1351 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<11>_rt  (
    .I0(\db3/count [11]),
    .O(\db3/Mcount_count_cy<11>_rt_1353 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<12>_rt  (
    .I0(\db3/count [12]),
    .O(\db3/Mcount_count_cy<12>_rt_1355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<13>_rt  (
    .I0(\db3/count [13]),
    .O(\db3/Mcount_count_cy<13>_rt_1357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<14>_rt  (
    .I0(\db3/count [14]),
    .O(\db3/Mcount_count_cy<14>_rt_1359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<15>_rt  (
    .I0(\db3/count [15]),
    .O(\db3/Mcount_count_cy<15>_rt_1361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<16>_rt  (
    .I0(\db3/count [16]),
    .O(\db3/Mcount_count_cy<16>_rt_1363 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_cy<17>_rt  (
    .I0(\db3/count [17]),
    .O(\db3/Mcount_count_cy<17>_rt_1365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<1>_rt  (
    .I0(\db2/count [1]),
    .O(\db2/Mcount_count_cy<1>_rt_1294 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<2>_rt  (
    .I0(\db2/count [2]),
    .O(\db2/Mcount_count_cy<2>_rt_1296 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<3>_rt  (
    .I0(\db2/count [3]),
    .O(\db2/Mcount_count_cy<3>_rt_1298 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<4>_rt  (
    .I0(\db2/count [4]),
    .O(\db2/Mcount_count_cy<4>_rt_1300 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<5>_rt  (
    .I0(\db2/count [5]),
    .O(\db2/Mcount_count_cy<5>_rt_1302 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<6>_rt  (
    .I0(\db2/count [6]),
    .O(\db2/Mcount_count_cy<6>_rt_1304 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<7>_rt  (
    .I0(\db2/count [7]),
    .O(\db2/Mcount_count_cy<7>_rt_1306 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<8>_rt  (
    .I0(\db2/count [8]),
    .O(\db2/Mcount_count_cy<8>_rt_1308 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<9>_rt  (
    .I0(\db2/count [9]),
    .O(\db2/Mcount_count_cy<9>_rt_1310 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<10>_rt  (
    .I0(\db2/count [10]),
    .O(\db2/Mcount_count_cy<10>_rt_1278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<11>_rt  (
    .I0(\db2/count [11]),
    .O(\db2/Mcount_count_cy<11>_rt_1280 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<12>_rt  (
    .I0(\db2/count [12]),
    .O(\db2/Mcount_count_cy<12>_rt_1282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<13>_rt  (
    .I0(\db2/count [13]),
    .O(\db2/Mcount_count_cy<13>_rt_1284 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<14>_rt  (
    .I0(\db2/count [14]),
    .O(\db2/Mcount_count_cy<14>_rt_1286 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<15>_rt  (
    .I0(\db2/count [15]),
    .O(\db2/Mcount_count_cy<15>_rt_1288 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<16>_rt  (
    .I0(\db2/count [16]),
    .O(\db2/Mcount_count_cy<16>_rt_1290 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_cy<17>_rt  (
    .I0(\db2/count [17]),
    .O(\db2/Mcount_count_cy<17>_rt_1292 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \disp/Mcount_reset_count_cy<0>_rt  (
    .I0(\disp/reset_count [0]),
    .O(\disp/Mcount_reset_count_cy<0>_rt_1642 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<8>_rt  (
    .I0(\xvga1/vcount [8]),
    .O(\xvga1/Mcount_vcount_cy<8>_rt_3770 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<7>_rt  (
    .I0(\xvga1/vcount [7]),
    .O(\xvga1/Mcount_vcount_cy<7>_rt_3768 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<6>_rt  (
    .I0(\xvga1/vcount [6]),
    .O(\xvga1/Mcount_vcount_cy<6>_rt_3766 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<5>_rt  (
    .I0(\xvga1/vcount [5]),
    .O(\xvga1/Mcount_vcount_cy<5>_rt_3764 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<4>_rt  (
    .I0(\xvga1/vcount [4]),
    .O(\xvga1/Mcount_vcount_cy<4>_rt_3762 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<3>_rt  (
    .I0(\xvga1/vcount [3]),
    .O(\xvga1/Mcount_vcount_cy<3>_rt_3760 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<2>_rt  (
    .I0(\xvga1/vcount [2]),
    .O(\xvga1/Mcount_vcount_cy<2>_rt_3758 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_cy<1>_rt  (
    .I0(\xvga1/vcount [1]),
    .O(\xvga1/Mcount_vcount_cy<1>_rt_3756 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<9>_rt  (
    .I0(\xvga1/hcount [9]),
    .O(\xvga1/Mcount_hcount_cy<9>_rt_3751 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<8>_rt  (
    .I0(\xvga1/hcount [8]),
    .O(\xvga1/Mcount_hcount_cy<8>_rt_3749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<7>_rt  (
    .I0(\xvga1/hcount [7]),
    .O(\xvga1/Mcount_hcount_cy<7>_rt_3747 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<6>_rt  (
    .I0(\xvga1/hcount [6]),
    .O(\xvga1/Mcount_hcount_cy<6>_rt_3745 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<5>_rt  (
    .I0(\xvga1/hcount [5]),
    .O(\xvga1/Mcount_hcount_cy<5>_rt_3743 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<4>_rt  (
    .I0(\xvga1/hcount [4]),
    .O(\xvga1/Mcount_hcount_cy<4>_rt_3741 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<3>_rt  (
    .I0(\xvga1/hcount [3]),
    .O(\xvga1/Mcount_hcount_cy<3>_rt_3739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<2>_rt  (
    .I0(\xvga1/hcount [2]),
    .O(\xvga1/Mcount_hcount_cy<2>_rt_3737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_cy<1>_rt  (
    .I0(\xvga1/hcount [1]),
    .O(\xvga1/Mcount_hcount_cy<1>_rt_3735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<1>_rt  (
    .I0(\a/ac97/bit_count [1]),
    .O(\a/ac97/Mcount_bit_count_cy<1>_rt_344 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<2>_rt  (
    .I0(\a/ac97/bit_count [2]),
    .O(\a/ac97/Mcount_bit_count_cy<2>_rt_346 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<3>_rt  (
    .I0(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mcount_bit_count_cy<3>_rt_348 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<4>_rt  (
    .I0(\a/ac97/bit_count [4]),
    .O(\a/ac97/Mcount_bit_count_cy<4>_rt_350 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<5>_rt  (
    .I0(\a/ac97/bit_count [5]),
    .O(\a/ac97/Mcount_bit_count_cy<5>_rt_352 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_cy<6>_rt  (
    .I0(\a/ac97/bit_count [6]),
    .O(\a/ac97/Mcount_bit_count_cy<6>_rt_354 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<8>_rt  (
    .I0(\a/reset_count [8]),
    .O(\a/Mcount_reset_count_cy<8>_rt_326 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<7>_rt  (
    .I0(\a/reset_count [7]),
    .O(\a/Mcount_reset_count_cy<7>_rt_324 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<6>_rt  (
    .I0(\a/reset_count [6]),
    .O(\a/Mcount_reset_count_cy<6>_rt_322 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<5>_rt  (
    .I0(\a/reset_count [5]),
    .O(\a/Mcount_reset_count_cy<5>_rt_320 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<4>_rt  (
    .I0(\a/reset_count [4]),
    .O(\a/Mcount_reset_count_cy<4>_rt_318 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<3>_rt  (
    .I0(\a/reset_count [3]),
    .O(\a/Mcount_reset_count_cy<3>_rt_316 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<2>_rt  (
    .I0(\a/reset_count [2]),
    .O(\a/Mcount_reset_count_cy<2>_rt_314 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_cy<1>_rt  (
    .I0(\a/reset_count [1]),
    .O(\a/Mcount_reset_count_cy<1>_rt_312 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2493 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2890 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>_rt  (
    .I0(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<3>_rt_2894 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>_rt  (
    .I0(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy<5>_rt_2897 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt  (
    .I0(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2843 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2678 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt  (
    .I0(\xvga1/hcount [5]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2681 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt  (
    .I0(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2794 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt  (
    .I0(\xvga1/hcount [5]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_2736 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>_rt  (
    .I0(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<6>_rt_2739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<8>_rt  (
    .I0(\xvga1/hcount [9]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy<8>_rt_2742 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt  (
    .I0(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt  (
    .I0(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_3066 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt  (
    .I0(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_3069 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt  (
    .I0(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy<4>_rt_3072 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt  (
    .I0(\xvga1/hcount [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<0>_rt_2942 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt  (
    .I0(\xvga1/hcount [2]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy<2>_rt_2945 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db4/Mcount_count_xor<18>_rt  (
    .I0(\db4/count [18]),
    .O(\db4/Mcount_count_xor<18>_rt_1458 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db1/Mcount_count_xor<18>_rt  (
    .I0(\db1/count [18]),
    .O(\db1/Mcount_count_xor<18>_rt_1239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db6/Mcount_count_xor<18>_rt  (
    .I0(\db6/count [18]),
    .O(\db6/Mcount_count_xor<18>_rt_1604 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db5/Mcount_count_xor<18>_rt  (
    .I0(\db5/count [18]),
    .O(\db5/Mcount_count_xor<18>_rt_1531 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db3/Mcount_count_xor<18>_rt  (
    .I0(\db3/count [18]),
    .O(\db3/Mcount_count_xor<18>_rt_1385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \db2/Mcount_count_xor<18>_rt  (
    .I0(\db2/count [18]),
    .O(\db2/Mcount_count_xor<18>_rt_1312 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_vcount_xor<9>_rt  (
    .I0(\xvga1/vcount [9]),
    .O(\xvga1/Mcount_vcount_xor<9>_rt_3773 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \xvga1/Mcount_hcount_xor<10>_rt  (
    .I0(\xvga1/hcount [10]),
    .O(\xvga1/Mcount_hcount_xor<10>_rt_3753 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/ac97/Mcount_bit_count_xor<7>_rt  (
    .I0(\a/ac97/bit_count [7]),
    .O(\a/ac97/Mcount_bit_count_xor<7>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \a/Mcount_reset_count_xor<9>_rt  (
    .I0(\a/reset_count [9]),
    .O(\a/Mcount_reset_count_xor<9>_rt_328 )
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_cy [8]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/riggle[7].un_blob/Msub_image_addr_addsub0000_cy [8]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/ripples[5].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .I2(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/ripple[2].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .I2(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h3C6C ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<5>1  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [4]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[2] ),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [5])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy<8>1_SW0  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [8]),
    .O(N145)
  );
  LUT4 #(
    .INIT ( 16'hA666 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<9>1  (
    .I0(\xvga1/vcount [9]),
    .I1(N145),
    .I2(\xvga1/vcount [6]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [9])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy<4>1_SW0  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [7]),
    .I3(\xvga1/vcount [6]),
    .O(N147)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy<7>1  (
    .I0(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[1] ),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [4]),
    .I3(N147),
    .O(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0001_cy[7] )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy<7>1_SW0  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [6]),
    .O(N149)
  );
  LUT4 #(
    .INIT ( 16'hA666 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<8>1  (
    .I0(\xvga1/vcount [8]),
    .I1(N149),
    .I2(\xvga1/vcount [5]),
    .I3(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [8])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy<7>1_SW1  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [6]),
    .I2(\xvga1/vcount [8]),
    .O(N151)
  );
  LUT4 #(
    .INIT ( 16'hA666 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<9>1  (
    .I0(\xvga1/vcount [9]),
    .I1(N151),
    .I2(\xvga1/vcount [5]),
    .I3(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [9])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<12>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [12]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [12])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<13>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [13]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [13])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<14>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [14]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [14])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<15>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [15]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [15])
  );
  LUT4 #(
    .INIT ( 16'hFFF4 ))
  \a1/_or00001  (
    .I0(\a/ready_sync [2]),
    .I1(\a/ready_sync [1]),
    .I2(power_on_reset),
    .I3(\db1/clean_1240 ),
    .O(\a1/_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy<4>1  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [1]),
    .I3(\xvga1/vcount [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy<8>1_SW1  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/vcount [9]),
    .O(N153)
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<10>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [7]),
    .I2(N153),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0001_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [10])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy<7>1_SW2  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [8]),
    .I2(\xvga1/vcount [9]),
    .O(N155)
  );
  LUT4 #(
    .INIT ( 16'h0103 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<10>1  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [7]),
    .I2(N155),
    .I3(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [10])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [7]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [7]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [8]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [7]),
    .I3(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [8]),
    .I3(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [9]),
    .I3(\hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [7]),
    .I3(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [7]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [6]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [6]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hA569 ))
  \hd/myblob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/myblob/image_addr_mult0001 [9]),
    .I3(\hd/N14 ),
    .O(\hd/myblob/Madd_image_addr_lut [9])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [10]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/riggles[10].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\hd/ma_digs/ripple[1].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [6]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[6] ),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [7]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[7] ),
    .I2(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/ma_digs/riggles[11].un_blob/Msub_image_addr_addsub0000_cy [7]),
    .I2(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [8]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[8] ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [9]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\hd/ma_digs/ripple[0].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [6]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/ma_digs/riggle[6].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/myblob/Madd_image_addr_lut<8>  (
    .I0(\xvga1/hcount [8]),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [8]),
    .O(\hd/myblob/Madd_image_addr_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/count_or00002  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(\disp/clock_cmp_eq0000 ),
    .O(\disp/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \a1/mag2_not00011  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/state_FSM_FFd2_1042 ),
    .O(\a1/mag2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \a1/haddr_not00011  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/state_FSM_FFd2_1042 ),
    .O(\a1/haddr_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<6>11  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [4]),
    .I3(\xvga1/vcount [5]),
    .O(\hd/myblob/image_addr_addsub0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<3>1  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [1]),
    .I3(\xvga1/vcount [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [3])
  );
  LUT4 #(
    .INIT ( 16'h9555 ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<4>1  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [1]),
    .I3(\xvga1/vcount [3]),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [4])
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<4>1  (
    .I0(\xvga1/vcount [2]),
    .I1(\xvga1/vcount [4]),
    .I2(\xvga1/vcount [3]),
    .I3(\xvga1/vcount [1]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [4])
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<8>1  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [8]),
    .I3(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [8])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<5>12  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [4]),
    .O(\hd/myblob/image_addr_addsub0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001<2>1  (
    .I0(\xvga1/vcount [2]),
    .I1(\xvga1/vcount [1]),
    .I2(\xvga1/vcount [0]),
    .O(\hd/ma_digs/ripple[0].un_blob/image_addr_addsub0001 [2])
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<7>1  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [6]),
    .I2(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [7])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<3>1  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [1]),
    .I2(\xvga1/vcount [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [3])
  );
  LUT3 #(
    .INIT ( 8'h93 ))
  \hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001<3>1  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [2]),
    .O(\hd/ma_digs/ripples[4].un_blob/image_addr_addsub0001 [3])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<11>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [11]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [11])
  );
  LUT4 #(
    .INIT ( 16'h785A ))
  \hd/myblob/Madd_image_addr_lut<16>  (
    .I0(\hd/N13 ),
    .I1(\hd/N14 ),
    .I2(\hd/myblob/image_addr_mult0001 [16]),
    .I3(\xvga1/hcount [8]),
    .O(\hd/myblob/Madd_image_addr_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [5]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [5]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [5])
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_621_2082 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_57_2043 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f57 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_624_2085 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_58_2044 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f58 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_87_2153 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_723_2128 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f57 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_13  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_721_2126 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_622_2083 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f514 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_14  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_722_2127 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_623_2084 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f515 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_627_2088 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_59_2045 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f59 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_88_2154 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_726_2131 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f58 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_16  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_725_2130 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_626_2087 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f517 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_15  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_724_2129 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_625_2086 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f516 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f57 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f515 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f67 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f514 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f57 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f67 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_630_2092 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_510_2037 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f510 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_18  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_728_2133 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_629_2090 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f519 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_89_2155 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_729_2134 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f59 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_17  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_727_2132 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_628_2089 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f518 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f58 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f517 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f68 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f516 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f58 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f68 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_6  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f67 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f67 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<6>1 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_810_2147 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_732_2138 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f510 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_20  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_731_2137 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_632_2094 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f521 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_19  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_730_2136 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_631_2093 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f520 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f59 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f519 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f69 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f518 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f59 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f69 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_7  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f68 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f68 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<7>1 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_4_f5_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_63_2091 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_51_2036 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f51 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f510 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f521 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f610 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f520 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f510 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f610 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_8  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f69 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f69 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<8>1 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_6_f5_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_81_2146 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_75_2140 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_6_f51 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_2  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_74_2139 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_65_2096 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f53 )
  );
  MUXF5   \hd/ma_digs/Mmux_address_out_mux0000_5_f5_1  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_73_2135 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_64_2095 ),
    .S(\hd/ma_digs/the_sel/selected [1]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_5_f52 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_9  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f610 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f610 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<9>1 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_4_f6_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_6_f51 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_5_f53 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_4_f61 )
  );
  MUXF6   \hd/ma_digs/Mmux_address_out_mux0000_3_f6_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_5_f52 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_4_f51 ),
    .S(\hd/ma_digs/the_sel/selected [2]),
    .O(\hd/ma_digs/Mmux_address_out_mux0000_3_f61 )
  );
  MUXF7   \hd/ma_digs/Mmux_address_out_mux0000_2_f7_0  (
    .I0(\hd/ma_digs/Mmux_address_out_mux0000_4_f61 ),
    .I1(\hd/ma_digs/Mmux_address_out_mux0000_3_f61 ),
    .S(\hd/ma_digs/the_sel/selected [3]),
    .O(\hd/ma_digs/address_out_mux0000<10>1 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \hd/ma_digs/riffle[9].un_blob/overlap_not000146  (
    .I0(\hd/ma_digs/riffle[9].un_blob/overlap_not00013 ),
    .I1(\xvga1/hcount [10]),
    .I2(\hd/ma_digs/riffle[9].un_blob/overlap_not000119_2706 ),
    .I3(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .O(\hd/ma_digs/riffle[9].un_blob/overlap_not000146_2708 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \hd/ma_digs/ripples[5].un_blob/overlap_not000158  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_not00018_2535 ),
    .I1(\xvga1/hcount [10]),
    .I2(\hd/ma_digs/ripples[5].un_blob/overlap_not000129_3260 ),
    .I3(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .O(\hd/ma_digs/ripples[5].un_blob/overlap_not000158_3261 )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \hd/ma_digs/riggle[7].un_blob/overlap_not000158_SW0  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [8]),
    .I2(\hd/ma_digs/riggle[7].un_blob/overlap_not000124_2816 ),
    .I3(\xvga1/hcount [10]),
    .O(N157)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/thehud/Madd_image_addr_lut<9>  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/vcount [0]),
    .O(\hd/thehud/Madd_image_addr_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/thehud/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/vcount [1]),
    .O(\hd/thehud/Madd_image_addr_lut [10])
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \hd/ma_digs/riggles[11].un_blob/overlap_not000147_SW0  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/ma_digs/riggles[11].un_blob/overlap_not000112_2919 ),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/ribbles[13].un_blob/overlap_not000182  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/ribbles[13].un_blob/overlap_not000147_2589 ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 ),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .O(\hd/ma_digs/ribbles[13].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [4]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [4]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/myblob/Madd_image_addr_lut<7>  (
    .I0(\xvga1/hcount [7]),
    .I1(\xvga1/hcount [6]),
    .I2(\hd/myblob/image_addr_mult0001 [7]),
    .I3(\xvga1/hcount [5]),
    .O(\hd/myblob/Madd_image_addr_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/Msub_image_addr_addsub0000_cy[5] ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [6]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riffle[9].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [6]),
    .I3(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[4] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [5]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] ),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/myblob/Madd_image_addr_lut<6>  (
    .I0(\xvga1/hcount [6]),
    .I1(\xvga1/hcount [5]),
    .I2(\hd/myblob/image_addr_mult0001 [6]),
    .O(\hd/myblob/Madd_image_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/ripple[2].un_blob/overlap_not000150  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/ripple[2].un_blob/overlap_not000125_3097 ),
    .I2(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001 ),
    .I3(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_cy [7]),
    .O(\hd/ma_digs/ripple[2].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001211  (
    .I0(\xvga1/vcount [9]),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [8]),
    .I3(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129_2651 ),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \disp/dot_index_mux0000<2>901  (
    .I0(\disp/dot_index_mux0000<2>36_1824 ),
    .I1(\disp/dot_index_mux0000<0>33 ),
    .I2(\disp/dot_index [7]),
    .I3(\disp/dot_index_mux0000<2>83_1825 ),
    .O(\disp/dot_index_mux0000<2>90 )
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  \disp/disp_data_out_mux000033  (
    .I0(\disp/disp_data_out_mux000014_1792 ),
    .I1(\disp/dot_index [1]),
    .I2(\disp/dot_index [0]),
    .I3(\disp/Mmux__varindex0000_12_f6_1667 ),
    .O(\disp/disp_data_out_mux000033_1795 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/myblob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\hd/myblob/image_addr_mult0001 [5]),
    .O(\hd/myblob/Madd_image_addr_lut [5])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_not000181  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 ),
    .I1(\hd/ma_digs/ribbles[12].un_blob/overlap_not000144_2534 ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 ),
    .I3(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \disp/dot_index_mux0000<0>108  (
    .I0(\disp/dot_index [9]),
    .I1(\disp/dot_index_mux0000<0>97_1818 ),
    .I2(\disp/N76 ),
    .I3(\disp/dot_index_mux0000<0>47_1816 ),
    .O(\disp/dot_index_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \a/ac97/left_in_data_and000025  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/left_in_data_and000024_495 ),
    .I2(\a/ac97/bit_count [1]),
    .I3(\a/ac97/bit_count [0]),
    .O(\a/ac97/left_in_data_and000025_496 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001134_SW0  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [5]),
    .O(N163)
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001134  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/vcount [8]),
    .I2(N163),
    .I3(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt0001119_3207 ),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt00012 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_not000150_SW0  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001232_2991 ),
    .I2(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_cy [7]),
    .O(N165)
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  \hd/ma_digs/ripple[0].un_blob/overlap_not000150  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217_2990 ),
    .I1(\hd/ma_digs/ripple[0].un_blob/overlap_not000117_2993 ),
    .I2(\xvga1/hcount [10]),
    .I3(N165),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  \hd/myblob/pixel_not000147_SW0  (
    .I0(\hd/N14 ),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [8]),
    .I3(\hd/myblob/pixel_not00014_3451 ),
    .O(N167)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \hd/myblob/pixel_not000147  (
    .I0(\hd/myblob/pixel_not000142_3452 ),
    .I1(\hd/N111 ),
    .I2(\xvga1/vcount [3]),
    .I3(N167),
    .O(\hd/myblob/pixel_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \a/audio_reset_b_cmp_eq000017_SW0  (
    .I0(\a/reset_count [6]),
    .I1(\a/reset_count [7]),
    .I2(\a/reset_count [8]),
    .I3(\a/reset_count [9]),
    .O(N169)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \a/audio_reset_b_cmp_eq000017  (
    .I0(\a/audio_reset_b_cmp_eq000010_506 ),
    .I1(\a/reset_count [4]),
    .I2(\a/reset_count [5]),
    .I3(N169),
    .O(\a/audio_reset_b_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001134  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132_2530 ),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [6]),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001119_2529 ),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 )
  );
  LUT4 #(
    .INIT ( 16'h3222 ))
  \a/ac97/ac97_sdata_out_mux00002311  (
    .I0(\a/ac97/ac97_sdata_out_mux000094_411 ),
    .I1(\a/ac97/l_left_data_cmp_le0000 ),
    .I2(\a/ac97/ac97_sdata_out_mux0000118_403 ),
    .I3(\a/ac97/ac97_sdata_out_mux0000136_404 ),
    .O(\a/ac97/ac97_sdata_out_mux0000231 )
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  \a/ac97/l_left_data_not000165  (
    .I0(\a/ac97/l_cmd_addr_cmp_eq0000 ),
    .I1(\a/ac97/l_left_data_and0000_460 ),
    .I2(\a/ac97/l_left_data_cmp_le0000 ),
    .I3(\a/ac97/l_left_data_not000139_486 ),
    .O(\a/ac97/l_left_data_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  volume_not000160_SW0 (
    .I0(volume_not00016),
    .I1(\db3/clean_1386 ),
    .I2(old_vdown_3523),
    .O(N173)
  );
  LUT4 #(
    .INIT ( 16'h8D88 ))
  \disp/dot_index_mux0000<0>97  (
    .I0(\disp/dot_index [8]),
    .I1(\disp/N97 ),
    .I2(\disp/dot_index [7]),
    .I3(\disp/N31 ),
    .O(\disp/dot_index_mux0000<0>97_1818 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \disp/dot_index_mux0000<5>411  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd3_1884 ),
    .I2(\disp/N12 ),
    .I3(\disp/state_cmp_eq0001_1888 ),
    .O(\disp/N79 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \db6/count_or00001  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(button_enter_IBUF_1190),
    .I3(\db6/new_1639 ),
    .O(\db6/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \db5/count_or00001  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(button_right_IBUF_1194),
    .I3(\db5/new_1566 ),
    .O(\db5/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \db4/count_or00001  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(button_left_IBUF_1192),
    .I3(\db4/new_1493 ),
    .O(\db4/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \db3/count_or00001  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(button_down_IBUF_1188),
    .I3(\db3/new_1420 ),
    .O(\db3/count_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \db2/count_or00001  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(button_up_IBUF_1196),
    .I3(\db2/new_1347 ),
    .O(\db2/count_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \disp/dot_index_mux0000<1>63  (
    .I0(\disp/N97 ),
    .I1(\disp/N31 ),
    .I2(\disp/dot_index [7]),
    .O(\disp/dot_index_mux0000<1>63_1823 )
  );
  LUT4 #(
    .INIT ( 16'h1004 ))
  \disp/Mrom_dots132  (
    .I0(\disp/nibble [1]),
    .I1(\disp/nibble [2]),
    .I2(\disp/nibble [3]),
    .I3(\disp/nibble [0]),
    .O(\disp/Mrom_dots13 )
  );
  LUT4 #(
    .INIT ( 16'hFF27 ))
  \disp/Mrom_dots30_SW1  (
    .I0(\disp/char_index [0]),
    .I1(blob[3]),
    .I2(num[3]),
    .I3(\disp/N8 ),
    .O(N175)
  );
  LUT4 #(
    .INIT ( 16'hFD7B ))
  \disp/Mrom_dots30  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [0]),
    .I3(N175),
    .O(\disp/Mrom_dots30_1699 )
  );
  LUT4 #(
    .INIT ( 16'h08DD ))
  \disp/Mrom_dots27  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [0]),
    .I3(N175),
    .O(\disp/Mrom_dots27_1697 )
  );
  LUT4 #(
    .INIT ( 16'hED4D ))
  \a/ac97/ac97_sdata_out_mux0000190  (
    .I0(\a/ac97/bit_count [0]),
    .I1(\a/ac97/l_cmd_v_439 ),
    .I2(\a/ac97/bit_count [1]),
    .I3(\a/ac97/l_left_v_488 ),
    .O(\a/ac97/ac97_sdata_out_mux0000190_406 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \disp/dot_index_mux0000<9>1_SW1  (
    .I0(\disp/state_cmp_eq0000_1886 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .O(N179)
  );
  LUT4 #(
    .INIT ( 16'hFF8B ))
  \disp/dot_index_mux0000<9>1  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(N179),
    .I3(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/N61 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_92  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[5] ),
    .O(\a/ac97/Mmux__varindex0001_92_382 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_8  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[15] ),
    .O(\a/ac97/Mmux__varindex0001_8_377 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy<4>1  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [1]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ripple[3].un_blob/Msub_image_addr_addsub0000_cy[4] )
  );
  LUT4 #(
    .INIT ( 16'hC387 ))
  \hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000<4>1  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [4]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/image_addr_addsub0000[4] )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \a1/sqmag/trial<13>_SW0  (
    .I0(\a1/sqmag/bit [0]),
    .I1(\a1/sqmag/bit [4]),
    .I2(\a1/sqmag/bit [1]),
    .O(N139)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \a1/sqmag/trial<12>_SW0  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/bit [1]),
    .I2(\a1/sqmag/bit [0]),
    .O(N141)
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<11>  (
    .I0(\xvga1/vcount [2]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [11])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<12>  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [12])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<13>  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [13])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<14>  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [14])
  );
  LUT4 #(
    .INIT ( 16'h3732 ))
  \db6/clean_mux00001  (
    .I0(power_on_reset),
    .I1(button_enter_IBUF_1190),
    .I2(\db1/clean_1240 ),
    .I3(\db6/new_1639 ),
    .O(\db6/clean_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h3732 ))
  \db5/clean_mux00001  (
    .I0(power_on_reset),
    .I1(button_right_IBUF_1194),
    .I2(\db1/clean_1240 ),
    .I3(\db5/new_1566 ),
    .O(\db5/clean_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h3732 ))
  \db4/clean_mux00001  (
    .I0(power_on_reset),
    .I1(button_left_IBUF_1192),
    .I2(\db1/clean_1240 ),
    .I3(\db4/new_1493 ),
    .O(\db4/clean_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h3732 ))
  \db3/clean_mux00001  (
    .I0(power_on_reset),
    .I1(button_down_IBUF_1188),
    .I2(\db1/clean_1240 ),
    .I3(\db3/new_1420 ),
    .O(\db3/clean_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h3732 ))
  \db2/clean_mux00001  (
    .I0(power_on_reset),
    .I1(button_up_IBUF_1196),
    .I2(\db1/clean_1240 ),
    .I3(\db2/new_1347 ),
    .O(\db2/clean_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<15>  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [15])
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \hd/thehud/Madd_image_addr_lut<16>  (
    .I0(\xvga1/vcount [7]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [10]),
    .O(\hd/thehud/Madd_image_addr_lut [16])
  );
  LUT4 #(
    .INIT ( 16'h3B31 ))
  \disp/Mrom_dots22  (
    .I0(\disp/nibble [0]),
    .I1(\disp/nibble [2]),
    .I2(\disp/nibble [1]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots2 )
  );
  LUT4 #(
    .INIT ( 16'hFF65 ))
  \disp/Mrom_dots331  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [0]),
    .I3(\disp/nibble [3]),
    .O(\disp/Mrom_dots33 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0002_11  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_right_data [4]),
    .O(\a/ac97/Mmux__varindex0002_11_384 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_11  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[4] ),
    .O(\a/ac97/Mmux__varindex0001_11_371 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a/ac97/Mmux__varindex0001_102  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[4] ),
    .I2(\a/ac97/l_cmd_data[8] ),
    .O(\a/ac97/Mmux__varindex0001_102_370 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_101  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[5] ),
    .O(\a/ac97/Mmux__varindex0001_101_369 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_10  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[6] ),
    .O(\a/ac97/Mmux__varindex0001_10_368 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a/ac97/Mmux__varindex0001_91  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[6] ),
    .I2(\a/ac97/l_cmd_data[10] ),
    .O(\a/ac97/Mmux__varindex0001_91_381 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \a/ac97/Mmux__varindex0001_9  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/l_cmd_data[7] ),
    .O(\a/ac97/Mmux__varindex0001_9_380 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/ac97/Mmux__varindex0000_81  (
    .I0(\a/ac97/l_cmd_addr[13] ),
    .I1(\a/ac97/bit_count [2]),
    .I2(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0000_81_366 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/ac97/Mmux__varindex0000_8  (
    .I0(\a/ac97/l_cmd_addr[14] ),
    .I1(\a/ac97/bit_count [2]),
    .I2(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0000_8_365 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/ac97/Mmux__varindex0000_7  (
    .I0(\a/ac97/l_cmd_addr[15] ),
    .I1(\a/ac97/bit_count [2]),
    .I2(\a/ac97/bit_count [3]),
    .O(\a/ac97/Mmux__varindex0000_7_363 )
  );
  LUT4 #(
    .INIT ( 16'hA2A6 ))
  \a/ac97/l_left_data_not000116  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [3]),
    .I3(\a/ac97/bit_count [2]),
    .O(\a/ac97/l_left_data_not000116_484 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \a/ac97/ac97_sdata_out_mux0000176  (
    .I0(\a/ac97/l_left_v_488 ),
    .I1(\a/ac97/bit_count [0]),
    .I2(\a/ac97/bit_count [1]),
    .O(\a/ac97/ac97_sdata_out_mux0000176_405 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \a/cmds/Mcount_state_xor<2>11  (
    .I0(\a/cmds/state [2]),
    .I1(\a/cmds/state [1]),
    .I2(\a/cmds/state [0]),
    .O(\a/cmds/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AA9 ))
  \Mcount_volume_xor<2>12  (
    .I0(volume[2]),
    .I1(volume[0]),
    .I2(volume[1]),
    .I3(\db2/clean_1313 ),
    .O(\Result<2>6 )
  );
  LUT4 #(
    .INIT ( 16'h6AA9 ))
  \Mcount_num_xor<2>12  (
    .I0(num[2]),
    .I1(num[0]),
    .I2(num[1]),
    .I3(\db2/clean_1313 ),
    .O(\Result<2>8 )
  );
  LUT4 #(
    .INIT ( 16'h6AA9 ))
  \Mcount_blob_xor<2>12  (
    .I0(blob[2]),
    .I1(blob[1]),
    .I2(blob[0]),
    .I3(\db2/clean_1313 ),
    .O(\Result<2>7 )
  );
  LUT4 #(
    .INIT ( 16'hA9FF ))
  \a1/sqmag/bit_mux0000<2>1  (
    .I0(\a1/sqmag/bit [2]),
    .I1(\a1/sqmag/bit [1]),
    .I2(\a1/sqmag/bit [0]),
    .I3(\a1/sqmag/busy_1023 ),
    .O(\a1/sqmag/bit_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \a/cmds/Mcount_state_xor<3>11  (
    .I0(\a/cmds/state [3]),
    .I1(\a/cmds/state [2]),
    .I2(\a/cmds/state [1]),
    .I3(\a/cmds/state [0]),
    .O(\a/cmds/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \a/cmds/command_mux0000<11>11  (
    .I0(\a/cmds/state [2]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [0]),
    .I3(\a/cmds/state [1]),
    .O(\a/cmds/command_mux0000<11>1 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/cmds/command_mux0000<5>11  (
    .I0(\a/cmds/state [0]),
    .I1(\a/cmds/state [1]),
    .I2(\a/cmds/state [3]),
    .O(\a/cmds/command_mux0000<5>1 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [2]),
    .I1(\xvga1/hcount [3]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [1]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \hd/ma_digs/riffle[9].un_blob/overlap_not000161  (
    .I0(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 ),
    .I2(\hd/ma_digs/riffle[9].un_blob/overlap_not000146_2708 ),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132_2530 ),
    .O(\hd/ma_digs/riffle[9].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \disp/dot_index_mux0000<5>77  (
    .I0(\disp/state_FSM_FFd2_1882 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_cmp_eq0000_1886 ),
    .I3(\disp/dot_index_mux0000<5>66_1843 ),
    .O(\disp/dot_index_mux0000<5>77_1845 )
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  \disp/Mcount_reset_count_val1  (
    .I0(\db1/clean_1240 ),
    .I1(\disp/dreset4_1859 ),
    .I2(\disp/dreset9_1860 ),
    .I3(power_on_reset),
    .O(\disp/Mcount_reset_count_val )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \xvga1/vcount_and00001  (
    .I0(\xvga1/N0 ),
    .I1(\xvga1/N8 ),
    .I2(\xvga1/hcount [7]),
    .I3(\xvga1/vreset ),
    .O(\xvga1/vcount_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Mmux_rgb_mux0000102157 (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(Mmux_rgb_mux0000102130_30),
    .I3(Mmux_rgb_mux0000102155_31),
    .O(Mmux_rgb_mux0000102157_32)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/ripples[5].un_blob/overlap_not000168  (
    .I0(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_lt00012 ),
    .I1(\xvga1/vcount [9]),
    .I2(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00012 ),
    .I3(\hd/ma_digs/ripples[5].un_blob/overlap_not000158_3261 ),
    .O(\hd/ma_digs/ripples[5].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux000081 (
    .I0(\hd/myblob/pixel [16]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N123),
    .O(Mmux_rgb_mux00008)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux000091 (
    .I0(\hd/myblob/pixel [17]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N121),
    .O(Mmux_rgb_mux00009)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000101 (
    .I0(\hd/myblob/pixel [18]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N135),
    .O(Mmux_rgb_mux000010)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000111 (
    .I0(\hd/myblob/pixel [19]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N133),
    .O(Mmux_rgb_mux000011)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000131 (
    .I0(\hd/myblob/pixel [20]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N131),
    .O(Mmux_rgb_mux000013)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000141 (
    .I0(\hd/myblob/pixel [21]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N129),
    .O(Mmux_rgb_mux000014)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000151 (
    .I0(\hd/myblob/pixel [22]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N127),
    .O(Mmux_rgb_mux000015)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000161 (
    .I0(\hd/myblob/pixel [23]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(N125),
    .O(Mmux_rgb_mux000016)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \a1/sqmag/busy_not00011  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/state_FSM_FFd2_1042 ),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/sqmag/bit_cmp_eq0000 ),
    .O(\a1/sqmag/busy_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\hd/ma_digs/ripple[2].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/ripple[2].un_blob/Madd_image_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\hd/ma_digs/ripples[4].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/ripples[4].un_blob/Madd_image_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/ma_digs/riffle[9].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/riffle[9].un_blob/Madd_image_addr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/ripple[0].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ripple[0].un_blob/Madd_image_addr_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \disp/reset_count_not0001_inv1  (
    .I0(\db1/clean_1240 ),
    .I1(power_on_reset),
    .I2(\disp/dreset4_1859 ),
    .I3(\disp/dreset9_1860 ),
    .O(\disp/reset_count_not0001_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<4>  (
    .I0(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] ),
    .I1(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [4]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [3]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<2>  (
    .I0(\xvga1/hcount [2]),
    .I1(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [2]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<1>  (
    .I0(\xvga1/hcount [1]),
    .I1(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [1]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux0000122 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [0]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux000012)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00001211 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [1]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000121)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00001711 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [2]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000171)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00001811 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [3]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000181)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00001911 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [4]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000191)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00002011 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [5]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000201)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00002111 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [6]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000211)
  );
  LUT3 #(
    .INIT ( 8'h84 ))
  Mmux_rgb_mux00002211 (
    .I0(switch_0_IBUF_3634),
    .I1(\hd/myblob/pixel [7]),
    .I2(switch_1_IBUF_3635),
    .O(Mmux_rgb_mux0000221)
  );
  LUT4 #(
    .INIT ( 16'h7222 ))
  \a1/sqmag/bit_not00011  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/sqmag/bit_cmp_eq0000 ),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/state_FSM_FFd2_1042 ),
    .O(\a1/sqmag/bit_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_rgb_mux0000102110_SW0 (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [9]),
    .I2(\xvga1/hcount [8]),
    .I3(\xvga1/hcount [0]),
    .O(N181)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_rgb_mux0000102110 (
    .I0(Mmux_rgb_mux0000102103_26),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [1]),
    .I3(N181),
    .O(Mmux_rgb_mux0000102110_28)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129_SW0  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [1]),
    .O(N183)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129  (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [6]),
    .I2(\xvga1/vcount [4]),
    .I3(N183),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129_2651 )
  );
  LUT3 #(
    .INIT ( 8'hC8 ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217_SW0  (
    .I0(\xvga1/vcount [1]),
    .I1(\xvga1/vcount [2]),
    .I2(\xvga1/vcount [0]),
    .O(N185)
  );
  LUT4 #(
    .INIT ( 16'h777F ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217  (
    .I0(\xvga1/vcount [4]),
    .I1(\xvga1/vcount [5]),
    .I2(\xvga1/vcount [3]),
    .I3(N185),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001217_2990 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \a1/sqmag/bit_mux0000<4>_SW1  (
    .I0(\a1/sqmag/bit [0]),
    .I1(\a1/sqmag/bit [3]),
    .I2(\a1/sqmag/bit [2]),
    .O(N191)
  );
  LUT4 #(
    .INIT ( 16'h8884 ))
  \a1/sqmag/bit_mux0000<4>  (
    .I0(\a1/sqmag/bit [4]),
    .I1(\a1/sqmag/busy_1023 ),
    .I2(\a1/sqmag/bit [1]),
    .I3(N191),
    .O(\a1/sqmag/bit_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h4474 ))
  \disp/Mmux__varindex0000_11  (
    .I0(\disp/Mrom_dots27_1697 ),
    .I1(\disp/dot_index [3]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [1]),
    .O(\disp/Mmux__varindex0000_11_1660 )
  );
  LUT4 #(
    .INIT ( 16'hFE55 ))
  \a/ac97/l_left_data_and0000_SW1  (
    .I0(\a/ac97/bit_count [4]),
    .I1(\a/ac97/bit_count [3]),
    .I2(\a/ac97/bit_count [2]),
    .I3(\a/ac97/bit_count [5]),
    .O(N193)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \a/ac97/l_left_data_and0000  (
    .I0(\a/ac97/bit_count [6]),
    .I1(\a/ac97/bit_count [7]),
    .I2(N193),
    .O(\a/ac97/l_left_data_and0000_460 )
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux00002311 (
    .I0(fft_pixel[8]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [8]),
    .O(Mmux_rgb_mux0000231)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux00002411 (
    .I0(fft_pixel[9]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [9]),
    .O(Mmux_rgb_mux0000241)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000212 (
    .I0(fft_pixel[10]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [10]),
    .O(Mmux_rgb_mux000021)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000311 (
    .I0(fft_pixel[11]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [11]),
    .O(Mmux_rgb_mux000031)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000411 (
    .I0(fft_pixel[12]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [12]),
    .O(Mmux_rgb_mux000041)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000511 (
    .I0(fft_pixel[13]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [13]),
    .O(Mmux_rgb_mux000051)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000611 (
    .I0(fft_pixel[14]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [14]),
    .O(Mmux_rgb_mux000061)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  Mmux_rgb_mux0000711 (
    .I0(fft_pixel[15]),
    .I1(switch_0_IBUF_3634),
    .I2(switch_1_IBUF_3635),
    .I3(\hd/myblob/pixel [15]),
    .O(Mmux_rgb_mux000071)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \disp/reset_count_cmp_eq00001  (
    .I0(\disp/dreset4_1859 ),
    .I1(\disp/dreset9_1860 ),
    .O(\disp/dreset_inv )
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  volume_or_selection_not00011 (
    .I0(\db4/clean_1459 ),
    .I1(\db1/clean_1240 ),
    .I2(power_on_reset),
    .I3(\db5/clean_1532 ),
    .O(volume_or_selection_not0001)
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \disp/dot_index_mux0000<4>1521_SW0  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/N29 ),
    .I3(\disp/dot_index_mux0000<4>106_1831 ),
    .O(N195)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \disp/dot_index_mux0000<4>1521_SW1  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_cmp_eq0001_1888 ),
    .I2(\disp/N29 ),
    .I3(\disp/dot_index_mux0000<4>55_1836 ),
    .O(N196)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \disp/dot_index_mux0000<4>1521  (
    .I0(\disp/dot_index [5]),
    .I1(N196),
    .I2(N195),
    .I3(\disp/dot_index_mux0000<4>5 ),
    .O(\disp/dot_index_mux0000<4>152 )
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \a1/sqmag/answer_not00011  (
    .I0(\a1/sqmag/busy_1023 ),
    .I1(\a1/state_FSM_FFd2_1042 ),
    .I2(\a1/state_FSM_FFd1_1040 ),
    .I3(\a1/sqmag/Mcompar_answer_cmp_gt0000_cy [27]),
    .O(\a1/sqmag/answer_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \hd/ma_digs/ripples[4].un_blob/overlap_not000150  (
    .I0(\hd/ma_digs/ripples[4].un_blob/overlap_not000125_3210 ),
    .I1(\xvga1/hcount [10]),
    .I2(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .I3(\hd/ma_digs/ripples[4].un_blob/overlap_not00017_3211 ),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \hd/ma_digs/riggles[11].un_blob/overlap_not000147  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 ),
    .I1(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 ),
    .I2(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_cy [6]),
    .I3(N161),
    .O(\hd/ma_digs/riggles[11].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/ripple[3].un_blob/overlap_not000172  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/ripple[3].un_blob/overlap_not000161_3147 ),
    .I2(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_lt0001 ),
    .I3(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .O(\hd/ma_digs/ripple[3].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/riggles[10].un_blob/overlap_not000151  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001 ),
    .I1(\hd/ma_digs/riggles[10].un_blob/overlap_not000143_2867 ),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_ge0001 ),
    .I3(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .O(\hd/ma_digs/riggles[10].un_blob/overlap_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h3F1F ))
  \hd/ma_digs/riffle[8].un_blob/overlap_not000153_SW1  (
    .I0(\xvga1/hcount [9]),
    .I1(\xvga1/hcount [10]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/overlap_cmp_lt0001132_2530 ),
    .I3(\hd/ma_digs/riffle[8].un_blob/overlap_not000115_2655 ),
    .O(N198)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/riffle[8].un_blob/overlap_not000153  (
    .I0(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge0001 ),
    .I1(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_cy [4]),
    .I2(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 ),
    .I3(N198),
    .O(\hd/ma_digs/riffle[8].un_blob/overlap_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \disp/Mmux__varindex0000_121_SW0  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/nibble [0]),
    .I2(\disp/nibble [2]),
    .O(N200)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/Mmux__varindex0000_121  (
    .I0(\disp/nibble [3]),
    .I1(\disp/nibble [1]),
    .I2(N200),
    .O(\disp/Mmux__varindex0000_121_1664 )
  );
  LUT4 #(
    .INIT ( 16'hF7B5 ))
  \disp/Mmux__varindex0000_132_SW0  (
    .I0(\disp/nibble [2]),
    .I1(\disp/dot_index [3]),
    .I2(\disp/nibble [0]),
    .I3(\disp/nibble [1]),
    .O(N202)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \disp/Mmux__varindex0000_132  (
    .I0(\disp/nibble [3]),
    .I1(N202),
    .O(\disp/Mmux__varindex0000_132_1670 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy<5>1  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\xvga1/hcount [3]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/riffle[8].un_blob/Msub_image_addr_addsub0000_cy[5] )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \hd/myblob/Msub_image_addr_sub0000_xor<10>1_SW0  (
    .I0(\xvga1/hcount [8]),
    .I1(\xvga1/hcount [7]),
    .I2(\xvga1/hcount [5]),
    .I3(\xvga1/hcount [6]),
    .O(N204)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_xor<4>11  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [3]),
    .I2(\xvga1/hcount [2]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/image_addr_addsub0000[4] )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \xvga1/next_hblank24  (
    .I0(\xvga1/next_hblank17_3820 ),
    .I1(\xvga1/N8 ),
    .I2(\xvga1/N0 ),
    .I3(\xvga1/hcount [7]),
    .O(\xvga1/blank_or00001 )
  );
  LUT4 #(
    .INIT ( 16'h9810 ))
  \a/ac97/Mmux__varindex0001_6_f5  (
    .I0(\a/ac97/bit_count [1]),
    .I1(\a/ac97/bit_count [0]),
    .I2(\a/ac97/l_cmd_data[19] ),
    .I3(\a/ac97/l_cmd_data[8] ),
    .O(\a/ac97/Mmux__varindex0001_6_f5_373 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \a/audio_reset_b_cmp_eq0000_inv1  (
    .I0(\a/audio_reset_b_cmp_eq000010_506 ),
    .I1(\a/reset_count [4]),
    .I2(\a/reset_count [5]),
    .I3(N169),
    .O(\a/audio_reset_b_cmp_eq0000_inv )
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [5]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] ),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [5])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut<5>  (
    .I0(\xvga1/hcount [5]),
    .I1(\xvga1/hcount [4]),
    .I2(\hd/ma_digs/riggles[11].un_blob/image_addr_mult0001 [5]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riggles[11].un_blob/Madd_image_addr_lut [5])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riggle[6].un_blob/image_addr_mult0001 [4]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/riggle[6].un_blob/Madd_image_addr_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riffle[8].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riggle[7].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/riggle[7].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripples[5].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripples[5].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hA596 ))
  \hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripple[3].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[3].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h69A5 ))
  \hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ripple[1].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[1].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut<4>  (
    .I0(\xvga1/hcount [4]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ribbles[12].un_blob/image_addr_mult0001 [4]),
    .I3(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Madd_image_addr_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/ribbles[13].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut<3>  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\hd/ma_digs/riggles[10].un_blob/image_addr_mult0001 [3]),
    .I3(\xvga1/hcount [1]),
    .O(\hd/ma_digs/riggles[10].un_blob/Madd_image_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \hd/ma_digs/riggle[6].un_blob/overlap_not00013  (
    .I0(\xvga1/vcount [8]),
    .I1(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 ),
    .I2(\xvga1/vcount [9]),
    .I3(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_cy [9]),
    .O(\hd/ma_digs/riggle[6].un_blob/overlap_not00013_2767 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \disp/Mmux__varindex0000_141_SW0  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [1]),
    .I2(\disp/dot_index [3]),
    .O(N206)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \disp/Mmux__varindex0000_141  (
    .I0(\disp/nibble [0]),
    .I1(N206),
    .I2(\disp/nibble [3]),
    .O(\disp/Mmux__varindex0000_141_1673 )
  );
  LUT4 #(
    .INIT ( 16'h78ED ))
  \disp/Mmux__varindex0000_151_SW0  (
    .I0(\disp/nibble [2]),
    .I1(\disp/nibble [1]),
    .I2(\disp/nibble [0]),
    .I3(\disp/dot_index [3]),
    .O(N208)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/Mmux__varindex0000_151  (
    .I0(\disp/nibble [3]),
    .I1(N208),
    .O(\disp/Mmux__varindex0000_151_1676 )
  );
  LUT4 #(
    .INIT ( 16'hFA6F ))
  \disp/Mmux__varindex0000_122_SW0  (
    .I0(\disp/nibble [1]),
    .I1(\disp/dot_index [3]),
    .I2(\disp/nibble [2]),
    .I3(\disp/nibble [0]),
    .O(N210)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/Mmux__varindex0000_122  (
    .I0(\disp/nibble [3]),
    .I1(N210),
    .O(\disp/Mmux__varindex0000_122_1665 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001217  (
    .I0(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge000124_2988 ),
    .I1(\xvga1/vcount [3]),
    .I2(\xvga1/vcount [2]),
    .I3(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001210_2987 ),
    .O(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001 )
  );
  LUT4 #(
    .INIT ( 16'h363C ))
  \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000<5>1  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [5]),
    .I2(\xvga1/hcount [4]),
    .I3(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[2] ),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0000[5] )
  );
  LUT4 #(
    .INIT ( 16'h5A69 ))
  \hd/myblob/Madd_image_addr_lut<10>  (
    .I0(\xvga1/hcount [10]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/myblob/image_addr_mult0001 [10]),
    .I3(N204),
    .O(\hd/myblob/Madd_image_addr_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy<3>1  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Msub_image_addr_addsub0000_cy[3] )
  );
  LUT4 #(
    .INIT ( 16'hFFAB ))
  \hd/ma_digs/riggle[7].un_blob/overlap_not000158_SW1  (
    .I0(\xvga1/vcount [9]),
    .I1(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_ge000129_2651 ),
    .I2(\xvga1/vcount [7]),
    .I3(\xvga1/vcount [8]),
    .O(N214)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \hd/ma_digs/riggle[7].un_blob/overlap_not000158  (
    .I0(N157),
    .I1(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_cy [5]),
    .I2(\hd/ma_digs/riffle[8].un_blob/overlap_cmp_lt0001237_2653 ),
    .I3(N214),
    .O(\hd/ma_digs/riggle[7].un_blob/overlap_not0001 )
  );
  MUXF5   \disp/disp_data_out_mux000014  (
    .I0(N216),
    .I1(N217),
    .S(\disp/dot_index [4]),
    .O(\disp/disp_data_out_mux000014_1792 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \disp/disp_data_out_mux000014_F  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots6 ),
    .I2(\disp/Mrom_dots14 ),
    .O(N216)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \disp/disp_data_out_mux000014_G  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/Mrom_dots22_1696 ),
    .I2(\disp/Mrom_dots30_1699 ),
    .O(N217)
  );
  MUXF5   \disp/char_index_mux0000<1>44  (
    .I0(N218),
    .I1(N219),
    .S(\disp/char_index [2]),
    .O(\disp/char_index_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \disp/char_index_mux0000<1>44_F  (
    .I0(\disp/char_index [1]),
    .I1(\disp/char_index [3]),
    .I2(\disp/N32 ),
    .I3(\disp/N24 ),
    .O(N218)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \disp/char_index_mux0000<1>44_G  (
    .I0(\disp/char_index_mux0000<1>8_1756 ),
    .I1(\disp/state_cmp_eq0001_1888 ),
    .I2(\disp/N24 ),
    .O(N219)
  );
  MUXF5   \disp/dot_index_mux0000<7>1001  (
    .I0(N220),
    .I1(N221),
    .S(\disp/dot_index [2]),
    .O(\disp/dot_index_mux0000<7>100 )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \disp/dot_index_mux0000<7>1001_F  (
    .I0(\disp/dot_index_mux0000<7>65_1855 ),
    .I1(\disp/dot_index [1]),
    .I2(\disp/N37 ),
    .O(N220)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \disp/dot_index_mux0000<7>1001_G  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/dot_index_mux0000<7>13_1853 ),
    .I2(\disp/dot_index_mux0000<7>28_1854 ),
    .O(N221)
  );
  MUXF5   \disp/dot_index_mux0000<7>1  (
    .I0(N222),
    .I1(N223),
    .S(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/N14 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \disp/dot_index_mux0000<7>1_F  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .O(N222)
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \disp/dot_index_mux0000<7>1_G  (
    .I0(\disp/N38 ),
    .I1(\disp/N8 ),
    .I2(\disp/char_index [0]),
    .I3(\disp/state_FSM_FFd3_1884 ),
    .O(N223)
  );
  MUXF5   Mmux_rgb_mux000010269 (
    .I0(N224),
    .I1(N225),
    .S(\xvga1/vcount [1]),
    .O(Mmux_rgb_mux000010269_37)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  Mmux_rgb_mux000010269_F (
    .I0(\xvga1/vcount [0]),
    .I1(\xvga1/vcount [7]),
    .I2(Mmux_rgb_mux000010233_35),
    .I3(Mmux_rgb_mux000010253_36),
    .O(N224)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_rgb_mux000010269_G (
    .I0(\xvga1/vcount [5]),
    .I1(\xvga1/vcount [6]),
    .I2(\xvga1/vcount [2]),
    .I3(Mmux_rgb_mux000010211),
    .O(N225)
  );
  MUXF5   \a/ac97/ac97_sdata_out_mux000094  (
    .I0(N226),
    .I1(N227),
    .S(\a/ac97/l_left_data_and0000_460 ),
    .O(\a/ac97/ac97_sdata_out_mux000094_411 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \a/ac97/ac97_sdata_out_mux000094_F  (
    .I0(\a/ac97/l_cmd_v_439 ),
    .I1(\a/ac97/ac97_sdata_out_mux000059_410 ),
    .I2(\a/ac97/l_left_data_and0001_461 ),
    .O(N226)
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a/ac97/ac97_sdata_out_mux000094_G  (
    .I0(\a/ac97/N8 ),
    .I1(\a/ac97/Mmux__varindex0000_5_f6_358 ),
    .I2(\a/ac97/l_cmd_v_439 ),
    .I3(\a/ac97/Mmux__varindex0000_6_f51 ),
    .O(N227)
  );
  MUXF5   \disp/disp_data_out_mux0000131  (
    .I0(N228),
    .I1(N229),
    .S(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/disp_data_out_mux0000131_1791 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \disp/disp_data_out_mux0000131_F  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/control[31] ),
    .O(N228)
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \disp/disp_data_out_mux0000131_G  (
    .I0(\disp/disp_data_out_mux000078_1796 ),
    .I1(\disp/dot_index [5]),
    .I2(\disp/Mmux__varindex0000_6_f6_1678 ),
    .O(N229)
  );
  MUXF5   \disp/dot_index_mux0000<8>51  (
    .I0(N230),
    .I1(N231),
    .S(\disp/dot_index [1]),
    .O(\disp/dot_index_mux0000<8>51_1856 )
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \disp/dot_index_mux0000<8>51_F  (
    .I0(\disp/dot_index [0]),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/N37 ),
    .O(N230)
  );
  LUT4 #(
    .INIT ( 16'hEBEA ))
  \disp/dot_index_mux0000<8>51_G  (
    .I0(\disp/N61 ),
    .I1(\disp/dot_index [0]),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .I3(\disp/state_FSM_FFd2_1882 ),
    .O(N231)
  );
  MUXF5   \a1/Sh26190  (
    .I0(N232),
    .I1(N233),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh26 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh26190_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh26114_723 ),
    .I2(\a1/Sh26129_724 ),
    .I3(\a1/Sh26_bdd1 ),
    .O(N232)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh26190_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh26213_725 ),
    .I2(\a1/Sh26228_726 ),
    .I3(\a1/Sh26_bdd5 ),
    .O(N233)
  );
  MUXF5   \a1/Sh25190  (
    .I0(N234),
    .I1(N235),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh25 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh25190_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh25114_714 ),
    .I2(\a1/Sh25129_715 ),
    .I3(\a1/Sh25_bdd1 ),
    .O(N234)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh25190_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh25213_716 ),
    .I2(\a1/Sh25228_717 ),
    .I3(\a1/Sh25_bdd5 ),
    .O(N235)
  );
  MUXF5   \a1/Sh24190  (
    .I0(N236),
    .I1(N237),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh24 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh24190_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh24114_705 ),
    .I2(\a1/Sh24129_706 ),
    .I3(\a1/Sh24_bdd1 ),
    .O(N236)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh24190_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh24213_707 ),
    .I2(\a1/Sh24228_708 ),
    .I3(\a1/Sh24_bdd5 ),
    .O(N237)
  );
  MUXF5   \a1/Sh23190  (
    .I0(N238),
    .I1(N239),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh23 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh23190_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh23114_693 ),
    .I2(\a1/Sh23129_694 ),
    .I3(\a1/Sh23_bdd1 ),
    .O(N238)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh23190_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh23213_695 ),
    .I2(\a1/Sh23228_696 ),
    .I3(\a1/Sh23_bdd5 ),
    .O(N239)
  );
  MUXF5   \a1/Sh11890  (
    .I0(N240),
    .I1(N241),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh118 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh11890_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh118141_678 ),
    .I2(\a1/Sh11829_679 ),
    .I3(\a1/Sh103_bdd4 ),
    .O(N240)
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh11890_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh118115_676 ),
    .I2(\a1/Sh103_bdd0 ),
    .I3(\a1/Sh118130_677 ),
    .O(N241)
  );
  MUXF5   \a1/Sh11790  (
    .I0(N242),
    .I1(N243),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh117 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh11790_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh117141_673 ),
    .I2(\a1/Sh11729_674 ),
    .I3(\a1/Sh102_bdd6 ),
    .O(N242)
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh11790_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh117115_671 ),
    .I2(\a1/Sh102_bdd1 ),
    .I3(\a1/Sh117130_672 ),
    .O(N243)
  );
  MUXF5   \a1/Sh11690  (
    .I0(N244),
    .I1(N245),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh116 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh11690_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh116141_668 ),
    .I2(\a1/Sh11629_669 ),
    .I3(\a1/Sh101_bdd7 ),
    .O(N244)
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh11690_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh116115_666 ),
    .I2(\a1/Sh101_bdd3 ),
    .I3(\a1/Sh116130_667 ),
    .O(N245)
  );
  MUXF5   \a1/Sh11590  (
    .I0(N246),
    .I1(N247),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh115 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh11590_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh115141_663 ),
    .I2(\a1/Sh11529_664 ),
    .I3(\a1/Sh100_bdd7 ),
    .O(N246)
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh11590_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh115115_661 ),
    .I2(\a1/Sh100_bdd3 ),
    .I3(\a1/Sh115130_662 ),
    .O(N247)
  );
  MUXF5   \a1/Sh102142  (
    .I0(N248),
    .I1(N249),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh102 )
  );
  LUT4 #(
    .INIT ( 16'h72FA ))
  \a1/Sh102142_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh102420_645 ),
    .I2(\a1/Sh102_bdd6 ),
    .I3(\a1/Sh102440_646 ),
    .O(N248)
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \a1/Sh102142_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh102_bdd1 ),
    .I2(\a1/Sh102112_642 ),
    .O(N249)
  );
  MUXF5   \a1/Sh33135  (
    .I0(N250),
    .I1(N251),
    .S(switch_6_IBUF_3638),
    .O(\a1/Sh33 )
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \a1/Sh33135_F  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh25_bdd1 ),
    .I2(\a1/Sh29212_746 ),
    .I3(\a1/Sh29227_747 ),
    .O(N250)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh33135_G  (
    .I0(switch_7_IBUF_3639),
    .I1(\a1/Sh25_bdd5 ),
    .I2(\a1/Sh3318_760 ),
    .O(N251)
  );
  MUXF5   \a1/Sh103241  (
    .I0(N252),
    .I1(N253),
    .S(switch_4_IBUF_3636),
    .O(\a1/Sh103_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh103241_F  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [15]),
    .I2(\a1/xk_im [17]),
    .O(N252)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh103241_G  (
    .I0(switch_5_IBUF_3637),
    .I1(\a1/xk_im [16]),
    .I2(\a1/xk_im [18]),
    .O(N253)
  );
  MUXF5   \a1/Sh322  (
    .I0(N254),
    .I1(N255),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh32_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh322_F  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2337 ),
    .I2(\a1/Sh2437 ),
    .O(N254)
  );
  LUT4 #(
    .INIT ( 16'hFF27 ))
  \a1/Sh322_G  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_re [22]),
    .I2(\a1/xk_re [21]),
    .I3(switch_5_IBUF_3637),
    .O(N255)
  );
  MUXF5   \a1/Sh1012  (
    .I0(N256),
    .I1(N257),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh101_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1012_F  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh100329 ),
    .I2(\a1/Sh101329 ),
    .O(N256)
  );
  LUT4 #(
    .INIT ( 16'hFF27 ))
  \a1/Sh1012_G  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_im [22]),
    .I2(\a1/xk_im [21]),
    .I3(switch_5_IBUF_3637),
    .O(N257)
  );
  MUXF5   \a1/Sh31256  (
    .I0(N258),
    .I1(N259),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh31_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh31256_F  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh23320 ),
    .I2(\a1/Sh2337 ),
    .O(N258)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \a1/Sh31256_G  (
    .I0(switch_4_IBUF_3636),
    .I1(switch_5_IBUF_3637),
    .I2(\a1/xk_re [21]),
    .I3(\a1/Sh31224_755 ),
    .O(N259)
  );
  MUXF5   \a1/Sh100255  (
    .I0(N260),
    .I1(N261),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh100_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh100255_F  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh100311_618 ),
    .I2(\a1/Sh100329 ),
    .O(N260)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \a1/Sh100255_G  (
    .I0(switch_4_IBUF_3636),
    .I1(switch_5_IBUF_3637),
    .I2(\a1/xk_im [21]),
    .I3(\a1/Sh100224_617 ),
    .O(N261)
  );
  MUXF5   \a/ac97/ac97_sdata_out_mux00001  (
    .I0(N262),
    .I1(N263),
    .S(\a/ac97/bit_count [4]),
    .O(\a/ac97/N11 )
  );
  LUT4 #(
    .INIT ( 16'h040C ))
  \a/ac97/ac97_sdata_out_mux00001_F  (
    .I0(\a/ac97/bit_count [3]),
    .I1(\a/ac97/bit_count [6]),
    .I2(\a/ac97/bit_count [5]),
    .I3(\a/ac97/bit_count [2]),
    .O(N262)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/ac97/ac97_sdata_out_mux00001_G  (
    .I0(\a/ac97/bit_count [3]),
    .I1(\a/ac97/bit_count [5]),
    .I2(\a/ac97/bit_count [6]),
    .O(N263)
  );
  MUXF5   \disp/dot_index_mux0000<4>55  (
    .I0(N264),
    .I1(N265),
    .S(\disp/state_cmp_eq0000_1886 ),
    .O(\disp/dot_index_mux0000<4>55_1836 )
  );
  LUT4 #(
    .INIT ( 16'h2262 ))
  \disp/dot_index_mux0000<4>55_F  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/dot_index_mux0000<4>30 ),
    .I3(\disp/state_FSM_FFd1_1881 ),
    .O(N264)
  );
  LUT3 #(
    .INIT ( 8'h26 ))
  \disp/dot_index_mux0000<4>55_G  (
    .I0(\disp/state_FSM_FFd3_1884 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .O(N265)
  );
  MUXF5   \disp/dot_index_mux0000<9>2  (
    .I0(N266),
    .I1(N267),
    .S(\disp/dot_index [0]),
    .O(\disp/dot_index_mux0000<9>1_1857 )
  );
  LUT4 #(
    .INIT ( 16'h4474 ))
  \disp/dot_index_mux0000<9>2_F  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/state_FSM_FFd2_1882 ),
    .I3(\disp/state_cmp_eq0000_1886 ),
    .O(N266)
  );
  LUT4 #(
    .INIT ( 16'hFF8B ))
  \disp/dot_index_mux0000<9>2_G  (
    .I0(\disp/state_cmp_eq0001_1888 ),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(N179),
    .I3(\disp/state_FSM_FFd3_1884 ),
    .O(N267)
  );
  MUXF5   \disp/char_index<3>11  (
    .I0(N268),
    .I1(N269),
    .S(\disp/char_index [1]),
    .O(\disp/nibble [1])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \disp/char_index<3>11_F  (
    .I0(\disp/Mmux_nibble_91_1687 ),
    .I1(\disp/char_index [2]),
    .I2(\disp/char_index [3]),
    .O(N268)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/char_index<3>11_G  (
    .I0(\disp/char_index [0]),
    .I1(\disp/char_index [2]),
    .I2(\disp/char_index [3]),
    .I3(volume_or_selection[1]),
    .O(N269)
  );
  MUXF5   \disp/char_index<3>1  (
    .I0(N270),
    .I1(N271),
    .S(\disp/char_index [1]),
    .O(\disp/nibble [0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \disp/char_index<3>1_F  (
    .I0(\disp/Mmux_nibble_9_1686 ),
    .I1(\disp/char_index [2]),
    .I2(\disp/char_index [3]),
    .O(N270)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \disp/char_index<3>1_G  (
    .I0(\disp/char_index [0]),
    .I1(\disp/char_index [2]),
    .I2(\disp/char_index [3]),
    .I3(volume_or_selection[0]),
    .O(N271)
  );
  BUFG   clock_27mhz_IBUFG_BUFG (
    .I(clock_27mhz_IBUFG1),
    .O(clock_27mhz_IBUFG_1198)
  );
  BUFG   \disp/clock_BUFG  (
    .I(\disp/clock1 ),
    .O(\disp/clock_1761 )
  );
  BUFGP   ac97_bit_clock_BUFGP (
    .I(ac97_bit_clock),
    .O(ac97_bit_clock_BUFGP_1106)
  );
  INV   \db4/Mcount_count_lut<0>_INV_0  (
    .I(\db4/count [0]),
    .O(\db4/Mcount_count_lut [0])
  );
  INV   \db1/Mcount_count_lut<0>_INV_0  (
    .I(\db1/count [0]),
    .O(\db1/Mcount_count_lut [0])
  );
  INV   \db6/Mcount_count_lut<0>_INV_0  (
    .I(\db6/count [0]),
    .O(\db6/Mcount_count_lut [0])
  );
  INV   \db5/Mcount_count_lut<0>_INV_0  (
    .I(\db5/count [0]),
    .O(\db5/Mcount_count_lut [0])
  );
  INV   \db3/Mcount_count_lut<0>_INV_0  (
    .I(\db3/count [0]),
    .O(\db3/Mcount_count_lut [0])
  );
  INV   \db2/Mcount_count_lut<0>_INV_0  (
    .I(\db2/count [0]),
    .O(\db2/Mcount_count_lut [0])
  );
  INV   \disp/Mcount_reset_count_lut<7>_INV_0  (
    .I(\disp/reset_count [7]),
    .O(\disp/Mcount_reset_count_lut [7])
  );
  INV   \disp/Mcount_reset_count_lut<6>_INV_0  (
    .I(\disp/reset_count [6]),
    .O(\disp/Mcount_reset_count_lut [6])
  );
  INV   \disp/Mcount_reset_count_lut<5>_INV_0  (
    .I(\disp/reset_count [5]),
    .O(\disp/Mcount_reset_count_lut [5])
  );
  INV   \disp/Mcount_reset_count_lut<4>_INV_0  (
    .I(\disp/reset_count [4]),
    .O(\disp/Mcount_reset_count_lut [4])
  );
  INV   \disp/Mcount_reset_count_lut<3>_INV_0  (
    .I(\disp/reset_count [3]),
    .O(\disp/Mcount_reset_count_lut [3])
  );
  INV   \disp/Mcount_reset_count_lut<2>_INV_0  (
    .I(\disp/reset_count [2]),
    .O(\disp/Mcount_reset_count_lut [2])
  );
  INV   \disp/Mcount_reset_count_lut<1>_INV_0  (
    .I(\disp/reset_count [1]),
    .O(\disp/Mcount_reset_count_lut [1])
  );
  INV   \xvga1/Mcount_vcount_lut<0>_INV_0  (
    .I(\xvga1/vcount [0]),
    .O(\xvga1/Mcount_vcount_lut [0])
  );
  INV   \xvga1/Mcount_hcount_lut<0>_INV_0  (
    .I(\xvga1/hcount [0]),
    .O(\xvga1/Mcount_hcount_lut [0])
  );
  INV   \a/ac97/Mcount_bit_count_lut<0>_INV_0  (
    .I(\a/ac97/bit_count [0]),
    .O(\a/ac97/Mcount_bit_count_lut [0])
  );
  INV   \a/Mcount_reset_count_lut<0>_INV_0  (
    .I(\a/reset_count [0]),
    .O(\a/Mcount_reset_count_lut [0])
  );
  INV   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>_INV_0  (
    .I(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [1])
  );
  INV   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [3])
  );
  INV   \hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ribbles[13].un_blob/Mcompar_overlap_cmp_lt0000_lut [5])
  );
  INV   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>_INV_0  (
    .I(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [1])
  );
  INV   \hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ribbles[12].un_blob/Mcompar_overlap_cmp_lt0000_lut [5])
  );
  INV   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>_INV_0  (
    .I(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[4] )
  );
  INV   \hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut<6>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riggles[11].un_blob/Mcompar_overlap_cmp_lt0000_lut[6] )
  );
  INV   \hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riggles[10].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riffle[9].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut<2>_INV_0  (
    .I(\xvga1/hcount [7]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [2])
  );
  INV   \hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut<4>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riffle[8].un_blob/Mcompar_overlap_cmp_lt0000_lut [4])
  );
  INV   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  INV   \hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riggle[7].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>_INV_0  (
    .I(\xvga1/hcount [1]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  INV   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [4]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  INV   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [6]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<7>_INV_0  (
    .I(\xvga1/hcount [8]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] )
  );
  INV   \hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut<9>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/riggle[6].un_blob/Mcompar_overlap_cmp_lt0000_lut[9] )
  );
  INV   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  INV   \hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripples[5].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripples[4].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripple[3].un_blob/Mcompar_overlap_cmp_lt0000_lut [3])
  );
  INV   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  INV   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut<7>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripple[2].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] )
  );
  INV   \hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_lut [3])
  );
  INV   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<1>_INV_0  (
    .I(\xvga1/hcount [1]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[1] )
  );
  INV   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<3>_INV_0  (
    .I(\xvga1/hcount [3]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[3] )
  );
  INV   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<5>_INV_0  (
    .I(\xvga1/hcount [7]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[5] )
  );
  INV   \hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut<7>_INV_0  (
    .I(\xvga1/hcount [10]),
    .O(\hd/ma_digs/ripple[0].un_blob/Mcompar_overlap_cmp_lt0000_lut[7] )
  );
  INV   vsync_inv1_INV_0 (
    .I(\xvga1/vsync_3839 ),
    .O(vsync_inv)
  );
  INV   vga_out_pixel_clock1_INV_0 (
    .I(clock_65mhz),
    .O(vga_out_pixel_clock_OBUF_3695)
  );
  INV   db5_not00001_INV_0 (
    .I(button_right_IBUF_1194),
    .O(db5_not0000)
  );
  INV   db4_not00001_INV_0 (
    .I(button_left_IBUF_1192),
    .O(db4_not0000)
  );
  INV   db3_not00001_INV_0 (
    .I(button_down_IBUF_1188),
    .O(db3_not0000)
  );
  INV   db2_not00001_INV_0 (
    .I(button_up_IBUF_1196),
    .O(db2_not0000)
  );
  INV   db1_not00001_INV_0 (
    .I(button_enter_IBUF_1190),
    .O(db1_not0000)
  );
  INV   vga_out_blank_b1_INV_0 (
    .I(b_1180),
    .O(vga_out_blank_b_OBUF_3676)
  );
  INV   \led<4>1_INV_0  (
    .I(volume[4]),
    .O(led_4_OBUF_3516)
  );
  INV   \led<3>1_INV_0  (
    .I(volume[3]),
    .O(led_3_OBUF_3515)
  );
  INV   \led<2>1_INV_0  (
    .I(volume[2]),
    .O(led_2_OBUF_3514)
  );
  INV   \led<1>1_INV_0  (
    .I(volume[1]),
    .O(led_1_OBUF_3513)
  );
  INV   \disp/disp_clock1_INV_0  (
    .I(\disp/clock1 ),
    .O(disp_clock_OBUF_1893)
  );
  INV   \disp/Mcount_count_xor<0>11_INV_0  (
    .I(\disp/count [0]),
    .O(\disp/Result [0])
  );
  INV   \a1/sqmag/done1_INV_0  (
    .I(\a1/sqmag/busy_1023 ),
    .O(\a1/sqrt_done )
  );
  INV   \a/cmds/Mcount_state_xor<0>11_INV_0  (
    .I(\a/cmds/state [0]),
    .O(\a/cmds/Result [0])
  );
  INV   \Result<0>61_INV_0  (
    .I(volume[0]),
    .O(\Result<0>6 )
  );
  INV   \Mcount_volume_or_selection_xor<0>11_INV_0  (
    .I(volume_or_selection[0]),
    .O(\Result<0>8 )
  );
  INV   \Mcount_num_xor<0>11_INV_0  (
    .I(num[0]),
    .O(\Result<0>9 )
  );
  INV   \Mcount_blob_xor<0>11_INV_0  (
    .I(blob[0]),
    .O(\Result<0>7 )
  );
  INV   \a/ac97/COND_23_not0000<1>1_INV_0  (
    .I(\a/ac97/bit_count [1]),
    .O(\a/ac97/COND_23_not0000[1] )
  );
  INV   \a/ac97/COND_23_not0000<3>1_INV_0  (
    .I(\a/ac97/bit_count [3]),
    .O(\a/ac97/COND_23_not0000[3] )
  );
  INV   \db6/count_not00011_INV_0  (
    .I(\db6/count_cmp_eq0000 ),
    .O(\db6/count_not0001 )
  );
  INV   \db5/count_not00011_INV_0  (
    .I(\db5/count_cmp_eq0000 ),
    .O(\db5/count_not0001 )
  );
  INV   \db4/count_not00011_INV_0  (
    .I(\db4/count_cmp_eq0000 ),
    .O(\db4/count_not0001 )
  );
  INV   \db3/count_not00011_INV_0  (
    .I(\db3/count_cmp_eq0000 ),
    .O(\db3/count_not0001 )
  );
  INV   \db2/count_not00011_INV_0  (
    .I(\db2/count_cmp_eq0000 ),
    .O(\db2/count_not0001 )
  );
  INV   \db1/count_not00011_INV_0  (
    .I(\db1/count_cmp_eq0000 ),
    .O(\db1/count_not0001 )
  );
  INV   \hd/myblob/Msub_image_addr_addsub0000_xor<3>11_INV_0  (
    .I(\xvga1/vcount [3]),
    .O(\hd/myblob/image_addr_addsub0000 [3])
  );
  INV   \hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001<1>1_INV_0  (
    .I(\xvga1/vcount [1]),
    .O(\hd/ma_digs/riffle[8].un_blob/image_addr_addsub0001 [1])
  );
  INV   \hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001<5>1_INV_0  (
    .I(\xvga1/vcount [5]),
    .O(\hd/ma_digs/ribbles[12].un_blob/image_addr_addsub0001 [5])
  );
  INV   \xvga1/Mcount_vcount_lut<0>1_INV_0  (
    .I(\xvga1/vcount [0]),
    .O(\xvga1/Mcount_vcount_lut<0>1 )
  );
  INV   \a/ac97/Mcount_bit_count_lut<0>1_INV_0  (
    .I(\a/ac97/bit_count [0]),
    .O(\a/ac97/Mcount_bit_count_lut<0>1 )
  );
  RAMB16_S18_S18 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  histogram (
    .CLKA(clock_27mhz_IBUFG_1198),
    .CLKB(clock_65mhz),
    .ENA(led_5_OBUF_3517),
    .ENB(led_5_OBUF_3517),
    .SSRA(\a/ac97/Mmux__varindex0000_9 ),
    .SSRB(\a/ac97/Mmux__varindex0000_9 ),
    .WEA(\a1/hwe_776 ),
    .WEB(\a/ac97/Mmux__varindex0000_9 ),
    .ADDRA({\a1/haddr [9], \a1/haddr [8], \a1/haddr [7], \a1/haddr [6], \a1/haddr [5], \a1/haddr [4], \a1/haddr [3], \a1/haddr [2], \a1/haddr [1], 
\a1/haddr [0]}),
    .ADDRB({\xvga1/hcount [9], \xvga1/hcount [8], \xvga1/hcount [7], \xvga1/hcount [6], \xvga1/hcount [5], \xvga1/hcount [4], \xvga1/hcount [3], 
\xvga1/hcount [2], \xvga1/hcount [1], \xvga1/hcount [0]}),
    .DIA({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a1/sqmag/answer [9], \a1/sqmag/answer [8], \a1/sqmag/answer [7], \a1/sqmag/answer [6], 
\a1/sqmag/answer [5], \a1/sqmag/answer [4], \a1/sqmag/answer [3], \a1/sqmag/answer [2], \a1/sqmag/answer [1], \a1/sqmag/answer [0]}),
    .DIB({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 }),
    .DIPA({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 }),
    .DIPB({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 }),
    .DOA({\NLW_histogram_DOA<15>_UNCONNECTED , \NLW_histogram_DOA<14>_UNCONNECTED , \NLW_histogram_DOA<13>_UNCONNECTED , 
\NLW_histogram_DOA<12>_UNCONNECTED , \NLW_histogram_DOA<11>_UNCONNECTED , \NLW_histogram_DOA<10>_UNCONNECTED , \NLW_histogram_DOA<9>_UNCONNECTED , 
\NLW_histogram_DOA<8>_UNCONNECTED , \NLW_histogram_DOA<7>_UNCONNECTED , \NLW_histogram_DOA<6>_UNCONNECTED , \NLW_histogram_DOA<5>_UNCONNECTED , 
\NLW_histogram_DOA<4>_UNCONNECTED , \NLW_histogram_DOA<3>_UNCONNECTED , \NLW_histogram_DOA<2>_UNCONNECTED , \NLW_histogram_DOA<1>_UNCONNECTED , 
\NLW_histogram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_histogram_DOPA<1>_UNCONNECTED , \NLW_histogram_DOPA<0>_UNCONNECTED }),
    .DOB({\NLW_histogram_DOB<15>_UNCONNECTED , \NLW_histogram_DOB<14>_UNCONNECTED , \NLW_histogram_DOB<13>_UNCONNECTED , 
\NLW_histogram_DOB<12>_UNCONNECTED , \NLW_histogram_DOB<11>_UNCONNECTED , \NLW_histogram_DOB<10>_UNCONNECTED , divisor[9], dout[8], dout[7], dout[6], 
dout[5], dout[4], dout[3], dout[2], dout[1], dout[0]}),
    .DOPB({\NLW_histogram_DOPB<1>_UNCONNECTED , \NLW_histogram_DOPB<0>_UNCONNECTED })
  );
  LUT4 #(
    .INIT ( 16'h7FFE ))
  \Mcount_num_xor<3>111  (
    .I0(\db2/clean_1313 ),
    .I1(num[2]),
    .I2(num[0]),
    .I3(num[1]),
    .O(\Mcount_num_xor<3>11 )
  );
  LUT4 #(
    .INIT ( 16'h8001 ))
  \Mcount_num_xor<3>112  (
    .I0(num[0]),
    .I1(num[1]),
    .I2(\db2/clean_1313 ),
    .I3(num[2]),
    .O(\Mcount_num_xor<3>111_22 )
  );
  MUXF5   \Mcount_num_xor<3>11_f5  (
    .I0(\Mcount_num_xor<3>111_22 ),
    .I1(\Mcount_num_xor<3>11 ),
    .S(num[3]),
    .O(\Result<3>8 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_blob_xor<3>111  (
    .I0(blob[3]),
    .I1(blob[2]),
    .I2(blob[1]),
    .I3(blob[0]),
    .O(\Mcount_blob_xor<3>11 )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \Mcount_blob_xor<3>112  (
    .I0(blob[3]),
    .I1(blob[1]),
    .I2(blob[0]),
    .I3(blob[2]),
    .O(\Mcount_blob_xor<3>111_20 )
  );
  MUXF5   \Mcount_blob_xor<3>11_f5  (
    .I0(\Mcount_blob_xor<3>111_20 ),
    .I1(\Mcount_blob_xor<3>11 ),
    .S(\db2/clean_1313 ),
    .O(\Result<3>7 )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \disp/count_or000011  (
    .I0(\disp/count [2]),
    .I1(\disp/count [0]),
    .I2(\disp/count [3]),
    .I3(\disp/count [1]),
    .O(\disp/count_or00001 )
  );
  MUXF5   \disp/count_or00001_f5  (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(\disp/count_or00001 ),
    .S(\disp/count [4]),
    .O(\disp/clock_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \a/cmds/command_mux0000<20>31  (
    .I0(\a/cmds/state [2]),
    .I1(\a/cmds/state [0]),
    .I2(\a/cmds/state [3]),
    .O(\a/cmds/command_mux0000<20>3 )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \a/cmds/command_mux0000<20>32  (
    .I0(\a/cmds/state [0]),
    .I1(\a/cmds/state [3]),
    .I2(\a/cmds/state [1]),
    .I3(\a/cmds/state [2]),
    .O(\a/cmds/command_mux0000<20>31_536 )
  );
  MUXF5   \a/cmds/command_mux0000<20>3_f5  (
    .I0(\a/cmds/command_mux0000<20>31_536 ),
    .I1(\a/cmds/command_mux0000<20>3 ),
    .S(volume[3]),
    .O(\a/cmds/N8 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \disp/Result<4>1  (
    .I0(\disp/count [2]),
    .I1(\disp/count [1]),
    .I2(\disp/count [0]),
    .I3(\disp/count [3]),
    .O(\disp/Result<4>2_1743 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \disp/Result<4>2  (
    .I0(\disp/count [0]),
    .I1(\disp/count [3]),
    .I2(\disp/count [2]),
    .I3(\disp/count [1]),
    .O(\disp/Result<4>3 )
  );
  MUXF5   \disp/Result<4>_f5  (
    .I0(\disp/Result<4>3 ),
    .I1(\disp/Result<4>2_1743 ),
    .S(\disp/count [4]),
    .O(\disp/Result [4])
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \a/ac97/l_left_data_not00012_SW01  (
    .I0(\a/ac97/bit_count [2]),
    .I1(\a/ac97/bit_count [3]),
    .I2(\a/ac97/bit_count [0]),
    .I3(\a/ac97/bit_count [1]),
    .O(\a/ac97/l_left_data_not00012_SW0 )
  );
  MUXF5   \a/ac97/l_left_data_not00012_SW0_f5  (
    .I0(led_5_OBUF_3517),
    .I1(\a/ac97/l_left_data_not00012_SW0 ),
    .S(\a/ac97/bit_count [7]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  volume_not000161 (
    .I0(volume[3]),
    .I1(volume[2]),
    .I2(volume[1]),
    .I3(volume[0]),
    .O(volume_not000161_3715)
  );
  MUXF5   volume_not00016_f5 (
    .I0(volume_not000161_3715),
    .I1(led_5_OBUF_3517),
    .S(volume[4]),
    .O(volume_not00016)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  volume_not0001421 (
    .I0(volume[1]),
    .I1(volume[0]),
    .I2(volume[3]),
    .I3(volume[2]),
    .O(volume_not0001421_3713)
  );
  MUXF5   volume_not000142_f5 (
    .I0(led_5_OBUF_3517),
    .I1(volume_not0001421_3713),
    .S(volume[4]),
    .O(volume_not000142)
  );
  LUT4 #(
    .INIT ( 16'h083B ))
  volume_not0001721 (
    .I0(volume_not000142),
    .I1(\db2/clean_1313 ),
    .I2(old_vup_3524),
    .I3(N173),
    .O(volume_not000172)
  );
  MUXF5   volume_not000172_f5 (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(volume_not000172),
    .S(volume_or_selection[1]),
    .O(volume_not0001)
  );
  LUT4 #(
    .INIT ( 16'hFF7E ))
  \Mcount_volume_xor<4>121  (
    .I0(\db2/clean_1313 ),
    .I1(volume[2]),
    .I2(volume[3]),
    .I3(N6),
    .O(\Mcount_volume_xor<4>12 )
  );
  LUT4 #(
    .INIT ( 16'h0081 ))
  \Mcount_volume_xor<4>122  (
    .I0(\db2/clean_1313 ),
    .I1(volume[2]),
    .I2(volume[3]),
    .I3(N6),
    .O(\Mcount_volume_xor<4>121_24 )
  );
  MUXF5   \Mcount_volume_xor<4>12_f5  (
    .I0(\Mcount_volume_xor<4>121_24 ),
    .I1(\Mcount_volume_xor<4>12 ),
    .S(volume[4]),
    .O(\Result<4>6 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \disp/char_index_mux0000<0>121  (
    .I0(\disp/char_index [2]),
    .I1(\disp/state_FSM_FFd1_1881 ),
    .I2(\disp/char_index [1]),
    .I3(\disp/char_index [0]),
    .O(\disp/char_index_mux0000<0>121_1754 )
  );
  MUXF5   \disp/char_index_mux0000<0>12_f5  (
    .I0(led_5_OBUF_3517),
    .I1(\disp/char_index_mux0000<0>121_1754 ),
    .S(\disp/state_FSM_FFd2_1882 ),
    .O(\disp/char_index_mux0000<0>12 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/char_index_mux0000<2>1  (
    .I0(\disp/N24 ),
    .I1(\disp/char_index [1]),
    .O(\disp/char_index_mux0000<2>1_1758 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \disp/char_index_mux0000<2>2  (
    .I0(\disp/char_index [3]),
    .I1(\disp/char_index [1]),
    .I2(\disp/char_index [2]),
    .I3(\disp/N24 ),
    .O(\disp/char_index_mux0000<2>2_1759 )
  );
  MUXF5   \disp/char_index_mux0000<2>_f5  (
    .I0(\disp/char_index_mux0000<2>2_1759 ),
    .I1(\disp/char_index_mux0000<2>1_1758 ),
    .S(\disp/N32 ),
    .O(\disp/char_index_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \hd/thehud/pixel_not00011  (
    .I0(\xvga1/vcount [8]),
    .I1(\xvga1/hcount [9]),
    .I2(\hd/N111 ),
    .I3(\xvga1/hcount [10]),
    .O(\hd/thehud/pixel_not00011_3495 )
  );
  MUXF5   \hd/thehud/pixel_not0001_f5  (
    .I0(\hd/thehud/pixel_not00011_3495 ),
    .I1(led_5_OBUF_3517),
    .S(\xvga1/vcount [9]),
    .O(\hd/thehud/pixel_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \disp/dot_index_mux0000<4>301  (
    .I0(\disp/dot_index [1]),
    .I1(\disp/dot_index [0]),
    .I2(\disp/dot_index [3]),
    .I3(\disp/dot_index [2]),
    .O(\disp/dot_index_mux0000<4>301_1834 )
  );
  MUXF5   \disp/dot_index_mux0000<4>30_f5  (
    .I0(led_5_OBUF_3517),
    .I1(\disp/dot_index_mux0000<4>301_1834 ),
    .S(\disp/dot_index [4]),
    .O(\disp/dot_index_mux0000<4>30 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \disp/state_cmp_eq000011  (
    .I0(\disp/dot_index [3]),
    .I1(\disp/dot_index [2]),
    .I2(\disp/dot_index [1]),
    .I3(\disp/dot_index [0]),
    .O(\disp/state_cmp_eq00001 )
  );
  MUXF5   \disp/state_cmp_eq00001_f5  (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(\disp/state_cmp_eq00001 ),
    .S(\disp/dot_index [4]),
    .O(\disp/N92 )
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \disp/dot_index_mux0000<3>141  (
    .I0(\disp/N34 ),
    .I1(\disp/dot_index [5]),
    .I2(\disp/dot_index [6]),
    .I3(\disp/N31 ),
    .O(\disp/dot_index_mux0000<3>141_1828 )
  );
  MUXF5   \disp/dot_index_mux0000<3>14_f5  (
    .I0(\disp/N31 ),
    .I1(\disp/dot_index_mux0000<3>141_1828 ),
    .S(\disp/N92 ),
    .O(\disp/dot_index_mux0000<3>14 )
  );
  LUT4 #(
    .INIT ( 16'hB111 ))
  \disp/dot_index_mux0000<0>1111  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_cmp_eq0001_1888 ),
    .I3(\disp/N12 ),
    .O(\disp/dot_index_mux0000<0>111 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \disp/dot_index_mux0000<0>1112  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/state_cmp_eq0001_1888 ),
    .I2(\disp/N12 ),
    .O(\disp/dot_index_mux0000<0>1111_1813 )
  );
  MUXF5   \disp/dot_index_mux0000<0>111_f5  (
    .I0(\disp/dot_index_mux0000<0>1111_1813 ),
    .I1(\disp/dot_index_mux0000<0>111 ),
    .S(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/N76 )
  );
  LUT4 #(
    .INIT ( 16'h777F ))
  \a/ac97/left_in_data_and0000131  (
    .I0(\a/ac97/bit_count [3]),
    .I1(\a/ac97/bit_count [2]),
    .I2(\a/ac97/bit_count [0]),
    .I3(\a/ac97/bit_count [1]),
    .O(\a/ac97/left_in_data_and0000131_494 )
  );
  MUXF5   \a/ac97/left_in_data_and000013_f5  (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(\a/ac97/left_in_data_and0000131_494 ),
    .S(\a/ac97/N18 ),
    .O(\a/ac97/left_in_data_and000013 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh30111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh26_bdd5 ),
    .I2(\a1/Sh30_bdd0 ),
    .O(\a1/Sh3011 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh30112  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh26213_725 ),
    .I2(\a1/Sh26228_726 ),
    .I3(\a1/Sh30_bdd0 ),
    .O(\a1/Sh30111_750 )
  );
  MUXF5   \a1/Sh3011_f5  (
    .I0(\a1/Sh30111_750 ),
    .I1(\a1/Sh3011 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh30 )
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \a1/Sh29111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh25_bdd5 ),
    .I2(\a1/Sh29212_746 ),
    .I3(\a1/Sh29227_747 ),
    .O(\a1/Sh2911 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh29112  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh25213_716 ),
    .I2(\a1/Sh25228_717 ),
    .I3(\a1/Sh25_bdd1 ),
    .O(\a1/Sh29111_745 )
  );
  MUXF5   \a1/Sh2911_f5  (
    .I0(\a1/Sh29111_745 ),
    .I1(\a1/Sh2911 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh29 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh28111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh24_bdd5 ),
    .I2(\a1/Sh28_bdd0 ),
    .O(\a1/Sh2811 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh28112  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh24213_707 ),
    .I2(\a1/Sh24228_708 ),
    .I3(\a1/Sh28_bdd0 ),
    .O(\a1/Sh28111_738 )
  );
  MUXF5   \a1/Sh2811_f5  (
    .I0(\a1/Sh28111_738 ),
    .I1(\a1/Sh2811 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh28 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh27111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh23_bdd5 ),
    .I2(\a1/Sh27_bdd0 ),
    .O(\a1/Sh2711 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh27112  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh23213_695 ),
    .I2(\a1/Sh23228_696 ),
    .I3(\a1/Sh27_bdd0 ),
    .O(\a1/Sh27111_732 )
  );
  MUXF5   \a1/Sh2711_f5  (
    .I0(\a1/Sh27111_732 ),
    .I1(\a1/Sh2711 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh27 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh12211  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh103_bdd0 ),
    .I2(\a1/Sh103_bdd1 ),
    .O(\a1/Sh1221 )
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh12212  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh118130_677 ),
    .I2(\a1/Sh103_bdd1 ),
    .I3(\a1/Sh118115_676 ),
    .O(\a1/Sh12211_691 )
  );
  MUXF5   \a1/Sh1221_f5  (
    .I0(\a1/Sh12211_691 ),
    .I1(\a1/Sh1221 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh122 )
  );
  LUT4 #(
    .INIT ( 16'h2A7F ))
  \a1/Sh12111  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh102440_646 ),
    .I2(\a1/Sh102420_645 ),
    .I3(\a1/Sh102_bdd1 ),
    .O(\a1/Sh1211 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \a1/Sh12112  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh117115_671 ),
    .I2(\a1/Sh117130_672 ),
    .I3(\a1/Sh102_bdd6 ),
    .O(\a1/Sh12111_688 )
  );
  MUXF5   \a1/Sh1211_f5  (
    .I0(\a1/Sh12111_688 ),
    .I1(\a1/Sh1211 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh121 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh12011  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh101_bdd3 ),
    .I2(\a1/Sh101_bdd1 ),
    .O(\a1/Sh1201 )
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh12012  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh116130_667 ),
    .I2(\a1/Sh101_bdd1 ),
    .I3(\a1/Sh116115_666 ),
    .O(\a1/Sh12011_685 )
  );
  MUXF5   \a1/Sh1201_f5  (
    .I0(\a1/Sh12011_685 ),
    .I1(\a1/Sh1201 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh120 )
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \a1/Sh11911  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh100_bdd3 ),
    .I2(\a1/Sh100_bdd1 ),
    .O(\a1/Sh1191 )
  );
  LUT4 #(
    .INIT ( 16'h5F4E ))
  \a1/Sh11912  (
    .I0(switch_6_IBUF_3638),
    .I1(\a1/Sh115130_662 ),
    .I2(\a1/Sh100_bdd1 ),
    .I3(\a1/Sh115115_661 ),
    .O(\a1/Sh11911_682 )
  );
  MUXF5   \a1/Sh1191_f5  (
    .I0(\a1/Sh11911_682 ),
    .I1(\a1/Sh1191 ),
    .S(switch_7_IBUF_3639),
    .O(\a1/Sh119 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh283311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2737 ),
    .I2(\a1/xk_re [20]),
    .O(\a1/Sh28331 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh283312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh2737 ),
    .I2(\a1/xk_re [18]),
    .O(\a1/Sh283311_740 )
  );
  MUXF5   \a1/Sh28331_f5  (
    .I0(\a1/Sh283311_740 ),
    .I1(\a1/Sh28331 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh28_bdd2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh234311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_re [10]),
    .I2(\a1/Sh2347 ),
    .O(\a1/Sh23431 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh234312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_re [8]),
    .I2(\a1/Sh2347 ),
    .O(\a1/Sh234311_700 )
  );
  MUXF5   \a1/Sh23431_f5  (
    .I0(\a1/Sh234311_700 ),
    .I1(\a1/Sh23431 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh23_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1034311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10257 ),
    .I2(\a1/xk_im [14]),
    .O(\a1/Sh103431 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1034312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10257 ),
    .I2(\a1/xk_im [12]),
    .O(\a1/Sh1034311_654 )
  );
  MUXF5   \a1/Sh103431_f5  (
    .I0(\a1/Sh1034311_654 ),
    .I1(\a1/Sh103431 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh103_bdd4 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \a1/Sh1023411  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh101329 ),
    .I2(\a1/xk_im [17]),
    .O(\a1/Sh102341 )
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \a1/Sh1023412  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh101329 ),
    .I2(\a1/xk_im [15]),
    .O(\a1/Sh1023411_644 )
  );
  MUXF5   \a1/Sh102341_f5  (
    .I0(\a1/Sh1023411_644 ),
    .I1(\a1/Sh102341 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh102_bdd1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1015311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10057 ),
    .I2(\a1/xk_im [20]),
    .O(\a1/Sh101531 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1015312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/Sh10057 ),
    .I2(\a1/xk_im [18]),
    .O(\a1/Sh1015311_634 )
  );
  MUXF5   \a1/Sh101531_f5  (
    .I0(\a1/Sh1015311_634 ),
    .I1(\a1/Sh101531 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh101_bdd6 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1006311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_im [10]),
    .I2(\a1/Sh10067 ),
    .O(\a1/Sh100631 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1006312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_im [8]),
    .I2(\a1/Sh10067 ),
    .O(\a1/Sh1006311_624 )
  );
  MUXF5   \a1/Sh100631_f5  (
    .I0(\a1/Sh1006311_624 ),
    .I1(\a1/Sh100631 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh100_bdd7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1005311  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_im [18]),
    .I2(\a1/Sh10057 ),
    .O(\a1/Sh100531 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \a1/Sh1005312  (
    .I0(switch_4_IBUF_3636),
    .I1(\a1/xk_im [16]),
    .I2(\a1/Sh10057 ),
    .O(\a1/Sh1005311_621 )
  );
  MUXF5   \a1/Sh100531_f5  (
    .I0(\a1/Sh1005311_621 ),
    .I1(\a1/Sh100531 ),
    .S(switch_5_IBUF_3637),
    .O(\a1/Sh100_bdd6 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/the_sel/selected_mux0000<2>801  (
    .I0(\hd/ma_digs/riggles[11].un_blob/overlap_2917 ),
    .I1(\hd/ma_digs/riffle[8].un_blob/overlap_2649 ),
    .I2(\hd/ma_digs/ripples[4].un_blob/overlap_3204 ),
    .I3(\hd/ma_digs/ribbles[12].un_blob/overlap_2526 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<2>801_3324 )
  );
  MUXF5   \hd/ma_digs/the_sel/selected_mux0000<2>80_f5  (
    .I0(\hd/ma_digs/the_sel/selected_mux0000<2>801_3324 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[0].un_blob/overlap_2985 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<2>80 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/the_sel/selected_mux0000<0>801  (
    .I0(\hd/ma_digs/ripple[2].un_blob/overlap_3095 ),
    .I1(\hd/ma_digs/riggle[6].un_blob/overlap_2764 ),
    .I2(\hd/ma_digs/ripples[5].un_blob/overlap_3258 ),
    .I3(\hd/ma_digs/ripples[4].un_blob/overlap_3204 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<0>801_3317 )
  );
  MUXF5   \hd/ma_digs/the_sel/selected_mux0000<0>80_f5  (
    .I0(\hd/ma_digs/the_sel/selected_mux0000<0>801_3317 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\hd/ma_digs/ripple[3].un_blob/overlap_3144 ),
    .O(\hd/ma_digs/the_sel/selected_mux0000<0>80 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \hd/ma_digs/ribbles[12].un_blob/overlap_not0001261  (
    .I0(\xvga1/hcount [3]),
    .I1(\xvga1/hcount [2]),
    .I2(\xvga1/hcount [5]),
    .I3(\xvga1/hcount [4]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_not0001261_2533 )
  );
  MUXF5   \hd/ma_digs/ribbles[12].un_blob/overlap_not000126_f5  (
    .I0(\hd/ma_digs/ribbles[12].un_blob/overlap_not0001261_2533 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/hcount [6]),
    .O(\hd/ma_digs/ribbles[12].un_blob/overlap_not000126 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge000111  (
    .I0(\xvga1/vcount [7]),
    .I1(\hd/ma_digs/ripples[4].un_blob/Msub_image_addr_addsub0001_cy [4]),
    .I2(\xvga1/vcount [5]),
    .I3(\xvga1/vcount [6]),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00011 )
  );
  MUXF5   \hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00011_f5  (
    .I0(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00011 ),
    .I1(led_5_OBUF_3517),
    .S(\xvga1/vcount [8]),
    .O(\hd/ma_digs/ripples[4].un_blob/overlap_cmp_ge00012 )
  );
  LUT4 #(
    .INIT ( 16'hFA2A ))
  \disp/disp_data_out_mux00001681  (
    .I0(\disp/disp_data_out_1789 ),
    .I1(\disp/state_FSM_FFd2_1882 ),
    .I2(\disp/state_FSM_FFd1_1881 ),
    .I3(\disp/disp_data_out_mux0000131_1791 ),
    .O(\disp/disp_data_out_mux0000168 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \disp/disp_data_out_mux00001682  (
    .I0(\disp/state_FSM_FFd1_1881 ),
    .I1(\disp/disp_data_out_mux0000131_1791 ),
    .O(\disp/disp_data_out_mux00001681_1794 )
  );
  MUXF5   \disp/disp_data_out_mux0000168_f5  (
    .I0(\disp/disp_data_out_mux00001681_1794 ),
    .I1(\disp/disp_data_out_mux0000168 ),
    .S(\disp/state_FSM_FFd3_1884 ),
    .O(\disp/disp_data_out_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>971  (
    .I0(\hd/ma_digs/num_sel_out [1]),
    .I1(\hd/ma_digs/the_dig/fours [1]),
    .I2(\hd/ma_digs/the_dig/sixes [1]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>971_3297 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>972  (
    .I0(\hd/ma_digs/num_sel_out [1]),
    .I1(\hd/ma_digs/the_dig/zeroes [1]),
    .I2(\hd/ma_digs/the_dig/twos [1]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>972_3298 )
  );
  MUXF5   \hd/ma_digs/the_dig/to_color_map_mux0000<1>97_f5  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<1>972_3298 ),
    .I1(\hd/ma_digs/the_dig/to_color_map_mux0000<1>971_3297 ),
    .S(\hd/ma_digs/num_sel_out [2]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>97 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>971  (
    .I0(\hd/ma_digs/num_sel_out [1]),
    .I1(\hd/ma_digs/the_dig/fours [0]),
    .I2(\hd/ma_digs/the_dig/sixes [0]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>971_3288 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>972  (
    .I0(\hd/ma_digs/num_sel_out [1]),
    .I1(\hd/ma_digs/the_dig/zeroes [0]),
    .I2(\hd/ma_digs/the_dig/twos [0]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>972_3289 )
  );
  MUXF5   \hd/ma_digs/the_dig/to_color_map_mux0000<0>97_f5  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<0>972_3289 ),
    .I1(\hd/ma_digs/the_dig/to_color_map_mux0000<0>971_3288 ),
    .S(\hd/ma_digs/num_sel_out [2]),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>97 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \xvga1/next_vblank431  (
    .I0(\xvga1/hreset ),
    .I1(\xvga1/next_vblank8_3825 ),
    .I2(\xvga1/next_vblank13_3823 ),
    .I3(\xvga1/vblank_3826 ),
    .O(\xvga1/next_vblank43 )
  );
  MUXF5   \xvga1/next_vblank43_f5  (
    .I0(\xvga1/next_vblank43 ),
    .I1(\a/ac97/Mmux__varindex0000_9 ),
    .S(\xvga1/vreset ),
    .O(\xvga1/next_vblank )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_rgb_mux0000102111 (
    .I0(\xvga1/vcount [0]),
    .I1(\xvga1/vcount [7]),
    .I2(\xvga1/vcount [3]),
    .I3(\xvga1/vcount [4]),
    .O(Mmux_rgb_mux0000102111_29)
  );
  MUXF5   Mmux_rgb_mux000010211_f5 (
    .I0(\a/ac97/Mmux__varindex0000_9 ),
    .I1(Mmux_rgb_mux0000102111_29),
    .S(\xvga1/vcount [9]),
    .O(Mmux_rgb_mux000010211)
  );
  LUT4 #(
    .INIT ( 16'h3323 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>15311  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<1>25_3294 ),
    .I1(\hd/ma_digs/num_sel_out [3]),
    .I2(\hd/ma_digs/num_sel_out [0]),
    .I3(\hd/ma_digs/the_dig/to_color_map_mux0000<1>40_3295 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>1531 )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<1>15312  (
    .I0(\hd/ma_digs/num_sel_out [0]),
    .I1(\hd/ma_digs/num_sel_out [3]),
    .I2(\hd/ma_digs/the_dig/to_color_map_mux0000<1>25_3294 ),
    .I3(\hd/ma_digs/the_dig/to_color_map_mux0000<1>40_3295 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>15311_3293 )
  );
  MUXF5   \hd/ma_digs/the_dig/to_color_map_mux0000<1>1531_f5  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<1>15311_3293 ),
    .I1(\hd/ma_digs/the_dig/to_color_map_mux0000<1>1531 ),
    .S(\hd/ma_digs/the_dig/to_color_map_mux0000<1>97 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<1>153 )
  );
  LUT4 #(
    .INIT ( 16'h3323 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>15311  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<0>25_3285 ),
    .I1(\hd/ma_digs/num_sel_out [3]),
    .I2(\hd/ma_digs/num_sel_out [0]),
    .I3(\hd/ma_digs/the_dig/to_color_map_mux0000<0>40_3286 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>1531 )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \hd/ma_digs/the_dig/to_color_map_mux0000<0>15312  (
    .I0(\hd/ma_digs/num_sel_out [0]),
    .I1(\hd/ma_digs/num_sel_out [3]),
    .I2(\hd/ma_digs/the_dig/to_color_map_mux0000<0>25_3285 ),
    .I3(\hd/ma_digs/the_dig/to_color_map_mux0000<0>40_3286 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>15311_3284 )
  );
  MUXF5   \hd/ma_digs/the_dig/to_color_map_mux0000<0>1531_f5  (
    .I0(\hd/ma_digs/the_dig/to_color_map_mux0000<0>15311_3284 ),
    .I1(\hd/ma_digs/the_dig/to_color_map_mux0000<0>1531 ),
    .S(\hd/ma_digs/the_dig/to_color_map_mux0000<0>97 ),
    .O(\hd/ma_digs/the_dig/to_color_map_mux0000<0>153 )
  );
  LUT4 #(
    .INIT ( 16'hAAAB ))
  \hd/ma_digs/ripple[1].un_blob/overlap_not000131  (
    .I0(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .I1(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge000124_2988 ),
    .I2(\xvga1/vcount [2]),
    .I3(\hd/ma_digs/ripple[0].un_blob/overlap_cmp_ge0001210_2987 ),
    .O(\hd/ma_digs/ripple[1].un_blob/overlap_not000131_3042 )
  );
  MUXF5   \hd/ma_digs/ripple[1].un_blob/overlap_not00013_f5  (
    .I0(\hd/ma_digs/ripple[1].un_blob/overlap_not000131_3042 ),
    .I1(\hd/ma_digs/ripple[1].un_blob/Mcompar_overlap_cmp_lt0000_cy [3]),
    .S(\xvga1/vcount [3]),
    .O(\hd/ma_digs/ripple[1].un_blob/overlap_not00013 )
  );
  LUT4 #(
    .INIT ( 16'hB391 ))
  \a/ac97/Mmux__varindex0000_6_f5_01  (
    .I0(\a/ac97/bit_count [1]),
    .I1(\a/ac97/bit_count [0]),
    .I2(\a/ac97/l_cmd_addr[16] ),
    .I3(\a/ac97/l_cmd_addr[17] ),
    .O(\a/ac97/Mmux__varindex0000_6_f5_0 )
  );
  LUT4 #(
    .INIT ( 16'hD080 ))
  \a/ac97/Mmux__varindex0000_6_f5_02  (
    .I0(\a/ac97/bit_count [0]),
    .I1(\a/ac97/l_cmd_addr[16] ),
    .I2(\a/ac97/bit_count [1]),
    .I3(\a/ac97/l_cmd_addr[17] ),
    .O(\a/ac97/Mmux__varindex0000_6_f5_01_362 )
  );
  MUXF5   \a/ac97/Mmux__varindex0000_6_f5_0_f5  (
    .I0(\a/ac97/Mmux__varindex0000_6_f5_01_362 ),
    .I1(\a/ac97/Mmux__varindex0000_6_f5_0 ),
    .S(\a/ac97/l_cmd_addr[19] ),
    .O(\a/ac97/Mmux__varindex0000_6_f51 )
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<5>111  (
    .I0(\xvga1/vcount [3]),
    .I1(\xvga1/vcount [4]),
    .LO(N272),
    .O(\hd/N8 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \hd/myblob/Msub_image_addr_addsub0000_xor<9>111  (
    .I0(\xvga1/vcount [6]),
    .I1(\xvga1/vcount [7]),
    .I2(\hd/N8 ),
    .I3(\xvga1/vcount [5]),
    .LO(N273),
    .O(\hd/N11 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \disp/Mshreg_control_14  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(\a/ac97/Mmux__varindex0000_9 ),
    .A2(led_5_OBUF_3517),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CE(\disp/state_cmp_eq0006 ),
    .CLK(\disp/clock_1761 ),
    .D(\disp/control[7] ),
    .Q(\disp/Mshreg_control_14_1711 )
  );
  FDE   \disp/control_14  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/Mshreg_control_14_1711 ),
    .Q(\disp/control_141_1764 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \disp/Mshreg_control_30  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(\a/ac97/Mmux__varindex0000_9 ),
    .A2(led_5_OBUF_3517),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CE(\disp/state_cmp_eq0006 ),
    .CLK(\disp/clock_1761 ),
    .D(\disp/control[23] ),
    .Q(\disp/Mshreg_control_30_1713 )
  );
  FDE   \disp/control_30  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/Mshreg_control_30_1713 ),
    .Q(\disp/control_301_1772 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \disp/Mshreg_control_22  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(\a/ac97/Mmux__varindex0000_9 ),
    .A2(led_5_OBUF_3517),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CE(\disp/state_cmp_eq0006 ),
    .CLK(\disp/clock_1761 ),
    .D(\disp/control[15] ),
    .Q(\disp/Mshreg_control_22_1712 )
  );
  FDE   \disp/control_22  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/Mshreg_control_22_1712 ),
    .Q(\disp/control_221_1768 )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \a/Mshreg_ready_sync_1  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(\a/ac97/Mmux__varindex0000_9 ),
    .A2(\a/ac97/Mmux__varindex0000_9 ),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CLK(clock_27mhz_IBUFG_1198),
    .D(\a/ac97/ready_497 ),
    .Q(\a/Mshreg_ready_sync_1_329 )
  );
  FD   \a/ready_sync_1  (
    .C(clock_27mhz_IBUFG_1198),
    .D(\a/Mshreg_ready_sync_1_329 ),
    .Q(\a/ready_sync [1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \disp/Mshreg_control_6  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(\a/ac97/Mmux__varindex0000_9 ),
    .A2(led_5_OBUF_3517),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CE(\disp/state_cmp_eq0006 ),
    .CLK(\disp/clock_1761 ),
    .D(\a/ac97/Mmux__varindex0000_9 ),
    .Q(\disp/Mshreg_control_6_1714 )
  );
  FDE   \disp/control_6  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/Mshreg_control_6_1714 ),
    .Q(\disp/control_61_1776 )
  );
  SRL16E_1 #(
    .INIT ( 16'h0000 ))
  \a/ac97/Mshreg_left_in_data_4  (
    .A0(\a/ac97/Mmux__varindex0000_9 ),
    .A1(led_5_OBUF_3517),
    .A2(\a/ac97/Mmux__varindex0000_9 ),
    .A3(\a/ac97/Mmux__varindex0000_9 ),
    .CE(\a/ac97/left_in_data_and0000 ),
    .CLK(ac97_bit_clock_BUFGP_1106),
    .D(\a/ac97/left_in_data[0] ),
    .Q(\a/ac97/Mshreg_left_in_data_4_388 )
  );
  FDE_1   \a/ac97/left_in_data_4  (
    .C(ac97_bit_clock_BUFGP_1106),
    .CE(\a/ac97/left_in_data_and0000 ),
    .D(\a/ac97/Mshreg_left_in_data_4_388 ),
    .Q(\a/ac97/left_in_data[4] )
  );
  FDSE   \disp/dreset_shift1  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\a/ac97/Mmux__varindex0000_9 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift1_1862 )
  );
  FDSE   \disp/dreset_shift2  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/dreset_shift1_1862 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift2_1863 )
  );
  FDSE   \disp/dreset_shift3  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/dreset_shift2_1863 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift3_1864 )
  );
  FDSE   \disp/dreset_shift4  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/dreset_shift3_1864 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift4_1865 )
  );
  FDSE   \disp/dreset_shift5  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/dreset_shift4_1865 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift5_1866 )
  );
  FDSE   \disp/dreset_shift6  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/dreset_shift5_1866 ),
    .S(\disp/dreset ),
    .Q(\disp/dreset_shift6_1867 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/control_141  (
    .I0(\disp/control_141_1764 ),
    .I1(\disp/dreset_shift6_1867 ),
    .O(\disp/control_1411 )
  );
  FDSE   \disp/control_142  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_1411 ),
    .S(\disp/dreset ),
    .Q(\disp/control_142_1766 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/control_221  (
    .I0(\disp/control_221_1768 ),
    .I1(\disp/dreset_shift6_1867 ),
    .O(\disp/control_2211 )
  );
  FDSE   \disp/control_222  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_2211 ),
    .S(\disp/dreset ),
    .Q(\disp/control_222_1770 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/control_301  (
    .I0(\disp/control_301_1772 ),
    .I1(\disp/dreset_shift6_1867 ),
    .O(\disp/control_3011 )
  );
  FDSE   \disp/control_302  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_3011 ),
    .S(\disp/dreset ),
    .Q(\disp/control_302_1774 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \disp/control_61  (
    .I0(\disp/control_61_1776 ),
    .I1(\disp/dreset_shift6_1867 ),
    .O(\disp/control_611 )
  );
  FDSE   \disp/control_62  (
    .C(\disp/clock_1761 ),
    .CE(\disp/state_cmp_eq0006 ),
    .D(\disp/control_611 ),
    .S(\disp/dreset ),
    .Q(\disp/control_62_1778 )
  );
  grad_div   my_div (
    .rfd(NLW_my_div_rfd_UNCONNECTED),
    .clk(clock_65mhz),
    .dividend({dividend[17], dividend[16], dividend[15], dividend[14], dividend[13], dividend[12], dividend[11], dividend[10], dividend[9], 
dividend[8], dividend[7], dividend[6], dividend[5], dividend[4], dividend[3], dividend[2], dividend[1], dividend[0]}),
    .quotient({\NLW_my_div_quotient<17>_UNCONNECTED , \NLW_my_div_quotient<16>_UNCONNECTED , \NLW_my_div_quotient<15>_UNCONNECTED , 
\NLW_my_div_quotient<14>_UNCONNECTED , \NLW_my_div_quotient<13>_UNCONNECTED , \NLW_my_div_quotient<12>_UNCONNECTED , 
\NLW_my_div_quotient<11>_UNCONNECTED , \NLW_my_div_quotient<10>_UNCONNECTED , \NLW_my_div_quotient<9>_UNCONNECTED , 
\NLW_my_div_quotient<8>_UNCONNECTED , quotient[7], quotient[6], quotient[5], quotient[4], quotient[3], quotient[2], quotient[1], quotient[0]}),
    .divisor({divisor[9], divisor[8], divisor[7], divisor[6], divisor[5], divisor[4], divisor[3], divisor[2], divisor[1], divisor[0]}),
    .fractional({\NLW_my_div_fractional<9>_UNCONNECTED , \NLW_my_div_fractional<8>_UNCONNECTED , \NLW_my_div_fractional<7>_UNCONNECTED , 
\NLW_my_div_fractional<6>_UNCONNECTED , \NLW_my_div_fractional<5>_UNCONNECTED , \NLW_my_div_fractional<4>_UNCONNECTED , 
\NLW_my_div_fractional<3>_UNCONNECTED , \NLW_my_div_fractional<2>_UNCONNECTED , \NLW_my_div_fractional<1>_UNCONNECTED , 
\NLW_my_div_fractional<0>_UNCONNECTED })
  );
  fft16384u   \a1/fft  (
    .ce(\a1/_or0000 ),
    .rfd(\NLW_a1/fft_rfd_UNCONNECTED ),
    .start(led_5_OBUF_3517),
    .fwd_inv(led_5_OBUF_3517),
    .dv(\NLW_a1/fft_dv_UNCONNECTED ),
    .done(\NLW_a1/fft_done_UNCONNECTED ),
    .clk(clock_27mhz_IBUFG_1198),
    .busy(\NLW_a1/fft_busy_UNCONNECTED ),
    .fwd_inv_we(reset),
    .edone(\NLW_a1/fft_edone_UNCONNECTED ),
    .xn_re({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 }),
    .xk_im({\NLW_a1/fft_xk_im<26>_UNCONNECTED , \NLW_a1/fft_xk_im<25>_UNCONNECTED , \NLW_a1/fft_xk_im<24>_UNCONNECTED , 
\NLW_a1/fft_xk_im<23>_UNCONNECTED , \a1/xk_im [22], \a1/xk_im [21], \a1/xk_im [20], \a1/xk_im [19], \a1/xk_im [18], \a1/xk_im [17], \a1/xk_im [16], 
\a1/xk_im [15], \a1/xk_im [14], \a1/xk_im [13], \a1/xk_im [12], \a1/xk_im [11], \a1/xk_im [10], \a1/xk_im [9], \a1/xk_im [8], \a1/xk_im [7], 
\a1/xk_im [6], \a1/xk_im [5], \a1/xk_im [4], \a1/xk_im [3], \a1/xk_im [2], \a1/xk_im [1], \a1/xk_im [0]}),
    .xn_index({\NLW_a1/fft_xn_index<13>_UNCONNECTED , \NLW_a1/fft_xn_index<12>_UNCONNECTED , \NLW_a1/fft_xn_index<11>_UNCONNECTED , 
\NLW_a1/fft_xn_index<10>_UNCONNECTED , \NLW_a1/fft_xn_index<9>_UNCONNECTED , \NLW_a1/fft_xn_index<8>_UNCONNECTED , 
\NLW_a1/fft_xn_index<7>_UNCONNECTED , \NLW_a1/fft_xn_index<6>_UNCONNECTED , \NLW_a1/fft_xn_index<5>_UNCONNECTED , \NLW_a1/fft_xn_index<4>_UNCONNECTED 
, \NLW_a1/fft_xn_index<3>_UNCONNECTED , \NLW_a1/fft_xn_index<2>_UNCONNECTED , \NLW_a1/fft_xn_index<1>_UNCONNECTED , 
\NLW_a1/fft_xn_index<0>_UNCONNECTED }),
    .xk_re({\NLW_a1/fft_xk_re<26>_UNCONNECTED , \NLW_a1/fft_xk_re<25>_UNCONNECTED , \NLW_a1/fft_xk_re<24>_UNCONNECTED , 
\NLW_a1/fft_xk_re<23>_UNCONNECTED , \a1/xk_re [22], \a1/xk_re [21], \a1/xk_re [20], \a1/xk_re [19], \a1/xk_re [18], \a1/xk_re [17], \a1/xk_re [16], 
\a1/xk_re [15], \a1/xk_re [14], \a1/xk_re [13], \a1/xk_re [12], \a1/xk_re [11], \a1/xk_re [10], \a1/xk_re [9], \a1/xk_re [8], \a1/xk_re [7], 
\a1/xk_re [6], \a1/xk_re [5], \a1/xk_re [4], \a1/xk_re [3], \a1/xk_re [2], \a1/xk_re [1], \a1/xk_re [0]}),
    .xn_im({\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , 
\a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 , \a/ac97/Mmux__varindex0000_9 }),
    .xk_index({\a1/xk_index [13], \a1/xk_index [12], \a1/xk_index [11], \a1/xk_index [10], \a1/xk_index [9], \a1/xk_index [8], \a1/xk_index [7], 
\a1/xk_index [6], \a1/xk_index [5], \a1/xk_index [4], \a1/xk_index [3], \a1/xk_index [2], \a1/xk_index [1], \a1/xk_index [0]})
  );
  red_hud   \hd/ma_digs/the_dig/digit_map  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/the_dig/to_color_map [1], \hd/ma_digs/the_dig/to_color_map [0]}),
    .douta({\hd/digit_pixel [23], \hd/digit_pixel [22], \hd/digit_pixel [21], \hd/digit_pixel [20], \hd/digit_pixel [19], \hd/digit_pixel [18], 
\hd/digit_pixel [17], \hd/digit_pixel [16]})
  );
  nine_img   \hd/ma_digs/the_dig/img_nueve  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/nines [1], \hd/ma_digs/the_dig/nines [0]})
  );
  eight_img   \hd/ma_digs/the_dig/img_ocho  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/eights [1], \hd/ma_digs/the_dig/eights [0]})
  );
  seven_img   \hd/ma_digs/the_dig/img_siete  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/sevens [1], \hd/ma_digs/the_dig/sevens [0]})
  );
  six_img   \hd/ma_digs/the_dig/img_seis  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/sixes [1], \hd/ma_digs/the_dig/sixes [0]})
  );
  five_img   \hd/ma_digs/the_dig/img_cinco  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/fives [1], \hd/ma_digs/the_dig/fives [0]})
  );
  four_img   \hd/ma_digs/the_dig/img_cuatro  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/fours [1], \hd/ma_digs/the_dig/fours [0]})
  );
  three_img   \hd/ma_digs/the_dig/img_tres  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/threes [1], \hd/ma_digs/the_dig/threes [0]})
  );
  two_img   \hd/ma_digs/the_dig/img_dos  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/twos [1], \hd/ma_digs/the_dig/twos [0]})
  );
  one_img   \hd/ma_digs/the_dig/img_uno  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/ones [1], \hd/ma_digs/the_dig/ones [0]})
  );
  zero_img   \hd/ma_digs/the_dig/img_cero  (
    .clka(clock_65mhz),
    .addra({\hd/ma_digs/address_out [10], \hd/ma_digs/address_out [9], \hd/ma_digs/address_out [8], \hd/ma_digs/address_out [7], 
\hd/ma_digs/address_out [6], \hd/ma_digs/address_out [5], \hd/ma_digs/address_out [4], \hd/ma_digs/address_out [3], \hd/ma_digs/address_out [2], 
\hd/ma_digs/address_out [1], \hd/ma_digs/address_out [0]}),
    .douta({\hd/ma_digs/the_dig/zeroes [1], \hd/ma_digs/the_dig/zeroes [0]})
  );
  hud_img   \hd/thehud/rom2  (
    .clka(clock_65mhz),
    .addra({\hd/thehud/image_addr [16], \hd/thehud/image_addr [15], \hd/thehud/image_addr [14], \hd/thehud/image_addr [13], \hd/thehud/image_addr [12]
, \hd/thehud/image_addr [11], \hd/thehud/image_addr [10], \hd/thehud/image_addr [9], \xvga1/hcount [8], \xvga1/hcount [7], \xvga1/hcount [6], 
\xvga1/hcount [5], \xvga1/hcount [4], \xvga1/hcount [3], \xvga1/hcount [2], \xvga1/hcount [1], \xvga1/hcount [0]}),
    .douta({\hd/thehud/image_bits [1], \hd/thehud/image_bits [0]})
  );
  red_hud   \hd/thehud/rcm  (
    .clka(clock_65mhz),
    .addra({\hd/thehud/image_bits [1], \hd/thehud/image_bits [0]}),
    .douta({\hd/thehud/red_mapped [7], \hd/thehud/red_mapped [6], \hd/thehud/red_mapped [5], \hd/thehud/red_mapped [4], \hd/thehud/red_mapped [3], 
\hd/thehud/red_mapped [2], \hd/thehud/red_mapped [1], \hd/thehud/red_mapped [0]})
  );
  image_rom   \hd/myblob/rom1  (
    .clka(clock_65mhz),
    .addra({\hd/myblob/image_addr [16], \hd/myblob/image_addr [15], \hd/myblob/image_addr [14], \hd/myblob/image_addr [13], \hd/myblob/image_addr [12]
, \hd/myblob/image_addr [11], \hd/myblob/image_addr [10], \hd/myblob/image_addr [9], \hd/myblob/image_addr [8], \hd/myblob/image_addr [7], 
\hd/myblob/image_addr [6], \hd/myblob/image_addr [5], \hd/myblob/image_addr [4], \hd/myblob/image_addr [3], \hd/myblob/image_addr [2], 
\hd/myblob/image_addr [1], \hd/myblob/image_addr [0]}),
    .douta({\hd/myblob/image_bits [5], \hd/myblob/image_bits [4], \hd/myblob/image_bits [3], \hd/myblob/image_bits [2], \hd/myblob/image_bits [1], 
\hd/myblob/image_bits [0]})
  );
  red_table   \hd/myblob/rcm  (
    .clka(clock_65mhz),
    .addra({\hd/myblob/image_bits [5], \hd/myblob/image_bits [4], \hd/myblob/image_bits [3], \hd/myblob/image_bits [2], \hd/myblob/image_bits [1], 
\hd/myblob/image_bits [0]}),
    .douta({\hd/myblob/red_mapped [7], \hd/myblob/red_mapped [6], \hd/myblob/red_mapped [5], \hd/myblob/red_mapped [4], \hd/myblob/red_mapped [3], 
\hd/myblob/red_mapped [2], \hd/myblob/red_mapped [1], \hd/myblob/red_mapped [0]})
  );
  green_table   \hd/myblob/gcm  (
    .clka(clock_65mhz),
    .addra({\hd/myblob/image_bits [5], \hd/myblob/image_bits [4], \hd/myblob/image_bits [3], \hd/myblob/image_bits [2], \hd/myblob/image_bits [1], 
\hd/myblob/image_bits [0]}),
    .douta({\hd/myblob/green_mapped [7], \hd/myblob/green_mapped [6], \hd/myblob/green_mapped [5], \hd/myblob/green_mapped [4], 
\hd/myblob/green_mapped [3], \hd/myblob/green_mapped [2], \hd/myblob/green_mapped [1], \hd/myblob/green_mapped [0]})
  );
  blue_table   \hd/myblob/bcm  (
    .clka(clock_65mhz),
    .addra({\hd/myblob/image_bits [5], \hd/myblob/image_bits [4], \hd/myblob/image_bits [3], \hd/myblob/image_bits [2], \hd/myblob/image_bits [1], 
\hd/myblob/image_bits [0]}),
    .douta({\hd/myblob/blue_mapped [7], \hd/myblob/blue_mapped [6], \hd/myblob/blue_mapped [5], \hd/myblob/blue_mapped [4], \hd/myblob/blue_mapped [3]
, \hd/myblob/blue_mapped [2], \hd/myblob/blue_mapped [1], \hd/myblob/blue_mapped [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
