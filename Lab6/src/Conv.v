/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Convolution module---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include "define.vh"

module Conv(clk, rst, clear, w_w, w_in, if_w, if_in, result);

// ---------------------- input  ---------------------- //
input                     clk, rst, clear;
input                     w_w, if_w;
input  [`DATA_BITS-1:0]    w_in;
input  [`DATA_BITS-1:0]    if_in;
output [`DATA_BITS*2+1:0]  result;

// -----------------------  reg  ----------------------- //
reg signed [`DATA_BITS-1:0]   weight [2:0];
reg signed [`DATA_BITS-1:0]   feature [2:0];

// ---------------------- Write down Your design below  ---------------------- //

endmodule
