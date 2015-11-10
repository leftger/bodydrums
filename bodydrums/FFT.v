/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2007 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// The synthesis directives "translate_off/translate_on" specified below are
// supported by Xilinx, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

// You must compile the wrapper file FFT.v when simulating
// the core, FFT. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

`timescale 1ns/1ps

module FFT(
	clk,
	ce,
	reset,
	start,
	fwd_inv,
	mrd,
	mwr,
	xn_re,
	xn_im,
	ovflo,
	done,
	edone,
	busy,
	xk_re,
	xk_im);


input clk;
input ce;
input reset;
input start;
input fwd_inv;
input mrd;
input mwr;
input [15 : 0] xn_re;
input [15 : 0] xn_im;
output ovflo;
output done;
output edone;
output busy;
output [15 : 0] xk_re;
output [15 : 0] xk_im;

// synthesis translate_off

      VFFT32_V3_0 #(
		.BUTTERFLY_PRECISION(16),
		.C_FAMILY_INT(1),
		.DATA_MEMORY("distributed_mem"),
		.MEMORY_ARCHITECTURE(3),
		.MULT_TYPE(1),
		.PHASE_FACTOR_PRECISION(16),
		.SCALING_SCHEDULE_MEM1("FFT_mem1.mif"),
		.SCALING_SCHEDULE_MEM2("FFT_mem2.mif"))
	inst (
		.CLK(clk),
		.CE(ce),
		.RESET(reset),
		.START(start),
		.FWD_INV(fwd_inv),
		.MRD(mrd),
		.MWR(mwr),
		.XN_RE(xn_re),
		.XN_IM(xn_im),
		.OVFLO(ovflo),
		.DONE(done),
		.EDONE(edone),
		.BUSY(busy),
		.XK_RE(xk_re),
		.XK_IM(xk_im),
		.IO(),
		.EIO());


// synthesis translate_on

// XST black box declaration
// box_type "black_box"
// synthesis attribute box_type of FFT is "black_box"

endmodule

