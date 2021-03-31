


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

  integer i;
 // ---------------------- Write down Your design below  ---------------------- //
 always @(posedge clk or posedge rst or posedge clear)begin
   if(rst)begin
    out <= 34'b0;
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
 end
always @(*)begin
    if(w_w) begin
      weight[2] = weight[1];
      weight[1] = weight[0];
      weight[0] = w_in;
    end


end
  
endmodule
