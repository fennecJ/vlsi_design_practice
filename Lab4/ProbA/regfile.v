/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- Register File     ---------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

// ---------------------- define ---------------------- //
`define AddrSize  6
`define DataSize  32
`define RegSize   64

// ---------------------------------------------------- //
module regfile (clk, rst, reg_enable, reg_write, src1_addr, src2_addr,
				write_addr, write_data, src1, src2);

// ---------------------- input  ---------------------- //
input clk;
input rst;
input reg_enable;
input reg_write;

input [`AddrSize-1:0] src1_addr;
input [`AddrSize-1:0] src2_addr;
input [`AddrSize-1:0] write_addr;
input [`DataSize-1:0] write_data;

// ---------------------- output ---------------------- //
output [`DataSize-1:0] src1;
output [`DataSize-1:0] src2;

// ----------------------  reg   ---------------------- //
reg [`DataSize-1:0] src1;
reg [`DataSize-1:0] src2;
reg [`DataSize-1:0] REG [`RegSize-1:0];

integer i;

// ----------please write your code here--------------- //
always@(posedge clk or posedge rst)
begin
	if(i=0;<`RegSize;i=i+1)
		REG[i]<=32'b0;
	src1<=32'b0;
	src2<=32'b0;


endmodule
