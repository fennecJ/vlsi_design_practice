/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Saturation adder  ---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include "define.vh"

module Sat_adder(in0, in1, in2, sum);

input  signed [`DATA_BITS*2+1:0] in0, in1, in2;
output signed [`DATA_BITS-1:0]   sum;
reg  signed [`DATA_BITS-1:0]   sum;
reg signed [22:0] tmp;
// ---------------------- Write down Your design below  ---------------------- //
always @(*)begin
  tmp = in0 + in1 + in2;
  if(tmp >= $signed(23'd255))
    sum = `DATA_BITS'd255;
  else if(tmp <= $signed(23'd0))
    sum = `DATA_BITS'd0;
  else
    sum = in0 + in1 + in2;
end

endmodule
