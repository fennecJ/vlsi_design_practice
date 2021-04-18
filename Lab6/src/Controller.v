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
reg [`ADDR_BITS-1:0] ROM_IF_A, ROM_W_A; 
reg [`ADDR_BITS-1:0] RAM_CONV_A;
reg [`ADDR_BITS-1:0] RAM_POOL_A;
reg                  ROM_IF_OE, ROM_W_OE;
reg                  RAM_CONV_WE, RAM_CONV_OE;
reg                  RAM_POOL_WE, RAM_POOL_OE;
reg                  clear; //To clear conv block
reg                  pad_en; //To enable padding
reg                  pool_en;
reg                  done;
reg [2:0]            sel_if, sel_w;
reg [3:0] tst [2:0][2:0];
integer cnt,q,y,row,col,tmp,o,a,b;
reg [2:0] cs,ns;
// ---------------------- Write down Your design below  ---------------------- //
always @(posedge clk or posedge rst or posedge cs)begin
    if(rst)begin
    q<=0;
    y<=0;
    row<=0;
    col<=0;
    a<=0;
    b<=0;
    ROM_IF_A<=`ADDR_BITS'b0;
    ROM_W_A<=`ADDR_BITS'b0;
    RAM_CONV_A<=`ADDR_BITS'b0;
    RAM_POOL_A<=`ADDR_BITS'b0;
    {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_OE,RAM_POOL_WE,done,clear,pad_en,pool_en}=10'b0000000;
    sel_if<=3'b000;
    sel_w<=3'b000;
    cnt<=0;
    tmp<=0;
    ns<=INIT;
    end
    else begin
      cs<=ns;
    case(cs)
      READ_W:
          if(ROM_W_A<9)
            cnt<=cnt+1;
          else
            cnt<=0;
      READ_9,READ_C: 
        cnt<=cnt+1;
      WRITE_C:
          begin
              tmp<=tmp+1;
              if(col<256) begin
                  col<=col+1;
              end
              else begin
                  row<=row+1;
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
end

//next state
always @(*) begin
    case(cs)
    INIT: ns=READ_W;
    READ_W: ns=(cnt==9)?READ_9:READ_W;
    READ_9: ns=(cnt==8)?WRITE_C:READ_9;
    READ_C: ns=(cnt==2)?WRITE_C:READ_C;
    WRITE_C:ns=(col<256)?READ_C:READ_9;
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
//next state

//Every cond
always @(*) begin
        case(cs)
        INIT:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0000000;
        READ_W: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0100000;
        READ_9: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b1000000;
        READ_C: {ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b1000000;
        WRITE_C:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=(tmp==65536)?7'b0010001:7'b0010000;
        READ_P:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0001000;
        WRITE_P:{ROM_IF_OE,ROM_W_OE,RAM_CONV_WE,RAM_CONV_OE,RAM_POOL_WE,RAM_POOL_OE,done}=7'b0000100;
        default:
        begin
        end
    endcase
  end
//Every cond

//pad_en
always @(*) begin
        case(cs)

        READ_9:
        begin
            case(cnt)
            0,3,6: pad_en<=1'b1;
            1,2: pad_en<=(row==0)?1'b1:1'b0;
            4,5: pad_en<=1'b0;
            7,8: pad_en<=(row==255)?1'b1:1'b0;
            default:pad_en<=1'b0;
            endcase
        end
    READ_C:
        begin
                case(cnt)
                0:
                    if(row==0||col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                1: 
                    if(col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                2: 
                    if(row==255||col==256)
                    pad_en=1'b1;
                    else
                    pad_en=1'b0;
                  default:
                    pad_en=1'b0;
                endcase
        end
        /*
        WRITE_C:
        begin
            $display("%d %d",row,col);
            cnt<=0;
            sel_if<=3'b000;
            RAM_CONV_A<=tmp;
            RAM_CONV_WE<=1'b1;
            tmp<=tmp+1;
            if(tmp>65535)begin
                done<=1'b1;
            end
            else begin
            if(col<256) begin
                cs<=READ_C;
                col<=col+1;
            end
            else begin
                row<=row+1;
                cs<=READ_9;
            end
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
        */
    endcase
  end
//pad_en

//sel_if
always @(posedge clk) begin
        case(cs)
        READ_W:
        case(cnt)
        0,1,2: sel_w<=3'b100;
        3,4,5: sel_w<=3'b010;
        6,7,8: sel_w<=3'b001;
        default: sel_w<=3'b000;
        endcase
        READ_9:
        begin
            case(cnt)
            0,1,2: sel_if=3'b100;
            3,4,5: sel_if=3'b010;
            6,7,8: sel_if=3'b001;
            default: sel_if=3'b0;
            endcase
        end
    READ_C:
      begin
        case(cnt)
          0:  sel_if=3'b100;
          1:  sel_if=3'b010;
          2:  sel_if=3'b001;
        endcase
       end
        WRITE_C: sel_if=3'b000;
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
//sel_if

//Addr
always @(*) begin
    case(cs)
    READ_W:
    ROM_W_A=cnt; 
    READ_9:
    begin
        case(cnt)
        0,1:ROM_IF_A=((row-1)*256);//(row-1)<<8;
        2:  ROM_IF_A=(row-1)*256+1;
        3,4:ROM_IF_A=(row)*256;
        5:  ROM_IF_A=(row)*256;
        6,7:ROM_IF_A=(row+1)*256;
        8:  ROM_IF_A=(row+1)*256+1;
        default:begin
            ROM_IF_A=row*256;
            end
        endcase
    end
    
    READ_C:
    begin
            case(cnt)
            0:ROM_IF_A=((row-1)*256+col);
            1:ROM_IF_A=((row)*256+col);
            2:ROM_IF_A=((row+1)*256+col);
            endcase
    end
    WRITE_C:
    begin
        RAM_CONV_A=tmp;
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

//Addr


always @(*) begin
        case(cs)
        
        READ_9: col=1;
        WRITE_C:cnt=0;
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

always @(x or y) begin
    
    //$display("%d %d %d %d",x,y,i,j);

end


endmodule
