/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ----------------------   Pooling module  ---------------------- //
// ------------------- Feb. 2021 Eric authored ------------------- //
/////////////////////////////////////////////////////////////////////
`include  "define.vh"

module Pooling(
  clk,
  rst,
  en,
  Data_in,
  Data_out
);

input clk;
input rst;
input en;
input [`DATA_BITS-1:0] Data_in;
output [`DATA_BITS-1:0] Data_out;
reg    [`DATA_BITS-1:0] max;
reg    s;
reg    [`DATA_BITS-1:0] Data_out;

// ---------------------- Write down Your design below  ---------------------- //
always@(posedge clk or posedge rst)begin
if(rst)
      max <= `DATA_BITS'b0;
else  if(en)
      max<=(max<Data_in)?Data_in:max;
      else
	    max<=`DATA_BITS'b0;
	    
end

always@(*)
Data_out=max;


endmodule



