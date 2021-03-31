module grayscale(d,q);
  input [23:0] d;
  output [7:0] q;
//  reg [23:16]b;
//  reg [15:8]g;
//  reg [7:0]r;
  reg [7:0] q;
  reg [7:0] tmp;
  reg [7:0] r,g,b;
  reg [11:0] test1;
/************ your code **************/


always @(d) begin
{r,g,b} = {d[7:0],d[15:8],d[23:16]};
test1 =  (r<<2)+(r)+(g<<3)+(g)+(b<<1);
test1 = (test1[3]==1'b1) ? (test1>>4)+12'b1 : test1>>4;
q = {test1[7:0]};
end

/************************************/

endmodule
