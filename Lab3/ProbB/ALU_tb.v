/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : CHLu     ---------------------- //
// ---------------------- Version : v.2.01  ---------------------- //
// ---------------------- Date : 2021.03.02 ---------------------- //
// ---------------------- ALU reference tb    -------------------- //
/////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

`include "ALU.v"
// ---------------------- define ---------------------- //

`define DataSize  32
`define ALUopSize 5
//define ALUop
`define ADDop     5'b00000
`define SUBop     5'b00001
`define ANDop     5'b00010
`define ORop      5'b00011
`define XORop     5'b00100
`define NORop     5'b00101
`define SRLop     5'b00110
`define ROTRop    5'b00111
//students should implement the following op code
`define NOTop     5'b01000
`define NANDop    5'b01001
`define MAXop     5'b01010
`define MINop     5'b01011
`define ABSop     5'b01100
`define SLTSop    5'b01101
`define SLLop     5'b01110
`define ROTLop    5'b01111
`define ADDUop    5'b10000
`define SRLUop    5'b10001

module ALU_tb;

// ----------------------   reg   ---------------------- //
reg                     alu_enable;
reg   [`ALUopSize-1:0]  alu_op;
reg   [`DataSize-1:0]   src1;
reg   [`DataSize-1:0]   src2;

// ----------------------   wire  ---------------------- //
wire   [`DataSize-1:0]  alu_out;
wire                    alu_overflow;

ALU alu (.alu_enable(alu_enable), .alu_op(alu_op), .src1(src1), .src2(src2),
         .alu_out(alu_out), .alu_overflow(alu_overflow));

//monitor
initial begin
  $monitor("alu_enable = %b, alu_op = %b,\nsrc1    = %b,  | %d\nsrc2    = %b,  | %d\nalu_out = %b,alu_overflow = %b\n", alu_enable, alu_op, src1, src1, src2, src2,alu_out, alu_overflow);
end

initial begin
  alu_enable = 1; alu_op = `ADDop;  src1 = 32'hff0f_0f0f; src2 = 32'h8000_0000;
#10               alu_op = `SUBop;  src1 = 32'h0f0f_0f0f; src2 = 32'h5000_0000;
#10               alu_op = `ANDop;  src1 = 32'h0f0f_0f0f; src2 = 32'h000f_000f;
#10               alu_op = `ORop;   src1 = 32'h0f0f_0f0f; src2 = 32'h00f0_00f0;
#10               alu_op = `XORop;  src1 = 32'h0f0f_0f0f; src2 = 32'hf0f0_0f0f;
#10               alu_op = `NORop;  src1 = 32'h0f0f_0f0f; src2 = 32'hf0f0_0f0f;
#10               alu_op = `SRLop;  src1 = 32'hff0f_0f0f; src2 = 32'h0000_0002;
#10               alu_op = `ROTRop; src1 = 32'h0f0f_0f0f; src2 = 32'h0000_0003;
#10				  alu_op = `NOTop;  src1 = 32'h0f0f_0f0f; src2 = 32'h0000_0000;
#10				  alu_op = `NANDop;  src1 = 32'haf3c_ff00; src2 = 32'h50c3_ff00;
#10				  alu_op = `MAXop;  src1 = 32'h8000_1234; src2 = 32'h0fff_0111;
#10				  alu_op = `NOTop;  src1 = 32'h0f0f_0f0f; src2 = 32'H0000_0000;
//  Done by students

#10  $finish;
end

initial begin
  `ifdef FSDB
  $fsdbDumpfile("ALU.fsdb");
  $fsdbDumpvars;
  `endif
  `ifdef VCD
  $dumpfile("ALU.vcd");
  $dumpvars;
  `endif
end
endmodule
