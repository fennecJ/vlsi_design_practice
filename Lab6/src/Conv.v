/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------- Convolution module---------------------- //
// ----------------- Feb. 2020 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include "define.vh"
`define RBITS `DATA_BITS*2+2
`define TBITS `DATA_BITS*2
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

reg signed [`DATA_BITS*2+1:0] result;
integer i;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
      //$display("%h %h %h",weight[2],weight[1],weight[0]);
   if(rst)begin
    for(i = 0; i < 3;i=i+1)begin
      weight[i] <= `DATA_BITS'b0;
      feature[i] <= `DATA_BITS'b0;
    end
   end
    else if(clear)begin
      for(i = 0; i < 3;i=i+1)begin
      weight[i] <= `DATA_BITS'b0;
      feature[i] <= `DATA_BITS'b0;
      end
    end
    else begin
       if(w_w) begin  
      weight[2] <= weight[1];
      weight[1] <= weight[0];
      weight[0] <= w_in;
      end
    if(if_w) begin
      feature[2] <= feature[1];
      feature[1] <= feature[0];
      feature[0] <= if_in;
    end      
    end
 end


always @(*)
  result = feature[2]*weight[2]+feature[1]*weight[1]+feature[0]*weight[0];


endmodule
