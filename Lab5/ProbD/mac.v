
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

 // ---------------------- Write down Your design below  ---------------------- //
 

  
endmodule
