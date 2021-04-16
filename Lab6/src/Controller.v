/////////////////////////////////////////////////////////////////////
// ---------------------- IVCAD 2021 Spring ---------------------- //
// ---------------------- Version : v.1.10  ---------------------- //
// ---------------------- Date : 2021.02.18 ---------------------- //
// ---------------------mini system controller-------------------- //
// ----------------- Feb. 2021 ClaireC authored ------------------ //
// ----------------- Feb. 2021 Eric revised     ------------------ //
/////////////////////////////////////////////////////////////////////

`include  "define.vh"

module Controller (clk, rst,
                  ROM_IF_A, ROM_W_A, ROM_IF_OE, ROM_W_OE,
                  RAM_CONV_A, RAM_CONV_WE, RAM_CONV_OE,
                  RAM_POOL_A, RAM_POOL_WE, RAM_POOL_OE,
                  sel_if, sel_w, clear, pad_en, pool_en, done);

parameter INIT    = 3'b000,
          READ_W  = 3'b001,
          READ_9  = 3'b010,
          READ_C  = 3'b011,
          WRITE_C = 3'b100,
          READ_P  = 3'b101,
          WRITE_P = 3'b110,
          DONE    = 3'b111;

input                   clk;
input                   rst;
output [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A;
output                  ROM_IF_OE, ROM_W_OE;
output [`ADDR_BITS-1:0] RAM_CONV_A;
output                  RAM_CONV_WE, RAM_CONV_OE;
output [`ADDR_BITS-1:0] RAM_POOL_A;
output                  RAM_POOL_WE, RAM_POOL_OE;
output [2:0]            sel_if, sel_w;
output                  clear;
output                  pad_en;
output                  pool_en;
output                  done;
// --------------------------------- registers  =----------------------------- //
reg [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A,ROIA,ROWA; 
reg [`ADDR_BITS-1:0] RAM_CONV_A,RACA;
reg [`ADDR_BITS-1:0] RAM_POOL_A,RAPA;
reg                  ROM_IF_OE, ROM_W_OE;
reg                  RAM_CONV_WE, RAM_CONV_OE;
reg                  RAM_POOL_WE, RAM_POOL_OE;
reg                  clear; //To clear conv block
reg                  pad_en; //To enable padding
reg                  pool_en;
reg                  done;
reg [2:0]            sel_if, sel_w;
reg [66563:0] IFP;
reg [3:0] tst [2:0][2:0];
integer cnt,x,y,tmp;
reg [2:0] cs;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
    if(rst)begin
    x<=0;
    y<=0;
    ROM_IF_A<=`ADDR_BITS'b0;
    ROM_W_A<=`ADDR_BITS'b0;
    RAM_CONV_A<=`ADDR_BITS'b0;
    RAM_POOL_A<=`ADDR_BITS'b0;
    /*
    ROIA<=`ADDR_BITS'b0;
    ROWA<=`ADDR_BITS'b0;
    RACA<=`ADDR_BITS'b0;
    RAPA<=`ADDR_BITS'b0;
    */
    ROM_IF_OE<=1'b0;
    ROM_W_OE<=1'b0;
    RAM_CONV_WE<=1'b0;
    RAM_CONV_OE<=1'b0;
    RAM_POOL_WE<=1'b0;
    RAM_POOL_OE<=1'b0;
    clear<=1'b0;
    pad_en<=1'b0;
    pool_en<=1'b0;
    done<=1'b0;
    sel_if<=3'b0;
    sel_w<=3'b0;
    cnt<=0;
    tmp<=0;
    cs<=READ_W;
    end
    else
    case(cs)
    READ_W:
    begin
    if(cnt<9)begin
    ROM_W_A<=cnt;
    cnt<=cnt+1;
    cs<=READ_W;
    end
    else begin
    cnt<=0;
    cs<=READ_9;
    end
    end
    READ_9:
    begin
    if(y==257)
    begin
    y<=0;
    x<=x+1;    
    end
    else if(cnt==2)
    y<=y+1;

    tmp<=tmp+1;
    cnt<=cnt+1;
    if(x+cnt<258)begin
    ROM_IF_A<=258*(x+cnt)+y;      //sth cool happen when x>255
    RAM_CONV_A<=258*(x+cnt)+y;
    end

    if(x==0||x==257||y==0||y==257)
    pad_en<=1'b1;
    else
    pad_en<=1'b0;

    ROM_IF_OE<=1'b1;
    ROM_W_OE<=1'b1;

    RAM_CONV_OE<=1'b1;

    /* 
       110 111 111
       011 100 101
       000 001 010
    */
    sel_if<=2*cnt;
    sel_w<=2*cnt;
    if(cnt==2)begin
        cnt<=0;
    end
    if(y>2&&y<256)begin
    RAM_CONV_WE<=1'b1;
    

    end
    else begin
    RAM_CONV_WE<=1'b0;

    end
    if(x==257&&y==257)
    done<=1'b1;//cs<=...
    else
    cs<=READ_9;
    end
    READ_C:
    begin
    end
    WRITE_C:
    begin
    end
    READ_P:
    begin
    end
    WRITE_P:
    begin
    end
    default:
    begin
    end

    endcase
end

endmodule

