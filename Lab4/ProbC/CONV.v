/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ----------------------    Convolution    ---------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

// ---------------------- define ---------------------- //

 

module CONV(clk, rst, w_w, if_w, w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, w_in6, w_in7, w_in8,
					if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, if_in6, if_in7, if_in8, out);
				
  // ---------------------- input  ---------------------- //
  input			clk;
  input			rst;
  input			w_w;
  input			if_w;
  input  signed	[`Pixel_DataSize-1:0]	  w_in0, w_in1, w_in2, w_in3, w_in4, w_in5, w_in6, w_in7, w_in8;
  input  signed	[`Pixel_DataSize-1:0]	  if_in0, if_in1, if_in2, if_in3, if_in4, if_in5, if_in6, if_in7, if_in8;

  // ---------------------- output ---------------------- //
  output   signed	[`Pixel_DataSize*2:0]	  out;

  // ----------------------  reg   ---------------------- //
  reg signed [`Pixel_DataSize-1:0] w_in[8:0],if_in[8:0];
  integer i;
  // ---------------------- Write down Your design below  ---------------------- //
  
  endmodule
