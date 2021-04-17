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
integer cnt,x,y,i,j,tmp,o;
reg [2:0] cs;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst or posedge cs)begin
    if(rst)begin
    x<=0;
    y<=0;
    i<=0;
    j<=0;
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
    o<=0;
    ROM_IF_OE<=1'b0;
    ROM_W_OE<=1'b1;
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
    clear<=1'b1;
    cs<=READ_W;
    end
    else
    case(cs)
    READ_W:
    begin
        clear<=1'b0;
        if(cnt<9)begin
        ROM_W_A<=cnt;
        cnt<=cnt+1;
        cs<=READ_W;
        ROM_W_OE<=1'b1;
        if(cnt==0||cnt==3||cnt==6)begin
        sel_w<=3'b100;
        sel_if<=3'b100;
        end
        else if (cnt==1||cnt==4||cnt==7)begin
        sel_w<=3'b010;
        sel_if<=3'b010;
        end
        else begin
        sel_w<=3'b001;
        sel_if<=3'b001;
        end
        //$display("%d %d %b", i,cnt,sel_w);
        end
        else begin
        cnt<=0;
        cs<=READ_9;
        //ROM_W_OE<=1'b1; //TODO CHECK this is true or false
        i<=0;
        sel_w<=3'b000;
        sel_if<=3'b000;
        end
    end
    READ_9:
    begin
        //clear<=1'b0;
        ROM_W_OE<=1'b1;
        ROM_W_A<=cnt;
        RAM_CONV_WE<=1'b0;
        cnt<=cnt+1;
        //$display("%d",cnt);
        case(cnt)
        0:
        begin
            pad_en=1'b1;
            ROM_IF_OE=1'b1;
            sel_w<=3'b100;
            sel_if<=3'b100;
        end
        1:
        begin
            sel_w<=3'b010;
            sel_if<=3'b010;
            if(x==0||x==257)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*i+1;
            end
        end
        2:
        begin
            sel_w<=3'b001;
            sel_if<=3'b001;
            if(x==0||x==257)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*i+2;
            end
        end
        3:
        begin
            pad_en=1'b1;
            sel_w<=3'b100;
            sel_if<=3'b100;
//            ROM_IF_OE=1'b1;
        end
        4:
        begin
            sel_w<=3'b010;
            sel_if<=3'b010;
            if(x==0||x==257||i+1<256)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*(i+1)+1;
            end
        end
        5:
        begin
            sel_w<=3'b001;
            sel_if<=3'b001;
            if(x==0||x==257||i+1<256)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*(i+1)+2;
            end
        end
        6:
        begin
            pad_en=1'b1;
            sel_w<=3'b100;
            sel_if<=3'b100;
//            ROM_IF_OE=1'b1;
        end
        7:
        begin
            sel_w<=3'b010;
            sel_if<=3'b010;
            if(x==0||x==257||i+2<256)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*(i+2)+1;
            end
        end
        8:
        begin
            sel_w<=3'b001;
            sel_if<=3'b001;
            if(x==0||x==257||i+2<256)
            pad_en=1'b1;
            else begin
                pad_en=1'b0;
                ROM_IF_A<=256*(i+2)+2;
            end
            cs<=WRITE_C;
            cnt<=0;
            ROM_IF_OE=1'b0;
            ROM_W_OE<=1'b1; 
        end
        endcase
    end
    READ_C:
    begin
        RAM_CONV_WE<=1'b0;

        ///weight cond

            ///weight cond
            ROM_W_OE<=1'b1; 
            ROM_IF_OE=1'b0;
            ROM_W_A<=2+2*cnt;
            cnt<=cnt+1;
           // $display("%b %b",sel_w,sel_if);

            case(cnt)
            0:
            begin
                
                sel_w<=3'b100;
                sel_if<=3'b100;
                if(x==0||x==257||y==0||y==257||i>255||j>255)
                pad_en=1'b1;
                else begin
                pad_en=1'b0;
                ROM_IF_OE=1'b1;
                ROM_IF_A<=(256*(i+cnt)+j);
                end
            end
            1: 
            begin
                
                sel_w<=3'b010;
                sel_if<=3'b010;
                if(x==0||x==257||y==0||y==257||i>254||j>254)
                pad_en=1'b1;
                else begin
                pad_en=1'b0;
                ROM_IF_OE=1'b1;
                ROM_IF_A<=(256*(i+cnt)+j+1);
                end
            end
            2: 
            begin
            sel_w<=3'b001;
            sel_if<=3'b001;
                if(x==0||x==257||y==0||y==257||i>253||j>253)
                pad_en=1'b1;
                else begin
                pad_en=1'b0;
                ROM_IF_A<=(256*(i+cnt)+j+2);
                end
                cs<=WRITE_C;
                cnt<=0;
                ROM_W_OE<=1'b1; 
                ROM_IF_OE<=1'b0;
            end
            endcase
        
    end
    WRITE_C:
    begin
                    sel_w<=3'b00;
            sel_if<=3'b00;
        RAM_CONV_A<=tmp;
        RAM_CONV_WE<=1'b1;
        tmp<=tmp+1;
                if(x==256&&y==257)
            done=1'b1;
        if(y<257) begin
            cs<=READ_C;
            ROM_IF_OE=1'b0;
            ROM_W_OE<=1'b1; 
            //RAM_CONV_WE<=1'b0;
            //clear<=1'b1;
            y<=y+1;
            j<=j+1;
            end
        else begin
            //clear<=1'b1;
            i<=i+1;
            cs<=READ_9;
            //RAM_CONV_WE<=1'b0;
            cnt<=0;
            ROM_IF_OE=1'b0;
            ROM_W_OE<=1'b1; 
            j<=2;
            y<=3;
            i<=i+1;
            x<=x+1;
        end
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
always @(x or y) begin
    //$display("%d %d %d %d %d",x,y,i,j,tmp);

    end
endmodule

always @(x or y) begin
    
    //$display("%d %d %d %d",x,y,i,j);

end


endmodule
