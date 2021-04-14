/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Saturation adder  ---------------------- //
// ------------------ Feb. 2021 Eric authored -------------------- //
/////////////////////////////////////////////////////////////////////

`include "define.vh"

module Pad(en, Data_in, Data_out);

input                   en;
input  [`DATA_BITS-1:0] Data_in;
output [`DATA_BITS-1:0] Data_out;
// ----------------------- Don't modify following code ----------------------- //
assign Data_out = en ? `DATA_BITS'h0ff : Data_in;

endmodule