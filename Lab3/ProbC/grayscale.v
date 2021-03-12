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
//gray = gray + tmp[7:2];
//gray = gray + r[1]^r[3] + g[8]^g[11] + b[18];
/*
gray =((r&8'hfc)>>2)+
	((r&8'hf0)>>4)+
	((g&8'hfe)>>1)+
	((g&8'hf0)>>4)+
	((b&8'hf7)>>3);*/

test1 =  (r<<2)+(r)+(g<<3)+(g)+(b<<1);
test2 = test1[3];
gray  = (test1>>4)+test2;
/*
test1 = {r >> 2};
test2 = test2 +test1;
test1 = {r >> 4};
test2 = test2 +test1;
test1 = {g >> 1};
test2 = test2 +test1;
test1 = {g >> 4};
test2 = test2 +test1;
test1 = {b >> 3};

gray = test2;
*/

/*
if (r[1] == 1 )
	gray = gray + 1;
if (r[3] == 1 )
	gray = gray + 1;
if (g[8] == 1)
	gray = gray + 1;
if (g[11] == 1  )
	gray = gray + 1;
if (b[18] == 1)
	gray = gray + 1;*/

end



/*
if (r[1] == 1 )
	gray = gray + 1;
if (r[3] == 1 )
	gray = gray + 1;
if (g[8] == 1)
	gray = gray + 1;
if (g[11] == 1  )
	gray = gray + 1;
if (b[18] == 1)
*/

/************************************/

endmodule
