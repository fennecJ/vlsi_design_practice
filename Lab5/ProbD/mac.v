


module mac(clk,rst,clear,w_w,w_in,if_w,if_in,out);
`define DATA_BIT 16
  // ---------------------- input  ---------------------- //
 input	clk;
 input	rst;
 input	clear;
 input	w_w;
 input	if_w;	
 input [`DATA_BIT-1:0] w_in;
 input [`DATA_BIT-1:0] if_in;
 // ---------------------- output  ---------------------- //
 output[`DATA_BIT*2+1:0]out;
 
 // -----------------------  reg  ----------------------- //
 reg signed [`DATA_BIT-1:0] weight [2:0];
 reg signed [`DATA_BIT-1:0] feature [2:0];
 reg signed [`DATA_BIT*2+1:0] out;
 reg signed [`DATA_BIT*2-1:0] tmp;
  integer i;
 // ---------------------- Write down Your design below  ---------------------- //
 always @(posedge clk)begin
   if(rst)begin
    for(i = 0; i < 3;i=i+1)begin
      weight[i] <= `DATA_BIT'b0;
      feature[i] <= `DATA_BIT'b0;
    end
   end
    else if(clear)begin
      for(i = 0; i < 3;i=i+1)begin
      weight[i] <= `DATA_BIT'b0;
      feature[i] <= `DATA_BIT'b0;
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
 always @(*)begin
   if(rst) begin
   tmp = 32'b0;
   out = 34'b0;
   end
   else begin
   tmp = feature[2]*weight[2]+feature[1]*weight[1]+feature[0]*weight[0];
   out = (tmp<0)?({2'b11,tmp}):({2'b0,tmp});
   end
 end
  
endmodule
