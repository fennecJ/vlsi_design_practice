module grayscale(color,gray);
  input [23:0] color;
  output [7:0] gray;
  //reg [23:16]b;
//  reg [15:8]g;
//  reg [7:0]r;
  reg [7:0] gray;
  reg [7:0] tmp;
  reg [7:0] r,g,b;
  reg [11:0] test1;
/************ your code **************/


always @(color) begin
{r,g,b} = {color[7:0],color[15:8],color[23:16]};
test1 =  (r<<2)+(r)+(g<<3)+(g)+(b<<1);
test1 = (test1[3]==1'b1) ? (test1>>4)+12'b1 : test1>>4;
gray = {test1[7:0]};
end

/************************************/

endmodule
