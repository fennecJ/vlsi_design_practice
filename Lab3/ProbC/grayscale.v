module grayscale(color,gray);
  input [23:0] color;
  output [7:0] gray;
  //reg [23:16]b;
//  reg [15:8]g;
//  reg [7:0]r;
  reg [7:0] gray;
  reg [7:0] tmp;
  reg [7:0] mask [4:0];
  integer test1,test2,r,g,b;
/************ your code **************/


always @(*) begin
b = color[23:16];
g = color[15:8];
r = color[7:0];
test2 = 0;

test1 =  (r<<2)+(r)+(g<<3)+(g)+(b<<1);
test2 = test1[3];
gray  = (test1>>4)+test2;

end



/************************************/

endmodule
