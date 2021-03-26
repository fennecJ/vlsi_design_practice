/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Editor : Michael  ---------------------- //
// ---------------------- Version : v.1.00  ---------------------- //
// ---------------------- Date : 2021.02.19 ---------------------- //
// ---------------------- mini_vending      ---------------------- //
/////////////////////////////////////////////////////////////////////

module mini_vending(clk,rst,en,money,beverage,change,finish);
  // ------- I/O port --------- //
  input             clk,rst,en;
  input       [5:0] money,beverage;
  output reg  [5:0] change;
  output reg        finish;
  // -------------------------- //
  reg [1:0] phase;
  reg [5:0] money_temp;
 // --------------------------- //

  // phase0 : insert money
   always@(posedge rst or posedge clk)begin
       if(rst) begin
          phase <= 2'd0;
          money_temp <= 6'd0;
       end
       else if(phase == 2'd0 && en == 1'b1) begin
         phase <= 2'd1;
         money_temp <= money;
       end
       else if(phase == 2'd1) begin
          phase <= 2'd2;
          money_temp <= money_temp - beverage; 
       end
      else if(phase == 2'd2) begin
          phase <= 2'd0;
          money_temp <= 6'd0;
     end
end
always@(*)begin    
	if(phase == 2'd2) begin
		change = money_temp;
		finish = 1'b1;
	 end
	 else begin
		change = money_temp;
        finish = 1'b0;
end
end
endmodule
