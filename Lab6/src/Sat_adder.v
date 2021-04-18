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
reg signed [`DATA_BITS*2+3:0] tmp;
// ---------------------- Write down Your design below  ---------------------- //
always @(in0 or in1 or in2)begin
    tmp=in0+in1+in2;
    /*
    if(tmp>255)
    sum = `DATA_BITS'd255;
    else if(tmp<0)
    sum = `DATA_BITS'b0;
    else
    sum = in0+in1+in2;
    */
    if(tmp>255)
    sum = 255;
    else if(tmp<0)
    sum = 0;
    else
    sum = in0+in1+in2;
end
endmodule
