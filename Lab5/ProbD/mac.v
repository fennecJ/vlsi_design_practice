


module mac(clk,rst,clear,w_w,w_in,if_w,if_in,out);

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

  integer i;
 // ---------------------- Write down Your design below  ---------------------- //
 always @(posedge clk or posedge rst )begin
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
   if(rst)
   out = 34'b0;
   else
   out = feature[2]*weight[2]+feature[1]*weight[1]+feature[0]*weight[0];
 end
  
endmodule
