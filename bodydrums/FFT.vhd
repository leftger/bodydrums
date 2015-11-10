--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2007 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file FFT.vhd when simulating
-- the core, FFT. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY FFT IS
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	reset: IN std_logic;
	start: IN std_logic;
	fwd_inv: IN std_logic;
	mrd: IN std_logic;
	mwr: IN std_logic;
	xn_re: IN std_logic_VECTOR(15 downto 0);
	xn_im: IN std_logic_VECTOR(15 downto 0);
	ovflo: OUT std_logic;
	done: OUT std_logic;
	edone: OUT std_logic;
	busy: OUT std_logic;
	xk_re: OUT std_logic_VECTOR(15 downto 0);
	xk_im: OUT std_logic_VECTOR(15 downto 0));
END FFT;

ARCHITECTURE FFT_a OF FFT IS
-- synthesis translate_off
component wrapped_FFT
	port (
	clk: IN std_logic;
	ce: IN std_logic;
	reset: IN std_logic;
	start: IN std_logic;
	fwd_inv: IN std_logic;
	mrd: IN std_logic;
	mwr: IN std_logic;
	xn_re: IN std_logic_VECTOR(15 downto 0);
	xn_im: IN std_logic_VECTOR(15 downto 0);
	ovflo: OUT std_logic;
	done: OUT std_logic;
	edone: OUT std_logic;
	busy: OUT std_logic;
	xk_re: OUT std_logic_VECTOR(15 downto 0);
	xk_im: OUT std_logic_VECTOR(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_FFT use entity XilinxCoreLib.vfft32_v3_0(behavioral)
		generic map(
			butterfly_precision => 16,
			c_family_int => 1,
			data_memory => "distributed_mem",
			phase_factor_precision => 16,
			memory_architecture => 3,
			mult_type => 1,
			scaling_schedule_mem2 => "FFT_mem2.mif",
			scaling_schedule_mem1 => "FFT_mem1.mif");
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_FFT
		port map (
			clk => clk,
			ce => ce,
			reset => reset,
			start => start,
			fwd_inv => fwd_inv,
			mrd => mrd,
			mwr => mwr,
			xn_re => xn_re,
			xn_im => xn_im,
			ovflo => ovflo,
			done => done,
			edone => edone,
			busy => busy,
			xk_re => xk_re,
			xk_im => xk_im);
-- synthesis translate_on

END FFT_a;

