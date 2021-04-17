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
integer cnt,x,y,tmp,i,j,w;
reg [2:0] cs;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst)begin
    if(rst)begin
    x<=0;
    y<=0;
    w<=0;
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
    sel_w<=3'b001;
    cnt<=0;
    tmp<=0;
    i<=0;
    j<=0;
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
        ROM_W_OE<=1'b1;
        if(cnt==2||cnt==5)begin
        i<=i+1;
        sel_w<=(1<<i+1);
        end
        //$display("%d %d %b", i,cnt,sel_w);
        end
        else begin
        cnt<=0;
        cs<=READ_9;
        ROM_W_OE<=1'b0;
        i<=0;
        ROM_W_A<=0;
        sel_w<=0;
        end

    end
    READ_9:
    begin
        //Set weight address\\
        ROM_W_A<=w;
        w<=w+1;
        if(w==8)
        w<=0;


        //Set weight address\\
        if(y==257)
        begin
        y<=0;
        x<=x+1;    
        end
        else if(cnt==2)
        y<=y+1;

        cnt<=cnt+1;
        ROM_W_OE<=1'b1;
        if(x==0||x==257||y==0||y==257)begin
            pad_en<=1'b1;
            ROM_IF_OE<=1'b0;
        end
        else 
        begin
            if(j==255)begin
            j<=0;
            i<=i+1;
            end else
            j<=j+1;
            pad_en<=1'b0;
            ROM_IF_A<=256*i+j;
            ROM_IF_OE<=1'b1;
        end
        //TODO change the selected pixel of ROM_IF
        //It should be like Read a row instead of read a col
        sel_if<=(1<<cnt);
        sel_w<=(1<<cnt);
        if(cnt==2)begin
            cnt<=0;
        end 
        //TODO change the order of sel_if,sel_w

        if(y>1&&cnt==2)begin
        RAM_CONV_WE<=1'b1;
        RAM_CONV_A<=tmp;
        tmp<=tmp+1;
      //  $display("tmp:%d",tmp);
        end
        else
        RAM_CONV_WE<=1'b0;
        
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

